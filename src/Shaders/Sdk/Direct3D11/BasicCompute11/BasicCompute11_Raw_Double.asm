//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//
///
// Note: shader requires additional functionality:
//       Double-precision floating point
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// Buffer0                           texture    byte         r/o    0        1
// Buffer1                           texture    byte         r/o    1        1
// BufferOut                             UAV    byte         r/w    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed | enableDoublePrecisionFloatOps
dcl_resource_raw t0
dcl_resource_raw t1
dcl_uav_raw u0
dcl_input vThreadID.x
dcl_temps 4
dcl_thread_group 1, 1, 1
ishl r0.x, vThreadID.x, l(4)
ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, t0.zwxy
ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r2.xyzw, r0.x, t1.zwxy
dadd r0.zw, r1.xyxy, r2.xyxy
mov r3.zw, r0.zzzw
iadd r3.x, r1.z, r2.z
add r3.y, r1.w, r2.w
store_raw u0.xyzw, r0.x, r3.xyzw
ret 
// Approximately 9 instruction slots used
