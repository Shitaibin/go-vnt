(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$ji (func (param i32) (result i64)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (import "env" "Register" (func $Register (param i32 i32)))
 (import "env" "GetOrigin" (func $GetOrigin (result i32)))
 (import "env" "GetSender" (func $GetSender (result i32)))
 (import "env" "GetValue" (func $GetValue (result i64)))
 (import "env" "GetContractValue" (func $GetContractValue (result i64)))
 (import "env" "GetContractAddress" (func $GetContractAddress (result i32)))
 (import "env" "GetBalanceFromAddress" (func $GetBalanceFromAddress (param i32) (result i64)))
 (import "env" "SendFromContract" (func $SendFromContract (param i32 i64)))
 (import "env" "GetBlockHash" (func $GetBlockHash (param i64) (result i32)))
 (import "env" "GetDifficulty" (func $GetDifficulty (result i64)))
 (import "env" "GetBlockNumber" (func $GetBlockNumber (result i64)))
 (import "env" "GetTimestamp" (func $GetTimestamp (result i64)))
 (import "env" "GetCoinBase" (func $GetCoinBase (result i32)))
 (import "env" "GetGas" (func $GetGas (result i64)))
 (import "env" "GetGasLimit" (func $GetGasLimit (result i64)))
 (import "env" "StorageRead" (func $StorageRead (param i32) (result i32)))
 (import "env" "GenerateKey" (func $GenerateKey (param i32 i32 i32) (result i32)))
 (import "env" "StorageWrite" (func $StorageWrite (param i32 i32)))
 (import "env" "SHA3" (func $SHA3 (param i32) (result i32)))
 (import "env" "FromI64" (func $FromI64 (param i64) (result i32)))
 (import "env" "FromU64" (func $FromU64 (param i64) (result i32)))
 (import "env" "ToI64" (func $ToI64 (param i32) (result i64)))
 (import "env" "ToU64" (func $ToU64 (param i32) (result i64)))
 (import "env" "Concat" (func $Concat (param i32 i32) (result i32)))
 (table 24 24 anyfunc)
 (elem (i32.const 0) $__wasm_nullptr $__importThunk_GetOrigin $__importThunk_GetSender $__importThunk_GetValue $__importThunk_GetContractValue $__importThunk_GetContractAddress $__importThunk_GetBalanceFromAddress $__importThunk_SendFromContract $__importThunk_GetBlockHash $__importThunk_GetDifficulty $__importThunk_GetBlockNumber $__importThunk_GetTimestamp $__importThunk_GetCoinBase $__importThunk_GetGas $__importThunk_GetGasLimit $__importThunk_StorageRead $__importThunk_GenerateKey $__importThunk_StorageWrite $__importThunk_SHA3 $__importThunk_FromI64 $__importThunk_FromU64 $__importThunk_ToI64 $__importThunk_ToU64 $__importThunk_Concat)
 (memory $0 1)
 (data (i32.const 16) "a\00")
 (data (i32.const 24) "\00\00\00\00\00\00\00\00")
 (data (i32.const 32) "b\00")
 (data (i32.const 36) "\00\00\00\00")
 (data (i32.const 48) "c\00")
 (data (i32.const 56) "\00\00\00\00\00\00\00\00")
 (export "memory" (memory $0))
 (export "getmsg" (func $getmsg))
 (export "getcontract" (func $getcontract))
 (export "getblock" (func $getblock))
 (export "getutils" (func $getutils))
 (export "contractname" (func $contractname))
 (export "querya" (func $querya))
 (export "queryb" (func $queryb))
 (export "queryc" (func $queryc))
 (func $getmsg (; 24 ;) (param $0 i32)
  (i32.store offset=4
   (get_local $0)
   (i32.const 1)
  )
  (i32.store
   (get_local $0)
   (i32.const 2)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $getcontract (; 25 ;) (param $0 i32)
  (i32.store offset=4
   (get_local $0)
   (i32.const 4)
  )
  (i32.store
   (get_local $0)
   (i32.const 5)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 6)
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 7)
  )
 )
 (func $getblock (; 26 ;) (param $0 i32)
  (i32.store offset=4
   (get_local $0)
   (i32.const 8)
  )
  (i32.store
   (get_local $0)
   (i32.const 9)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 10)
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 11)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 12)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 13)
  )
  (i32.store offset=24
   (get_local $0)
   (i32.const 14)
  )
 )
 (func $getutils (; 27 ;) (param $0 i32)
  (i32.store offset=4
   (get_local $0)
   (i32.const 15)
  )
  (i32.store
   (get_local $0)
   (i32.const 16)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 17)
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 18)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 19)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 20)
  )
  (i32.store offset=24
   (get_local $0)
   (i32.const 21)
  )
  (i32.store offset=28
   (get_local $0)
   (i32.const 22)
  )
  (i32.store offset=32
   (get_local $0)
   (i32.const 23)
  )
 )
 (func $contractname (; 28 ;) (param $0 i64) (param $1 i32) (param $2 i64)
  (call $Register
   (i32.const 16)
   (i32.load offset=24
    (i32.const 0)
   )
  )
  (call $Register
   (i32.const 32)
   (i32.load offset=36
    (i32.const 0)
   )
  )
  (call $Register
   (i32.const 48)
   (i32.load offset=56
    (i32.const 0)
   )
  )
  (i32.store offset=36
   (i32.const 0)
   (get_local $1)
  )
  (i64.store offset=24
   (i32.const 0)
   (get_local $0)
  )
  (i64.store offset=56
   (i32.const 0)
   (get_local $2)
  )
 )
 (func $querya (; 29 ;) (result i64)
  (call $Register
   (i32.const 16)
   (i32.load offset=24
    (i32.const 0)
   )
  )
  (i64.load offset=24
   (i32.const 0)
  )
 )
 (func $queryb (; 30 ;) (result i32)
  (call $Register
   (i32.const 32)
   (i32.load offset=36
    (i32.const 0)
   )
  )
  (i32.load offset=36
   (i32.const 0)
  )
 )
 (func $queryc (; 31 ;) (result i64)
  (call $Register
   (i32.const 48)
   (i32.load offset=56
    (i32.const 0)
   )
  )
  (i64.load offset=56
   (i32.const 0)
  )
 )
 (func $__wasm_nullptr (; 32 ;) (type $FUNCSIG$v)
  (unreachable)
 )
 (func $__importThunk_GetOrigin (; 33 ;) (type $FUNCSIG$i) (result i32)
  (call $GetOrigin)
 )
 (func $__importThunk_GetSender (; 34 ;) (type $FUNCSIG$i) (result i32)
  (call $GetSender)
 )
 (func $__importThunk_GetValue (; 35 ;) (type $FUNCSIG$j) (result i64)
  (call $GetValue)
 )
 (func $__importThunk_GetContractValue (; 36 ;) (type $FUNCSIG$j) (result i64)
  (call $GetContractValue)
 )
 (func $__importThunk_GetContractAddress (; 37 ;) (type $FUNCSIG$i) (result i32)
  (call $GetContractAddress)
 )
 (func $__importThunk_GetBalanceFromAddress (; 38 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  (call $GetBalanceFromAddress
   (get_local $0)
  )
 )
 (func $__importThunk_SendFromContract (; 39 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (call $SendFromContract
   (get_local $0)
   (get_local $1)
  )
 )
 (func $__importThunk_GetBlockHash (; 40 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (call $GetBlockHash
   (get_local $0)
  )
 )
 (func $__importThunk_GetDifficulty (; 41 ;) (type $FUNCSIG$j) (result i64)
  (call $GetDifficulty)
 )
 (func $__importThunk_GetBlockNumber (; 42 ;) (type $FUNCSIG$j) (result i64)
  (call $GetBlockNumber)
 )
 (func $__importThunk_GetTimestamp (; 43 ;) (type $FUNCSIG$j) (result i64)
  (call $GetTimestamp)
 )
 (func $__importThunk_GetCoinBase (; 44 ;) (type $FUNCSIG$i) (result i32)
  (call $GetCoinBase)
 )
 (func $__importThunk_GetGas (; 45 ;) (type $FUNCSIG$j) (result i64)
  (call $GetGas)
 )
 (func $__importThunk_GetGasLimit (; 46 ;) (type $FUNCSIG$j) (result i64)
  (call $GetGasLimit)
 )
 (func $__importThunk_StorageRead (; 47 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (call $StorageRead
   (get_local $0)
  )
 )
 (func $__importThunk_GenerateKey (; 48 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $GenerateKey
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $__importThunk_StorageWrite (; 49 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (call $StorageWrite
   (get_local $0)
   (get_local $1)
  )
 )
 (func $__importThunk_SHA3 (; 50 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (call $SHA3
   (get_local $0)
  )
 )
 (func $__importThunk_FromI64 (; 51 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (call $FromI64
   (get_local $0)
  )
 )
 (func $__importThunk_FromU64 (; 52 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (call $FromU64
   (get_local $0)
  )
 )
 (func $__importThunk_ToI64 (; 53 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  (call $ToI64
   (get_local $0)
  )
 )
 (func $__importThunk_ToU64 (; 54 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  (call $ToU64
   (get_local $0)
  )
 )
 (func $__importThunk_Concat (; 55 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (call $Concat
   (get_local $0)
   (get_local $1)
  )
 )
)
