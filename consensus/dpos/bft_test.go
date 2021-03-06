package dpos

import (
	"github.com/vntchain/go-vnt/common"
	"github.com/vntchain/go-vnt/core/types"
	"github.com/vntchain/go-vnt/params"
	"math/big"
	"testing"
)

func newDefaultBft() *BftManager {
	cfg := &params.DposConfig{
		WitnessesNum: 4,
		Period:       2,
	}

	dp := New(cfg, nil)
	return newBftManager(dp)
}

func TestHandleBftMsg_FutureMsg(t *testing.T) {
	bft := newDefaultBft()

	// set state
	bft.h = big.NewInt(10)
	bft.r = 0
	bft.mining = 1

	tests := []struct {
		h int64
		r int
	}{{h: 100, r: 0}, {10, 10}}

	for i, te := range tests {
		// Create msg
		h1 := big.NewInt(te.h)
		r := uint32(te.r)
		hd1 := &types.Header{
			Number: h1,
		}
		b1 := types.NewBlockWithHeader(hd1)
		prepre := &types.PreprepareMsg{
			Block: b1,
			Round: r,
		}

		t.Logf("header hash:%x", b1.Hash())

		if err := bft.handleBftMsg(prepre); err != nil {
			t.Errorf("Should success. handle msg error: %s", err)
		}

		// Msg should in msg pool
		if msg, err := bft.mp.getPrePrepareMsg(h1, prepre.Round); err != nil {
			t.Error("Pre-prepare msg should in msg pool, but not find")
		} else if msg.Hash() != prepre.Hash() {
			t.Errorf("Pre-prepare msg want: %x, got:%x", hd1.Hash(), msg.Hash())
		}
		t.Logf("test case: %d passed", i)
	}
}

func TestHandleBftMsg_OutdatedMsg(t *testing.T) {
	bft := newDefaultBft()

	// set state
	bft.h = big.NewInt(10)
	bft.r = 1
	bft.mining = 1

	tests := []struct {
		h int64
		r int
	}{{h: 2, r: 0}, {10, 0}}

	for i, te := range tests {
		// Create msg
		h1 := big.NewInt(te.h)
		r := uint32(te.r)
		hd1 := &types.Header{
			Number: h1,
		}
		b1 := types.NewBlockWithHeader(hd1)
		prepre := &types.PreprepareMsg{
			Block: b1,
			Round: r,
		}

		t.Logf("header hash:%x", b1.Hash())

		if err := bft.handleBftMsg(prepre); err == nil {
			t.Error("Should handle msg error, but success")
		}

		// Msg should in msg pool
		if msg, err := bft.mp.getPrePrepareMsg(h1, prepre.Round); err == nil {
			t.Errorf("Pre-prepare msg should not in msg pool, but find: %x", msg.Hash())
		}
		t.Logf("test case: %d passed", i)
	}
}

func TestHandleBftMsg_NoMining(t *testing.T) {
	bft := newDefaultBft()

	// set state
	bft.h = big.NewInt(10)
	bft.r = 1
	bft.mining = 0

	// Create msg
	h1 := big.NewInt(10)
	r := uint32(1)
	hd1 := &types.Header{
		Number: h1,
	}
	b1 := types.NewBlockWithHeader(hd1)
	prepre := &types.PreprepareMsg{
		Block: b1,
		Round: r,
	}

	t.Logf("header hash:%x", b1.Hash())

	if err := bft.handleBftMsg(prepre); err != nil {
		t.Errorf("Should success. handle msg error: %s", err)
	}

	// Msg should in msg pool
	if msg, err := bft.mp.getPrePrepareMsg(h1, prepre.Round); err != nil {
		t.Error("Pre-prepare msg should in msg pool, but not find")
	} else if msg.Hash() != prepre.Hash() {
		t.Errorf("Pre-prepare msg want: %x, got:%x", hd1.Hash(), msg.Hash())
	}
}

func Test_ValidWitness(t *testing.T) {
	bft := newDefaultBft()
	addrStr := []string{
		"0x122369f04f32269598789998de33e3d56e2c507a",
		"0x42a875ac43f2b4e6d17f54d288071f5952bf8911",
		"0x3dcf0b3787c31b2bdf62d5bc9128a79c2bb18829",
		"0xbf66d398226f200467cd27b14e85b25a8c232384",
	}

	addrs := make([]common.Address, len(addrStr))
	for i, st := range addrStr {
		addrs[i] = common.HexToAddress(st)
		bft.witnessList[addrs[i]] = struct{}{}
	}

	for i, addr := range addrs {
		if bft.validWitness(addr) == false {
			t.Errorf("%dth, addr should in list, but not. addr = %x", i, addr.Hex())
		}
	}

	invalidAddrStr := []string{
		"0x122369f04f32269598789998de33e3d56e2c50DD",
		"0x0000000000000000000000000000000000000000",
	}
	for i, addr := range invalidAddrStr {
		if bft.validWitness(common.HexToAddress(addr)) == true {
			t.Errorf("%dth, addr should not in list, but in. addr = %s", i, addr)
		}
	}
}
