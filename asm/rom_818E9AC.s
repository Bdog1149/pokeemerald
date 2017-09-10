	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
    
	thumb_func_start sub_818E9AC
sub_818E9AC: @ 818E9AC
	push {lr}
	ldr r1, =gUnknown_0860D090
	ldr r0, =gSpecialVar_0x8004
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E9AC

	thumb_func_start sub_818E9CC
sub_818E9CC: @ 818E9CC
	push {r4-r7,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r0, [r4]
	ldr r2, =0x00000ca8
	adds r0, r2
	movs r6, 0
	strb r6, [r0]
	ldr r1, [r4]
	adds r2, 0xA
	adds r0, r1, r2
	strh r6, [r0]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r1, r2
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r4, [r4]
	ldr r0, =0x00000cdc
	adds r3, r4, r0
	ldr r2, =gUnknown_0860D0EC
	lsls r1, r5, 2
	lsls r0, r7, 3
	adds r1, r0
	adds r1, r2
	ldr r0, [r3]
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _0818EA3E
	lsls r0, r5, 1
	lsls r1, r7, 2
	adds r0, r1
	ldr r2, =0x00000d0c
	adds r1, r4, r2
	adds r1, r0
	strh r6, [r1]
_0818EA3E:
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0x4
	ldrsb r1, [r0, r1]
	movs r2, 0x5
	ldrsb r2, [r0, r2]
	movs r3, 0x1
	negs r3, r3
	movs r0, 0
	bl saved_warp2_set
	ldr r0, =gTrainerBattleOpponent_A
	strh r6, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818E9CC

	thumb_func_start sub_818EA84
sub_818EA84: @ 818EA84
	push {r4-r6,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x9
	bls _0818EAA8
	b _0818ED10
_0818EAA8:
	lsls r0, 2
	ldr r1, =_0818EAC8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0818EAC8:
	.4byte _0818EAF0
	.4byte _0818EB14
	.4byte _0818EB48
	.4byte _0818EB64
	.4byte _0818EB80
	.4byte _0818EB98
	.4byte _0818EBB4
	.4byte _0818EC40
	.4byte _0818ECD0
	.4byte _0818ECF4
_0818EAF0:
	ldr r3, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r5, 1
	lsls r2, r6, 2
	adds r1, r2
	ldr r2, =0x00000d0c
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	b _0818ED10
	.pool
_0818EB14:
	ldr r4, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r3, =0x00000cdc
	adds r2, r3
	ldr r3, =gUnknown_0860D0EC
	lsls r0, r5, 2
	lsls r1, r6, 3
	adds r0, r1
	adds r0, r3
	ldr r1, [r2]
	ldr r0, [r0]
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	strh r0, [r4]
	b _0818ED10
	.pool
_0818EB48:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d08
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 31
	b _0818ECBE
	.pool
_0818EB64:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d08
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 30
	b _0818ECBE
	.pool
_0818EB80:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d08
	adds r0, r2
	b _0818ECBA
	.pool
_0818EB98:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d08
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 28
	b _0818ECBE
	.pool
_0818EBB4:
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bne _0818EC04
	cmp r5, 0
	beq _0818EBE8
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d08
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 26
	b _0818ECBE
	.pool
_0818EBE8:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d08
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 27
	b _0818ECBE
	.pool
_0818EC04:
	cmp r5, 0
	beq _0818EC24
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d08
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 30
	b _0818ECBE
	.pool
_0818EC24:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d08
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 31
	b _0818ECBE
	.pool
_0818EC40:
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bne _0818EC90
	cmp r5, 0
	beq _0818EC74
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d08
	adds r0, r2
	ldrb r0, [r0]
	lsrs r0, 7
	strh r0, [r1]
	b _0818ED10
	.pool
_0818EC74:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d08
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 25
	b _0818ECBE
	.pool
_0818EC90:
	cmp r5, 0
	beq _0818ECB0
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d08
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 28
	b _0818ECBE
	.pool
_0818ECB0:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d08
	adds r0, r3
_0818ECBA:
	ldrb r0, [r0]
	lsls r0, 29
_0818ECBE:
	lsrs r0, 31
	strh r0, [r1]
	b _0818ED10
	.pool
_0818ECD0:
	bl sub_81B8558
	ldr r2, =gUnknown_0203CEF8
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0xCB
	lsls r1, 4
	adds r0, r1
	ldrh r1, [r0]
	strb r1, [r2]
	ldrh r0, [r0]
	lsrs r0, 8
	strb r0, [r2, 0x1]
	b _0818ED10
	.pool
_0818ECF4:
	ldr r2, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r3, =0x00000d0a
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 1
	adds r3, 0x1
	adds r1, r3
	ldr r3, =0x0000fffd
	adds r0, r3
	ldrb r1, [r1]
	adds r0, r1
	strh r0, [r2]
_0818ED10:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818EA84

	thumb_func_start sub_818ED28
sub_818ED28: @ 818ED28
	push {r4,r5,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r4, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x8
	bls _0818ED4C
	b _0818F01E
_0818ED4C:
	lsls r0, 2
	ldr r1, =_0818ED6C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0818ED6C:
	.4byte _0818ED90
	.4byte _0818EDB4
	.4byte _0818EE10
	.4byte _0818EE34
	.4byte _0818EE5C
	.4byte _0818EE78
	.4byte _0818EEA0
	.4byte _0818EF50
	.4byte _0818F008
_0818ED90:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	lsls r0, r4, 1
	lsls r1, r5, 2
	adds r0, r1
	ldr r1, =0x00000d0c
	adds r2, r1
	adds r2, r0
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	strh r0, [r2]
	b _0818F01E
	.pool
_0818EDB4:
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _0818EDE8
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =0x00000cdc
	adds r2, r0
	ldr r3, =gUnknown_0860D0EC
	lsls r1, r4, 2
	lsls r0, r5, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	orrs r0, r1
	str r0, [r2]
	b _0818F01E
	.pool
_0818EDE8:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, =0x00000cdc
	adds r2, r1
	ldr r3, =gUnknown_0860D0FC
	lsls r1, r4, 2
	lsls r0, r5, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	ands r0, r1
	str r0, [r2]
	b _0818F01E
	.pool
_0818EE10:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r1, =0x00000d08
	adds r2, r1
	movs r1, 0x1
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x2
	negs r0, r0
	b _0818EF74
	.pool
_0818EE34:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r2, =0x00000d08
	adds r3, r2
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	ldrb r2, [r3]
	movs r0, 0x3
	negs r0, r0
	b _0818EFF4
	.pool
_0818EE5C:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r1, =0x00000d08
	adds r3, r1
	b _0818EFE8
	.pool
_0818EE78:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r2, =0x00000d08
	adds r3, r2
	movs r1, 0x1
	ands r1, r0
	lsls r1, 3
	ldrb r2, [r3]
	movs r0, 0x9
	negs r0, r0
	b _0818EFF4
	.pool
_0818EEA0:
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x1
	bne _0818EF00
	cmp r4, 0
	beq _0818EEDC
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r2, =0x00000d08
	adds r3, r2
	ands r1, r0
	lsls r1, 5
	ldrb r2, [r3]
	movs r0, 0x21
	negs r0, r0
	b _0818EFF4
	.pool
_0818EEDC:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r2, =0x00000d08
	adds r3, r2
	ands r1, r0
	lsls r1, 4
	ldrb r2, [r3]
	movs r0, 0x11
	negs r0, r0
	b _0818EFF4
	.pool
_0818EF00:
	cmp r4, 0
	beq _0818EF2C
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r1, =0x00000d08
	adds r3, r1
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	ldrb r2, [r3]
	movs r0, 0x3
	negs r0, r0
	b _0818EFF4
	.pool
_0818EF2C:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r1, =0x00000d08
	adds r2, r1
	movs r1, 0x1
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x2
	negs r0, r0
	b _0818EF74
	.pool
_0818EF50:
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x1
	bne _0818EFB0
	cmp r4, 0
	beq _0818EF8C
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r1, [r0]
	ldr r0, =0x00000d08
	adds r2, r0
	lsls r1, 7
	ldrb r3, [r2]
	movs r0, 0x7F
_0818EF74:
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	b _0818F01E
	.pool
_0818EF8C:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r2, =0x00000d08
	adds r3, r2
	ands r1, r0
	lsls r1, 6
	ldrb r2, [r3]
	movs r0, 0x41
	negs r0, r0
	b _0818EFF4
	.pool
_0818EFB0:
	cmp r4, 0
	beq _0818EFDC
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r1, =0x00000d08
	adds r3, r1
	movs r1, 0x1
	ands r1, r0
	lsls r1, 3
	ldrb r2, [r3]
	movs r0, 0x9
	negs r0, r0
	b _0818EFF4
	.pool
_0818EFDC:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r2, =0x00000d08
	adds r3, r2
_0818EFE8:
	movs r1, 0x1
	ands r1, r0
	lsls r1, 2
	ldrb r2, [r3]
	movs r0, 0x5
	negs r0, r0
_0818EFF4:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0818F01E
	.pool
_0818F008:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gUnknown_0203CEF8
	ldrb r1, [r0]
	ldrb r0, [r0, 0x1]
	lsls r0, 8
	orrs r1, r0
	movs r0, 0xCB
	lsls r0, 4
	adds r2, r0
	strh r1, [r2]
_0818F01E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818ED28

	thumb_func_start sub_818F02C
sub_818F02C: @ 818F02C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x3C
	movs r0, 0
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	movs r0, 0x20
	bl AllocZeroed
	str r0, [sp, 0x18]
	movs r0, 0x18
	bl AllocZeroed
	str r0, [sp, 0x1C]
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	adds r0, 0x1
	ldr r3, =0x00000d0a
	adds r1, r3
	strb r0, [r1]
	ldr r0, =0x000040ce
	bl VarGet
	ldr r1, [r4]
	adds r0, 0x1
	ldr r5, =0x00000d0b
	adds r1, r5
	strb r0, [r1]
	ldr r2, [r4]
	ldr r7, =0x00000d24
	adds r3, r2, r7
	ldrh r0, [r3]
	ldr r5, =0x000003ff
	adds r1, r5, 0
	orrs r0, r1
	strh r0, [r3]
	ldr r3, =0x00000d25
	adds r2, r3
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	adds r1, r3
	ldrb r2, [r1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, r3
	ldrb r2, [r1]
	movs r0, 0x1F
	ands r0, r2
	strb r0, [r1]
	movs r7, 0
	mov r10, r7
	mov r8, r4
	ldr r0, =gBattleScripting + 0x14
	mov r9, r0
	movs r4, 0
_0818F0BA:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, =0x00000caa
	adds r0, r2
	adds r0, r4
	ldrh r0, [r0]
	movs r3, 0x64
	muls r0, r3
	add r0, r9
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	mov r5, r8
	ldr r1, [r5]
	ldr r7, =0x00000d64
	adds r1, r7
	adds r1, r4
	strh r0, [r1]
	movs r5, 0
	mov r0, r10
	lsls r7, r0, 4
	adds r6, r7, 0
_0818F0E8:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, =0x00000caa
	adds r0, r2
	adds r0, r4
	ldrh r0, [r0]
	movs r3, 0x64
	muls r0, r3
	add r0, r9
	adds r1, r5, 0
	adds r1, 0xD
	movs r2, 0
	bl GetMonData
	mov r2, r8
	ldr r1, [r2]
	ldr r3, =0x00000efc
	adds r1, r3
	adds r1, r6
	strh r0, [r1]
	adds r6, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _0818F0E8
	movs r5, 0
	ldr r6, =gSaveBlock2Ptr
_0818F11C:
	ldr r0, [r6]
	ldr r1, =0x00000caa
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	movs r2, 0x64
	muls r0, r2
	add r0, r9
	adds r1, r5, 0
	adds r1, 0x1A
	movs r2, 0
	bl GetMonData
	ldr r1, [r6]
	adds r2, r5, r7
	ldr r3, =0x00000f04
	adds r1, r3
	adds r1, r2
	strb r0, [r1]
	adds r5, 0x1
	cmp r5, 0x5
	ble _0818F11C
	mov r5, r8
	ldr r0, [r5]
	ldr r1, =0x00000caa
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	movs r2, 0x64
	muls r0, r2
	add r0, r9
	bl GetNature
	ldr r1, [r5]
	adds r1, r7
	ldr r3, =0x00000f0a
	adds r1, r3
	strb r0, [r1]
	adds r4, 0x2
	movs r5, 0x1
	add r10, r5
	mov r7, r10
	cmp r7, 0x2
	ble _0818F0BA
	mov r10, r5
	movs r0, 0x4
	str r0, [sp, 0x34]
	movs r1, 0x6
	str r1, [sp, 0x38]
_0818F17E:
	mov r2, r10
	cmp r2, 0x5
	ble _0818F22C
_0818F184:
	bl sub_81A39C4
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0
	bl sub_8162548
	lsls r0, 16
	lsrs r4, r0, 16
	movs r5, 0x1
	cmp r5, r10
	bge _0818F1CA
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r7, =0x00000d28
	adds r0, r7
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	adds r2, r3, 0
	cmp r0, r4
	beq _0818F1CA
	ldr r3, =0x00000d24
_0818F1B2:
	adds r5, 0x1
	cmp r5, r10
	bge _0818F1CA
	ldr r0, [r2]
	lsls r1, r5, 2
	adds r0, r1
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r4
	bne _0818F1B2
_0818F1CA:
	cmp r5, r10
	bne _0818F184
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r1, [sp, 0x34]
	adds r3, r1
	ldr r2, =0x00000d24
	adds r3, r2
	ldr r5, =0x000003ff
	adds r0, r5, 0
	adds r2, r4, 0
	ands r2, r0
	ldrh r0, [r3]
	ldr r7, =0xfffffc00
	adds r1, r7, 0
	b _0818F292
	.pool
_0818F22C:
	bl sub_81A39C4
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0
	bl sub_8162548
	lsls r0, 16
	lsrs r4, r0, 16
	movs r5, 0x1
	cmp r5, r10
	bge _0818F274
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000d28
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	adds r2, r1, 0
	cmp r0, r4
	beq _0818F274
	ldr r3, =0x00000d24
_0818F25C:
	adds r5, 0x1
	cmp r5, r10
	bge _0818F274
	ldr r0, [r2]
	lsls r1, r5, 2
	adds r0, r1
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r4
	bne _0818F25C
_0818F274:
	cmp r5, r10
	bne _0818F22C
	ldr r5, =gSaveBlock2Ptr
	ldr r3, [r5]
	ldr r7, [sp, 0x34]
	adds r3, r7
	ldr r0, =0x00000d24
	adds r3, r0
	ldr r1, =0x000003ff
	adds r0, r1, 0
	adds r2, r4, 0
	ands r2, r0
	ldrh r0, [r3]
	ldr r5, =0xfffffc00
	adds r1, r5, 0
_0818F292:
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	movs r5, 0
	lsls r4, 16
	str r4, [sp, 0x2C]
	ldr r7, [sp, 0x38]
	str r7, [sp, 0x20]
_0818F2A2:
	lsls r0, r5, 1
	mov r9, r0
	adds r1, r5, 0x1
	str r1, [sp, 0x24]
	lsls r2, r5, 2
	str r2, [sp, 0x28]
_0818F2AE:
	ldr r3, [sp, 0x2C]
	lsrs r0, r3, 16
	bl sub_8163524
	lsls r0, 16
	lsrs r6, r0, 16
	movs r7, 0
	cmp r7, r5
	bge _0818F300
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, [sp, 0x8]
	mov r8, r1
	ldr r2, [sp, 0xC]
	mov r12, r2
	ldr r3, =0x00000d64
	adds r0, r3
	ldr r1, [sp, 0x20]
	adds r4, r1, r0
_0818F2D4:
	ldrh r3, [r4]
	cmp r3, r6
	beq _0818F300
	ldr r2, =gUnknown_0203BC8C
	ldr r1, [r2]
	lsls r0, r6, 4
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r8, r0
	beq _0818F300
	cmp r12, r0
	beq _0818F300
	lsls r0, r3, 4
	adds r0, r1
	ldrb r0, [r0, 0xA]
	ldrb r2, [r2, 0xA]
	cmp r0, r2
	beq _0818F300
	adds r4, 0x2
	adds r7, 0x1
	cmp r7, r5
	blt _0818F2D4
_0818F300:
	cmp r7, r5
	bne _0818F2AE
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r1, [sp, 0x38]
	add r1, r9
	ldr r5, =0x00000d64
	adds r0, r5
	adds r0, r1
	strh r6, [r0]
	ldr r2, [sp, 0x28]
	add r2, sp
	adds r2, 0x8
	ldr r0, =gUnknown_0203BC8C
	ldr r1, [r0]
	lsls r0, r6, 4
	adds r0, r1
	ldrh r0, [r0]
	str r0, [r2]
	ldr r5, [sp, 0x24]
	cmp r5, 0x2
	ble _0818F2A2
	ldr r2, [r3]
	ldr r7, [sp, 0x34]
	adds r2, r7
	ldr r0, =0x00000d25
	adds r2, r0
	ldrb r0, [r2]
	movs r3, 0x5
	negs r3, r3
	adds r1, r3, 0
	ands r0, r1
	strb r0, [r2]
	ldr r5, =gSaveBlock2Ptr
	ldr r2, [r5]
	adds r2, r7
	ldr r7, =0x00000d25
	adds r2, r7
	ldrb r0, [r2]
	subs r3, 0x14
	adds r1, r3, 0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r5]
	ldr r5, [sp, 0x34]
	adds r1, r5
	adds r1, r7
	ldrb r2, [r1]
	movs r0, 0x1F
	ands r0, r2
	strb r0, [r1]
	adds r5, 0x4
	str r5, [sp, 0x34]
	ldr r7, [sp, 0x38]
	adds r7, 0x6
	str r7, [sp, 0x38]
	movs r0, 0x1
	add r10, r0
	mov r1, r10
	cmp r1, 0xF
	bgt _0818F37C
	b _0818F17E
_0818F37C:
	movs r7, 0
	ldr r2, [sp, 0x18]
	strh r7, [r2]
	movs r3, 0
	mov r10, r3
	ldr r6, =gBitTable
	ldr r5, =gBaseStats
_0818F38A:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	mov r2, r10
	lsls r1, r2, 1
	ldr r3, =0x00000caa
	adds r0, r3
	adds r0, r1
	ldrh r0, [r0]
	subs r4, r0, 0x1
	movs r0, 0x64
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x3B
	movs r2, 0
	bl GetMonData
	ldr r2, [sp, 0x18]
	ldrh r1, [r2]
	adds r1, r0
	strh r1, [r2]
	adds r0, r4, 0
	movs r1, 0x3C
	movs r2, 0
	bl GetMonData
	ldr r3, [sp, 0x18]
	ldrh r1, [r3]
	adds r1, r0
	strh r1, [r3]
	adds r0, r4, 0
	movs r1, 0x3E
	movs r2, 0
	bl GetMonData
	ldr r2, [sp, 0x18]
	ldrh r1, [r2]
	adds r1, r0
	strh r1, [r2]
	adds r0, r4, 0
	movs r1, 0x3F
	movs r2, 0
	bl GetMonData
	ldr r3, [sp, 0x18]
	ldrh r1, [r3]
	adds r1, r0
	strh r1, [r3]
	adds r0, r4, 0
	movs r1, 0x3D
	movs r2, 0
	bl GetMonData
	ldr r2, [sp, 0x18]
	ldrh r1, [r2]
	adds r1, r0
	strh r1, [r2]
	adds r0, r4, 0
	movs r1, 0x3A
	movs r2, 0
	bl GetMonData
	ldr r3, [sp, 0x18]
	ldrh r1, [r3]
	adds r1, r0
	strh r1, [r3]
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r5
	ldrb r0, [r1, 0x6]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	orrs r7, r0
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r1, r5
	ldrb r0, [r1, 0x7]
	lsls r0, 2
	adds r0, r6
	ldr r0, [r0]
	orrs r7, r0
	movs r0, 0x1
	add r10, r0
	mov r1, r10
	cmp r1, 0x2
	ble _0818F38A
	movs r4, 0
	movs r1, 0x1
	movs r5, 0x1F
_0818F458:
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	beq _0818F462
	adds r4, 0x1
_0818F462:
	asrs r7, 1
	subs r5, 0x1
	cmp r5, 0
	bge _0818F458
	bl sub_8165C40
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x14]
	adds r2, r0, 0
	adds r0, r4, 0
	muls r0, r2
	movs r1, 0x14
	bl __divsi3
	ldr r3, [sp, 0x18]
	ldrh r1, [r3]
	adds r1, r0
	strh r1, [r3]
	movs r5, 0x1
	mov r10, r5
	adds r6, r3, 0
	adds r6, 0x2
	movs r7, 0x2
	str r7, [sp, 0x30]
_0818F494:
	movs r7, 0
	strh r7, [r6]
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	mov r2, r10
	lsls r1, r2, 2
	adds r0, r1
	ldr r3, =0x00000d24
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	bl sub_8190168
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r5, 0
	ldr r0, [sp, 0x30]
	mov r9, r0
_0818F4BC:
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	mov r4, r9
	add r4, r10
	adds r4, r5
	lsls r4, 1
	ldr r2, =0x00000d64
	adds r0, r2
	adds r0, r4
	ldrh r1, [r0]
	ldr r3, =gUnknown_0203BC8C
	ldr r0, [r3]
	lsls r1, 4
	adds r1, r0
	ldrh r0, [r1]
	ldrb r3, [r1, 0xB]
	ldrb r1, [r1, 0xC]
	str r1, [sp]
	ldr r1, [sp, 0x1C]
	str r1, [sp, 0x4]
	ldr r1, [sp, 0x14]
	mov r2, r8
	bl sub_818F720
	ldr r2, [sp, 0x1C]
	ldr r1, [r2, 0x4]
	ldrh r0, [r6]
	adds r0, r1
	ldr r1, [r2, 0x8]
	adds r0, r1
	ldr r1, [r2, 0x10]
	adds r0, r1
	ldr r1, [r2, 0x14]
	adds r0, r1
	ldr r1, [r2, 0xC]
	adds r0, r1
	ldr r1, [r2]
	adds r0, r1
	strh r0, [r6]
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r1, =0x00000d64
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	ldr r2, =gUnknown_0203BC8C
	ldr r1, [r2]
	lsls r0, 4
	adds r0, r1
	ldrh r0, [r0]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	ldr r3, =gBaseStats
	adds r1, r3
	ldrb r0, [r1, 0x6]
	lsls r0, 2
	ldr r2, =gBitTable
	adds r0, r2
	ldr r0, [r0]
	orrs r7, r0
	ldrb r0, [r1, 0x7]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	orrs r7, r0
	adds r5, 0x1
	cmp r5, 0x2
	ble _0818F4BC
	movs r4, 0
	movs r1, 0x1
	movs r5, 0x1F
_0818F54C:
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	beq _0818F556
	adds r4, 0x1
_0818F556:
	asrs r7, 1
	subs r5, 0x1
	cmp r5, 0
	bge _0818F54C
	ldr r3, [sp, 0x14]
	adds r0, r4, 0
	muls r0, r3
	movs r1, 0x14
	bl __divsi3
	ldrh r1, [r6]
	adds r1, r0
	strh r1, [r6]
	adds r6, 0x2
	ldr r5, [sp, 0x30]
	adds r5, 0x2
	str r5, [sp, 0x30]
	movs r7, 0x1
	add r10, r7
	mov r0, r10
	cmp r0, 0xF
	ble _0818F494
	movs r1, 0
	mov r10, r1
	ldr r2, =0x000003ff
	mov r8, r2
_0818F58A:
	mov r5, r10
	adds r5, 0x1
	adds r7, r5, 0
	cmp r5, 0xF
	bgt _0818F626
	mov r3, r10
	lsls r0, r3, 1
	ldr r1, [sp, 0x18]
	adds r6, r0, r1
	lsls r0, r5, 1
	adds r4, r0, r1
_0818F5A0:
	ldrh r1, [r6]
	ldrh r0, [r4]
	cmp r1, r0
	bcc _0818F5C2
	cmp r1, r0
	bne _0818F61E
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	lsls r0, r5, 2
	adds r0, r1, r0
	ldr r2, =0x00000d24
	adds r0, r2
	ldrh r0, [r0]
	lsls r2, r0, 22
	lsrs r0, r2, 22
	cmp r0, r8
	bne _0818F602
_0818F5C2:
	mov r0, r10
	adds r1, r5, 0
	ldr r2, [sp, 0x18]
	bl sub_818F904
	b _0818F600
	.pool
_0818F600:
	b _0818F61E
_0818F602:
	mov r3, r10
	lsls r0, r3, 2
	adds r0, r1, r0
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 22
	cmp r0, r2
	bls _0818F61E
	mov r0, r10
	adds r1, r5, 0
	ldr r2, [sp, 0x18]
	bl sub_818F904
_0818F61E:
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0xF
	ble _0818F5A0
_0818F626:
	mov r10, r7
	mov r2, r10
	cmp r2, 0xE
	ble _0818F58A
	bl sub_81A3610
	lsls r0, 24
	cmp r0, 0
	beq _0818F6EE
	movs r3, 0
	mov r10, r3
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r4, =0x00000d24
	adds r1, r4
	ldrh r1, [r1]
	lsls r1, 22
	lsrs r1, 22
	ldr r3, =0x000003ff
	adds r2, r0, 0
	ldr r6, =gUnknown_0860D3F1
	cmp r1, r3
	beq _0818F674
	adds r5, r2, 0
_0818F656:
	movs r7, 0x1
	add r10, r7
	mov r0, r10
	cmp r0, 0xF
	bgt _0818F674
	ldr r0, [r5]
	mov r7, r10
	lsls r1, r7, 2
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r3
	bne _0818F656
_0818F674:
	mov r1, r10
	lsls r0, r1, 1
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0
	beq _0818F6AC
	movs r5, 0
	ldr r2, [r2]
	ldr r3, =0x00000d24
	adds r2, r3
	ldrh r1, [r2]
	ldr r0, =0xfffffc00
	ands r0, r1
	ldr r7, =0x000003fe
	adds r1, r7, 0
	b _0818F6BE
	.pool
_0818F6AC:
	movs r5, 0x1
	ldr r2, [r2]
	ldr r0, =0x00000d28
	adds r2, r0
	ldrh r1, [r2]
	ldr r0, =0xfffffc00
	ands r0, r1
	ldr r3, =0x000003fe
	adds r1, r3, 0
_0818F6BE:
	orrs r0, r1
	strh r0, [r2]
	movs r7, 0
	mov r10, r7
	lsls r0, r5, 1
	adds r0, r5
	lsls r4, r0, 1
_0818F6CC:
	mov r1, r10
	lsls r0, r1, 24
	lsrs r0, 24
	bl sub_81A4FF0
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	ldr r2, =0x00000d64
	adds r1, r2
	adds r1, r4
	strh r0, [r1]
	adds r4, 0x2
	movs r3, 0x1
	add r10, r3
	mov r5, r10
	cmp r5, 0x2
	ble _0818F6CC
_0818F6EE:
	ldr r0, [sp, 0x18]
	bl Free
	ldr r0, [sp, 0x1C]
	bl Free
	add sp, 0x3C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818F02C

	thumb_func_start sub_818F720
sub_818F720: @ 818F720
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	adds r7, r1, 0
	mov r9, r2
	ldr r1, [sp, 0x3C]
	ldr r2, [sp, 0x40]
	mov r8, r2
	lsls r0, 16
	lsrs r6, r0, 16
	lsls r3, 24
	lsrs r5, r3, 24
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x18]
	movs r1, 0
	adds r4, r5, 0
	movs r3, 0x1
	movs r2, 0x5
_0818F74C:
	adds r0, r4, 0
	ands r0, r3
	cmp r0, 0
	beq _0818F756
	adds r1, 0x1
_0818F756:
	lsrs r4, 1
	subs r2, 0x1
	cmp r2, 0
	bge _0818F74C
	movs r0, 0xFF
	lsls r0, 1
	bl __divsi3
	lsls r0, 16
	lsrs r3, r0, 16
	lsls r0, r6, 3
	mov r10, r0
	movs r1, 0
	mov r12, r1
	mov r1, sp
	movs r2, 0x5
_0818F776:
	mov r0, r12
	str r0, [r1]
	adds r0, r5, 0
	ands r0, r4
	cmp r0, 0
	beq _0818F784
	str r3, [r1]
_0818F784:
	lsls r0, r4, 25
	lsrs r4, r0, 24
	adds r1, 0x4
	subs r2, 0x1
	cmp r2, 0
	bge _0818F776
	ldr r0, =0x0000012f
	cmp r6, r0
	bne _0818F7A0
	movs r0, 0x1
	b _0818F7CA
	.pool
_0818F7A0:
	mov r2, r10
	subs r0, r2, r6
	lsls r0, 2
	ldr r1, =gBaseStats
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 1
	mov r2, r9
	adds r1, r0, r2
	ldr r0, [sp]
	cmp r0, 0
	bge _0818F7BA
	adds r0, 0x3
_0818F7BA:
	asrs r0, 2
	adds r0, r1, r0
	muls r0, r7
	movs r1, 0x64
	bl __divsi3
	adds r0, r7
	adds r0, 0xA
_0818F7CA:
	mov r1, r8
	str r0, [r1]
	mov r2, r10
	subs r0, r2, r6
	lsls r0, 2
	ldr r1, =gBaseStats
	adds r4, r0, r1
	ldrb r0, [r4, 0x1]
	lsls r0, 1
	mov r2, r9
	adds r1, r0, r2
	ldr r0, [sp, 0x4]
	cmp r0, 0
	bge _0818F7E8
	adds r0, 0x3
_0818F7E8:
	asrs r0, 2
	adds r0, r1, r0
	muls r0, r7
	movs r1, 0x64
	bl __divsi3
	adds r1, r0, 0
	adds r1, 0x5
	mov r0, r8
	str r1, [r0, 0x4]
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x18]
	movs r2, 0x1
	bl nature_stat_mod
	lsls r0, 24
	lsrs r0, 24
	mov r1, r8
	str r0, [r1, 0x4]
	ldrb r0, [r4, 0x2]
	lsls r0, 1
	mov r2, r9
	adds r1, r0, r2
	ldr r0, [sp, 0x8]
	cmp r0, 0
	bge _0818F820
	adds r0, 0x3
_0818F820:
	asrs r0, 2
	adds r0, r1, r0
	muls r0, r7
	movs r1, 0x64
	bl __divsi3
	adds r1, r0, 0
	adds r1, 0x5
	mov r0, r8
	str r1, [r0, 0x8]
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x18]
	movs r2, 0x2
	bl nature_stat_mod
	lsls r0, 24
	lsrs r0, 24
	mov r1, r8
	str r0, [r1, 0x8]
	ldrb r0, [r4, 0x3]
	lsls r0, 1
	mov r2, r9
	adds r1, r0, r2
	ldr r0, [sp, 0xC]
	cmp r0, 0
	bge _0818F858
	adds r0, 0x3
_0818F858:
	asrs r0, 2
	adds r0, r1, r0
	muls r0, r7
	movs r1, 0x64
	bl __divsi3
	adds r1, r0, 0
	adds r1, 0x5
	mov r0, r8
	str r1, [r0, 0xC]
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x18]
	movs r2, 0x3
	bl nature_stat_mod
	lsls r0, 24
	lsrs r0, 24
	mov r1, r8
	str r0, [r1, 0xC]
	ldrb r0, [r4, 0x4]
	lsls r0, 1
	mov r2, r9
	adds r1, r0, r2
	ldr r0, [sp, 0x10]
	cmp r0, 0
	bge _0818F890
	adds r0, 0x3
_0818F890:
	asrs r0, 2
	adds r0, r1, r0
	muls r0, r7
	movs r1, 0x64
	bl __divsi3
	adds r1, r0, 0
	adds r1, 0x5
	mov r0, r8
	str r1, [r0, 0x10]
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x18]
	movs r2, 0x4
	bl nature_stat_mod
	lsls r0, 24
	lsrs r0, 24
	mov r1, r8
	str r0, [r1, 0x10]
	ldrb r0, [r4, 0x5]
	lsls r0, 1
	mov r1, r9
	adds r2, r0, r1
	ldr r0, [sp, 0x14]
	cmp r0, 0
	bge _0818F8C8
	adds r0, 0x3
_0818F8C8:
	asrs r0, 2
	adds r0, r2, r0
	muls r0, r7
	movs r1, 0x64
	bl __divsi3
	adds r1, r0, 0
	adds r1, 0x5
	mov r2, r8
	str r1, [r2, 0x14]
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x18]
	movs r2, 0x5
	bl nature_stat_mod
	lsls r0, 24
	lsrs r0, 24
	mov r1, r8
	str r0, [r1, 0x14]
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818F720

	thumb_func_start sub_818F904
sub_818F904: @ 818F904
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r3, r0, 1
	mov r12, r3
	adds r4, r3, r2
	ldrh r5, [r4]
	lsls r7, r1, 1
	mov r9, r7
	add r2, r9
	ldrh r3, [r2]
	strh r3, [r4]
	strh r5, [r2]
	ldr r2, =gSaveBlock2Ptr
	ldr r5, [r2]
	lsls r6, r0, 2
	adds r6, r5, r6
	ldr r3, =0x00000d24
	adds r6, r3
	ldrh r7, [r6]
	mov r10, r7
	mov r2, r10
	lsls r2, 22
	mov r8, r2
	lsls r2, r1, 2
	adds r5, r2
	adds r5, r3
	ldrh r4, [r5]
	lsls r4, 22
	lsrs r4, 22
	ldr r3, =0xfffffc00
	adds r2, r3, 0
	mov r7, r10
	ands r2, r7
	orrs r2, r4
	strh r2, [r6]
	mov r2, r8
	lsrs r2, 22
	mov r8, r2
	ldrh r2, [r5]
	ands r3, r2
	mov r7, r8
	orrs r3, r7
	strh r3, [r5]
	ldr r2, =gSaveBlock2Ptr
	mov r8, r2
	add r12, r0
	add r9, r1
	mov r3, r9
	lsls r4, r3, 1
	mov r7, r12
	lsls r3, r7, 1
	ldr r7, =0x00000d64
	movs r6, 0x2
_0818F974:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r7
	adds r2, r0, r3
	ldrh r5, [r2]
	adds r0, r4
	ldrh r1, [r0]
	strh r1, [r2]
	strh r5, [r0]
	adds r4, 0x2
	adds r3, 0x2
	subs r6, 0x1
	cmp r6, 0
	bge _0818F974
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818F904

	thumb_func_start sub_818F9B0
sub_818F9B0: @ 818F9B0
	push {lr}
	ldr r0, =gStringVar1
	ldr r2, =gUnknown_085CCD20
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	ldr r3, =0x00000cb2
	adds r1, r3
	ldrh r1, [r1]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818F9B0

	thumb_func_start sub_818F9E0
sub_818F9E0: @ 818F9E0
	push {lr}
	ldr r0, =gStringVar1
	ldr r2, =gUnknown_085CCD20
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	ldr r3, =0x00000cb2
	adds r1, r3
	ldrh r1, [r1]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
	ldr r0, =gStringVar2
	ldr r1, =gTrainerBattleOpponent_A
	ldrh r1, [r1]
	bl sub_8195898
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818F9E0

	thumb_func_start sub_818FA20
sub_818FA20: @ 818FA20
	push {r4,r5,lr}
	ldr r1, =gUnknown_0203CD70
	movs r0, 0
	str r0, [r1]
	ldr r4, =gPlayerParty
	adds r0, r4, 0
	movs r1, 0x3A
	movs r2, 0
	bl GetMonData
	ldr r5, =gUnknown_0203CD74
	str r0, [r5]
	adds r4, 0x64
	adds r0, r4, 0
	movs r1, 0x3A
	movs r2, 0
	bl GetMonData
	ldr r1, [r5]
	adds r1, r0
	str r1, [r5]
	bl CalculatePlayerPartyCount
	ldr r0, =gTrainerBattleOpponent_A
	ldrh r0, [r0]
	bl sub_8195358
	lsls r0, 16
	lsrs r0, 16
	bl sub_818FBDC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818FA20

	thumb_func_start sub_818FA74
sub_818FA74: @ 818FA74
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x30
	adds r5, r2, 0
	str r3, [sp, 0x14]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	lsls r1, 16
	lsrs r1, 16
	str r1, [sp, 0x28]
	lsls r5, 24
	lsrs r5, 24
	add r0, sp, 0xC
	movs r1, 0x1
	negs r1, r1
	strb r1, [r0]
	ldr r0, [sp, 0x28]
	bl sub_8190168
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	str r6, [sp, 0x2C]
	bl sub_8165C40
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x64
	ldr r4, [sp, 0x10]
	adds r3, r4, 0
	muls r3, r0
	str r3, [sp, 0x18]
	ldr r6, =gEnemyParty
	adds r0, r3, r6
	ldr r7, =gSaveBlock2Ptr
	ldr r4, [r7]
	lsls r5, 1
	ldr r3, [sp, 0x28]
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 1
	adds r1, r5, r1
	ldr r6, =0x00000d64
	adds r4, r6
	adds r4, r1
	ldrh r3, [r4]
	ldr r7, =gUnknown_0203BC8C
	ldr r7, [r7]
	mov r8, r7
	lsls r3, 4
	add r3, r8
	ldrh r1, [r3]
	ldrb r3, [r3, 0xC]
	ldr r6, [sp, 0x2C]
	str r6, [sp]
	ldrh r4, [r4]
	lsls r4, 4
	add r4, r8
	ldrb r4, [r4, 0xB]
	str r4, [sp, 0x4]
	ldr r7, [sp, 0x14]
	str r7, [sp, 0x8]
	bl sub_8068634
	add r0, sp, 0xC
	movs r1, 0x1
	negs r1, r1
	strb r1, [r0]
	movs r6, 0
	ldr r2, [sp, 0x18]
	str r2, [sp, 0x1C]
	mov r10, r5
	ldr r3, =0x00000d64
	mov r9, r3
	ldr r3, =gUnknown_0203BC8C
	mov r4, r10
	str r4, [sp, 0x20]
_0818FB18:
	ldr r7, =gSaveBlock2Ptr
	ldr r1, [r7]
	ldr r2, [sp, 0x28]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 1
	mov r8, r0
	mov r5, r10
	add r5, r8
	add r1, r9
	adds r1, r5
	ldrh r0, [r1]
	ldr r1, [r3]
	lsls r0, 4
	adds r0, r1
	lsls r4, r6, 1
	adds r0, 0x2
	adds r0, r4
	ldrh r1, [r0]
	lsls r2, r6, 24
	lsrs r2, 24
	mov r12, r2
	ldr r7, [sp, 0x1C]
	ldr r2, =gEnemyParty
	adds r0, r7, r2
	mov r2, r12
	str r3, [sp, 0x24]
	bl SetMonMoveSlot
	ldr r7, =gSaveBlock2Ptr
	ldr r0, [r7]
	add r0, r9
	adds r0, r5
	ldrh r0, [r0]
	ldr r3, [sp, 0x24]
	ldr r1, [r3]
	lsls r0, 4
	adds r0, r1
	adds r0, 0x2
	adds r0, r4
	ldrh r0, [r0]
	cmp r0, 0xDA
	bne _0818FB74
	movs r1, 0
	add r0, sp, 0xC
	strb r1, [r0]
_0818FB74:
	adds r6, 0x1
	cmp r6, 0x3
	ble _0818FB18
	movs r0, 0x64
	ldr r1, [sp, 0x10]
	adds r4, r1, 0
	muls r4, r0
	ldr r0, =gEnemyParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x20
	add r2, sp, 0xC
	bl SetMonData
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, [sp, 0x20]
	add r1, r8
	ldr r2, =0x00000d64
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	ldr r1, =gUnknown_0203BC8C
	ldr r1, [r1]
	lsls r0, 4
	adds r0, r1
	ldrb r2, [r0, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0xC
	bl SetMonData
	add sp, 0x30
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_818FA74

	thumb_func_start sub_818FBDC
sub_818FBDC: @ 818FBDC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	movs r6, 0
	bl ZeroEnemyPartyMons
	mov r0, r8
	bl sub_818FC78
	adds r5, r0, 0
	bl Random
	adds r4, r0, 0
	bl Random
	lsls r4, 16
	lsrs r7, r4, 16
	lsls r0, 16
	orrs r7, r0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x5
	bls _0818FC46
	movs r4, 0
_0818FC20:
	movs r0, 0x1
	ands r0, r5
	cmp r0, 0
	beq _0818FC3C
	lsls r2, r4, 24
	lsrs r2, 24
	adds r0, r6, 0
	mov r1, r8
	adds r3, r7, 0
	bl sub_818FA74
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_0818FC3C:
	asrs r5, 1
	adds r4, 0x1
	cmp r4, 0x2
	ble _0818FC20
	b _0818FC6C
_0818FC46:
	movs r4, 0x2
_0818FC48:
	movs r0, 0x4
	ands r0, r5
	cmp r0, 0
	beq _0818FC64
	lsls r2, r4, 24
	lsrs r2, 24
	adds r0, r6, 0
	mov r1, r8
	adds r3, r7, 0
	bl sub_818FA74
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_0818FC64:
	lsls r5, 1
	subs r4, 0x1
	cmp r4, 0
	bge _0818FC48
_0818FC6C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_818FBDC

	thumb_func_start sub_818FC78
sub_818FC78: @ 818FC78
	push {r4,r5,lr}
	lsls r0, 16
	lsrs r4, r0, 16
	adds r5, r4, 0
	bl Random
	movs r1, 0x1
	ands r1, r0
	cmp r1, 0
	beq _0818FCA2
	adds r0, r4, 0
	movs r1, 0
	bl sub_818FCBC
	cmp r0, 0
	bne _0818FCB6
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_818FDB8
	b _0818FCB6
_0818FCA2:
	adds r0, r5, 0
	movs r1, 0
	bl sub_818FDB8
	cmp r0, 0
	bne _0818FCB6
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_818FCBC
_0818FCB6:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_818FC78

	thumb_func_start sub_818FCBC
sub_818FCBC: @ 818FCBC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0xC]
	movs r0, 0
	mov r9, r0
	mov r1, r8
	lsls r1, 2
	str r1, [sp, 0x18]
_0818FCDE:
	mov r2, r9
	lsls r0, r2, 2
	mov r2, sp
	adds r1, r2, r0
	movs r0, 0
	str r0, [r1]
	movs r7, 0
	mov r0, r9
	adds r0, 0x1
	str r0, [sp, 0x14]
	adds r5, r1, 0
	mov r1, r9
	lsls r1, 1
	str r1, [sp, 0x10]
_0818FCFA:
	movs r6, 0
	adds r2, r7, 0x1
	mov r10, r2
_0818FD00:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, [sp, 0x18]
	adds r0, r1, r2
	ldr r2, =0x00000d24
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	ldr r2, =0x000003fe
	cmp r0, r2
	bne _0818FD3C
	mov r1, r9
	lsls r0, r1, 24
	lsls r1, r7, 24
	lsrs r0, 24
	lsrs r1, 24
	bl sub_81A5060
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	b _0818FD60
	.pool
_0818FD3C:
	mov r2, r8
	lsls r0, r2, 1
	add r0, r8
	lsls r0, 1
	ldr r2, [sp, 0x10]
	adds r0, r2, r0
	ldr r2, =0x00000d64
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =gUnknown_0203BC8C
	ldr r1, [r1]
	lsls r0, 4
	adds r0, r1
	lsls r1, r7, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r4, [r0]
_0818FD60:
	movs r0, 0x64
	muls r0, r6
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	movs r2, 0
	bl sub_818FFC0
	ldr r1, [r5]
	adds r1, r0
	str r1, [r5]
	adds r6, 0x1
	cmp r6, 0x2
	ble _0818FD00
	mov r7, r10
	cmp r7, 0x3
	ble _0818FCFA
	ldr r0, [sp, 0x14]
	mov r9, r0
	cmp r0, 0x2
	ble _0818FCDE
	mov r0, sp
	ldr r1, [sp, 0xC]
	bl sub_818FEB4
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818FCBC

	thumb_func_start sub_818FDB8
sub_818FDB8: @ 818FDB8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0xC]
	movs r0, 0
	mov r9, r0
	mov r1, r8
	lsls r1, 2
	str r1, [sp, 0x18]
_0818FDDA:
	mov r2, r9
	lsls r0, r2, 2
	mov r2, sp
	adds r1, r2, r0
	movs r0, 0
	str r0, [r1]
	movs r7, 0
	mov r0, r9
	adds r0, 0x1
	str r0, [sp, 0x14]
	adds r5, r1, 0
	mov r1, r9
	lsls r1, 1
	str r1, [sp, 0x10]
_0818FDF6:
	movs r6, 0
	adds r2, r7, 0x1
	mov r10, r2
_0818FDFC:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, [sp, 0x18]
	adds r0, r1, r2
	ldr r2, =0x00000d24
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	ldr r2, =0x000003fe
	cmp r0, r2
	bne _0818FE38
	mov r1, r9
	lsls r0, r1, 24
	lsls r1, r7, 24
	lsrs r0, 24
	lsrs r1, 24
	bl sub_81A5060
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	b _0818FE5C
	.pool
_0818FE38:
	mov r2, r8
	lsls r0, r2, 1
	add r0, r8
	lsls r0, 1
	ldr r2, [sp, 0x10]
	adds r0, r2, r0
	ldr r2, =0x00000d64
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =gUnknown_0203BC8C
	ldr r1, [r1]
	lsls r0, 4
	adds r0, r1
	lsls r1, r7, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r4, [r0]
_0818FE5C:
	movs r0, 0x64
	muls r0, r6
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	movs r2, 0x1
	bl sub_818FFC0
	ldr r1, [r5]
	adds r1, r0
	str r1, [r5]
	adds r6, 0x1
	cmp r6, 0x2
	ble _0818FDFC
	mov r7, r10
	cmp r7, 0x3
	ble _0818FDF6
	ldr r0, [sp, 0x14]
	mov r9, r0
	cmp r0, 0x2
	ble _0818FDDA
	mov r0, sp
	ldr r1, [sp, 0xC]
	bl sub_818FEB4
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818FDB8

	thumb_func_start sub_818FEB4
sub_818FEB4: @ 818FEB4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	mov r10, r0
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0
	str r0, [sp, 0xC]
	movs r3, 0x2
	add r0, sp, 0x8
_0818FECE:
	str r3, [r0]
	subs r0, 0x4
	subs r3, 0x1
	cmp r3, 0
	bge _0818FECE
	mov r3, r10
	ldr r2, [r3]
	ldr r0, [r3, 0x4]
	cmp r2, r0
	bne _0818FF20
	ldr r0, [r3, 0x8]
	cmp r2, r0
	bne _0818FF20
	cmp r1, 0
	beq _0818FFAA
	movs r3, 0
	ldr r4, =gBitTable
_0818FEF0:
	str r3, [sp, 0x14]
	bl Random
	movs r1, 0x3
	ands r1, r0
	ldr r3, [sp, 0x14]
	cmp r1, 0x3
	beq _0818FF16
	lsls r0, r1, 2
	adds r0, r4
	ldr r1, [r0]
	ldr r0, [sp, 0xC]
	ands r0, r1
	cmp r0, 0
	bne _0818FF16
	ldr r0, [sp, 0xC]
	orrs r0, r1
	str r0, [sp, 0xC]
	adds r3, 0x1
_0818FF16:
	cmp r3, 0x2
	bne _0818FEF0
	b _0818FFAA
	.pool
_0818FF20:
	movs r3, 0
	mov r9, sp
	mov r8, r10
_0818FF26:
	adds r2, r3, 0x1
	cmp r2, 0x2
	bgt _0818FF84
	mov r6, r8
	mov r7, r9
	lsls r0, r2, 2
	mov r1, sp
	adds r5, r0, r1
	mov r1, r10
	adds r4, r0, r1
_0818FF3A:
	ldr r0, [r6]
	ldr r1, [r4]
	cmp r0, r1
	bge _0818FF4E
	str r1, [r6]
	str r0, [r4]
	ldr r1, [r7]
	ldr r0, [r5]
	str r0, [r7]
	str r1, [r5]
_0818FF4E:
	ldr r1, [r6]
	ldr r0, [r4]
	cmp r1, r0
	bne _0818FF7A
	str r2, [sp, 0x10]
	str r3, [sp, 0x14]
	bl Random
	movs r1, 0x1
	ands r1, r0
	ldr r2, [sp, 0x10]
	ldr r3, [sp, 0x14]
	cmp r1, 0
	beq _0818FF7A
	ldr r1, [r6]
	ldr r0, [r4]
	str r0, [r6]
	str r1, [r4]
	ldr r1, [r7]
	ldr r0, [r5]
	str r0, [r7]
	str r1, [r5]
_0818FF7A:
	adds r5, 0x4
	adds r4, 0x4
	adds r2, 0x1
	cmp r2, 0x2
	ble _0818FF3A
_0818FF84:
	movs r4, 0x4
	add r9, r4
	add r8, r4
	adds r3, 0x1
	cmp r3, 0x1
	ble _0818FF26
	ldr r2, =gBitTable
	mov r1, sp
	movs r3, 0x1
_0818FF96:
	ldm r1!, {r0}
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ldr r4, [sp, 0xC]
	orrs r4, r0
	str r4, [sp, 0xC]
	subs r3, 0x1
	cmp r3, 0
	bge _0818FF96
_0818FFAA:
	ldr r0, [sp, 0xC]
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_818FEB4

	thumb_func_start sub_818FFC0
sub_818FFC0: @ 818FFC0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	adds r3, r0, 0
	adds r4, r1, 0
	str r2, [sp]
	movs r6, 0
	movs r2, 0x14
	cmp r3, 0
	beq _0818FFF0
	ldr r0, =0x0000ffff
	cmp r3, r0
	beq _0818FFF0
	ldr r0, =gBattleMoves
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 2
	adds r3, r1, r0
	ldrb r0, [r3, 0x1]
	cmp r0, 0
	bne _0818FFFC
_0818FFF0:
	movs r0, 0
	b _08190156
	.pool
_0818FFFC:
	ldr r1, =gBaseStats
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x6]
	mov r10, r1
	ldrb r1, [r0, 0x7]
	mov r9, r1
	ldrb r0, [r0, 0x16]
	mov r8, r0
	ldrb r3, [r3, 0x2]
	str r3, [sp, 0x4]
	cmp r0, 0x1A
	bne _0819002C
	cmp r3, 0x4
	bne _0819002C
	ldr r0, [sp]
	cmp r0, 0x1
	bne _081900AA
	movs r2, 0x8
	b _081900A4
	.pool
_0819002C:
	ldr r0, =gUnknown_0831ACE8
	adds r1, r6, r0
	ldrb r0, [r1]
	ldr r7, =gUnknown_0831ACE8
	cmp r0, 0xFF
	beq _081900A4
	adds r4, r1, 0
_0819003A:
	ldrb r0, [r4]
	cmp r0, 0xFE
	beq _08190096
	ldrb r0, [r4]
	ldr r1, [sp, 0x4]
	cmp r0, r1
	bne _08190096
	ldrb r0, [r4, 0x1]
	adds r5, r6, 0x1
	cmp r0, r10
	bne _0819006C
	adds r1, r6, 0x2
	mov r0, r8
	cmp r0, 0x19
	bne _0819005E
	ldrb r0, [r4, 0x2]
	cmp r0, 0x28
	bne _0819006C
_0819005E:
	adds r0, r1, r7
	ldrb r0, [r0]
	muls r0, r2
	movs r1, 0xA
	bl __divsi3
	adds r2, r0, 0
_0819006C:
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, r9
	bne _08190096
	cmp r10, r9
	beq _08190096
	adds r1, r6, 0x2
	mov r0, r8
	cmp r0, 0x19
	bne _08190088
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, 0x28
	bne _08190096
_08190088:
	adds r0, r1, r7
	ldrb r0, [r0]
	muls r0, r2
	movs r1, 0xA
	bl __divsi3
	adds r2, r0, 0
_08190096:
	adds r4, 0x3
	adds r6, 0x3
	ldr r1, =gUnknown_0831ACE8
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _0819003A
_081900A4:
	ldr r0, [sp]
	cmp r0, 0x1
	beq _081900E0
_081900AA:
	ldr r1, [sp]
	cmp r1, 0x1
	bgt _081900BC
	cmp r1, 0
	beq _081900C4
	b _08190154
	.pool
_081900BC:
	ldr r0, [sp]
	cmp r0, 0x2
	beq _08190114
	b _08190154
_081900C4:
	cmp r2, 0xA
	beq _08190146
	cmp r2, 0xA
	ble _08190146
	cmp r2, 0x28
	beq _0819014A
	cmp r2, 0x28
	bgt _081900DA
	cmp r2, 0x14
	beq _08190104
	b _08190146
_081900DA:
	cmp r2, 0x50
	bne _08190146
	b _08190100
_081900E0:
	cmp r2, 0xA
	beq _08190104
	cmp r2, 0xA
	bgt _081900F2
	cmp r2, 0
	beq _08190100
	cmp r2, 0x5
	beq _0819014A
	b _08190146
_081900F2:
	cmp r2, 0x28
	beq _08190108
	cmp r2, 0x28
	ble _08190146
	cmp r2, 0x50
	beq _0819010E
	b _08190146
_08190100:
	movs r2, 0x8
	b _08190154
_08190104:
	movs r2, 0x2
	b _08190154
_08190108:
	movs r2, 0x2
	negs r2, r2
	b _08190154
_0819010E:
	movs r2, 0x4
	negs r2, r2
	b _08190154
_08190114:
	cmp r2, 0xA
	beq _08190146
	cmp r2, 0xA
	bgt _08190126
	cmp r2, 0
	beq _0819013A
	cmp r2, 0x5
	beq _08190140
	b _08190146
_08190126:
	cmp r2, 0x28
	beq _0819014E
	cmp r2, 0x28
	bgt _08190134
	cmp r2, 0x14
	beq _0819014A
	b _08190146
_08190134:
	cmp r2, 0x50
	beq _08190152
	b _08190146
_0819013A:
	movs r2, 0x10
	negs r2, r2
	b _08190154
_08190140:
	movs r2, 0x8
	negs r2, r2
	b _08190154
_08190146:
	movs r2, 0
	b _08190154
_0819014A:
	movs r2, 0x4
	b _08190154
_0819014E:
	movs r2, 0xC
	b _08190154
_08190152:
	movs r2, 0x14
_08190154:
	adds r0, r2, 0
_08190156:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_818FFC0

	thumb_func_start sub_8190168
sub_8190168: @ 8190168
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	cmp r0, 0x63
	bls _0819019A
	movs r1, 0x6
	cmp r0, 0x77
	bls _0819019A
	movs r1, 0x9
	cmp r0, 0x8B
	bls _0819019A
	movs r1, 0xC
	cmp r0, 0x9F
	bls _0819019A
	movs r1, 0xF
	cmp r0, 0xB3
	bls _0819019A
	movs r1, 0x12
	cmp r0, 0xC7
	bls _0819019A
	movs r1, 0x1F
	cmp r0, 0xDB
	bhi _0819019A
	movs r1, 0x15
_0819019A:
	adds r0, r1, 0
	pop {r1}
	bx r1
	thumb_func_end sub_8190168

	thumb_func_start sub_81901A0
sub_81901A0: @ 81901A0
	push {r4-r7,lr}
	adds r3, r0, 0
	adds r2, r1, 0
	movs r5, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r4, =0x00000d24
	adds r1, r4
	ldrh r1, [r1]
	lsls r1, 22
	lsrs r1, 22
	mov r12, r0
	ldr r6, =gUnknown_0860D10C
	cmp r1, r2
	beq _081901D8
	mov r7, r12
_081901C0:
	adds r5, 0x1
	cmp r5, 0xF
	bgt _081901D8
	ldr r0, [r7]
	lsls r1, r5, 2
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r2
	bne _081901C0
_081901D8:
	cmp r3, 0
	beq _0819026C
	cmp r3, 0x3
	bne _081901FC
	lsls r0, r5, 2
	adds r1, r0, 0x3
	adds r1, r6
	ldrb r1, [r1]
	adds r4, r1, 0
	adds r4, 0x8
	b _08190206
	.pool
_081901FC:
	lsls r0, r5, 2
	adds r1, r3, r0
	adds r1, r6
	ldrb r1, [r1]
	adds r4, r1, 0x4
_08190206:
	adds r0, r3, r0
	adds r0, r6
	ldrb r2, [r0]
	cmp r2, r4
	bge _08190256
	ldr r1, =gUnknown_0860D14C
	adds r0, r2, r1
	ldrb r3, [r0]
	adds r6, r1, 0
	cmp r3, r5
	beq _08190234
	mov r1, r12
	ldr r0, [r1]
	lsls r1, r3, 2
	adds r0, r1
	ldr r3, =0x00000d25
	adds r0, r3
	b _0819024E
	.pool
_08190234:
	adds r2, 0x1
	cmp r2, r4
	bge _08190256
	adds r0, r2, r6
	ldrb r1, [r0]
	cmp r1, r5
	beq _08190234
	mov r3, r12
	ldr r0, [r3]
	lsls r1, 2
	adds r0, r1
	ldr r1, =0x00000d25
	adds r0, r1
_0819024E:
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08190234
_08190256:
	cmp r2, r4
	beq _08190286
	ldr r0, =gUnknown_0860D14C
	adds r0, r2, r0
	ldrb r0, [r0]
	b _08190292
	.pool
_0819026C:
	mov r3, r12
	ldr r1, [r3]
	lsls r0, r5, 2
	adds r0, r6
	ldrb r2, [r0]
	lsls r0, r2, 2
	adds r1, r0
	ldr r0, =0x00000d25
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 29
	cmp r0, 0
	bge _08190290
_08190286:
	movs r0, 0xFF
	b _08190292
	.pool
_08190290:
	adds r0, r2, 0
_08190292:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81901A0

	thumb_func_start sub_8190298
sub_8190298: @ 8190298
	push {lr}
	bl sub_81902AC
	ldr r1, =gTrainerBattleOpponent_A
	strh r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190298

	thumb_func_start sub_81902AC
sub_81902AC: @ 81902AC
	push {r4,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r4, [r0]
	ldr r1, =0x00000cb2
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r1, =0x000003ff
	bl sub_81901A0
	lsls r0, 2
	adds r4, r0
	ldr r0, =0x00000d24
	adds r4, r0
	ldrh r0, [r4]
	lsls r0, 22
	lsrs r0, 22
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81902AC

	thumb_func_start sub_81902E4
sub_81902E4: @ 81902E4
	push {lr}
	ldr r0, =gTrainerBattleOpponent_A
	ldrh r0, [r0]
	movs r1, 0
	bl sub_8162614
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81902E4

	thumb_func_start sub_81902F8
sub_81902F8: @ 81902F8
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl sub_81A4C30
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81902F8

	thumb_func_start sub_819033C
sub_819033C: @ 819033C
	push {r4,r5,lr}
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r4, [r0]
	lsls r4, 30
	lsrs r4, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 24
	ldr r1, [r5]
	lsls r4, 1
	lsrs r0, 22
	adds r4, r0
	ldr r3, =0x00000d0c
	adds r1, r3
	adds r1, r4
	ldrh r0, [r1]
	ldr r2, =0x000003e6
	cmp r0, r2
	bhi _0819036E
	adds r0, 0x1
	strh r0, [r1]
_0819036E:
	ldr r0, [r5]
	ldr r1, =0x00000d1c
	adds r0, r1
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, r2
	bhi _08190380
	adds r0, 0x1
	strh r0, [r1]
_08190380:
	ldr r0, [r5]
	adds r1, r0, r3
	adds r1, r4
	ldr r2, =0x00000d14
	adds r0, r2
	adds r0, r4
	ldrh r1, [r1]
	ldrh r2, [r0]
	cmp r1, r2
	bls _08190396
	strh r1, [r0]
_08190396:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819033C

	thumb_func_start sub_81903B8
sub_81903B8: @ 81903B8
	push {r4,r5,lr}
	ldr r0, =sub_8190400
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gTasks
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	adds r4, r1
	movs r5, 0
	strh r5, [r4, 0x8]
	bl sub_81902AC
	lsls r0, 16
	lsrs r0, 16
	bl sub_8195358
	strh r0, [r4, 0xA]
	strh r5, [r4, 0xC]
	strh r5, [r4, 0xE]
	ldr r0, =sub_8194B54
	bl SetMainCallback2
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81903B8

	thumb_func_start sub_8190400
sub_8190400: @ 8190400
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	ldr r1, =gTasks
	lsls r0, 2
	add r0, r10
	lsls r0, 3
	adds r6, r0, r1
	movs r0, 0xA
	ldrsh r5, [r6, r0]
	movs r2, 0xC
	ldrsh r1, [r6, r2]
	mov r9, r1
	movs r0, 0xE
	ldrsh r7, [r6, r0]
	movs r1, 0x8
	ldrsh r4, [r6, r1]
	cmp r4, 0x1
	beq _08190508
	cmp r4, 0x1
	bgt _08190440
	cmp r4, 0
	beq _0819044E
	b _08190772
	.pool
_08190440:
	cmp r4, 0x2
	bne _08190446
	b _08190570
_08190446:
	cmp r4, 0x3
	bne _0819044C
	b _08190634
_0819044C:
	b _08190772
_0819044E:
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0x1
	bl EnableInterrupts
	str r4, [sp, 0x4]
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, =0x05006000
	add r0, sp, 0x4
	bl CpuSet
	movs r0, 0
	bl ResetBgsAndClearDma3BusyFlags
	ldr r1, =gUnknown_0860CE84
	movs r0, 0
	movs r2, 0x4
	bl InitBgsFromTemplates
	ldr r0, =gUnknown_0860CEB4
	bl InitWindows
	bl DeactivateAllTextPrinters
	ldr r0, =gUnknown_02022E14
	strh r4, [r0]
	ldr r0, =gUnknown_02022E16
	strh r4, [r0]
	ldr r0, =gUnknown_02022E18
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r4, [r0]
	ldr r0, =gUnknown_02022E20
	strh r4, [r0]
	ldr r0, =gUnknown_02022E22
	strh r4, [r0]
	mov r2, r9
	cmp r2, 0x2
	bne _081904DC
	ldr r0, =gUnknown_02022E1C
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1E
	strh r4, [r0]
	b _081904E6
	.pool
_081904DC:
	ldr r0, =gUnknown_02022E1C
	strh r4, [r0]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
_081904E6:
	ldr r0, =gTasks
	mov r2, r10
	lsls r1, r2, 2
	add r1, r10
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _08190772
	.pool
_08190508:
	movs r0, 0x50
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x52
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x54
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4C
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x40
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x44
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x42
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x46
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x3F
	bl SetGpuReg
	bl ResetPaletteFade
	bl ResetSpriteData
	bl FreeAllSpritePalettes
	ldr r1, =gReservedSpritePaletteCount
	movs r0, 0x4
	strb r0, [r1]
	b _08190602
	.pool
_08190570:
	ldr r1, =gUnknown_08D83D50
	movs r5, 0x80
	lsls r5, 6
	movs r7, 0
	str r7, [sp]
	movs r0, 0x2
	adds r2, r5, 0
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r1, =gUnknown_08D84970
	movs r4, 0x1
	str r4, [sp]
	movs r0, 0x2
	adds r2, r5, 0
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r1, =gUnknown_08D84F00
	movs r2, 0x80
	lsls r2, 4
	str r4, [sp]
	movs r0, 0x3
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r0, =gUnknown_0860CF50
	bl LoadCompressedObjectPic
	ldr r0, =gUnknown_08D85358
	movs r4, 0x80
	lsls r4, 2
	movs r1, 0
	adds r2, r4, 0
	bl LoadCompressedPalette
	ldr r0, =gUnknown_08D85444
	movs r1, 0x80
	lsls r1, 1
	adds r2, r4, 0
	bl LoadCompressedPalette
	ldr r0, =gUnknown_08D85600
	movs r1, 0xF0
	movs r2, 0x20
	bl LoadCompressedPalette
	mov r0, r9
	cmp r0, 0x2
	bne _081905DE
	ldr r0, =gUnknown_08D854C8
	movs r1, 0x50
	movs r2, 0x20
	bl LoadCompressedPalette
_081905DE:
	str r7, [sp, 0x8]
	add r0, sp, 0x8
	ldr r1, =gPlttBufferFaded
	ldr r2, =0x05000100
	bl CpuSet
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	movs r0, 0x3
	bl ShowBg
_08190602:
	ldrh r0, [r6, 0x8]
	adds r0, 0x1
	strh r0, [r6, 0x8]
	b _08190772
	.pool
_08190634:
	ldr r0, =sub_8194B70
	bl SetVBlankCallback
	ldr r4, =gUnknown_0203CD78
	movs r0, 0x14
	bl AllocZeroed
	str r0, [r4]
	movs r6, 0
	lsls r5, 24
	movs r2, 0xFF
_0819064A:
	ldr r1, [r4]
	adds r1, r6
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	adds r6, 0x1
	cmp r6, 0xF
	ble _0819064A
	bl sub_80D2F04
	ldr r0, =sub_8190CD4
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x8]
	strh r1, [r0, 0xC]
	mov r1, r9
	strh r1, [r0, 0xE]
	strh r7, [r0, 0x10]
	mov r2, r9
	cmp r2, 0x2
	bne _081906A8
	lsrs r1, r5, 24
	movs r0, 0
	bl sub_819314C
	ldr r0, =gUnknown_0203CD78
	ldr r1, [r0]
	movs r0, 0x1
	strb r0, [r1, 0x10]
	b _081906B0
	.pool
_081906A8:
	lsrs r1, r5, 24
	movs r0, 0
	bl sub_81924E0
_081906B0:
	movs r1, 0xFA
	lsls r1, 5
	movs r0, 0
	bl SetGpuReg
	mov r0, r9
	cmp r0, 0
	beq _0819076C
	ldr r5, =gUnknown_0860D068
	adds r0, r5, 0
	movs r1, 0x78
	movs r2, 0x4
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r4, r7, 4
	adds r4, r7
	lsls r4, 2
	ldr r1, =gSprites
	mov r8, r1
	add r4, r8
	adds r0, r4, 0
	movs r1, 0
	bl StartSpriteAnim
	strh r6, [r4, 0x2E]
	adds r0, r5, 0
	movs r1, 0x78
	movs r2, 0x9C
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r4, r7, 4
	adds r4, r7
	lsls r4, 2
	add r4, r8
	adds r0, r4, 0
	movs r1, 0x1
	bl StartSpriteAnim
	strh r6, [r4, 0x2E]
	ldr r5, =gUnknown_0860D050
	adds r0, r5, 0
	movs r1, 0x6
	movs r2, 0x50
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	mov r2, r8
	adds r4, r0, r2
	adds r0, r4, 0
	movs r1, 0
	bl StartSpriteAnim
	strh r6, [r4, 0x2E]
	movs r0, 0
	strh r0, [r4, 0x30]
	mov r1, r9
	cmp r1, 0x1
	bne _08190746
	adds r0, r4, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_08190746:
	adds r0, r5, 0
	movs r1, 0xEA
	movs r2, 0x50
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r4, r7, 4
	adds r4, r7
	lsls r4, 2
	add r4, r8
	adds r0, r4, 0
	movs r1, 0x1
	bl StartSpriteAnim
	strh r6, [r4, 0x2E]
	movs r0, 0x1
	strh r0, [r4, 0x30]
_0819076C:
	mov r0, r10
	bl DestroyTask
_08190772:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190400

	thumb_func_start sub_8190790
sub_8190790: @ 8190790
	push {lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x22]
	adds r1, r0, 0x4
	strh r1, [r2, 0x22]
	movs r3, 0x2E
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _081907D4
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x20
	negs r1, r1
	cmp r0, r1
	blt _081907BC
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
_081907BC:
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	strh r0, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x28
	bne _081907F0
	ldr r0, =SpriteCallbackDummy
	str r0, [r2, 0x1C]
	b _081907F0
	.pool
_081907D4:
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xBF
	ble _081907F0
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r3, 0x32
	ldrsh r1, [r2, r3]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldrh r0, [r2, 0x34]
	bl sub_818D8F0
_081907F0:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190790

	thumb_func_start sub_81907F8
sub_81907F8: @ 81907F8
	push {lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x22]
	subs r1, r0, 0x4
	strh r1, [r2, 0x22]
	movs r3, 0x2E
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _08190838
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xC0
	bgt _08190820
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
_08190820:
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	strh r0, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x28
	bne _08190858
	ldr r0, =SpriteCallbackDummy
	str r0, [r2, 0x1C]
	b _08190858
	.pool
_08190838:
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x20
	negs r1, r1
	cmp r0, r1
	bgt _08190858
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r3, 0x32
	ldrsh r1, [r2, r3]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldrh r0, [r2, 0x34]
	bl sub_818D8F0
_08190858:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81907F8

	thumb_func_start sub_8190860
sub_8190860: @ 8190860
	push {lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x20]
	adds r1, r0, 0x4
	strh r1, [r2, 0x20]
	movs r3, 0x2E
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _081908A4
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x20
	negs r1, r1
	cmp r0, r1
	blt _0819088C
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
_0819088C:
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	strh r0, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x40
	bne _081908C0
	ldr r0, =SpriteCallbackDummy
	str r0, [r2, 0x1C]
	b _081908C0
	.pool
_081908A4:
	lsls r1, 16
	ldr r0, =0x010f0000
	cmp r1, r0
	ble _081908C0
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r3, 0x32
	ldrsh r1, [r2, r3]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldrh r0, [r2, 0x34]
	bl sub_818D8F0
_081908C0:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190860

	thumb_func_start sub_81908CC
sub_81908CC: @ 81908CC
	push {lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x20]
	subs r1, r0, 0x4
	strh r1, [r2, 0x20]
	movs r3, 0x2E
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _08190910
	lsls r1, 16
	movs r0, 0x88
	lsls r0, 17
	cmp r1, r0
	bgt _081908F6
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
_081908F6:
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	strh r0, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x40
	bne _08190930
	ldr r0, =SpriteCallbackDummy
	str r0, [r2, 0x1C]
	b _08190930
	.pool
_08190910:
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x20
	negs r1, r1
	cmp r0, r1
	bgt _08190930
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r3, 0x32
	ldrsh r1, [r2, r3]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldrh r0, [r2, 0x34]
	bl sub_818D8F0
_08190930:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81908CC

	thumb_func_start sub_8190938
sub_8190938: @ 8190938
	push {lr}
	adds r1, r0, 0
	movs r2, 0x34
	ldrsh r0, [r1, r2]
	cmp r0, 0
	bne _0819094A
	adds r0, r1, 0
	bl sub_80D30DC
_0819094A:
	pop {r0}
	bx r0
	thumb_func_end sub_8190938

	thumb_func_start sub_8190950
sub_8190950: @ 8190950
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _08190962
	adds r0, r4, 0
	bl sub_80D30DC
_08190962:
	ldrh r0, [r4, 0x22]
	adds r1, r0, 0x4
	strh r1, [r4, 0x22]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _081909A4
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x10
	negs r1, r1
	cmp r0, r1
	blt _0819098A
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_0819098A:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x28
	bne _081909C0
	ldr r0, =sub_8190938
	str r0, [r4, 0x1C]
	b _081909C0
	.pool
_081909A4:
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xAF
	ble _081909C0
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	adds r0, r4, 0
	bl sub_80D2EF8
_081909C0:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190950

	thumb_func_start sub_81909CC
sub_81909CC: @ 81909CC
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _081909DE
	adds r0, r4, 0
	bl sub_80D30DC
_081909DE:
	ldrh r0, [r4, 0x22]
	subs r1, r0, 0x4
	strh r1, [r4, 0x22]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _08190A1C
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xB0
	bgt _08190A02
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_08190A02:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x28
	bne _08190A3C
	ldr r0, =sub_8190938
	str r0, [r4, 0x1C]
	b _08190A3C
	.pool
_08190A1C:
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x10
	negs r1, r1
	cmp r0, r1
	bgt _08190A3C
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	adds r0, r4, 0
	bl sub_80D2EF8
_08190A3C:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81909CC

	thumb_func_start sub_8190A48
sub_8190A48: @ 8190A48
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _08190A5A
	adds r0, r4, 0
	bl sub_80D30DC
_08190A5A:
	ldrh r0, [r4, 0x20]
	adds r1, r0, 0x4
	strh r1, [r4, 0x20]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _08190A9C
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x10
	negs r1, r1
	cmp r0, r1
	blt _08190A82
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_08190A82:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x40
	bne _08190AB8
	ldr r0, =sub_8190938
	str r0, [r4, 0x1C]
	b _08190AB8
	.pool
_08190A9C:
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0xFF
	ble _08190AB8
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	adds r0, r4, 0
	bl sub_80D2EF8
_08190AB8:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190A48

	thumb_func_start sub_8190AC4
sub_8190AC4: @ 8190AC4
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _08190AD6
	adds r0, r4, 0
	bl sub_80D30DC
_08190AD6:
	ldrh r0, [r4, 0x20]
	subs r1, r0, 0x4
	strh r1, [r4, 0x20]
	movs r2, 0x2E
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _08190B14
	lsls r1, 16
	movs r0, 0x80
	lsls r0, 17
	cmp r1, r0
	bgt _08190AFC
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_08190AFC:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	strh r0, [r4, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x40
	bne _08190B34
	ldr r0, =sub_8190938
	str r0, [r4, 0x1C]
	b _08190B34
	.pool
_08190B14:
	lsls r0, r1, 16
	asrs r0, 16
	movs r1, 0x10
	negs r1, r1
	cmp r0, r1
	bgt _08190B34
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	adds r0, r4, 0
	bl sub_80D2EF8
_08190B34:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190AC4

	thumb_func_start sub_8190B40
sub_8190B40: @ 8190B40
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	adds r3, r0, 0
	movs r0, 0x2E
	ldrsh r6, [r3, r0]
	ldr r2, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r4, r0, r2
	movs r7, 0x10
	ldrsh r1, [r4, r7]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	movs r1, 0xA
	ldrsh r0, [r0, r1]
	ldr r1, =gUnknown_0860D080
	adds r0, r1
	ldrb r0, [r0]
	mov r10, r0
	ldr r1, =gSaveBlock2Ptr
	ldr r5, [r1]
	ldr r7, =0x00000cb2
	adds r0, r5, r7
	ldrh r0, [r0]
	mov r12, r0
	movs r7, 0xE
	ldrsh r0, [r4, r7]
	mov r9, r2
	mov r8, r1
	cmp r0, 0x1
	bne _08190C0C
	movs r1, 0x30
	ldrsh r0, [r3, r1]
	cmp r0, 0
	beq _08190BFC
	mov r2, r10
	lsls r0, r2, 2
	adds r1, r5, r0
	ldr r7, =0x00000d25
	adds r1, r7
	ldrb r2, [r1]
	lsls r1, r2, 29
	adds r4, r0, 0
	cmp r1, 0
	bge _08190BB6
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r1, [r0, 0x10]
	subs r1, 0x1
	lsls r0, r2, 27
	lsrs r0, 30
	cmp r1, r0
	blt _08190C32
_08190BB6:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r4
	ldr r2, =0x00000d25
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08190BD4
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	subs r0, 0x1
	cmp r0, r12
	blt _08190C32
_08190BD4:
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	add r0, r9
	movs r7, 0x8
	ldrsh r0, [r0, r7]
	b _08190C4C
	.pool
_08190BFC:
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	bne _08190C32
	b _08190C48
	.pool
_08190C0C:
	movs r2, 0x30
	ldrsh r0, [r3, r2]
	cmp r0, 0
	beq _08190C28
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0x1
	bls _08190C32
	movs r7, 0x8
	ldrsh r0, [r4, r7]
	b _08190C4C
	.pool
_08190C28:
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	beq _08190C48
_08190C32:
	adds r2, r3, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	b _08190C5C
	.pool
_08190C48:
	movs r1, 0x8
	ldrsh r0, [r4, r1]
_08190C4C:
	cmp r0, 0x2
	bne _08190C5C
	adds r0, r3, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_08190C5C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8190B40

	thumb_func_start sub_8190C6C
sub_8190C6C: @ 8190C6C
	push {lr}
	adds r3, r0, 0
	movs r0, 0x2E
	ldrsh r1, [r3, r0]
	ldr r2, =gTasks
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r1, r0, r2
	movs r2, 0xE
	ldrsh r0, [r1, r2]
	cmp r0, 0x1
	bne _08190C9C
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	bne _08190CA6
	b _08190CC0
	.pool
_08190C9C:
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0x1
	beq _08190CC0
_08190CA6:
	movs r2, 0x8
	ldrsh r0, [r1, r2]
	cmp r0, 0x2
	bne _08190CCE
	adds r0, r3, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	b _08190CCE
	.pool
_08190CC0:
	adds r2, r3, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_08190CCE:
	pop {r0}
	bx r0
	thumb_func_end sub_8190C6C

	thumb_func_start sub_8190CD4
sub_8190CD4: @ 8190CD4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r1, =gTasks
	lsls r0, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	movs r3, 0xE
	ldrsh r2, [r0, r3]
	mov r9, r2
	movs r4, 0x10
	ldrsh r7, [r0, r4]
	movs r5, 0x8
	ldrsh r0, [r0, r5]
	cmp r0, 0x8
	bls _08190D06
	bl _08192202
_08190D06:
	lsls r0, 2
	ldr r1, =_08190D18
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08190D18:
	.4byte _08190D3C
	.4byte _08190D7C
	.4byte _08190DA8
	.4byte _08190E48
	.4byte _08191FF8
	.4byte _08192038
	.4byte _08192078
	.4byte _081920BC
	.4byte _08192106
_08190D3C:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _08190D50
	bl _08192202
_08190D50:
	movs r0, 0x1
	negs r0, r0
	str r1, [sp]
	movs r1, 0
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	mov r6, r8
	lsls r0, r6, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	movs r1, 0x1
	strh r1, [r0, 0x8]
	bl _08192202
	.pool
_08190D7C:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08190D8C
	bl _08192202
_08190D8C:
	mov r1, r8
	lsls r0, r1, 2
	add r0, r8
	lsls r0, 3
	ldr r2, =gTasks
	adds r0, r2
	movs r1, 0x2
	strh r1, [r0, 0x8]
	bl _08192202
	.pool
_08190DA8:
	mov r0, r8
	bl sub_819221C
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x8
	bgt _08190DBE
	cmp r6, 0x1
	bge _08190DF0
	bl _08192202
_08190DBE:
	cmp r6, 0x9
	beq _08190DC6
	bl _08192202
_08190DC6:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	mov r3, r8
	lsls r0, r3, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	movs r1, 0x8
	strh r1, [r0, 0x8]
	bl _08192202
	.pool
_08190DF0:
	ldr r1, =gTasks
	mov r4, r8
	lsls r2, r4, 2
	adds r0, r2, r4
	lsls r0, 3
	adds r0, r1
	strh r6, [r0, 0x12]
	movs r5, 0xC
	ldrsh r0, [r0, r5]
	movs r1, 0
	mov r9, r2
	cmp r0, 0
	beq _08190E0C
	movs r1, 0x9
_08190E0C:
	adds r6, r1, 0
	adds r0, r6, 0
	adds r0, 0x9
	cmp r6, r0
	bge _08190E32
	adds r5, r0, 0
_08190E18:
	lsls r4, r6, 24
	lsrs r4, 24
	adds r0, r4, 0
	movs r1, 0x2
	bl CopyWindowToVram
	adds r0, r4, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	adds r6, 0x1
	cmp r6, r5
	blt _08190E18
_08190E32:
	ldr r0, =gTasks
	mov r1, r9
	add r1, r8
	lsls r1, 3
	adds r1, r0
	movs r0, 0x3
	strh r0, [r1, 0x8]
	bl _08192202
	.pool
_08190E48:
	mov r6, r8
	lsls r1, r6, 2
	adds r0, r1, r6
	lsls r0, 3
	ldr r2, =gTasks
	adds r0, r2
	movs r3, 0x12
	ldrsh r6, [r0, r3]
	subs r0, r6, 0x1
	mov r9, r1
	cmp r0, 0x7
	bls _08190E64
	bl _08192202
_08190E64:
	lsls r0, 2
	ldr r1, =_08190E78
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08190E78:
	.4byte _08190E98
	.4byte _08191234
	.4byte _081915CC
	.4byte _08191B08
	.4byte _08190E98
	.4byte _08191234
	.4byte _0819187C
	.4byte _08191D68
_08190E98:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r0, r4
	movs r5, 0xC
	ldrsh r2, [r0, r5]
	cmp r2, 0
	beq _08190ED4
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r0, =gUnknown_02022E18
	strh r1, [r0]
	ldr r1, =gUnknown_02022E1A
	movs r0, 0xA0
	strh r0, [r1]
	b _08190EE6
	.pool
_08190ED4:
	ldr r0, =gUnknown_02022E14
	strh r2, [r0]
	ldr r1, =gUnknown_02022E16
	movs r0, 0xA0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E18
	strh r2, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r2, [r0]
_08190EE6:
	cmp r6, 0x1
	bne _08190F9C
	ldr r5, =gUnknown_0203CD78
	ldr r0, [r5]
	ldrb r1, [r0, 0x10]
	cmp r1, 0
	bne _08190F50
	ldr r0, =gUnknown_02022E1C
	strh r1, [r0]
	ldr r1, =gUnknown_02022E1E
	movs r6, 0xA0
	lsls r6, 1
	adds r0, r6, 0
	strh r0, [r1]
	ldr r3, =gUnknown_0860D080
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r4, 0xA
	ldrsh r1, [r0, r4]
	adds r1, r3
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0xC]
	movs r0, 0x10
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_81924E0
	b _08191084
	.pool
_08190F50:
	ldr r1, =gUnknown_02022E1C
	movs r6, 0x80
	lsls r6, 1
	adds r0, r6, 0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E1E
	movs r4, 0
	strh r4, [r0]
	ldr r3, =gUnknown_0860D080
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r6, 0xA
	ldrsh r1, [r0, r6]
	adds r1, r3
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0xC]
	movs r0, 0x10
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_81924E0
	ldr r0, [r5]
	strb r4, [r0, 0x10]
	b _08191084
	.pool
_08190F9C:
	ldr r6, =gUnknown_0203CD78
	ldr r1, [r6]
	ldrb r5, [r1, 0x10]
	cmp r5, 0
	bne _08190FF8
	ldr r4, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r4
	movs r2, 0xA
	ldrsh r0, [r0, r2]
	adds r2, r0, 0
	subs r2, 0x10
	lsls r0, r2, 24
	lsrs r0, 24
	adds r1, 0x11
	bl sub_8192F08
	ldr r0, =gUnknown_02022E1C
	strh r5, [r0]
	ldr r1, =gUnknown_02022E1E
	movs r3, 0xA0
	lsls r3, 1
	adds r0, r3, 0
	strh r0, [r1]
	ldr r2, [r6]
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r4
	ldrb r1, [r0, 0xC]
	movs r0, 0x10
	orrs r0, r1
	ldrb r1, [r2, 0x11]
	bl sub_81924E0
	b _08191084
	.pool
_08190FF8:
	cmp r5, 0x2
	bne _0819104C
	ldr r4, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r4
	movs r5, 0xA
	ldrsh r0, [r0, r5]
	adds r2, r0, 0
	subs r2, 0x10
	lsls r0, r2, 24
	lsrs r0, 24
	adds r1, 0x11
	bl sub_8192F08
	ldr r1, =gUnknown_02022E1C
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r2, 0xA0
	lsls r2, 1
	adds r0, r2, 0
	strh r0, [r1]
	ldr r2, [r6]
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r4
	ldrb r1, [r0, 0xC]
	movs r0, 0x10
	orrs r0, r1
	ldrb r1, [r2, 0x12]
	bl sub_81924E0
	b _08191084
	.pool
_0819104C:
	ldr r1, =gUnknown_02022E1C
	movs r3, 0x80
	lsls r3, 1
	adds r0, r3, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	movs r4, 0xA
	ldrsh r0, [r0, r4]
	adds r2, r0, 0
	subs r2, 0x10
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0xC]
	movs r0, 0x10
	orrs r0, r1
	lsls r1, r2, 24
	lsrs r1, 24
	bl sub_819314C
_08191084:
	movs r6, 0
	ldr r5, =gUnknown_0203CD78
	mov r10, r5
	ldr r3, =gSprites
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r1, =gTasks
	adds r5, r0, r1
	mov r12, r6
	adds r4, r3, 0
	adds r4, 0x1C
	movs r7, 0x1
_0819109E:
	cmp r6, 0x1
	bgt _0819110C
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191150
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190790
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191150
	.pool
_0819110C:
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191150
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190950
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191150:
	adds r6, 0x1
	cmp r6, 0x7
	ble _0819109E
	movs r6, 0x8
	ldr r2, =gUnknown_0203CD78
	mov r12, r2
	ldr r3, =gSprites
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r5, r0, r1
	movs r4, 0
	adds r7, r3, 0
	adds r7, 0x1C
_0819116E:
	cmp r6, 0x9
	bgt _081911D4
	mov r1, r12
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191214
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190790
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191214
	.pool
_081911D4:
	mov r2, r12
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191214
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190950
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191214:
	adds r6, 0x1
	cmp r6, 0xF
	ble _0819116E
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	movs r2, 0
	movs r1, 0x4
	bl _08191FE8
	.pool
_08191234:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r0, r4
	movs r5, 0xC
	ldrsh r2, [r0, r5]
	cmp r2, 0
	beq _08191278
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r0, =gUnknown_02022E18
	strh r1, [r0]
	ldr r1, =gUnknown_02022E1A
	ldr r2, =0x0000ff60
	adds r0, r2, 0
	strh r0, [r1]
	b _0819128C
	.pool
_08191278:
	ldr r0, =gUnknown_02022E14
	strh r2, [r0]
	ldr r1, =gUnknown_02022E16
	ldr r3, =0x0000ff60
	adds r0, r3, 0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E18
	strh r2, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r2, [r0]
_0819128C:
	cmp r6, 0x2
	bne _0819133C
	ldr r5, =gUnknown_0203CD78
	ldr r0, [r5]
	ldrb r1, [r0, 0x10]
	cmp r1, 0
	bne _081912F4
	ldr r0, =gUnknown_02022E1C
	strh r1, [r0]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r3, =gUnknown_0860D080
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r4, 0xA
	ldrsh r1, [r0, r4]
	adds r1, r3
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0xC]
	movs r0, 0x4
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_81924E0
	b _0819141C
	.pool
_081912F4:
	ldr r0, =gUnknown_02022E1C
	movs r4, 0
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1E
	strh r4, [r0]
	ldr r3, =gUnknown_0860D080
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r6, 0xA
	ldrsh r1, [r0, r6]
	adds r1, r3
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0xC]
	movs r0, 0x4
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_81924E0
	ldr r0, [r5]
	strb r4, [r0, 0x10]
	b _0819141C
	.pool
_0819133C:
	ldr r6, =gUnknown_0203CD78
	ldr r1, [r6]
	ldrb r5, [r1, 0x10]
	cmp r5, 0
	bne _08191394
	ldr r4, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r4
	movs r2, 0xA
	ldrsh r0, [r0, r2]
	adds r2, r0, 0
	subs r2, 0x10
	lsls r0, r2, 24
	lsrs r0, 24
	adds r1, 0x11
	bl sub_8192F08
	ldr r0, =gUnknown_02022E1C
	strh r5, [r0]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r2, [r6]
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r4
	ldrb r1, [r0, 0xC]
	movs r0, 0x4
	orrs r0, r1
	ldrb r1, [r2, 0x11]
	bl sub_81924E0
	b _0819141C
	.pool
_08191394:
	cmp r5, 0x2
	bne _081913E4
	ldr r4, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r4
	movs r3, 0xA
	ldrsh r0, [r0, r3]
	adds r2, r0, 0
	subs r2, 0x10
	lsls r0, r2, 24
	lsrs r0, 24
	adds r1, 0x11
	bl sub_8192F08
	ldr r1, =gUnknown_02022E1C
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r2, [r6]
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r4
	ldrb r1, [r0, 0xC]
	movs r0, 0x4
	orrs r0, r1
	ldrb r1, [r2, 0x12]
	bl sub_81924E0
	b _0819141C
	.pool
_081913E4:
	ldr r1, =gUnknown_02022E1C
	movs r4, 0x80
	lsls r4, 1
	adds r0, r4, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	movs r5, 0xA
	ldrsh r0, [r0, r5]
	adds r2, r0, 0
	subs r2, 0x10
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0xC]
	movs r0, 0x4
	orrs r0, r1
	lsls r1, r2, 24
	lsrs r1, 24
	bl sub_819314C
_0819141C:
	movs r6, 0
	ldr r0, =gUnknown_0203CD78
	mov r10, r0
	ldr r3, =gSprites
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r1, =gTasks
	adds r5, r0, r1
	mov r12, r6
	adds r4, r3, 0
	adds r4, 0x1C
	movs r7, 0x1
_08191436:
	cmp r6, 0x1
	bgt _081914A4
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _081914E8
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_81907F8
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _081914E8
	.pool
_081914A4:
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _081914E8
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_81909CC
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_081914E8:
	adds r6, 0x1
	cmp r6, 0x7
	ble _08191436
	movs r6, 0x8
	ldr r2, =gUnknown_0203CD78
	mov r12, r2
	ldr r3, =gSprites
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r5, r0, r1
	movs r4, 0
	adds r7, r3, 0
	adds r7, 0x1C
_08191506:
	cmp r6, 0x9
	bgt _0819156C
	mov r1, r12
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _081915AC
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_81907F8
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _081915AC
	.pool
_0819156C:
	mov r2, r12
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _081915AC
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_81909CC
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_081915AC:
	adds r6, 0x1
	cmp r6, 0xF
	ble _08191506
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	movs r2, 0
	movs r1, 0x5
	bl _08191FE8
	.pool
_081915CC:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r0, r4
	movs r5, 0xC
	ldrsh r2, [r0, r5]
	cmp r2, 0
	beq _0819160C
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r2, =gUnknown_02022E18
	movs r6, 0x80
	lsls r6, 1
	adds r0, r6, 0
	strh r0, [r2]
	ldr r0, =gUnknown_02022E1A
	strh r1, [r0]
	b _08191622
	.pool
_0819160C:
	ldr r1, =gUnknown_02022E14
	movs r3, 0x80
	lsls r3, 1
	adds r0, r3, 0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E16
	strh r2, [r0]
	ldr r0, =gUnknown_02022E18
	strh r2, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r2, [r0]
_08191622:
	ldr r0, =gUnknown_0203CD78
	ldr r4, [r0]
	ldrb r0, [r4, 0x10]
	cmp r0, 0
	bne _08191688
	ldr r1, =gUnknown_02022E1C
	movs r4, 0x80
	lsls r4, 1
	adds r0, r4, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r3, =gUnknown_0860D080
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r5, 0xA
	ldrsh r1, [r0, r5]
	adds r1, r3
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0xC]
	movs r0, 0x8
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_81924E0
	b _081916C6
	.pool
_08191688:
	ldr r1, =gUnknown_02022E1C
	movs r6, 0x80
	lsls r6, 1
	adds r0, r6, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0
	strh r0, [r1]
	ldr r3, =gUnknown_0860D15C
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r5, 0xA
	ldrsh r1, [r0, r5]
	lsls r1, 2
	subs r1, 0x1
	ldrb r4, [r4, 0x10]
	adds r1, r4
	adds r1, r3
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrb r2, [r0, 0xC]
	movs r0, 0x8
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_819314C
_081916C6:
	movs r6, 0
	ldr r0, =gUnknown_0203CD78
	mov r10, r0
	ldr r3, =gSprites
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r1, =gTasks
	adds r5, r0, r1
	mov r12, r6
	adds r4, r3, 0
	adds r4, 0x1C
	movs r7, 0x1
_081916E0:
	cmp r6, 0x1
	bgt _08191754
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191798
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190860
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191798
	.pool
_08191754:
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191798
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190A48
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191798:
	adds r6, 0x1
	cmp r6, 0x7
	ble _081916E0
	movs r6, 0x8
	ldr r2, =gUnknown_0203CD78
	mov r12, r2
	ldr r3, =gSprites
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r5, r0, r1
	movs r4, 0
	adds r7, r3, 0
	adds r7, 0x1C
_081917B6:
	cmp r6, 0x9
	bgt _0819181C
	mov r1, r12
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _0819185C
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190860
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _0819185C
	.pool
_0819181C:
	mov r2, r12
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _0819185C
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190A48
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_0819185C:
	adds r6, 0x1
	cmp r6, 0xF
	ble _081917B6
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	movs r2, 0
	movs r1, 0x6
	b _08191FE8
	.pool
_0819187C:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r0, r4
	movs r5, 0xC
	ldrsh r2, [r0, r5]
	cmp r2, 0
	beq _081918BC
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r2, =gUnknown_02022E18
	movs r6, 0x80
	lsls r6, 1
	adds r0, r6, 0
	strh r0, [r2]
	ldr r0, =gUnknown_02022E1A
	strh r1, [r0]
	b _081918D2
	.pool
_081918BC:
	ldr r1, =gUnknown_02022E14
	movs r3, 0x80
	lsls r3, 1
	adds r0, r3, 0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E16
	strh r2, [r0]
	ldr r0, =gUnknown_02022E18
	strh r2, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r2, [r0]
_081918D2:
	ldr r0, =gUnknown_0203CD78
	ldr r2, [r0]
	ldrb r0, [r2, 0x10]
	cmp r0, 0
	bne _08191924
	ldr r1, =gUnknown_02022E1C
	movs r4, 0x80
	lsls r4, 1
	adds r0, r4, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0xC]
	movs r0, 0x8
	orrs r0, r1
	ldrb r1, [r2, 0x11]
	bl sub_81924E0
	b _08191958
	.pool
_08191924:
	ldr r1, =gUnknown_02022E1C
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	movs r5, 0xA
	ldrsh r0, [r0, r5]
	adds r2, r0, 0
	subs r2, 0x10
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0xC]
	movs r0, 0x8
	orrs r0, r1
	lsls r1, r2, 24
	lsrs r1, 24
	bl sub_819314C
_08191958:
	movs r6, 0
	ldr r0, =gUnknown_0203CD78
	mov r10, r0
	ldr r3, =gSprites
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r1, =gTasks
	adds r5, r0, r1
	mov r12, r6
	adds r4, r3, 0
	adds r4, 0x1C
	movs r7, 0x1
_08191972:
	cmp r6, 0x1
	bgt _081919E0
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191A24
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190860
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191A24
	.pool
_081919E0:
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191A24
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190A48
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191A24:
	adds r6, 0x1
	cmp r6, 0x7
	ble _08191972
	movs r6, 0x8
	ldr r2, =gUnknown_0203CD78
	mov r12, r2
	ldr r3, =gSprites
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r5, r0, r1
	movs r4, 0
	adds r7, r3, 0
	adds r7, 0x1C
_08191A42:
	cmp r6, 0x9
	bgt _08191AA8
	mov r1, r12
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191AE8
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190860
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191AE8
	.pool
_08191AA8:
	mov r2, r12
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191AE8
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190A48
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191AE8:
	adds r6, 0x1
	cmp r6, 0xF
	ble _08191A42
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	movs r2, 0
	movs r1, 0x6
	b _08191FE8
	.pool
_08191B08:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r0, r4
	movs r5, 0xC
	ldrsh r2, [r0, r5]
	cmp r2, 0
	beq _08191B48
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r2, =gUnknown_02022E18
	movs r6, 0xFF
	lsls r6, 8
	adds r0, r6, 0
	strh r0, [r2]
	ldr r0, =gUnknown_02022E1A
	strh r1, [r0]
	b _08191B5E
	.pool
_08191B48:
	ldr r1, =gUnknown_02022E14
	movs r3, 0xFF
	lsls r3, 8
	adds r0, r3, 0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E16
	strh r2, [r0]
	ldr r0, =gUnknown_02022E18
	strh r2, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r2, [r0]
_08191B5E:
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0x1
	bne _08191B94
	ldr r1, =gUnknown_02022E1C
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	b _08191B9E
	.pool
_08191B94:
	ldr r0, =gUnknown_02022E1C
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E1E
	strh r1, [r0]
_08191B9E:
	ldr r4, =gUnknown_0860D15C
	ldr r5, =gUnknown_0203CD78
	ldr r3, [r5]
	ldr r2, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	movs r6, 0xA
	ldrsh r1, [r0, r6]
	lsls r1, 2
	subs r1, 0x1
	ldrb r3, [r3, 0x10]
	adds r1, r3
	adds r1, r4
	mov r4, r9
	add r4, r8
	lsls r4, 3
	adds r4, r2
	ldrb r2, [r4, 0xC]
	movs r0, 0x2
	orrs r0, r2
	ldrb r1, [r1]
	bl sub_819314C
	movs r6, 0
	ldr r7, =gSprites
	mov r12, r6
	mov r10, r5
	adds r5, r7, 0
	adds r5, 0x1C
_08191BDC:
	cmp r6, 0x1
	bgt _08191C50
	mov r1, r10
	ldr r0, [r1]
	adds r3, r0, r6
	ldrb r0, [r3]
	cmp r0, 0xFF
	beq _08191C96
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =sub_81908CC
	str r1, [r0]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldrh r1, [r4, 0xC]
	movs r2, 0x1
	eors r1, r2
	strh r1, [r0, 0x2E]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	mov r2, r12
	strh r2, [r0, 0x30]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	strh r6, [r0, 0x32]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	strh r1, [r0, 0x34]
	b _08191C96
	.pool
_08191C50:
	mov r3, r10
	ldr r0, [r3]
	adds r3, r0, r6
	ldrb r0, [r3]
	cmp r0, 0xFF
	beq _08191C96
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =sub_8190AC4
	str r1, [r0]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldrh r1, [r4, 0xC]
	movs r2, 0x1
	eors r1, r2
	strh r1, [r0, 0x2E]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	strh r6, [r0, 0x32]
_08191C96:
	adds r6, 0x1
	cmp r6, 0x7
	ble _08191BDC
	movs r6, 0x8
	ldr r2, =gUnknown_0203CD78
	mov r12, r2
	ldr r3, =gSprites
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r5, r0, r1
	movs r4, 0
	adds r7, r3, 0
	adds r7, 0x1C
_08191CB4:
	cmp r6, 0x9
	bgt _08191D1C
	mov r1, r12
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191D5C
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_81908CC
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191D5C
	.pool
_08191D1C:
	mov r2, r12
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191D5C
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190AC4
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191D5C:
	adds r6, 0x1
	cmp r6, 0xF
	ble _08191CB4
	b _08191FDA
	.pool
_08191D68:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r0, r4
	movs r5, 0xC
	ldrsh r2, [r0, r5]
	cmp r2, 0
	beq _08191DA8
	ldr r0, =gUnknown_02022E14
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gUnknown_02022E16
	strh r1, [r0]
	ldr r2, =gUnknown_02022E18
	movs r6, 0xFF
	lsls r6, 8
	adds r0, r6, 0
	strh r0, [r2]
	ldr r0, =gUnknown_02022E1A
	strh r1, [r0]
	b _08191DBE
	.pool
_08191DA8:
	ldr r1, =gUnknown_02022E14
	movs r3, 0xFF
	lsls r3, 8
	adds r0, r3, 0
	strh r0, [r1]
	ldr r0, =gUnknown_02022E16
	strh r2, [r0]
	ldr r0, =gUnknown_02022E18
	strh r2, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r2, [r0]
_08191DBE:
	ldr r0, =gUnknown_0203CD78
	ldr r2, [r0]
	ldrb r0, [r2, 0x10]
	cmp r0, 0x2
	bne _08191E10
	ldr r1, =gUnknown_02022E1C
	movs r4, 0x80
	lsls r4, 1
	adds r0, r4, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0xC]
	movs r0, 0x2
	orrs r0, r1
	ldrb r1, [r2, 0x12]
	bl sub_81924E0
	b _08191E44
	.pool
_08191E10:
	ldr r1, =gUnknown_02022E1C
	movs r0, 0
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	movs r0, 0xA0
	strh r0, [r1]
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	movs r5, 0xA
	ldrsh r0, [r0, r5]
	adds r2, r0, 0
	subs r2, 0x10
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0xC]
	movs r0, 0x2
	orrs r0, r1
	lsls r1, r2, 24
	lsrs r1, 24
	bl sub_819314C
_08191E44:
	movs r6, 0
	ldr r0, =gUnknown_0203CD78
	mov r10, r0
	ldr r3, =gSprites
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r1, =gTasks
	adds r5, r0, r1
	mov r12, r6
	adds r4, r3, 0
	adds r4, 0x1C
	movs r7, 0x1
_08191E5E:
	cmp r6, 0x1
	bgt _08191ECC
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191F10
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_81908CC
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191F10
	.pool
_08191ECC:
	mov r2, r10
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191F10
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldr r1, =sub_8190AC4
	str r1, [r0]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrh r0, [r5, 0xC]
	eors r0, r7
	strh r0, [r1, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	mov r1, r12
	strh r1, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191F10:
	adds r6, 0x1
	cmp r6, 0x7
	ble _08191E5E
	movs r6, 0x8
	ldr r2, =gUnknown_0203CD78
	mov r12, r2
	ldr r3, =gSprites
	ldr r1, =gTasks
	mov r0, r9
	add r0, r8
	lsls r0, 3
	adds r5, r0, r1
	movs r4, 0
	adds r7, r3, 0
	adds r7, 0x1C
_08191F2E:
	cmp r6, 0x9
	bgt _08191F94
	mov r1, r12
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191FD4
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_81908CC
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r1, [r0, 0x34]
	b _08191FD4
	.pool
_08191F94:
	mov r2, r12
	ldr r0, [r2]
	adds r2, r0, r6
	ldrb r0, [r2]
	cmp r0, 0xFF
	beq _08191FD4
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldr r1, =sub_8190AC4
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r5, 0xC]
	strh r1, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r4, [r0, 0x30]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r6, [r0, 0x32]
_08191FD4:
	adds r6, 0x1
	cmp r6, 0xF
	ble _08191F2E
_08191FDA:
	mov r0, r9
	add r0, r8
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	movs r2, 0
	movs r1, 0x7
_08191FE8:
	strh r1, [r0, 0x8]
	strh r2, [r0, 0x12]
	b _08192202
	.pool
_08191FF8:
	mov r4, r8
	lsls r0, r4, 2
	add r0, r8
	lsls r0, 3
	ldr r5, =gTasks
	adds r1, r0, r5
	ldrh r0, [r1, 0x12]
	adds r0, 0x1
	strh r0, [r1, 0x12]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x29
	beq _08192100
	ldr r1, =gUnknown_02022E16
	ldrh r0, [r1]
	subs r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1A
	ldrh r0, [r1]
	subs r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	b _081920A4
	.pool
_08192038:
	mov r6, r8
	lsls r0, r6, 2
	add r0, r8
	lsls r0, 3
	ldr r2, =gTasks
	adds r1, r0, r2
	ldrh r0, [r1, 0x12]
	adds r0, 0x1
	strh r0, [r1, 0x12]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x29
	beq _08192100
	ldr r1, =gUnknown_02022E16
	ldrh r0, [r1]
	adds r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1A
	ldrh r0, [r1]
	adds r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1E
	b _081920E8
	.pool
_08192078:
	mov r3, r8
	lsls r0, r3, 2
	add r0, r8
	lsls r0, 3
	ldr r4, =gTasks
	adds r1, r0, r4
	ldrh r0, [r1, 0x12]
	adds r0, 0x1
	strh r0, [r1, 0x12]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x41
	beq _08192100
	ldr r1, =gUnknown_02022E14
	ldrh r0, [r1]
	subs r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E18
	ldrh r0, [r1]
	subs r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1C
_081920A4:
	ldrh r0, [r1]
	subs r0, 0x4
	strh r0, [r1]
	b _08192202
	.pool
_081920BC:
	mov r5, r8
	lsls r0, r5, 2
	add r0, r8
	lsls r0, 3
	ldr r6, =gTasks
	adds r1, r0, r6
	ldrh r0, [r1, 0x12]
	adds r0, 0x1
	strh r0, [r1, 0x12]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x41
	beq _08192100
	ldr r1, =gUnknown_02022E14
	ldrh r0, [r1]
	adds r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E18
	ldrh r0, [r1]
	adds r0, 0x4
	strh r0, [r1]
	ldr r1, =gUnknown_02022E1C
_081920E8:
	ldrh r0, [r1]
	adds r0, 0x4
	strh r0, [r1]
	b _08192202
	.pool
_08192100:
	movs r0, 0x2
	strh r0, [r1, 0x8]
	b _08192202
_08192106:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08192202
	movs r6, 0
	ldr r4, =gUnknown_0203CD78
_08192116:
	cmp r6, 0x1
	bgt _08192134
	ldr r0, [r4]
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _0819214E
	bl sub_818D8F0
	b _0819214E
	.pool
_08192134:
	ldr r0, [r4]
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _0819214E
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	bl sub_80D2EF8
_0819214E:
	adds r6, 0x1
	cmp r6, 0x7
	ble _08192116
	movs r6, 0x8
	ldr r4, =gUnknown_0203CD78
_08192158:
	cmp r6, 0x9
	bgt _08192174
	ldr r0, [r4]
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _0819218E
	bl sub_818D8F0
	b _0819218E
	.pool
_08192174:
	ldr r0, [r4]
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _0819218E
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	bl sub_80D2EF8
_0819218E:
	adds r6, 0x1
	cmp r6, 0xF
	ble _08192158
	bl sub_80D2F9C
	ldr r4, =gUnknown_0203CD78
	ldr r0, [r4]
	bl Free
	movs r5, 0
	str r5, [r4]
	bl FreeAllWindowBuffers
	mov r0, r9
	cmp r0, 0
	bne _081921C4
	ldr r0, =c2_exit_to_overworld_1_continue_scripts_restart_music
	bl SetMainCallback2
	b _081921FC
	.pool
_081921C4:
	ldr r0, =sub_8194220
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r2, =gTasks
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 3
	adds r1, r2
	strh r5, [r1, 0x8]
	strh r5, [r1, 0xA]
	movs r0, 0x3
	strh r0, [r1, 0xC]
	mov r3, r8
	lsls r0, r3, 2
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrh r0, [r0, 0x10]
	strh r0, [r1, 0xE]
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r2
	ldrh r0, [r0, 0x14]
	strh r0, [r1, 0x10]
_081921FC:
	mov r0, r8
	bl DestroyTask
_08192202:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8190CD4

	thumb_func_start sub_819221C
sub_819221C: @ 819221C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r7, 0
	ldr r2, =gTasks
	lsls r0, 2
	add r0, r9
	lsls r0, 3
	adds r0, r2
	mov r12, r0
	movs r1, 0x10
	ldrsh r6, [r0, r1]
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r2
	movs r3, 0xA
	ldrsh r5, [r0, r3]
	ldr r0, =gUnknown_0860D080
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r10, r0
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, =gMain
	ldrh r4, [r1, 0x2E]
	movs r0, 0x3
	ands r0, r4
	adds r2, r1, 0
	cmp r0, 0
	beq _0819226E
	movs r7, 0x9
_0819226E:
	mov r3, r12
	movs r1, 0xE
	ldrsh r0, [r3, r1]
	cmp r0, 0
	bne _0819227A
	b _081924CC
_0819227A:
	cmp r0, 0x1
	beq _08192280
	b _081923B0
_08192280:
	movs r0, 0x40
	ands r0, r4
	cmp r0, 0
	beq _081922BA
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	bne _081922BA
	cmp r5, 0
	bne _081922B4
	movs r5, 0xF
	b _081922B6
	.pool
_081922B4:
	subs r5, 0x1
_081922B6:
	movs r7, 0x1
	b _08192360
_081922BA:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081922E2
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	bne _081922E2
	cmp r5, 0xF
	bne _081922DC
	movs r5, 0
	b _081922DE
	.pool
_081922DC:
	adds r5, 0x1
_081922DE:
	movs r7, 0x2
	b _08192360
_081922E2:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08192304
	ldr r0, =gUnknown_0203CD78
	ldr r1, [r0]
	ldrb r0, [r1, 0x10]
	cmp r0, 0
	beq _08192304
	subs r0, 0x1
	strb r0, [r1, 0x10]
	movs r7, 0x3
	b _08192360
	.pool
_08192304:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08192360
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	mov r3, r10
	lsls r1, r3, 2
	adds r0, r1
	ldr r2, =0x00000d25
	adds r0, r2
	ldrb r3, [r0]
	lsls r0, r3, 29
	mov r12, r1
	cmp r0, 0
	bge _0819233C
	ldr r0, =gUnknown_0203CD78
	ldr r2, [r0]
	ldrb r4, [r2, 0x10]
	subs r1, r4, 0x1
	lsls r0, r3, 27
	lsrs r0, 30
	cmp r1, r0
	bge _0819233C
	adds r0, r4, 0x1
	strb r0, [r2, 0x10]
	movs r7, 0x4
_0819233C:
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	add r0, r12
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08192360
	ldr r0, =gUnknown_0203CD78
	ldr r3, [r0]
	ldrb r1, [r3, 0x10]
	subs r0, r1, 0x1
	cmp r0, r8
	bge _08192360
	adds r0, r1, 0x1
	strb r0, [r3, 0x10]
	movs r7, 0x4
_08192360:
	cmp r7, 0x9
	beq _08192366
	b _081924A0
_08192366:
	ldr r0, =gUnknown_0203CD78
	ldr r3, [r0]
	ldrb r0, [r3, 0x10]
	cmp r0, 0
	beq _081923A0
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 3
	ldr r2, =gTasks
	adds r1, r2
	ldr r2, =gUnknown_0860D1A0
	lsrs r0, r5, 31
	adds r0, r5, r0
	asrs r0, 1
	lsls r0, 2
	subs r0, 0x1
	ldrb r3, [r3, 0x10]
	adds r0, r3
	b _08192482
	.pool
_081923A0:
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	b _0819249E
	.pool
_081923B0:
	movs r0, 0x40
	ands r0, r4
	cmp r0, 0
	beq _081923DE
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0x1
	bne _081923DE
	cmp r5, 0x10
	bne _081923D8
	ldr r0, =gUnknown_0860D19C
	add r0, r8
	ldrb r5, [r0]
	b _081923DA
	.pool
_081923D8:
	subs r5, 0x1
_081923DA:
	movs r7, 0x5
	b _08192446
_081923DE:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819240E
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r0, [r0, 0x10]
	cmp r0, 0x1
	bne _0819240E
	ldr r0, =gUnknown_0860D19C
	add r0, r8
	ldrb r0, [r0]
	cmp r5, r0
	bne _08192408
	movs r5, 0x10
	b _0819240A
	.pool
_08192408:
	adds r5, 0x1
_0819240A:
	movs r7, 0x6
	b _08192446
_0819240E:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819242C
	ldr r0, =gUnknown_0203CD78
	ldr r1, [r0]
	ldrb r0, [r1, 0x10]
	cmp r0, 0
	beq _0819242C
	movs r7, 0x7
	subs r0, 0x1
	b _08192444
	.pool
_0819242C:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08192446
	ldr r0, =gUnknown_0203CD78
	ldr r1, [r0]
	ldrb r0, [r1, 0x10]
	cmp r0, 0x1
	bhi _08192446
	movs r7, 0x8
	adds r0, 0x1
_08192444:
	strb r0, [r1, 0x10]
_08192446:
	cmp r7, 0x9
	bne _081924A0
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldrb r1, [r0, 0x10]
	cmp r1, 0
	bne _08192470
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 3
	ldr r2, =gTasks
	adds r1, r2
	ldr r2, =gUnknown_0860D1C0
	ldrb r0, [r0, 0x11]
	b _08192482
	.pool
_08192470:
	cmp r1, 0x2
	bne _08192494
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 3
	ldr r3, =gTasks
	adds r1, r3
	ldr r2, =gUnknown_0860D1C0
	ldrb r0, [r0, 0x12]
_08192482:
	adds r0, r2
	ldrb r0, [r0]
	strh r0, [r1, 0xA]
	b _081924A0
	.pool
_08192494:
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	ldr r1, =gTasks
	adds r0, r1
_0819249E:
	strh r5, [r0, 0xA]
_081924A0:
	cmp r7, 0
	beq _081924CC
	cmp r7, 0x9
	beq _081924CC
	movs r0, 0x5
	bl PlaySE
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0xA]
	mov r2, r9
	lsls r0, r2, 2
	add r0, r9
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0xC]
	movs r2, 0x1
	eors r1, r2
	strh r1, [r0, 0xC]
_081924CC:
	adds r0, r7, 0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_819221C

	thumb_func_start sub_81924E0
sub_81924E0: @ 81924E0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x58
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x1C]
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x20]
	movs r5, 0
	movs r0, 0
	str r0, [sp, 0x28]
	movs r1, 0
	str r1, [sp, 0x2C]
	movs r2, 0
	str r2, [sp, 0x30]
	movs r4, 0
	movs r0, 0x24
	bl AllocZeroed
	mov r8, r0
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r3, [sp, 0x20]
	lsls r0, r3, 2
	adds r0, r1, r0
	ldr r2, =0x00000d24
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	str r0, [sp, 0x24]
	movs r0, 0x1
	ldr r3, [sp, 0x1C]
	ands r0, r3
	cmp r0, 0
	beq _08192538
	movs r5, 0x8
	movs r4, 0x9
	str r4, [sp, 0x28]
	movs r4, 0x2
_08192538:
	movs r0, 0x2
	ldr r2, [sp, 0x1C]
	ands r0, r2
	cmp r0, 0
	beq _08192548
	movs r3, 0x80
	lsls r3, 1
	str r3, [sp, 0x2C]
_08192548:
	movs r0, 0x4
	ldr r2, [sp, 0x1C]
	ands r0, r2
	cmp r0, 0
	beq _08192556
	movs r3, 0xA0
	str r3, [sp, 0x30]
_08192556:
	movs r0, 0x8
	ldr r2, [sp, 0x1C]
	ands r0, r2
	cmp r0, 0
	beq _08192564
	ldr r3, =0xffffff00
	str r3, [sp, 0x2C]
_08192564:
	movs r0, 0x10
	ldr r2, [sp, 0x1C]
	ands r0, r2
	cmp r0, 0
	beq _08192574
	movs r3, 0xA0
	negs r3, r3
	str r3, [sp, 0x30]
_08192574:
	ldr r0, =0x000003ff
	ldr r2, [sp, 0x24]
	cmp r2, r0
	bne _08192598
	ldrb r0, [r1, 0x8]
	bl sub_806F000
	lsls r0, 16
	lsrs r0, 16
	b _081925B6
	.pool
_08192598:
	ldr r0, =0x000003fe
	ldr r3, [sp, 0x24]
	cmp r3, r0
	bne _081925AC
	bl sub_8195910
	b _081925B2
	.pool
_081925AC:
	ldr r0, [sp, 0x24]
	bl sub_8162AA0
_081925B2:
	lsls r0, 24
	lsrs r0, 24
_081925B6:
	ldr r2, [sp, 0x2C]
	adds r2, 0x30
	ldr r3, [sp, 0x30]
	adds r3, 0x40
	adds r1, r4, 0
	adds r1, 0xC
	str r1, [sp]
	ldr r1, =0x0000ffff
	str r1, [sp, 0x4]
	movs r1, 0x1
	bl sub_818D8AC
	ldr r1, =gUnknown_0203CD78
	ldr r1, [r1]
	adds r1, r5
	strb r0, [r1]
	movs r0, 0x1E
	ldr r4, [sp, 0x1C]
	ands r0, r4
	cmp r0, 0
	beq _081925FC
	ldr r2, =gSprites
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_081925FC:
	movs r7, 0
	ldr r0, [sp, 0x20]
	lsls r0, 1
	str r0, [sp, 0x3C]
	adds r1, r5, 0x2
	ldr r2, [sp, 0x28]
	lsls r2, 24
	str r2, [sp, 0x44]
	ldr r3, [sp, 0x28]
	adds r3, 0x4
	str r3, [sp, 0x40]
	ldr r4, [sp, 0x20]
	adds r0, r4
	ldr r6, =gUnknown_0203CD78
	ldr r2, =gSprites
	mov r10, r2
	adds r4, r1, 0
	lsls r5, r0, 1
	movs r3, 0
	mov r9, r3
_08192624:
	ldr r0, =0x000003ff
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192660
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000d64
	adds r0, r2
	adds r0, r5
	ldrh r0, [r0]
	ldr r1, =gUnknown_0860D340
	adds r1, r7, r1
	ldrb r2, [r1]
	ldr r3, [sp, 0x2C]
	orrs r2, r3
	b _081926B0
	.pool
_08192660:
	ldr r0, =0x000003fe
	ldr r3, [sp, 0x24]
	cmp r3, r0
	bne _08192690
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000d64
	adds r0, r1
	adds r0, r5
	ldrh r0, [r0]
	ldr r1, =gUnknown_0860D340
	adds r1, r7, r1
	ldrb r2, [r1]
	ldr r3, [sp, 0x2C]
	orrs r2, r3
	b _081926B0
	.pool
_08192690:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r3, =0x00000d64
	adds r0, r3
	adds r0, r5
	ldrh r1, [r0]
	ldr r0, =gUnknown_0203BC8C
	ldr r0, [r0]
	lsls r1, 4
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =gUnknown_0860D340
	adds r1, r7, r1
	ldrb r2, [r1]
	ldr r1, [sp, 0x2C]
	orrs r2, r1
_081926B0:
	ldr r1, =gUnknown_0860D343
	adds r1, r7, r1
	ldrb r3, [r1]
	ldr r1, [sp, 0x30]
	adds r3, r1
	mov r1, r9
	str r1, [sp]
	str r1, [sp, 0x4]
	movs r1, 0x1
	str r1, [sp, 0x8]
	ldr r1, =sub_8190938
	bl sub_80D2CC4
	ldr r1, [r6]
	adds r1, r4
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r10
	ldrb r1, [r0, 0x5]
	movs r2, 0xD
	negs r2, r2
	ands r1, r2
	strb r1, [r0, 0x5]
	movs r0, 0x1E
	ldr r3, [sp, 0x1C]
	ands r0, r3
	cmp r0, 0
	beq _0819270A
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r10
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_0819270A:
	adds r4, 0x1
	adds r5, 0x2
	adds r7, 0x1
	cmp r7, 0x2
	ble _08192624
	add r0, sp, 0xC
	movs r2, 0
	movs r3, 0x2
	strb r3, [r0, 0x5]
	strb r2, [r0, 0x6]
	strb r2, [r0, 0x7]
	adds r1, r0, 0
	adds r0, r2, 0
	strb r0, [r1, 0x8]
	adds r0, r1, 0
	ldrb r0, [r0, 0x7]
	strb r0, [r1, 0x9]
	adds r0, r1, 0
	strb r3, [r0, 0xA]
	strb r2, [r0, 0xB]
	adds r3, r0, 0
	ldrb r2, [r3, 0xC]
	movs r1, 0x10
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	adds r2, r3, 0
	movs r0, 0xE0
	strb r0, [r2, 0xC]
	ldrb r0, [r2, 0xD]
	ands r1, r0
	strb r1, [r2, 0xD]
	adds r1, r2, 0
	movs r0, 0xD0
	strb r0, [r1, 0xD]
	movs r7, 0
	ldr r0, =0x000003ff
	ldr r4, [sp, 0x24]
	cmp r4, r0
	bne _08192784
	ldr r0, =gTrainerClassNameIndices
	adds r0, 0x3C
	ldrb r5, [r0]
	b _081927A2
	.pool
_08192784:
	ldr r0, =0x000003fe
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192798
	bl sub_8195924
	b _0819279E
	.pool
_08192798:
	ldr r0, [sp, 0x24]
	bl sub_8162BD8
_0819279E:
	lsls r0, 24
	lsrs r5, r0, 24
_081927A2:
	ldr r2, =gTrainerClassNames
	movs r0, 0xD
	adds r1, r5, 0
	muls r1, r0
	adds r0, r7, r1
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _081927CA
	ldr r3, =gStringVar1
	adds r0, r1, r2
	adds r2, r7, r0
_081927BA:
	adds r0, r7, r3
	ldrb r1, [r2]
	strb r1, [r0]
	adds r2, 0x1
	adds r7, 0x1
	ldrb r0, [r2]
	cmp r0, 0xFF
	bne _081927BA
_081927CA:
	ldr r5, =gStringVar1
	adds r1, r7, r5
	movs r0, 0
	strb r0, [r1]
	adds r0, r7, 0x1
	adds r0, r5
	movs r1, 0xFF
	strb r1, [r0]
	ldr r0, =0x000003ff
	ldr r2, [sp, 0x24]
	cmp r2, r0
	bne _08192800
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r0, r5, 0
	bl StringAppend
	b _08192836
	.pool
_08192800:
	ldr r0, =0x000003fe
	ldr r3, [sp, 0x24]
	cmp r3, r0
	bne _08192824
	ldr r4, =gStringVar2
	adds r0, r4, 0
	bl sub_8195938
	adds r0, r5, 0
	adds r1, r4, 0
	bl StringAppend
	b _08192836
	.pool
_08192824:
	ldr r4, =gStringVar2
	ldr r1, [sp, 0x24]
	adds r0, r4, 0
	bl sub_8195898
	adds r0, r5, 0
	adds r1, r4, 0
	bl StringAppend
_08192836:
	add r0, sp, 0xC
	ldrb r0, [r0, 0x5]
	ldr r4, =gStringVar1
	add r1, sp, 0xC
	ldrb r3, [r1, 0xA]
	adds r1, r4, 0
	movs r2, 0xD0
	bl GetStringCenterAlignXOffsetWithLetterSpacing
	add r1, sp, 0xC
	movs r5, 0
	strb r0, [r1, 0x8]
	str r4, [sp, 0xC]
	adds r0, r1, 0
	add r4, sp, 0x28
	ldrb r4, [r4]
	strb r4, [r0, 0x4]
	ldr r0, [sp, 0x44]
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add r0, sp, 0xC
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	add r0, sp, 0xC
	strb r5, [r0, 0xA]
	movs r7, 0
	adds r6, r0, 0
	ldr r1, [sp, 0x3C]
	ldr r2, [sp, 0x20]
	adds r0, r1, r2
	lsls r0, 1
	mov r9, r0
	movs r3, 0xB
	mov r10, r3
_0819288A:
	ldr r0, =gUnknown_0860D346
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r6, 0x9]
	ldr r0, =0x000003ff
	ldr r4, [sp, 0x24]
	cmp r4, r0
	bne _081928C0
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	lsls r0, r7, 1
	add r0, r9
	ldr r2, =0x00000d64
	adds r1, r2
	b _081928FA
	.pool
_081928C0:
	ldr r0, =0x000003fe
	ldr r4, [sp, 0x24]
	cmp r4, r0
	bne _081928E4
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	lsls r0, r7, 1
	add r0, r9
	ldr r2, =0x00000d64
	adds r1, r2
	b _081928FA
	.pool
_081928E4:
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	lsls r0, r7, 1
	add r0, r9
	ldr r2, =0x00000d64
	adds r1, r2
	adds r1, r0
	ldrh r1, [r1]
	ldr r0, =gUnknown_0203BC8C
	ldr r0, [r0]
	lsls r1, 4
_081928FA:
	adds r1, r0
	ldrh r0, [r1]
	mov r3, r10
	muls r3, r0
	adds r0, r3, 0
	ldr r1, =gSpeciesNames
	adds r0, r1
	str r0, [sp, 0xC]
	adds r0, r7, 0x1
	ldr r4, [sp, 0x28]
	adds r0, r4
	movs r1, 0
	strb r0, [r6, 0x4]
	cmp r7, 0x1
	bne _08192930
	movs r0, 0x7
	strb r0, [r6, 0x8]
	b _08192932
	.pool
_08192930:
	strb r1, [r6, 0x8]
_08192932:
	adds r5, r7, 0x1
	ldr r0, [sp, 0x28]
	adds r4, r5, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add r0, sp, 0xC
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	adds r7, r5, 0
	cmp r7, 0x2
	ble _0819288A
	ldr r4, [sp, 0x40]
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	ldr r0, =0x000003fe
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192980
	ldr r0, =gUnknown_0860D1D0
	ldr r0, [r0, 0x40]
	b _0819298A
	.pool
_08192980:
	ldr r0, =gUnknown_0860D1D0
	ldr r2, [sp, 0x20]
	lsls r1, r2, 2
	adds r1, r0
	ldr r0, [r1]
_0819298A:
	str r0, [sp, 0xC]
	add r1, sp, 0xC
	movs r2, 0
	movs r0, 0x1
	strb r0, [r1, 0x5]
	adds r0, r1, 0
	add r3, sp, 0x40
	ldrb r3, [r3]
	strb r3, [r0, 0x4]
	strb r2, [r0, 0x8]
	movs r1, 0x4
	strb r1, [r0, 0x7]
	strb r1, [r0, 0x9]
	movs r1, 0
	bl AddTextPrinter
	movs r7, 0
	ldr r3, =gUnknown_0860B358
_081929AE:
	movs r5, 0
	adds r4, r7, 0x1
	str r4, [sp, 0x38]
	lsls r0, r7, 1
	str r0, [sp, 0x34]
	lsls r2, r7, 4
_081929BA:
	movs r6, 0
	lsls r1, r5, 1
	mov r10, r1
	mov r4, r8
	mov r9, r2
_081929C4:
	ldr r0, =0x000003fe
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192A00
	lsls r0, r7, 24
	lsls r1, r5, 24
	lsrs r0, 24
	lsrs r1, 24
	str r2, [sp, 0x48]
	str r3, [sp, 0x4C]
	bl sub_81A5060
	lsls r0, 16
	lsrs r0, 12
	adds r0, r6, r0
	ldr r3, [sp, 0x4C]
	adds r0, r3
	ldrh r1, [r4]
	ldrb r0, [r0]
	adds r1, r0
	strh r1, [r4]
	ldr r2, [sp, 0x48]
	b _08192A58
	.pool
_08192A00:
	ldr r0, =0x000003ff
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192A20
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000efc
	adds r0, r1
	add r0, r9
	b _08192A48
	.pool
_08192A20:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	mov r12, r0
	ldr r0, [sp, 0x3C]
	ldr r1, [sp, 0x20]
	adds r0, r1
	str r0, [sp, 0x50]
	lsls r0, 1
	ldr r1, [sp, 0x34]
	adds r0, r1, r0
	ldr r1, =0x00000d64
	add r1, r12
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =gUnknown_0203BC8C
	ldr r1, [r1]
	lsls r0, 4
	adds r0, r1
	adds r0, 0x2
	add r0, r10
_08192A48:
	ldrh r0, [r0]
	lsls r0, 4
	adds r0, r6, r0
	adds r0, r3
	ldrh r1, [r4]
	ldrb r0, [r0]
	adds r1, r0
	strh r1, [r4]
_08192A58:
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0xF
	ble _081929C4
	adds r2, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _081929BA
	ldr r7, [sp, 0x38]
	cmp r7, 0x2
	ble _081929AE
	movs r7, 0
	ldr r2, =gUnknown_0860D214
	mov r9, r2
	ldr r3, =gUnknown_0860C988
	mov r10, r3
_08192A78:
	movs r4, 0
	movs r6, 0
	movs r5, 0
	mov r3, r8
	lsls r0, r7, 4
	mov r1, r10
	adds r2, r0, r1
_08192A86:
	ldrb r0, [r2]
	cmp r0, 0
	beq _08192A9E
	adds r4, 0x1
	movs r1, 0
	ldrsh r0, [r3, r1]
	cmp r0, 0
	beq _08192A9E
	ldrb r1, [r2]
	cmp r0, r1
	blt _08192A9E
	adds r6, 0x1
_08192A9E:
	adds r3, 0x2
	adds r2, 0x1
	adds r5, 0x1
	cmp r5, 0xF
	ble _08192A86
	cmp r4, r6
	beq _08192AB2
	adds r7, 0x1
	cmp r7, 0x1E
	bls _08192A78
_08192AB2:
	lsls r0, r7, 2
	add r0, r9
	ldr r0, [r0]
	str r0, [sp, 0xC]
	add r0, sp, 0xC
	movs r1, 0x14
	strb r1, [r0, 0x7]
	strb r1, [r0, 0x9]
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	movs r1, 0
	mov r0, r8
	adds r0, 0x22
_08192AD0:
	strh r1, [r0]
	subs r0, 0x2
	cmp r0, r8
	bge _08192AD0
	ldr r2, [sp, 0x24]
	ldr r3, =0xfffffc02
	adds r0, r2, r3
	cmp r0, 0x1
	bls _08192AE4
	b _08192C24
_08192AE4:
	movs r7, 0
	movs r4, 0
	mov r9, r4
_08192AEA:
	movs r5, 0
	mov r4, r8
	mov r6, r9
_08192AF0:
	ldr r0, =0x000003fe
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192B24
	lsls r1, r5, 24
	lsrs r1, 24
	lsrs r0, r6, 24
	bl sub_81A50F0
	lsls r0, 24
	lsrs r0, 24
	b _08192B34
	.pool
_08192B24:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r7, 4
	adds r1, r5, r1
	ldr r2, =0x00000f04
	adds r0, r2
	adds r0, r1
	ldrb r0, [r0]
_08192B34:
	strh r0, [r4]
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0x5
	ble _08192AF0
	mov r3, r8
	ldrh r0, [r3]
	ldrh r4, [r3, 0xC]
	adds r0, r4
	strh r0, [r3, 0xC]
	movs r5, 0
	mov r4, r8
_08192B4C:
	ldr r0, =0x000003fe
	ldr r1, [sp, 0x24]
	cmp r1, r0
	bne _08192B70
	mov r2, r9
	lsrs r0, r2, 24
	bl sub_81A50B0
	lsls r0, 24
	lsrs r2, r0, 24
	b _08192B7E
	.pool
_08192B70:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r7, 4
	adds r0, r1
	ldr r3, =0x00000f0a
	adds r0, r3
	ldrb r2, [r0]
_08192B7E:
	ldr r1, =gNatureStatTable
	lsls r0, r2, 2
	adds r0, r2
	adds r0, r5, r0
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	ble _08192BB4
	movs r0, 0x2
	ldrsh r1, [r4, r0]
	movs r0, 0x6E
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	ldrh r1, [r4, 0xE]
	adds r1, r0
	strh r1, [r4, 0xE]
	b _08192BDC
	.pool
_08192BB4:
	cmp r0, 0
	bge _08192BD4
	movs r2, 0x2
	ldrsh r1, [r4, r2]
	movs r0, 0x5A
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	ldrh r1, [r4, 0xE]
	adds r1, r0
	strh r1, [r4, 0xE]
	ldrh r0, [r4, 0x1A]
	adds r0, 0x1
	strh r0, [r4, 0x1A]
	b _08192BDC
_08192BD4:
	ldrh r0, [r4, 0x2]
	ldrh r3, [r4, 0xE]
	adds r0, r3
	strh r0, [r4, 0xE]
_08192BDC:
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0x4
	ble _08192B4C
	movs r4, 0x80
	lsls r4, 17
	add r9, r4
	adds r7, 0x1
	cmp r7, 0x2
	bgt _08192BF2
	b _08192AEA
_08192BF2:
	movs r5, 0
	mov r1, r8
	movs r7, 0x5
_08192BF8:
	movs r2, 0xC
	ldrsh r0, [r1, r2]
	adds r5, r0
	adds r1, 0x2
	subs r7, 0x1
	cmp r7, 0
	bge _08192BF8
	movs r6, 0x64
	mov r4, r8
	movs r7, 0x5
_08192C0C:
	movs r3, 0xC
	ldrsh r0, [r4, r3]
	muls r0, r6
	adds r1, r5, 0
	bl __divsi3
	strh r0, [r4]
	adds r4, 0x2
	subs r7, 0x1
	cmp r7, 0
	bge _08192C0C
	b _08192D70
_08192C24:
	ldr r4, =gUnknown_0203BC8C
	mov r10, r4
	ldr r1, [sp, 0x3C]
	ldr r2, [sp, 0x20]
	adds r0, r1, r2
	lsls r0, 1
	mov r9, r0
	movs r7, 0x2
_08192C34:
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r4, =0x00000d64
	adds r0, r4
	add r0, r9
	ldrh r0, [r0]
	mov r2, r10
	ldr r1, [r2]
	lsls r0, 4
	adds r0, r1
	ldrb r2, [r0, 0xB]
	movs r6, 0
	movs r4, 0
	movs r3, 0x1
	mov r1, r8
	movs r5, 0x5
_08192C54:
	strh r4, [r1]
	adds r0, r2, 0
	ands r0, r3
	cmp r0, 0
	beq _08192C60
	adds r6, 0x1
_08192C60:
	asrs r2, 1
	adds r1, 0x2
	subs r5, 0x1
	cmp r5, 0
	bge _08192C54
	movs r0, 0xFF
	lsls r0, 1
	adds r1, r6, 0
	bl __divsi3
	adds r6, r0, 0
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r4, =0x00000d64
	adds r0, r4
	add r0, r9
	ldrh r0, [r0]
	mov r2, r10
	ldr r1, [r2]
	lsls r0, 4
	adds r0, r1
	ldrb r2, [r0, 0xB]
	movs r3, 0x1
	mov r1, r8
	movs r5, 0x5
_08192C92:
	adds r0, r2, 0
	ands r0, r3
	cmp r0, 0
	beq _08192C9C
	strh r6, [r1]
_08192C9C:
	asrs r2, 1
	adds r1, 0x2
	subs r5, 0x1
	cmp r5, 0
	bge _08192C92
	mov r3, r8
	ldrh r0, [r3]
	ldrh r4, [r3, 0xC]
	adds r0, r4
	strh r0, [r3, 0xC]
	movs r5, 0
	mov r4, r8
_08192CB4:
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000d64
	adds r0, r2
	add r0, r9
	ldrh r0, [r0]
	mov r3, r10
	ldr r1, [r3]
	lsls r0, 4
	adds r0, r1
	ldrb r2, [r0, 0xC]
	lsls r0, r2, 2
	adds r0, r2
	adds r0, r5, r0
	ldr r1, =gNatureStatTable
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	ble _08192D04
	movs r2, 0x2
	ldrsh r1, [r4, r2]
	movs r0, 0x6E
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	ldrh r1, [r4, 0xE]
	adds r1, r0
	strh r1, [r4, 0xE]
	b _08192D2C
	.pool
_08192D04:
	cmp r0, 0
	bge _08192D24
	movs r3, 0x2
	ldrsh r1, [r4, r3]
	movs r0, 0x5A
	muls r0, r1
	movs r1, 0x64
	bl __divsi3
	ldrh r1, [r4, 0xE]
	adds r1, r0
	strh r1, [r4, 0xE]
	ldrh r0, [r4, 0x1A]
	adds r0, 0x1
	strh r0, [r4, 0x1A]
	b _08192D2C
_08192D24:
	ldrh r0, [r4, 0x2]
	ldrh r1, [r4, 0xE]
	adds r0, r1
	strh r0, [r4, 0xE]
_08192D2C:
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0x4
	ble _08192CB4
	movs r2, 0x2
	add r9, r2
	subs r7, 0x1
	cmp r7, 0
	blt _08192D40
	b _08192C34
_08192D40:
	movs r5, 0
	mov r1, r8
	movs r7, 0x5
_08192D46:
	movs r3, 0xC
	ldrsh r0, [r1, r3]
	adds r5, r0
	adds r1, 0x2
	subs r7, 0x1
	cmp r7, 0
	bge _08192D46
	movs r6, 0x64
	mov r4, r8
	movs r7, 0x5
_08192D5A:
	movs r1, 0xC
	ldrsh r0, [r4, r1]
	muls r0, r6
	adds r1, r5, 0
	bl __divsi3
	strh r0, [r4]
	adds r4, 0x2
	subs r7, 0x1
	cmp r7, 0
	bge _08192D5A
_08192D70:
	movs r7, 0
	movs r5, 0
	movs r6, 0
	mov r4, r8
	mov r10, r8
	mov r9, r8
_08192D7C:
	movs r2, 0
	ldrsh r1, [r4, r2]
	cmp r1, 0x1D
	ble _08192DDE
	cmp r7, 0x2
	bne _08192DD4
	mov r3, r8
	movs r0, 0xC
	ldrsh r3, [r3, r0]
	mov r12, r3
	cmp r12, r1
	bge _08192DC6
	mov r2, r8
	ldrh r2, [r2, 0xE]
	add r3, sp, 0x54
	strh r2, [r3]
	mov r2, r8
	movs r3, 0xE
	ldrsh r0, [r2, r3]
	cmp r0, r1
	bge _08192DBA
	cmp r12, r0
	bge _08192DB4
	add r0, sp, 0x54
	ldrh r0, [r0]
	strh r0, [r2, 0xC]
	strh r6, [r2, 0xE]
	b _08192DDE
_08192DB4:
	mov r1, r8
	strh r6, [r1, 0xE]
	b _08192DDE
_08192DBA:
	add r2, sp, 0x54
	ldrh r3, [r2]
	mov r2, r8
	strh r3, [r2, 0xC]
	strh r6, [r2, 0xE]
	b _08192DDE
_08192DC6:
	mov r3, r8
	movs r2, 0xE
	ldrsh r0, [r3, r2]
	cmp r0, r1
	bge _08192DDE
	strh r6, [r3, 0xE]
	b _08192DDE
_08192DD4:
	mov r3, r9
	strh r6, [r3, 0xC]
	movs r0, 0x2
	add r9, r0
	adds r7, 0x1
_08192DDE:
	movs r1, 0
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _08192E64
	cmp r5, 0x2
	bne _08192E5A
	movs r2, 0x18
	ldrsh r0, [r4, r2]
	cmp r0, 0x1
	bgt _08192E18
	cmp r0, 0x1
	bne _08192E64
	mov r3, r8
	movs r1, 0x10
	ldrsh r0, [r3, r1]
	lsls r0, 1
	add r0, r8
	movs r2, 0x18
	ldrsh r0, [r0, r2]
	cmp r0, 0
	bne _08192E22
	movs r1, 0x12
	ldrsh r0, [r3, r1]
	lsls r0, 1
	add r0, r8
	movs r2, 0x18
	ldrsh r0, [r0, r2]
	cmp r0, 0
	bne _08192E22
_08192E18:
	mov r3, r8
	ldrh r0, [r3, 0x12]
	strh r0, [r3, 0x10]
	strh r6, [r3, 0x12]
	b _08192E64
_08192E22:
	movs r1, 0x18
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	bne _08192E64
	mov r2, r8
	movs r3, 0x10
	ldrsh r0, [r2, r3]
	lsls r0, 1
	add r0, r8
	movs r1, 0x18
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bne _08192E44
	ldrh r0, [r2, 0x12]
	strh r0, [r2, 0x10]
	strh r6, [r2, 0x12]
	b _08192E64
_08192E44:
	mov r2, r8
	movs r3, 0x12
	ldrsh r0, [r2, r3]
	lsls r0, 1
	add r0, r8
	movs r1, 0x18
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bne _08192E64
	strh r6, [r2, 0x12]
	b _08192E64
_08192E5A:
	mov r2, r10
	strh r6, [r2, 0x10]
	movs r3, 0x2
	add r10, r3
	adds r5, 0x1
_08192E64:
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x5
	ble _08192D7C
	cmp r7, 0x2
	bne _08192E8C
	ldr r0, =gUnknown_0860D349
	mov r4, r8
	movs r1, 0xC
	ldrsh r2, [r4, r1]
	adds r0, r2, r0
	movs r3, 0xE
	ldrsh r1, [r4, r3]
	subs r1, 0x1
	subs r1, r2
	ldrb r0, [r0]
	adds r7, r1, r0
	b _08192ED2
	.pool
_08192E8C:
	cmp r7, 0x1
	bne _08192E9C
	mov r4, r8
	movs r1, 0xC
	ldrsh r0, [r4, r1]
	adds r7, r0, 0
	adds r7, 0xF
	b _08192ED2
_08192E9C:
	cmp r5, 0x2
	bne _08192EC0
	ldr r0, =gUnknown_0860D349
	mov r3, r8
	movs r4, 0x10
	ldrsh r2, [r3, r4]
	adds r0, r2, r0
	movs r4, 0x12
	ldrsh r1, [r3, r4]
	subs r1, 0x1
	subs r1, r2
	ldrb r0, [r0]
	adds r1, r0
	adds r7, r1, 0
	adds r7, 0x15
	b _08192ED2
	.pool
_08192EC0:
	cmp r5, 0x1
	bne _08192ED0
	mov r1, r8
	movs r2, 0x10
	ldrsh r0, [r1, r2]
	adds r7, r0, 0
	adds r7, 0x24
	b _08192ED2
_08192ED0:
	movs r7, 0x2A
_08192ED2:
	lsls r0, r7, 2
	ldr r3, =gUnknown_0860D294
	adds r0, r3
	ldr r0, [r0]
	str r0, [sp, 0xC]
	add r0, sp, 0xC
	movs r1, 0x24
	strb r1, [r0, 0x7]
	strb r1, [r0, 0x9]
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	mov r0, r8
	bl Free
	add sp, 0x58
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81924E0

	thumb_func_start sub_8192F08
sub_8192F08: @ 8192F08
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	str r1, [sp]
	lsls r0, 24
	lsrs r7, r0, 24
	movs r0, 0
	str r0, [sp, 0x4]
	mov r8, r0
	ldr r2, =gUnknown_0860D3C4
	lsls r0, r7, 1
	adds r0, r7
	adds r1, r0, r2
	ldrb r6, [r1]
	adds r1, r2, 0x1
	adds r0, r1
	ldrb r0, [r0]
	adds r0, r6, r0
	adds r3, r2, 0
	cmp r6, r0
	bge _08192FD4
	ldr r5, =gSaveBlock2Ptr
	ldr r1, =0x000003ff
	mov r10, r1
	ldr r2, =0x000003fe
	mov r9, r2
_08192F42:
	ldr r0, =gUnknown_0860D3B4
	adds r0, r6, r0
	ldrb r4, [r0]
	ldr r0, [r5]
	lsls r1, r4, 2
	adds r0, r1
	ldr r2, =0x00000d25
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08192FBE
	ldr r0, [sp]
	add r0, r8
	strb r4, [r0]
	ldr r2, [r5]
	adds r0, r2, r1
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r1, r0, 22
	lsrs r0, r1, 22
	cmp r0, r10
	bne _08192F9C
	ldr r0, =gStringVar1
	adds r1, r2, 0
	bl StringCopy
	b _08192FB8
	.pool
_08192F9C:
	lsrs r0, r1, 22
	cmp r0, r9
	bne _08192FB0
	ldr r0, =gStringVar1
	bl sub_8195938
	b _08192FB8
	.pool
_08192FB0:
	lsrs r1, 22
	ldr r0, =gStringVar1
	bl sub_8195898
_08192FB8:
	movs r2, 0x1
	add r8, r2
	ldr r3, =gUnknown_0860D3C4
_08192FBE:
	adds r6, 0x1
	lsls r1, r7, 1
	adds r1, r7
	adds r0, r1, r3
	ldrb r2, [r0]
	adds r0, r3, 0x1
	adds r1, r0
	ldrb r0, [r1]
	adds r2, r0
	cmp r6, r2
	blt _08192F42
_08192FD4:
	mov r5, r8
	cmp r5, 0x2
	bne _08192FE8
	movs r0, 0
	b _0819313C
	.pool
_08192FE8:
	mov r12, r3
	lsls r3, r7, 1
	adds r0, r3, r7
	mov r2, r12
	adds r1, r0, r2
	ldrb r6, [r1]
	mov r1, r12
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	adds r0, r6, r0
	str r3, [sp, 0x8]
	cmp r6, r0
	blt _08193006
	b _08193126
_08193006:
	ldr r5, =gSaveBlock2Ptr
	mov r10, r5
	ldr r0, =0x00000d25
	mov r9, r0
_0819300E:
	ldr r0, =gUnknown_0860D3B4
	adds r0, r6, r0
	ldrb r4, [r0]
	mov r1, r10
	ldr r0, [r1]
	lsls r2, r4, 2
	str r2, [sp, 0xC]
	adds r0, r2
	add r0, r9
	ldrb r2, [r0]
	lsls r0, r2, 29
	cmp r0, 0
	bge _08193100
	lsls r2, 27
	adds r1, r3, r7
	mov r0, r12
	adds r0, 0x2
	adds r1, r0
	lsrs r2, 30
	ldrb r1, [r1]
	cmp r2, r1
	bcc _08193100
	ldr r0, [sp]
	add r0, r8
	strb r4, [r0]
	movs r5, 0x1
	add r8, r5
	mov r0, r10
	ldr r3, [r0]
	ldr r5, [sp, 0xC]
	adds r2, r3, r5
	adds r0, r2, 0
	add r0, r9
	ldrb r5, [r0]
	mov r12, r5
	mov r0, r12
	lsls r0, 27
	lsrs r0, 30
	cmp r0, r1
	bne _081930BC
	lsls r4, 1
	movs r1, 0xEC
	lsls r1, 4
	adds r0, r3, r1
	adds r0, r4
	ldrh r1, [r0]
	movs r0, 0xD
	muls r1, r0
	ldr r0, =gMoveNames
	adds r1, r0
	ldr r0, =gStringVar2
	bl StringCopy
	mov r2, r10
	ldr r1, [r2]
	ldr r5, [sp, 0xC]
	adds r0, r1, r5
	add r0, r9
	ldrb r0, [r0]
	lsls r2, r0, 24
	lsrs r0, r2, 29
	lsls r0, 1
	str r0, [sp, 0x4]
	movs r0, 0xEC
	lsls r0, 4
	adds r1, r0
	adds r1, r4
	ldrh r0, [r1]
	cmp r0, 0
	bne _08193100
	lsrs r0, r2, 29
	cmp r0, 0
	bne _08193100
	movs r1, 0x4
	str r1, [sp, 0x4]
	b _08193100
	.pool
_081930BC:
	ldr r5, =0x00000d24
	adds r0, r2, r5
	ldrh r0, [r0]
	lsls r1, r0, 22
	ldr r0, =0xffc00000
	cmp r1, r0
	bne _081930E0
	ldr r0, =gStringVar1
	adds r1, r3, 0
	bl StringCopy
	b _08193100
	.pool
_081930E0:
	ldr r0, =0xff800000
	cmp r1, r0
	bne _081930F8
	ldr r0, =gStringVar1
	bl sub_8195938
	b _08193100
	.pool
_081930F8:
	lsrs r1, 22
	ldr r0, =gStringVar1
	bl sub_8195898
_08193100:
	mov r0, r8
	cmp r0, 0x2
	beq _08193126
	adds r6, 0x1
	ldr r1, =gUnknown_0860D3C4
	mov r12, r1
	ldr r3, [sp, 0x8]
	adds r1, r3, r7
	mov r2, r12
	adds r0, r1, r2
	ldrb r2, [r0]
	mov r0, r12
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	adds r2, r0
	cmp r6, r2
	bge _08193126
	b _0819300E
_08193126:
	cmp r7, 0xE
	beq _08193138
	ldr r0, [sp, 0x4]
	adds r0, 0x1
	b _0819313C
	.pool
_08193138:
	ldr r0, [sp, 0x4]
	adds r0, 0x2
_0819313C:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8192F08

	thumb_func_start sub_819314C
sub_819314C: @ 819314C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x80
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x34]
	lsls r1, 24
	lsrs r6, r1, 24
	movs r0, 0
	str r0, [sp, 0x3C]
	movs r7, 0
	movs r1, 0
	str r1, [sp, 0x40]
	movs r2, 0
	str r2, [sp, 0x44]
	mov r9, r2
	movs r0, 0x1
	ldr r3, [sp, 0x34]
	ands r0, r3
	cmp r0, 0
	beq _08193186
	movs r7, 0x8
	str r7, [sp, 0x3C]
	movs r7, 0x9
	movs r0, 0x2
	mov r9, r0
_08193186:
	movs r0, 0x2
	ldr r1, [sp, 0x34]
	ands r0, r1
	cmp r0, 0
	beq _08193196
	movs r2, 0x80
	lsls r2, 1
	str r2, [sp, 0x40]
_08193196:
	movs r0, 0x4
	ldr r3, [sp, 0x34]
	ands r0, r3
	cmp r0, 0
	beq _081931A4
	movs r0, 0xA0
	str r0, [sp, 0x44]
_081931A4:
	movs r0, 0x8
	ldr r1, [sp, 0x34]
	ands r0, r1
	cmp r0, 0
	beq _081931B2
	ldr r2, =0xffffff00
	str r2, [sp, 0x40]
_081931B2:
	movs r0, 0x10
	ldr r3, [sp, 0x34]
	ands r0, r3
	cmp r0, 0
	beq _081931C2
	movs r0, 0xA0
	negs r0, r0
	str r0, [sp, 0x44]
_081931C2:
	ldr r4, =gUnknown_0203CD78
	ldr r1, [r4]
	adds r1, 0x11
	adds r0, r6, 0
	bl sub_8192F08
	str r0, [sp, 0x38]
	movs r5, 0
	mov r1, sp
	adds r1, 0x1C
	str r1, [sp, 0x48]
	mov r2, sp
	adds r2, 0x24
	str r2, [sp, 0x4C]
	lsls r1, r6, 1
	mov r3, sp
	adds r3, 0x2C
	str r3, [sp, 0x50]
	ldr r0, [sp, 0x40]
	adds r0, 0x30
	mov r8, r0
	ldr r2, [sp, 0x44]
	adds r2, 0x58
	str r2, [sp, 0x78]
	movs r3, 0xC
	add r3, r9
	mov r10, r3
	ldr r0, [sp, 0x40]
	adds r0, 0xC0
	str r0, [sp, 0x7C]
	mov r2, r9
	adds r2, 0xD
	str r2, [sp, 0x74]
	ldr r3, [sp, 0x3C]
	adds r3, 0x1
	mov r9, r3
	ldr r0, [sp, 0x3C]
	adds r0, 0x2
	str r0, [sp, 0x54]
	ldr r2, [sp, 0x3C]
	adds r2, 0x5
	str r2, [sp, 0x5C]
	adds r3, r7, 0
	adds r3, 0x8
	str r3, [sp, 0x6C]
	adds r0, r7, 0x6
	str r0, [sp, 0x64]
	adds r2, r7, 0x7
	str r2, [sp, 0x68]
	lsls r3, r6, 2
	str r3, [sp, 0x58]
	adds r0, r7, 0x5
	str r0, [sp, 0x60]
	ldr r0, [r4]
	adds r0, 0x11
	mov r12, r0
	ldr r0, =gSaveBlock2Ptr
	ldr r4, [r0]
	ldr r0, =gUnknown_0860D3C6
	movs r3, 0
	adds r1, r6
	adds r1, r0
	ldrb r6, [r1]
_08193240:
	ldr r1, [sp, 0x48]
	adds r2, r3, r1
	mov r7, r12
	adds r0, r7, r5
	ldrb r0, [r0]
	str r0, [r2]
	ldr r7, [sp, 0x4C]
	adds r1, r3, r7
	lsls r0, 2
	adds r0, r4, r0
	ldr r7, =0x00000d24
	adds r0, r7
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	str r0, [r1]
	ldr r0, [r2]
	lsls r0, 2
	adds r0, r4, r0
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 27
	lsrs r0, 30
	cmp r0, r6
	bhi _0819329C
	lsls r0, r1, 29
	cmp r0, 0
	bge _0819329C
	ldr r2, [sp, 0x50]
	adds r1, r3, r2
	movs r0, 0x1
	b _081932A2
	.pool
_0819329C:
	ldr r7, [sp, 0x50]
	adds r1, r3, r7
	movs r0, 0
_081932A2:
	str r0, [r1]
	adds r3, 0x4
	adds r5, 0x1
	cmp r5, 0x1
	ble _08193240
	ldr r1, [sp, 0x24]
	ldr r0, =0x000003ff
	cmp r1, r0
	bne _081932D4
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r0, [r0, 0x8]
	bl sub_806F000
	lsls r0, 16
	lsrs r0, 16
	mov r2, r8
	ldr r3, [sp, 0x78]
	mov r1, r10
	str r1, [sp]
	b _081932F8
	.pool
_081932D4:
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _081932E4
	bl sub_8195910
	b _081932EC
	.pool
_081932E4:
	lsls r0, r1, 16
	lsrs r0, 16
	bl sub_8162AA0
_081932EC:
	lsls r0, 24
	lsrs r0, 24
	mov r2, r8
	ldr r3, [sp, 0x78]
	mov r7, r10
	str r7, [sp]
_081932F8:
	ldr r1, =0x0000ffff
	str r1, [sp, 0x4]
	movs r1, 0x1
	bl sub_818D8AC
	ldr r1, =gUnknown_0203CD78
	ldr r1, [r1]
	ldr r2, [sp, 0x3C]
	adds r1, r2
	strb r0, [r1]
	movs r0, 0x1E
	ldr r3, [sp, 0x34]
	ands r0, r3
	cmp r0, 0
	beq _08193334
	ldr r2, =gSprites
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldr r7, [sp, 0x3C]
	adds r0, r7
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_08193334:
	ldr r0, [sp, 0x2C]
	cmp r0, 0
	beq _0819335A
	ldr r2, =gSprites
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	ldr r1, [sp, 0x3C]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r2, [r0, 0x5]
	movs r1, 0xF
	ands r1, r2
	movs r2, 0x30
	orrs r1, r2
	strb r1, [r0, 0x5]
_0819335A:
	ldr r2, [sp, 0x4C]
	ldr r1, [r2, 0x4]
	ldr r0, =0x000003ff
	cmp r1, r0
	bne _08193388
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r0, [r0, 0x8]
	bl sub_806F000
	lsls r0, 16
	lsrs r0, 16
	b _081933B0
	.pool
_08193388:
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _081933A4
	bl sub_8195910
	lsls r0, 24
	lsrs r0, 24
	ldr r2, [sp, 0x7C]
	ldr r3, [sp, 0x78]
	ldr r1, [sp, 0x74]
	str r1, [sp]
	b _081933B8
	.pool
_081933A4:
	lsls r0, r1, 16
	lsrs r0, 16
	bl sub_8162AA0
	lsls r0, 24
	lsrs r0, 24
_081933B0:
	ldr r2, [sp, 0x7C]
	ldr r3, [sp, 0x78]
	ldr r7, [sp, 0x74]
	str r7, [sp]
_081933B8:
	ldr r1, =0x0000ffff
	str r1, [sp, 0x4]
	movs r1, 0x1
	bl sub_818D8AC
	ldr r1, =gUnknown_0203CD78
	ldr r1, [r1]
	add r1, r9
	strb r0, [r1]
	movs r0, 0x1E
	ldr r1, [sp, 0x34]
	ands r0, r1
	cmp r0, 0
	beq _081933F0
	ldr r2, =gSprites
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	add r0, r9
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_081933F0:
	ldr r2, [sp, 0x50]
	ldr r0, [r2, 0x4]
	cmp r0, 0
	beq _08193416
	ldr r2, =gSprites
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	add r0, r9
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r2, [r0, 0x5]
	movs r1, 0xF
	ands r1, r2
	movs r2, 0x30
	orrs r1, r2
	strb r1, [r0, 0x5]
_08193416:
	movs r5, 0
	ldr r3, [sp, 0x38]
	lsls r3, 2
	str r3, [sp, 0x70]
	mov r8, r5
	ldr r6, =gUnknown_0203CD78
	ldr r7, =gSprites
	ldr r4, [sp, 0x54]
	mov r9, r5
	movs r0, 0x1
	mov r10, r0
_0819342C:
	ldr r1, [sp, 0x24]
	ldr r0, =0x000003ff
	cmp r1, r0
	bne _08193464
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, [sp, 0x1C]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	add r0, r9
	ldr r1, =0x00000d64
	adds r2, r1
	adds r2, r0
	ldrh r0, [r2]
	b _081934B0
	.pool
_08193464:
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _08193490
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, [sp, 0x1C]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	add r0, r9
	ldr r1, =0x00000d64
	adds r2, r1
	adds r2, r0
	ldrh r0, [r2]
	b _081934B0
	.pool
_08193490:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, [sp, 0x1C]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	add r0, r9
	ldr r1, =0x00000d64
	adds r2, r1
	adds r2, r0
	ldrh r1, [r2]
	ldr r0, =gUnknown_0203BC8C
	ldr r0, [r0]
	lsls r1, 4
	adds r1, r0
	ldrh r0, [r1]
_081934B0:
	ldr r1, =gUnknown_0860D3A8
	adds r1, r5, r1
	ldrb r2, [r1]
	ldr r3, [sp, 0x40]
	orrs r2, r3
	ldr r1, =gUnknown_0860D3AB
	adds r1, r5, r1
	ldrb r3, [r1]
	ldr r1, [sp, 0x44]
	adds r3, r1
	mov r1, r8
	str r1, [sp]
	str r1, [sp, 0x4]
	mov r1, r10
	str r1, [sp, 0x8]
	ldr r1, =sub_8190938
	bl sub_80D2CC4
	ldr r1, [r6]
	adds r1, r4
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldrb r1, [r0, 0x5]
	movs r3, 0xD
	negs r3, r3
	adds r2, r3, 0
	ands r1, r2
	strb r1, [r0, 0x5]
	movs r0, 0x1E
	ldr r1, [sp, 0x34]
	ands r0, r1
	cmp r0, 0
	beq _08193516
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_08193516:
	ldr r0, [sp, 0x2C]
	cmp r0, 0
	beq _08193548
	ldr r0, [r6]
	adds r0, r4
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r7
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	movs r2, 0x30
	orrs r0, r2
	strb r0, [r1, 0x5]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	mov r2, r10
	strh r2, [r0, 0x34]
_08193548:
	adds r4, 0x1
	movs r3, 0x2
	add r9, r3
	adds r5, 0x1
	cmp r5, 0x2
	bgt _08193556
	b _0819342C
_08193556:
	movs r5, 0
	ldr r6, =gUnknown_0203CD78
	ldr r7, =gSprites
	mov r8, r7
	ldr r4, [sp, 0x5C]
	mov r9, r5
	movs r7, 0
_08193564:
	ldr r0, [sp, 0x4C]
	ldr r1, [r0, 0x4]
	ldr r0, =0x000003ff
	cmp r1, r0
	bne _081935AC
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r3, [sp, 0x48]
	ldr r1, [r3, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	add r0, r9
	ldr r1, =0x00000d64
	adds r2, r1
	adds r2, r0
	ldrh r0, [r2]
	b _081935FA
	.pool
_081935AC:
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _081935D8
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, [sp, 0x48]
	ldr r1, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	add r0, r9
	ldr r1, =0x00000d64
	adds r2, r1
	adds r2, r0
	ldrh r0, [r2]
	b _081935FA
	.pool
_081935D8:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, [sp, 0x48]
	ldr r1, [r0, 0x4]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	add r0, r9
	ldr r1, =0x00000d64
	adds r2, r1
	adds r2, r0
	ldrh r1, [r2]
	ldr r0, =gUnknown_0203BC8C
	ldr r0, [r0]
	lsls r1, 4
	adds r1, r0
	ldrh r0, [r1]
_081935FA:
	ldr r1, =gUnknown_0860D3AE
	adds r1, r5, r1
	ldrb r2, [r1]
	ldr r3, [sp, 0x40]
	orrs r2, r3
	ldr r1, =gUnknown_0860D3B1
	adds r1, r5, r1
	ldrb r3, [r1]
	ldr r1, [sp, 0x44]
	adds r3, r1
	str r7, [sp]
	str r7, [sp, 0x4]
	movs r1, 0x1
	str r1, [sp, 0x8]
	ldr r1, =sub_8190938
	bl sub_80D2CC4
	ldr r1, [r6]
	adds r1, r4
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	ldrb r1, [r0, 0x5]
	movs r3, 0xD
	negs r3, r3
	adds r2, r3, 0
	ands r1, r2
	strb r1, [r0, 0x5]
	movs r0, 0x1E
	ldr r1, [sp, 0x34]
	ands r0, r1
	cmp r0, 0
	beq _0819365E
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_0819365E:
	ldr r2, [sp, 0x50]
	ldr r0, [r2, 0x4]
	cmp r0, 0
	beq _08193692
	ldr r0, [r6]
	adds r0, r4
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	add r1, r8
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	movs r2, 0x30
	orrs r0, r2
	strb r0, [r1, 0x5]
	ldr r0, [r6]
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	movs r1, 0x1
	strh r1, [r0, 0x34]
_08193692:
	adds r4, 0x1
	movs r3, 0x2
	add r9, r3
	adds r5, 0x1
	cmp r5, 0x2
	bgt _081936A0
	b _08193564
_081936A0:
	add r0, sp, 0xC
	movs r5, 0
	strb r5, [r0, 0x6]
	adds r1, r0, 0
	movs r0, 0x2
	strb r0, [r1, 0x7]
	adds r0, r1, 0
	ldrb r0, [r0, 0x6]
	strb r0, [r1, 0x8]
	adds r0, r1, 0
	ldrb r0, [r0, 0x7]
	strb r0, [r1, 0x9]
	adds r0, r1, 0
	strb r5, [r0, 0xA]
	strb r5, [r0, 0xB]
	adds r3, r0, 0
	ldrb r2, [r3, 0xC]
	movs r1, 0x10
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	adds r2, r3, 0
	movs r0, 0xE0
	strb r0, [r2, 0xC]
	ldrb r0, [r2, 0xD]
	ands r1, r0
	strb r1, [r2, 0xD]
	adds r1, r2, 0
	movs r0, 0xD0
	strb r0, [r1, 0xD]
	ldr r4, =gStringVar4
	ldr r0, =gUnknown_0860D38C
	ldr r7, [sp, 0x70]
	adds r0, r7, r0
	ldr r1, [r0]
	adds r0, r4, 0
	bl StringExpandPlaceholders
	str r4, [sp, 0xC]
	add r0, sp, 0xC
	add r1, sp, 0x6C
	ldrb r1, [r1]
	strb r1, [r0, 0x4]
	adds r1, r0, 0
	movs r0, 0x1
	strb r0, [r1, 0x5]
	ldr r4, [sp, 0x6C]
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add r0, sp, 0xC
	strb r5, [r0, 0x8]
	adds r1, r0, 0
	strb r5, [r0, 0x7]
	strb r5, [r1, 0x9]
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	ldr r1, [sp, 0x24]
	ldr r0, =0x000003ff
	cmp r1, r0
	bne _0819375C
	ldr r0, =gStringVar1
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	bl StringCopy
	b _0819377E
	.pool
_0819375C:
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _08193774
	ldr r0, =gStringVar1
	bl sub_8195938
	b _0819377E
	.pool
_08193774:
	ldr r0, =gStringVar1
	lsls r1, 16
	lsrs r1, 16
	bl sub_8195898
_0819377E:
	add r0, sp, 0xC
	movs r4, 0x2
	strb r4, [r0, 0x5]
	strb r4, [r0, 0xA]
	ldr r5, =gStringVar1
	str r5, [sp, 0xC]
	add r2, sp, 0x64
	ldrb r2, [r2]
	strb r2, [r0, 0x4]
	ldrb r0, [r0, 0x5]
	ldr r1, [sp, 0xC]
	add r2, sp, 0xC
	ldrb r3, [r2, 0xA]
	movs r2, 0x40
	bl GetStringCenterAlignXOffsetWithLetterSpacing
	add r1, sp, 0xC
	strb r0, [r1, 0x8]
	adds r0, r1, 0
	strb r4, [r0, 0x7]
	strb r4, [r1, 0x9]
	ldr r4, [sp, 0x64]
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add r0, sp, 0xC
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	ldr r3, [sp, 0x4C]
	ldr r1, [r3, 0x4]
	ldr r0, =0x000003ff
	cmp r1, r0
	bne _081937E4
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r0, r5, 0
	bl StringCopy
	b _08193802
	.pool
_081937E4:
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _081937F8
	adds r0, r5, 0
	bl sub_8195938
	b _08193802
	.pool
_081937F8:
	lsls r1, 16
	lsrs r1, 16
	adds r0, r5, 0
	bl sub_8195898
_08193802:
	ldr r0, =gStringVar1
	str r0, [sp, 0xC]
	add r0, sp, 0xC
	movs r6, 0
	add r7, sp, 0x68
	ldrb r7, [r7]
	strb r7, [r0, 0x4]
	ldrb r0, [r0, 0x5]
	ldr r1, [sp, 0xC]
	add r2, sp, 0xC
	ldrb r3, [r2, 0xA]
	movs r2, 0x40
	bl GetStringCenterAlignXOffsetWithLetterSpacing
	add r1, sp, 0xC
	strb r0, [r1, 0x8]
	adds r0, r1, 0
	movs r5, 0x2
	strb r5, [r0, 0x7]
	strb r5, [r1, 0x9]
	ldr r4, [sp, 0x68]
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add r0, sp, 0xC
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	add r0, sp, 0xC
	strb r6, [r0, 0xA]
	ldr r0, =gUnknown_0860D350
	ldr r1, [sp, 0x58]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp, 0xC]
	add r0, sp, 0xC
	add r2, sp, 0x60
	ldrb r2, [r2]
	strb r2, [r0, 0x4]
	ldrb r0, [r0, 0x5]
	ldr r1, [sp, 0xC]
	add r2, sp, 0xC
	ldrb r3, [r2, 0xA]
	movs r2, 0xA0
	bl GetStringCenterAlignXOffsetWithLetterSpacing
	add r1, sp, 0xC
	strb r0, [r1, 0x8]
	adds r0, r1, 0
	strb r5, [r0, 0x7]
	strb r5, [r1, 0x9]
	ldr r4, [sp, 0x60]
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add r0, sp, 0xC
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	add sp, 0x80
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819314C

	thumb_func_start sub_81938A4
sub_81938A4: @ 81938A4
	push {lr}
	ldr r0, =sub_8194220
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r2, 0
	strh r2, [r1, 0x8]
	strh r2, [r1, 0xA]
	movs r0, 0x2
	strh r0, [r1, 0xC]
	strh r2, [r1, 0x10]
	ldr r0, =sub_8194B54
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81938A4

	thumb_func_start sub_81938E0
sub_81938E0: @ 81938E0
	push {r4,lr}
	bl sub_8194D48
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	ldr r1, =0x00000d0a
	adds r0, r2, r1
	ldrb r1, [r0]
	subs r1, 0x1
	ldr r0, =0x00000ca9
	adds r2, r0
	movs r0, 0x3
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	ldr r1, =0x00000cb2
	adds r0, r1
	movs r4, 0
	movs r1, 0x3
	strh r1, [r0]
	ldr r0, =sub_8194220
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0x8]
	strh r4, [r1, 0xA]
	movs r0, 0x2
	strh r0, [r1, 0xC]
	movs r0, 0x1
	strh r0, [r1, 0x10]
	ldr r0, =sub_8194B54
	bl SetMainCallback2
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81938E0

	thumb_func_start sub_819395C
sub_819395C: @ 819395C
	push {r4-r7,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r2, 0xA
	ldrsh r7, [r0, r2]
	movs r2, 0x8
	ldrsh r0, [r0, r2]
	adds r2, r1, 0
	cmp r0, 0x7
	bls _0819397E
	b _08193BC2
_0819397E:
	lsls r0, 2
	ldr r1, =_08193990
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08193990:
	.4byte _081939B0
	.4byte _08193A00
	.4byte _08193A20
	.4byte _08193AA8
	.4byte _08193BC2
	.4byte _08193B20
	.4byte _08193BC2
	.4byte _08193B84
_081939B0:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _081939C2
	b _08193BC2
_081939C2:
	movs r0, 0x1
	negs r0, r0
	str r1, [sp]
	movs r1, 0
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x1
	strh r1, [r0, 0x8]
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	movs r1, 0x1
	bl StartSpriteAnim
	b _08193BC2
	.pool
_08193A00:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08193A0E
	b _08193BC2
_08193A0E:
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r2
	movs r1, 0x2
	strh r1, [r0, 0x8]
	b _08193BC2
	.pool
_08193A20:
	adds r0, r5, 0
	bl sub_8193BDC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08193A30
	b _08193BC2
_08193A30:
	cmp r0, 0x1
	ble _08193A3C
	cmp r0, 0x2
	beq _08193A60
	cmp r0, 0x3
	beq _08193A84
_08193A3C:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x7
	strh r1, [r0, 0x8]
	b _08193BC2
	.pool
_08193A60:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x3
	strh r1, [r0, 0x8]
	b _08193BC2
	.pool
_08193A84:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x5
	strh r1, [r0, 0x8]
	b _08193BC2
	.pool
_08193AA8:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0
	beq _08193ABA
	b _08193BC2
_08193ABA:
	bl FreeAllWindowBuffers
	bl remove_some_task
	ldr r4, =gUnknown_0203CD7C
	ldr r0, [r4]
	bl Free
	str r6, [r4]
	ldr r0, =sub_8190400
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r2, =gTasks
	lsls r1, r3, 2
	adds r1, r3
	lsls r1, 3
	adds r1, r2
	movs r3, 0
	strh r6, [r1, 0x8]
	ldr r0, =gUnknown_0860D080
	adds r0, r7, r0
	ldrb r0, [r0]
	strh r0, [r1, 0xA]
	movs r0, 0x1
	strh r0, [r1, 0xC]
	strh r5, [r1, 0xE]
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r2
	movs r1, 0x4
	strh r1, [r0, 0x8]
	ldr r0, =gUnknown_0203CD78
	ldr r0, [r0]
	strb r3, [r0, 0x10]
	b _08193BC2
	.pool
_08193B20:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0
	bne _08193BC2
	bl FreeAllWindowBuffers
	bl remove_some_task
	ldr r4, =gUnknown_0203CD7C
	ldr r0, [r4]
	bl Free
	str r6, [r4]
	ldr r0, =sub_8190400
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r2, =gTasks
	lsls r0, r3, 2
	adds r0, r3
	lsls r0, 3
	adds r0, r2
	strh r6, [r0, 0x8]
	adds r1, r7, 0
	subs r1, 0x10
	strh r1, [r0, 0xA]
	movs r1, 0x2
	strh r1, [r0, 0xC]
	strh r5, [r0, 0xE]
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r2
	movs r1, 0x6
	strh r1, [r0, 0x8]
	b _08193BC2
	.pool
_08193B84:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0
	bne _08193BC2
	bl FreeAllWindowBuffers
	bl remove_some_task
	ldr r4, =gUnknown_0203CD7C
	ldr r0, [r4]
	bl Free
	str r6, [r4]
	ldr r0, =c2_exit_to_overworld_1_continue_scripts_restart_music
	bl SetMainCallback2
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldrb r0, [r0, 0x16]
	bl DestroyTask
	adds r0, r5, 0
	bl DestroyTask
_08193BC2:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819395C

	thumb_func_start sub_8193BDC
sub_8193BDC: @ 8193BDC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r7, r0, 24
	movs r0, 0x1
	mov r9, r0
	movs r1, 0x4
	mov r8, r1
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	movs r1, 0xA
	ldrsh r5, [r0, r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r6, [r0]
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	adds r2, r1, 0
	adds r3, r0, 0
	cmp r2, 0x2
	beq _08193C20
	mov r0, r9
	ands r0, r1
	cmp r0, 0
	beq _08193C58
	cmp r5, 0x1F
	bne _08193C3C
_08193C20:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0
	mov r9, r0
	b _08193CDE
	.pool
_08193C3C:
	cmp r5, 0xF
	bgt _08193C4C
	movs r0, 0x5
	bl PlaySE
	movs r1, 0x2
	mov r9, r1
	b _08193CDE
_08193C4C:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x3
	mov r9, r0
	b _08193CDE
_08193C58:
	cmp r2, 0x40
	bne _08193C78
	ldr r0, =gUnknown_0860CBF1
	lsls r1, r5, 2
	adds r1, r5
	adds r1, r6
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _08193C78
	movs r1, 0
	mov r8, r1
	b _08193CDE
	.pool
_08193C78:
	ldrh r0, [r3, 0x2E]
	cmp r0, 0x80
	bne _08193C9C
	ldr r0, =gUnknown_0860CBF1
	lsls r1, r5, 2
	adds r1, r5
	adds r1, r6
	lsls r1, 2
	adds r0, 0x1
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _08193C9C
	movs r0, 0x1
	b _08193CDC
	.pool
_08193C9C:
	ldrh r0, [r3, 0x2E]
	cmp r0, 0x20
	bne _08193CC0
	ldr r0, =gUnknown_0860CBF1
	lsls r1, r5, 2
	adds r1, r5
	adds r1, r6
	lsls r1, 2
	adds r0, 0x2
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _08193CC0
	movs r1, 0x2
	mov r8, r1
	b _08193CDE
	.pool
_08193CC0:
	ldrh r0, [r3, 0x2E]
	cmp r0, 0x10
	bne _08193CDE
	ldr r0, =gUnknown_0860CBF1
	lsls r1, r5, 2
	adds r1, r5
	adds r1, r6
	lsls r1, 2
	adds r0, 0x3
	adds r1, r0
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _08193CDE
	movs r0, 0x3
_08193CDC:
	mov r8, r0
_08193CDE:
	mov r1, r8
	cmp r1, 0x4
	beq _08193D26
	movs r0, 0x5
	bl PlaySE
	lsls r0, r5, 4
	adds r0, r5
	lsls r0, 2
	ldr r4, =gSprites
	adds r0, r4
	movs r1, 0
	bl StartSpriteAnim
	ldr r2, =gUnknown_0860CBF1
	lsls r1, r6, 2
	add r1, r8
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 2
	adds r1, r0
	adds r1, r2
	ldrb r5, [r1]
	lsls r0, r5, 4
	adds r0, r5
	lsls r0, 2
	adds r0, r4
	movs r1, 0x1
	bl StartSpriteAnim
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0xA]
_08193D26:
	mov r0, r9
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8193BDC

	thumb_func_start sub_8193D40
sub_8193D40: @ 8193D40
	push {lr}
	ldr r0, =sub_8194220
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r2, 0
	strh r2, [r1, 0x8]
	movs r0, 0x1
	strh r0, [r1, 0xA]
	movs r0, 0x2
	strh r0, [r1, 0xC]
	strh r2, [r1, 0x10]
	ldr r0, =sub_8194B54
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8193D40

	thumb_func_start sub_8193D7C
sub_8193D7C: @ 8193D7C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r7, =gSpecialVar_0x8005
	ldrh r0, [r7]
	cmp r0, 0x1
	bne _08193E10
	ldr r5, =gTrainerBattleOpponent_A
	ldrh r0, [r5]
	bl sub_8195358
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	lsls r0, 2
	adds r2, r0
	ldr r6, =0x00000d25
	adds r2, r6
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r5]
	bl sub_8195358
	ldr r1, [r4]
	lsls r0, 2
	adds r0, r1, r0
	ldr r2, =0x00000cb2
	mov r8, r2
	add r1, r8
	adds r0, r6
	movs r3, 0x3
	ldrb r2, [r1]
	ands r2, r3
	lsls r2, 3
	ldrb r3, [r0]
	movs r1, 0x19
	negs r1, r1
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	ldrh r0, [r5]
	bl sub_8195358
	ldr r2, [r4]
	lsls r0, 1
	movs r3, 0xEC
	lsls r3, 4
	adds r1, r2, r3
	adds r1, r0
	ldr r0, =gBattleResults
	ldrh r0, [r0, 0x22]
	strh r0, [r1]
	add r2, r8
	ldrh r0, [r2]
	cmp r0, 0x2
	bhi _08193EAE
	lsls r0, 24
	lsrs r0, 24
	bl sub_8195438
	b _08193EAE
	.pool
_08193E10:
	ldr r5, =0x000003ff
	adds r0, r5, 0
	bl sub_8195358
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	lsls r0, 2
	adds r2, r0
	ldr r6, =0x00000d25
	adds r2, r6
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, 0
	bl sub_8195358
	ldr r1, [r4]
	lsls r0, 2
	adds r0, r1, r0
	ldr r2, =0x00000cb2
	adds r1, r2
	adds r0, r6
	movs r3, 0x3
	ldrb r2, [r1]
	ands r2, r3
	lsls r2, 3
	ldrb r3, [r0]
	movs r1, 0x19
	negs r1, r1
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, 0
	bl sub_8195358
	ldr r1, [r4]
	lsls r0, 1
	movs r3, 0xEC
	lsls r3, 4
	adds r1, r3
	adds r1, r0
	ldr r0, =gBattleResults
	ldrh r0, [r0, 0x24]
	strh r0, [r1]
	ldr r0, =gBattleOutcome
	ldrb r0, [r0]
	cmp r0, 0x9
	beq _08193E78
	ldrh r0, [r7]
	cmp r0, 0x9
	bne _08193E92
_08193E78:
	adds r0, r5, 0
	bl sub_8195358
	ldr r2, [r4]
	lsls r0, 2
	adds r2, r0
	adds r2, r6
	ldrb r1, [r2]
	movs r0, 0x1F
	ands r0, r1
	movs r1, 0x20
	orrs r0, r1
	strb r0, [r2]
_08193E92:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r4, [r0]
	cmp r4, 0x3
	bgt _08193EAE
_08193EA0:
	lsls r0, r4, 24
	lsrs r0, 24
	bl sub_8195438
	adds r4, 0x1
	cmp r4, 0x3
	ble _08193EA0
_08193EAE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8193D7C

	thumb_func_start sub_8193ED0
sub_8193ED0: @ 8193ED0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x84
	str r0, [sp, 0x48]
	str r1, [sp, 0x4C]
	lsls r4, r2, 24
	lsrs r4, 24
	movs r0, 0
	str r0, [sp, 0x54]
	movs r1, 0
	str r1, [sp, 0x58]
	bl sub_8165C40
	movs r2, 0
	str r2, [sp, 0x50]
	add r3, sp, 0x30
	mov r10, r3
	ldr r5, [sp, 0x4C]
	lsls r5, 1
	str r5, [sp, 0x70]
	subs r4, 0x1
	str r4, [sp, 0x78]
_08193F02:
	movs r0, 0
	mov r9, r0
	ldr r1, [sp, 0x50]
	lsls r1, 2
	str r1, [sp, 0x74]
	ldr r2, [sp, 0x48]
	lsls r2, 2
	str r2, [sp, 0x6C]
	ldr r3, [sp, 0x50]
	adds r3, 0x1
	str r3, [sp, 0x60]
_08193F18:
	ldr r4, [sp, 0x74]
	add r4, r9
	lsls r0, r4, 2
	mov r5, sp
	adds r1, r5, r0
	movs r0, 0
	str r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r1, [sp, 0x6C]
	adds r0, r3, r1
	ldr r2, =0x00000d24
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 22
	ldr r1, =0xff800000
	cmp r0, r1
	bne _08193F60
	ldr r3, [sp, 0x50]
	lsls r0, r3, 24
	mov r5, r9
	lsls r1, r5, 24
	lsrs r1, 24
	lsrs r0, 24
	bl sub_81A5060
	lsls r1, r4, 1
	add r1, r10
	strh r0, [r1]
	b _08193F8C
	.pool
_08193F60:
	lsls r2, r4, 1
	add r2, r10
	ldr r1, [sp, 0x48]
	lsls r0, r1, 1
	adds r0, r1
	ldr r4, [sp, 0x50]
	adds r0, r4
	lsls r0, 1
	ldr r5, =0x00000d64
	adds r1, r3, r5
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =gUnknown_0203BC8C
	ldr r1, [r1]
	lsls r0, 4
	adds r0, r1
	mov r3, r9
	lsls r1, r3, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08193F8C:
	ldr r0, =gBattleMoves
	ldr r1, [sp, 0x74]
	add r1, r9
	lsls r1, 1
	add r1, r10
	ldrh r2, [r1]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r6, [r1, 0x1]
	cmp r6, 0
	bne _08193FB8
	movs r6, 0x28
	b _08193FD0
	.pool
_08193FB8:
	cmp r6, 0x1
	bne _08193FC0
	movs r6, 0x3C
	b _08193FD0
_08193FC0:
	adds r1, r2, 0
	cmp r1, 0x78
	beq _08193FCA
	cmp r1, 0x99
	bne _08193FD0
_08193FCA:
	lsrs r0, r6, 31
	adds r0, r6, r0
	asrs r6, r0, 1
_08193FD0:
	movs r1, 0
	mov r4, r9
	adds r4, 0x1
	str r4, [sp, 0x64]
	ldr r5, [sp, 0x70]
	ldr r2, [sp, 0x4C]
	adds r0, r5, r2
	lsls r0, 1
	str r0, [sp, 0x5C]
_08193FE2:
	lsls r7, r1, 1
	adds r1, 0x1
	str r1, [sp, 0x68]
	ldr r3, [sp, 0x5C]
	adds r3, r7
	mov r8, r3
_08193FEE:
	bl Random
	adds r4, r0, 0
	bl Random
	lsls r4, 16
	lsrs r5, r4, 16
	lsls r0, 16
	orrs r5, r0
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	ldr r4, =0x00000d64
	adds r0, r4
	add r0, r8
	ldrh r4, [r0]
	ldr r3, =gUnknown_0203BC8C
	ldr r0, [r3]
	lsls r4, 4
	adds r4, r0
	adds r0, r5, 0
	str r2, [sp, 0x7C]
	str r3, [sp, 0x80]
	bl GetNatureFromPersonality
	ldrb r1, [r4, 0xC]
	lsls r0, 24
	lsrs r0, 24
	ldr r2, [sp, 0x7C]
	ldr r3, [sp, 0x80]
	cmp r1, r0
	bne _08193FEE
	ldr r0, [r2]
	ldr r2, [sp, 0x5C]
	adds r1, r7, r2
	ldr r4, =0x00000d64
	adds r0, r4
	adds r0, r1
	ldrh r0, [r0]
	ldr r1, [r3]
	lsls r0, 4
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x1
	ands r5, r0
	cmp r5, 0
	beq _08194068
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	ldr r5, =gBaseStats
	adds r0, r5
	ldrb r2, [r0, 0x17]
	b _08194074
	.pool
_08194068:
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	ldr r2, =gBaseStats
	adds r0, r2
	ldrb r2, [r0, 0x16]
_08194074:
	ldr r4, [sp, 0x74]
	add r4, r9
	lsls r0, r4, 1
	add r0, r10
	ldrh r0, [r0]
	bl ai_rate_move
	lsls r0, 24
	lsrs r5, r0, 24
	movs r0, 0x6
	ands r0, r5
	cmp r0, 0x6
	bne _0819409C
	lsls r0, r4, 2
	mov r3, sp
	adds r1, r3, r0
	b _081940D8
	.pool
_0819409C:
	movs r0, 0x29
	ands r0, r5
	cmp r0, 0
	bne _081940DE
	movs r0, 0x2
	ands r0, r5
	cmp r0, 0
	beq _081940B6
	lsls r0, r4, 2
	mov r5, sp
	adds r2, r5, r0
	lsls r1, r6, 1
	b _081940CA
_081940B6:
	movs r0, 0x4
	ands r5, r0
	cmp r5, 0
	beq _081940D2
	lsls r0, r4, 2
	mov r1, sp
	adds r2, r1, r0
	lsrs r1, r6, 31
	adds r1, r6, r1
	asrs r1, 1
_081940CA:
	ldr r0, [r2]
	adds r0, r1
	str r0, [r2]
	b _081940DE
_081940D2:
	lsls r0, r4, 2
	mov r2, sp
	adds r1, r2, r0
_081940D8:
	ldr r0, [r1]
	adds r0, r6
	str r0, [r1]
_081940DE:
	ldr r1, [sp, 0x68]
	cmp r1, 0x2
	bgt _081940E6
	b _08193FE2
_081940E6:
	ldr r2, [sp, 0x74]
	add r2, r9
	lsls r0, r2, 2
	add r0, sp
	ldr r1, [r0]
	ldr r3, [sp, 0x54]
	cmp r3, r1
	bge _08194104
	lsls r0, r2, 16
	lsrs r0, 16
	str r0, [sp, 0x58]
	lsls r0, r1, 16
	lsrs r0, 16
	str r0, [sp, 0x54]
	b _08194122
_08194104:
	ldr r4, [sp, 0x54]
	cmp r4, r1
	bne _08194122
	ldr r5, [sp, 0x58]
	lsls r0, r5, 1
	add r0, r10
	lsls r1, r2, 1
	add r1, r10
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bcs _08194122
	lsls r0, r2, 16
	lsrs r0, 16
	str r0, [sp, 0x58]
_08194122:
	ldr r0, [sp, 0x64]
	mov r9, r0
	cmp r0, 0x3
	bgt _0819412C
	b _08193F18
_0819412C:
	ldr r1, [sp, 0x60]
	str r1, [sp, 0x50]
	cmp r1, 0x2
	bgt _08194136
	b _08193F02
_08194136:
	ldr r2, [sp, 0x58]
	mov r9, r2
	b _08194182
_0819413C:
	movs r3, 0
	mov r9, r3
	movs r1, 0
	mov r4, r10
	mov r3, r10
	mov r2, sp
_08194148:
	ldr r0, [r2]
	ldr r5, [sp, 0x54]
	cmp r5, r0
	bge _0819415A
	mov r9, r1
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x54]
	b _08194170
_0819415A:
	ldr r5, [sp, 0x54]
	cmp r5, r0
	bne _08194170
	mov r5, r9
	lsls r0, r5, 1
	adds r0, r4, r0
	ldrh r0, [r0]
	ldrh r5, [r3]
	cmp r0, r5
	bcs _08194170
	mov r9, r1
_08194170:
	adds r3, 0x2
	adds r2, 0x4
	adds r1, 0x1
	cmp r1, 0xB
	ble _08194148
	ldr r0, [sp, 0x50]
	ldr r1, [sp, 0x78]
	cmp r0, r1
	beq _081941F4
_08194182:
	movs r2, 0
	str r2, [sp, 0x50]
	mov r3, r9
	lsls r7, r3, 2
	ldr r4, [sp, 0x78]
	cmp r2, r4
	bge _081941CA
	lsls r0, r3, 1
	mov r5, r10
	adds r6, r5, r0
	ldr r0, [sp, 0x48]
	lsls r5, r0, 24
_0819419A:
	ldr r0, =gSaveBlock2Ptr
	ldr r4, [r0]
	ldr r2, [sp, 0x50]
	lsls r1, r2, 24
	lsrs r1, 24
	lsrs r0, r5, 24
	bl sub_81953E8
	lsls r0, 24
	lsrs r0, 23
	movs r3, 0xEC
	lsls r3, 4
	adds r4, r3
	adds r4, r0
	ldrh r0, [r4]
	ldrh r4, [r6]
	cmp r0, r4
	beq _081941CA
	ldr r0, [sp, 0x50]
	adds r0, 0x1
	str r0, [sp, 0x50]
	ldr r1, [sp, 0x78]
	cmp r0, r1
	blt _0819419A
_081941CA:
	ldr r2, [sp, 0x50]
	ldr r3, [sp, 0x78]
	cmp r2, r3
	beq _081941F4
	mov r4, sp
	adds r1, r4, r7
	movs r0, 0
	str r0, [r1]
	movs r5, 0
	str r5, [sp, 0x54]
	mov r9, r5
	mov r2, sp
	movs r1, 0xB
_081941E4:
	ldm r2!, {r0}
	add r9, r0
	subs r1, 0x1
	cmp r1, 0
	bge _081941E4
	mov r0, r9
	cmp r0, 0
	bne _0819413C
_081941F4:
	mov r1, r9
	lsls r0, r1, 2
	add r0, sp
	ldr r0, [r0]
	cmp r0, 0
	bne _08194204
	ldr r2, [sp, 0x58]
	mov r9, r2
_08194204:
	mov r3, r9
	lsls r0, r3, 1
	add r0, r10
	ldrh r0, [r0]
	add sp, 0x84
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8193ED0

	thumb_func_start sub_8194220
sub_8194220: @ 8194220
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r1, =gTasks
	lsls r0, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	movs r2, 0xA
	ldrsh r1, [r0, r2]
	mov r10, r1
	movs r3, 0xC
	ldrsh r4, [r0, r3]
	movs r1, 0x8
	ldrsh r0, [r0, r1]
	cmp r0, 0x5
	bls _08194250
	b _081948C2
_08194250:
	lsls r0, 2
	ldr r1, =_08194264
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08194264:
	.4byte _0819427C
	.4byte _0819431C
	.4byte _0819438C
	.4byte _0819447C
	.4byte _081944FC
	.4byte _081947C8
_0819427C:
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0x3
	bl EnableInterrupts
	movs r4, 0
	str r4, [sp, 0x14]
	add r0, sp, 0x14
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, =0x05006000
	bl CpuSet
	movs r0, 0
	bl ResetBgsAndClearDma3BusyFlags
	ldr r1, =gUnknown_0860CE74
	movs r0, 0
	movs r2, 0x4
	bl InitBgsFromTemplates
	ldr r0, =gUnknown_0860CE94
	bl InitWindows
	bl DeactivateAllTextPrinters
	ldr r0, =gUnknown_02022E14
	strh r4, [r0]
	ldr r0, =gUnknown_02022E16
	strh r4, [r0]
	ldr r0, =gUnknown_02022E18
	strh r4, [r0]
	ldr r0, =gUnknown_02022E1A
	strh r4, [r0]
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r1, 0xB0
	lsls r1, 4
	movs r0, 0x3
	movs r2, 0
	bl ChangeBgY
	ldr r1, =gTasks
	mov r2, r8
	lsls r0, r2, 2
	b _0819443C
	.pool
_0819431C:
	movs r0, 0x50
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x52
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x54
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4C
	movs r1, 0
	bl SetGpuReg
	ldr r1, =0x00005860
	movs r0, 0x40
	bl SetGpuReg
	movs r0, 0x44
	movs r1, 0x9F
	bl SetGpuReg
	ldr r1, =0x00009098
	movs r0, 0x42
	bl SetGpuReg
	movs r0, 0x46
	movs r1, 0x9F
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x3F
	bl SetGpuReg
	bl ResetPaletteFade
	bl ResetSpriteData
	bl FreeAllSpritePalettes
	ldr r1, =gTasks
	mov r3, r8
	lsls r0, r3, 2
	b _0819443C
	.pool
_0819438C:
	ldr r4, =gUnknown_0203CD7C
	movs r0, 0x80
	lsls r0, 4
	bl AllocZeroed
	adds r1, r0, 0
	str r1, [r4]
	ldr r0, =gUnknown_08D83900
	bl LZDecompressWram
	ldr r1, [r4]
	movs r0, 0x1
	bl SetBgTilemapBuffer
	movs r0, 0x1
	bl CopyBgTilemapBufferToVram
	ldr r1, =gUnknown_08D82F10
	movs r5, 0x80
	lsls r5, 6
	movs r6, 0
	str r6, [sp]
	movs r0, 0x1
	adds r2, r5, 0
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r1, =gUnknown_08D834FC
	str r6, [sp]
	movs r0, 0x2
	adds r2, r5, 0
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r1, =gUnknown_08D83B2C
	movs r4, 0x1
	str r4, [sp]
	movs r0, 0x2
	adds r2, r5, 0
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r1, =gUnknown_08D83C3C
	str r4, [sp]
	movs r0, 0x3
	adds r2, r5, 0
	movs r3, 0
	bl copy_decompressed_tile_data_to_vram_autofree
	ldr r0, =gUnknown_08D85358
	movs r4, 0x80
	lsls r4, 2
	movs r1, 0
	adds r2, r4, 0
	bl LoadCompressedPalette
	ldr r0, =gUnknown_08D85444
	movs r1, 0x80
	lsls r1, 1
	adds r2, r4, 0
	bl LoadCompressedPalette
	ldr r0, =gUnknown_08D85600
	movs r1, 0xF0
	movs r2, 0x20
	bl LoadCompressedPalette
	str r6, [sp, 0x18]
	add r0, sp, 0x18
	ldr r1, =gPlttBufferFaded
	ldr r2, =0x05000100
	bl CpuSet
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	movs r0, 0x3
	bl ShowBg
	ldr r1, =gTasks
	mov r4, r8
	lsls r0, r4, 2
_0819443C:
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x8]
	adds r1, 0x1
	strh r1, [r0, 0x8]
	b _081948C2
	.pool
_0819447C:
	ldr r0, =gUnknown_0860CF50
	bl LoadCompressedObjectPic
	mov r0, r8
	lsls r0, 2
	str r0, [sp, 0x1C]
	mov r1, r10
	cmp r1, 0
	bne _081944E8
	movs r5, 0
	ldr r4, =gUnknown_0860D411
_08194492:
	ldrb r1, [r4]
	ldrb r2, [r4, 0x1]
	ldr r0, =gUnknown_0860CFA8
	movs r3, 0
	bl CreateSprite
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0x1E
	bls _08194492
	ldr r0, =gTasks
	ldr r1, [sp, 0x1C]
	add r1, r8
	lsls r1, 3
	adds r1, r0
	movs r2, 0x10
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _081944DC
	ldr r0, =gUnknown_0860D008
	movs r1, 0xDA
	movs r2, 0xC
	movs r3, 0
	bl CreateSprite
	b _081944E8
	.pool
_081944DC:
	ldr r0, =gUnknown_0860CFD8
	movs r1, 0xDA
	movs r2, 0xC
	movs r3, 0
	bl CreateSprite
_081944E8:
	ldr r1, =0x00007f40
	movs r0, 0
	bl SetGpuReg
	b _081947A6
	.pool
_081944FC:
	add r0, sp, 0x4
	movs r2, 0
	movs r1, 0x2
	strb r1, [r0, 0x5]
	ldr r0, =gUnknown_085CCCEE
	str r0, [sp, 0x4]
	add r0, sp, 0x4
	strb r1, [r0, 0x4]
	strb r2, [r0, 0x6]
	strb r2, [r0, 0x7]
	strb r1, [r0, 0xA]
	strb r2, [r0, 0xB]
	ldrb r0, [r0, 0x5]
	ldr r1, [sp, 0x4]
	add r2, sp, 0x4
	ldrb r3, [r2, 0xA]
	movs r2, 0x70
	bl GetStringCenterAlignXOffsetWithLetterSpacing
	add r1, sp, 0x4
	strb r0, [r1, 0x8]
	movs r0, 0x1
	strb r0, [r1, 0x9]
	adds r3, r1, 0
	ldrb r2, [r3, 0xC]
	movs r1, 0x10
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	adds r2, r3, 0
	movs r0, 0xE0
	strb r0, [r2, 0xC]
	ldrb r0, [r2, 0xD]
	ands r1, r0
	strb r1, [r2, 0xD]
	adds r1, r2, 0
	movs r0, 0xD0
	strb r0, [r1, 0xD]
	adds r0, r1, 0
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	mov r3, r8
	lsls r3, 2
	str r3, [sp, 0x1C]
	add r4, sp, 0x4
	movs r0, 0xF
	mov r9, r0
	movs r1, 0
	str r1, [sp, 0x20]
	movs r2, 0
	str r2, [sp, 0x24]
	movs r7, 0
	movs r5, 0xF
_0819456C:
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	adds r0, r7
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 22
	lsrs r1, 22
	ldr r0, =gDisplayedStringBattle
	bl sub_8195898
	mov r2, r10
	cmp r2, 0x1
	bne _081945C4
	ldr r3, =gSaveBlock2Ptr
	ldr r2, [r3]
	adds r0, r2, r7
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 29
	cmp r0, 0
	blt _081945DC
	ldr r3, =0x00000cb2
	adds r0, r2, r3
	ldrh r1, [r0]
	cmp r1, 0x1
	beq _08194634
	ldr r2, [sp, 0x24]
	lsrs r0, r2, 24
	subs r1, 0x2
	b _081945EA
	.pool
_081945C4:
	mov r3, r10
	cmp r3, 0
	bne _08194634
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	adds r0, r2, r7
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 29
	cmp r0, 0
	bge _081945FC
_081945DC:
	lsls r1, 27
	lsrs r0, r1, 30
	cmp r0, 0
	beq _08194634
	subs r1, r0, 0x1
	ldr r2, [sp, 0x24]
	lsrs r0, r2, 24
_081945EA:
	lsls r1, 24
	lsrs r1, 24
	bl sub_81948EC
	b _08194634
	.pool
_081945FC:
	ldr r3, =0x00000cb2
	adds r1, r2, r3
	ldrh r0, [r1]
	cmp r0, 0
	beq _08194634
	ldr r0, [sp, 0x1C]
	add r0, r8
	lsls r0, 3
	ldr r2, =gTasks
	adds r0, r2
	movs r3, 0x10
	ldrsh r0, [r0, r3]
	cmp r0, 0
	beq _08194624
	ldrh r1, [r1]
	b _08194628
	.pool
_08194624:
	ldrh r0, [r1]
	subs r1, r0, 0x1
_08194628:
	ldr r2, [sp, 0x24]
	lsrs r0, r2, 24
	lsls r1, 24
	lsrs r1, 24
	bl sub_81948EC
_08194634:
	ldr r0, [sp, 0x1C]
	add r0, r8
	lsls r0, 3
	ldr r3, =gTasks
	adds r0, r3
	movs r1, 0x10
	ldrsh r0, [r0, r1]
	cmp r0, 0
	beq _08194660
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	ldr r3, =0x00000cb2
	adds r0, r3
	ldrh r3, [r0]
	adds r6, r2, 0
	b _0819466E
	.pool
_08194660:
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000cb2
	adds r0, r2
	ldrh r0, [r0]
	subs r3, r0, 0x1
	adds r6, r1, 0
_0819466E:
	mov r0, r10
	cmp r0, 0x1
	bne _0819468E
	ldr r2, [r6]
	adds r0, r2, r7
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r1, [r0]
	lsls r1, 27
	lsrs r1, 30
	ldr r0, =0x00000cb2
	adds r2, r0
	ldrh r0, [r2]
	subs r0, 0x1
	cmp r1, r0
	blt _081946A6
_0819468E:
	mov r1, r10
	cmp r1, 0
	bne _081946FA
	ldr r0, [r6]
	adds r0, r7
	ldr r2, =0x00000d25
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 27
	lsrs r0, 30
	cmp r0, r3
	bgt _081946FA
_081946A6:
	ldr r0, [r6]
	adds r1, r0, r7
	ldr r3, =0x00000d25
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	bge _081946FA
	ldr r2, =0x00000d24
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	ldr r3, =0x000003ff
	cmp r0, r3
	bne _081946F0
	ldrb r1, [r4, 0xC]
	mov r0, r9
	ands r0, r1
	movs r1, 0x30
	orrs r0, r1
	strb r0, [r4, 0xC]
	ldrb r1, [r4, 0xD]
	mov r0, r9
	ands r0, r1
	movs r1, 0x40
	b _08194740
	.pool
_081946F0:
	ldrb r1, [r4, 0xC]
	mov r0, r9
	ands r0, r1
	movs r1, 0xB0
	b _08194734
_081946FA:
	ldr r0, [r6]
	adds r0, r7
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	ldr r2, =0x000003ff
	cmp r0, r2
	bne _0819472C
	ldrb r1, [r4, 0xC]
	mov r0, r9
	ands r0, r1
	movs r1, 0x30
	orrs r0, r1
	strb r0, [r4, 0xC]
	ldrb r1, [r4, 0xD]
	mov r0, r9
	ands r0, r1
	movs r1, 0x40
	b _08194740
	.pool
_0819472C:
	ldrb r1, [r4, 0xC]
	mov r0, r9
	ands r0, r1
	movs r1, 0xE0
_08194734:
	orrs r0, r1
	strb r0, [r4, 0xC]
	ldrb r1, [r4, 0xD]
	mov r0, r9
	ands r0, r1
	movs r1, 0xD0
_08194740:
	orrs r0, r1
	strb r0, [r4, 0xD]
	ldr r0, =gUnknown_0860D3F1
	ldr r3, [sp, 0x20]
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, 0
	bne _08194768
	ldrb r0, [r4, 0x5]
	ldrb r3, [r4, 0xA]
	ldr r1, =gDisplayedStringBattle
	movs r2, 0x3D
	bl GetStringWidthDifference
	b _0819476A
	.pool
_08194768:
	movs r0, 0x3
_0819476A:
	strb r0, [r4, 0x8]
	ldr r0, =gDisplayedStringBattle
	str r0, [sp, 0x4]
	ldr r0, =gUnknown_0860D3F1
	ldr r1, [sp, 0x20]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r4, 0x4]
	ldr r2, =gUnknown_0860D3F2
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r4, 0x9]
	add r0, sp, 0x4
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
	ldr r3, [sp, 0x20]
	adds r3, 0x2
	str r3, [sp, 0x20]
	ldr r0, [sp, 0x24]
	movs r1, 0x80
	lsls r1, 17
	adds r0, r1
	str r0, [sp, 0x24]
	adds r7, 0x4
	subs r5, 0x1
	cmp r5, 0
	blt _081947A6
	b _0819456C
_081947A6:
	ldr r0, =gTasks
	ldr r1, [sp, 0x1C]
	add r1, r8
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _081948C2
	.pool
_081947C8:
	movs r0, 0
	bl PutWindowTilemap
	movs r0, 0x1
	bl PutWindowTilemap
	movs r0, 0x2
	bl PutWindowTilemap
	movs r0, 0
	movs r1, 0x3
	bl CopyWindowToVram
	movs r0, 0x1
	movs r1, 0x3
	bl CopyWindowToVram
	movs r0, 0x2
	movs r1, 0x3
	bl CopyWindowToVram
	ldr r0, =sub_8194BEC
	bl SetHBlankCallback
	ldr r0, =sub_8194CE4
	bl SetVBlankCallback
	cmp r4, 0x2
	bne _0819485C
	mov r2, r10
	cmp r2, 0
	bne _08194844
	ldr r0, =sub_819395C
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r2, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r2
	mov r3, r10
	strh r3, [r1, 0x8]
	strh r3, [r1, 0xA]
	mov r4, r8
	lsls r0, r4, 2
	add r0, r8
	lsls r0, 3
	adds r0, r2
	ldrh r0, [r0, 0x10]
	strh r0, [r1, 0x14]
	b _08194878
	.pool
_08194844:
	ldr r0, =sub_8194950
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	b _0819486C
	.pool
_0819485C:
	ldr r1, =gTasks
	mov r2, r8
	lsls r0, r2, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	movs r3, 0xE
	ldrsh r5, [r0, r3]
_0819486C:
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x8]
_08194878:
	bl dp12_8087EA4
	ldr r0, =gUnknown_02038C28
	ldr r2, =0x00001f0a
	movs r4, 0xF0
	lsls r4, 3
	adds r1, r0, r4
	movs r5, 0x5A
_08194888:
	strh r2, [r0]
	strh r2, [r1]
	adds r1, 0x2
	adds r0, 0x2
	subs r5, 0x1
	cmp r5, 0
	bge _08194888
	movs r5, 0x5B
	ldr r3, =gUnknown_0860CF44
	ldr r0, =gUnknown_02038C28
	ldr r2, =0x00001f09
	ldr r4, =0x00000836
	adds r1, r0, r4
	adds r0, 0xB6
_081948A4:
	strh r2, [r0]
	strh r2, [r1]
	adds r1, 0x2
	adds r0, 0x2
	adds r5, 0x1
	cmp r5, 0x9F
	ble _081948A4
	ldr r0, [r3]
	ldr r1, [r3, 0x4]
	ldr r2, [r3, 0x8]
	bl sub_80BA038
	mov r0, r8
	bl DestroyTask
_081948C2:
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194220

	thumb_func_start sub_81948EC
sub_81948EC: @ 81948EC
	push {r4-r7,lr}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	ldr r4, =gUnknown_0860DD10
	lsls r2, r1, 2
	lsls r3, r0, 4
	adds r2, r3
	adds r2, r4
	ldr r3, [r2]
	ldr r2, =gUnknown_0860DE10
	lsls r0, 2
	adds r1, r0
	adds r1, r2
	ldrb r0, [r1]
	cmp r0, 0
	beq _08194938
	movs r7, 0x1
	adds r4, r3, 0
	adds r5, r4, 0x2
	adds r6, r0, 0
_0819491A:
	ldrb r2, [r4]
	ldrb r3, [r4, 0x1]
	str r7, [sp]
	str r7, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	movs r0, 0x1
	adds r1, r5, 0
	bl CopyToBgTilemapBufferRect_ChangePalette
	adds r4, 0x4
	adds r5, 0x4
	subs r6, 0x1
	cmp r6, 0
	bne _0819491A
_08194938:
	movs r0, 0x1
	bl CopyBgTilemapBufferToVram
	add sp, 0xC
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81948EC

	thumb_func_start sub_8194950
sub_8194950: @ 8194950
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x14
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r2, 0x8
	ldrsh r0, [r0, r2]
	adds r2, r1, 0
	cmp r0, 0x4
	bls _08194974
	b _08194B3C
_08194974:
	lsls r0, 2
	ldr r1, =_08194988
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08194988:
	.4byte _0819499C
	.4byte _081949C0
	.4byte _08194AD4
	.4byte _08194AEE
	.4byte _08194B24
_0819499C:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0x1
	strh r1, [r0, 0x8]
	b _08194B3C
	.pool
_081949C0:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081949CE
	b _08194B3C
_081949CE:
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r2
	movs r2, 0
	movs r3, 0x2
	movs r1, 0x2
	strh r1, [r0, 0x8]
	movs r1, 0x40
	strh r1, [r0, 0xE]
	add r0, sp, 0x4
	strb r3, [r0, 0x5]
	strb r2, [r0, 0x6]
	strb r2, [r0, 0x7]
	strb r3, [r0, 0xA]
	strb r2, [r0, 0xB]
	adds r3, r0, 0
	ldrb r2, [r3, 0xC]
	subs r1, 0x50
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	adds r2, r3, 0
	movs r0, 0xB0
	strb r0, [r2, 0xC]
	ldrb r0, [r2, 0xD]
	ands r1, r0
	strb r1, [r2, 0xD]
	adds r1, r2, 0
	movs r0, 0xD0
	strb r0, [r1, 0xD]
	movs r7, 0
	ldr r0, =gDisplayedStringBattle
	mov r9, r0
	ldr r1, =gSaveBlock2Ptr
	mov r8, r1
	adds r4, r2, 0
	ldr r6, =gUnknown_0860D3F1
	movs r5, 0
_08194A1C:
	mov r2, r8
	ldr r0, [r2]
	adds r0, r5
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 22
	lsrs r1, 22
	mov r0, r9
	bl sub_8195898
	mov r0, r8
	ldr r2, [r0]
	adds r0, r2, r5
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r3, [r0]
	lsls r1, r3, 27
	lsrs r1, 30
	ldr r0, =0x00000cb2
	adds r2, r0
	ldrh r0, [r2]
	subs r0, 0x1
	cmp r1, r0
	bne _08194A9E
	lsls r0, r3, 29
	cmp r0, 0
	bge _08194A9E
	ldrb r0, [r6]
	cmp r0, 0
	bne _08194A84
	ldrb r0, [r4, 0x5]
	ldrb r3, [r4, 0xA]
	mov r1, r9
	movs r2, 0x3D
	bl GetStringWidthDifference
	b _08194A86
	.pool
_08194A84:
	movs r0, 0x3
_08194A86:
	strb r0, [r4, 0x8]
	mov r1, r9
	str r1, [sp, 0x4]
	ldrb r0, [r6]
	strb r0, [r4, 0x4]
	ldrb r0, [r6, 0x1]
	strb r0, [r4, 0x9]
	add r0, sp, 0x4
	movs r1, 0
	movs r2, 0
	bl AddTextPrinter
_08194A9E:
	mov r2, r8
	ldr r1, [r2]
	adds r0, r1, r5
	ldr r2, =0x00000d25
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08194AC4
	subs r2, 0x73
	adds r0, r1, r2
	ldrh r1, [r0]
	subs r1, 0x1
	lsls r0, r7, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	bl sub_81948EC
_08194AC4:
	adds r6, 0x2
	adds r5, 0x4
	adds r7, 0x1
	cmp r7, 0xF
	ble _08194A1C
	b _08194B3C
	.pool
_08194AD4:
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r1, r0, r2
	ldrh r0, [r1, 0xE]
	subs r0, 0x1
	strh r0, [r1, 0xE]
	lsls r0, 16
	cmp r0, 0
	bne _08194B3C
	movs r0, 0x3
	strh r0, [r1, 0x8]
	b _08194B3C
_08194AEE:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _08194B3C
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0x4
	strh r1, [r0, 0x8]
	b _08194B3C
	.pool
_08194B24:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08194B3C
	ldr r0, =c2_exit_to_overworld_1_continue_scripts_restart_music
	bl SetMainCallback2
	adds r0, r4, 0
	bl DestroyTask
_08194B3C:
	add sp, 0x14
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194950

	thumb_func_start sub_8194B54
sub_8194B54: @ 8194B54
	push {lr}
	bl AnimateSprites
	bl BuildOamBuffer
	bl RunTextPrinters
	bl UpdatePaletteFade
	bl RunTasks
	pop {r0}
	bx r0
	thumb_func_end sub_8194B54

	thumb_func_start sub_8194B70
sub_8194B70: @ 8194B70
	push {lr}
	movs r0, 0x3
	movs r1, 0x80
	movs r2, 0x1
	bl ChangeBgX
	movs r0, 0x3
	movs r1, 0x80
	movs r2, 0x2
	bl ChangeBgY
	ldr r0, =gUnknown_02022E14
	ldrh r1, [r0]
	movs r0, 0x10
	bl SetGpuReg
	ldr r0, =gUnknown_02022E16
	ldrh r1, [r0]
	movs r0, 0x12
	bl SetGpuReg
	ldr r0, =gUnknown_02022E18
	ldrh r1, [r0]
	movs r0, 0x14
	bl SetGpuReg
	ldr r0, =gUnknown_02022E1A
	ldrh r1, [r0]
	movs r0, 0x16
	bl SetGpuReg
	ldr r0, =gUnknown_02022E1C
	ldrh r1, [r0]
	movs r0, 0x18
	bl SetGpuReg
	ldr r0, =gUnknown_02022E1E
	ldrh r1, [r0]
	movs r0, 0x1A
	bl SetGpuReg
	bl LoadOam
	bl ProcessSpriteCopyRequests
	bl TransferPlttBuffer
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194B70

	thumb_func_start sub_8194BEC
sub_8194BEC: @ 8194BEC
	push {lr}
	ldr r0, =0x04000006
	ldrh r0, [r0]
	adds r1, r0, 0
	cmp r0, 0x29
	bls _08194CC8
	cmp r0, 0x31
	bhi _08194C1C
	ldr r1, =0x04000048
	ldr r2, =0x00003b3b
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r0, =0x989b5558
	b _08194CD4
	.pool
_08194C1C:
	cmp r0, 0x39
	bls _08194CC8
	cmp r0, 0x4A
	bhi _08194C40
	ldr r1, =0x04000048
	ldr r2, =0x00003b3b
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r0, =0x90985860
	b _08194CD4
	.pool
_08194C40:
	cmp r0, 0x51
	bhi _08194C60
	ldr r1, =0x04000048
	ldr r2, =0x00003b3b
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r0, =0x989b5558
	b _08194CD4
	.pool
_08194C60:
	cmp r0, 0x5E
	bls _08194CC8
	cmp r0, 0x66
	bhi _08194C84
	ldr r1, =0x04000048
	ldr r2, =0x00003737
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r0, =0x989b5558
	b _08194CD4
	.pool
_08194C84:
	cmp r0, 0x76
	bhi _08194CA4
	ldr r1, =0x04000048
	ldr r2, =0x00003737
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r0, =0x90985860
	b _08194CD4
	.pool
_08194CA4:
	cmp r0, 0x7E
	bls _08194CC8
	cmp r1, 0x86
	bhi _08194CC8
	ldr r1, =0x04000048
	ldr r2, =0x00003737
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r0, =0x989b5558
	b _08194CD4
	.pool
_08194CC8:
	ldr r1, =0x04000048
	ldr r2, =0x00003f3f
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	movs r0, 0
_08194CD4:
	str r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194BEC

	thumb_func_start sub_8194CE4
sub_8194CE4: @ 8194CE4
	push {lr}
	ldr r0, =gUnknown_02022E14
	ldrh r1, [r0]
	movs r0, 0x10
	bl SetGpuReg
	ldr r0, =gUnknown_02022E16
	ldrh r1, [r0]
	movs r0, 0x12
	bl SetGpuReg
	ldr r0, =gUnknown_02022E18
	ldrh r1, [r0]
	movs r0, 0x14
	bl SetGpuReg
	ldr r0, =gUnknown_02022E1A
	ldrh r1, [r0]
	movs r0, 0x16
	bl SetGpuReg
	movs r0, 0x2
	movs r1, 0x80
	movs r2, 0x2
	bl ChangeBgY
	movs r0, 0x3
	movs r1, 0x80
	movs r2, 0x1
	bl ChangeBgY
	bl LoadOam
	bl ProcessSpriteCopyRequests
	bl TransferPlttBuffer
	bl sub_80BA0A8
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194CE4

	thumb_func_start sub_8194D48
sub_8194D48: @ 8194D48
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	ldr r1, =gUnknown_0203BC88
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_8194D48

	thumb_func_start sub_8194D68
sub_8194D68: @ 8194D68
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r3, 0
_08194D76:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =gUnknown_0203CEF8
	adds r0, r3, r0
	ldrb r0, [r0]
	subs r0, 0x1
	lsls r0, 1
	ldr r2, =0x00000caa
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	subs r0, 0x1
	mov r10, r0
	movs r6, 0
	adds r0, r3, 0x1
	str r0, [sp]
	movs r1, 0x64
	mov r0, r10
	muls r0, r1
	movs r2, 0x8E
	lsls r2, 2
	adds r2, r0
	mov r9, r2
	adds r7, r3, 0
	muls r7, r1
_08194DA8:
	movs r5, 0
	adds r0, r6, 0x1
	mov r8, r0
	b _08194DBE
	.pool
_08194DBC:
	adds r5, 0x1
_08194DBE:
	cmp r5, 0x3
	bgt _08194DEA
	ldr r1, =gSaveBlock1Ptr
	ldr r0, [r1]
	add r0, r9
	adds r1, r5, 0
	adds r1, 0xD
	movs r2, 0
	str r3, [sp, 0x4]
	bl GetMonData
	adds r4, r0, 0
	adds r1, r6, 0
	adds r1, 0xD
	ldr r2, =gPlayerParty
	adds r0, r7, r2
	movs r2, 0
	bl GetMonData
	ldr r3, [sp, 0x4]
	cmp r4, r0
	bne _08194DBC
_08194DEA:
	cmp r5, 0x4
	bne _08194E00
	lsls r2, r6, 24
	lsrs r2, 24
	ldr r1, =gPlayerParty
	adds r0, r7, r1
	movs r1, 0xA6
	str r3, [sp, 0x4]
	bl SetMonMoveSlot
	ldr r3, [sp, 0x4]
_08194E00:
	mov r6, r8
	cmp r6, 0x3
	ble _08194DA8
	ldr r2, =gSaveBlock1Ptr
	ldr r0, [r2]
	movs r2, 0x64
	mov r1, r10
	muls r1, r2
	adds r0, r1
	movs r1, 0x8E
	lsls r1, 2
	adds r0, r1
	adds r1, r3, 0
	muls r1, r2
	ldr r2, =gPlayerParty
	adds r1, r2
	movs r2, 0x64
	bl memcpy
	ldr r3, [sp]
	cmp r3, 0x1
	ble _08194D76
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194D68

	thumb_func_start sub_8194E44
sub_8194E44: @ 8194E44
	push {r4-r7,lr}
	sub sp, 0x4
	movs r4, 0
	ldr r7, =gSaveBlock1Ptr
	movs r6, 0x64
	movs r5, 0
_08194E50:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =gUnknown_0203CEF8
	adds r0, r4, r0
	ldrb r0, [r0]
	subs r0, 0x1
	lsls r0, 1
	ldr r2, =0x00000caa
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	subs r0, 0x1
	adds r1, r0, 0
	muls r1, r6
	movs r0, 0x8E
	lsls r0, 2
	adds r1, r0
	ldr r0, [r7]
	adds r0, r1
	movs r1, 0xC
	movs r2, 0
	bl GetMonData
	mov r1, sp
	strh r0, [r1]
	ldr r0, =gPlayerParty
	adds r0, r5, r0
	movs r1, 0xC
	mov r2, sp
	bl SetMonData
	adds r5, 0x64
	adds r4, 0x1
	cmp r4, 0x1
	ble _08194E50
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194E44

	thumb_func_start sub_8194EB4
sub_8194EB4: @ 8194EB4
	push {lr}
	bl sub_80F94E8
	pop {r0}
	bx r0
	thumb_func_end sub_8194EB4

	thumb_func_start sub_8194EC0
sub_8194EC0: @ 8194EC0
	push {r4,lr}
	ldr r0, =gTrainerBattleOpponent_A
	ldrh r0, [r0]
	bl sub_8195358
	adds r4, r0, 0
	ldr r0, =0x000003ff
	bl sub_8195358
	cmp r4, r0
	ble _08194EE8
	ldr r1, =gScriptResult
	movs r0, 0x1
	b _08194EEC
	.pool
_08194EE8:
	ldr r1, =gScriptResult
	movs r0, 0x2
_08194EEC:
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194EC0

	thumb_func_start sub_8194EF8
sub_8194EF8: @ 8194EF8
	push {r4,lr}
	bl sub_8194D48
	movs r2, 0
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r1, =0x00000d25
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	bge _08194F2A
	adds r4, r3, 0
	adds r3, r1, 0
_08194F14:
	adds r2, 0x1
	cmp r2, 0xF
	bgt _08194F2A
	ldr r0, [r4]
	lsls r1, r2, 2
	adds r0, r1
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 29
	cmp r0, 0
	blt _08194F14
_08194F2A:
	ldr r0, =gStringVar1
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsls r2, 2
	adds r1, r2
	ldr r2, =0x00000d24
	adds r1, r2
	ldrh r1, [r1]
	lsls r1, 22
	lsrs r1, 22
	bl sub_8195898
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194EF8

	thumb_func_start sub_8194F58
sub_8194F58: @ 8194F58
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x40
	movs r0, 0
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	ldr r5, =0x00000d0a
	adds r0, r2, r5
	ldrb r1, [r0]
	ldr r6, =0x00000d0b
	adds r0, r2, r6
	ldrb r0, [r0]
	cmn r1, r0
	beq _08194F8C
	ldr r1, =0x00000ca8
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _08194F8C
	b _0819533E
_08194F8C:
	movs r0, 0x20
	bl AllocZeroed
	str r0, [sp, 0x18]
	movs r0, 0x18
	bl AllocZeroed
	str r0, [sp, 0x1C]
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r1, r2
	ldrb r2, [r1]
	lsls r0, r2, 30
	lsrs r0, 30
	str r0, [sp, 0x14]
	movs r0, 0x4
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, 0x1
	adds r0, r5
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, r6
	strb r1, [r0]
	movs r3, 0
	mov r10, r3
	movs r4, 0
	str r4, [sp, 0x38]
	movs r5, 0
	str r5, [sp, 0x3C]
_08194FCC:
	mov r0, r10
	cmp r0, 0x4
	bgt _08194FFC
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 16
	lsrs r4, r0, 16
	b _08195030
	.pool
_08194FFC:
	mov r1, r10
	cmp r1, 0xE
	bgt _0819501A
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x14
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r4, r0, 0
	adds r4, 0xA
	b _08195030
_0819501A:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r4, r0, 0
	adds r4, 0x1E
_08195030:
	movs r6, 0
	cmp r6, r10
	bge _08195064
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	ldr r3, =0x00000d24
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r4
	beq _08195064
	adds r3, r2, 0
	ldr r2, =0x00000d24
_0819504C:
	adds r6, 0x1
	cmp r6, r10
	bge _08195064
	ldr r0, [r3]
	lsls r1, r6, 2
	adds r0, r1
	adds r0, r2
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r4
	bne _0819504C
_08195064:
	cmp r6, r10
	bne _08194FCC
	ldr r5, =gSaveBlock2Ptr
	ldr r3, [r5]
	ldr r0, [sp, 0x38]
	adds r3, r0
	ldr r1, =0x00000d24
	adds r3, r1
	ldr r2, =0x000003ff
	adds r0, r2, 0
	adds r2, r4, 0
	ands r2, r0
	ldrh r0, [r3]
	ldr r5, =0xfffffc00
	adds r1, r5, 0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	movs r6, 0
	lsls r4, 16
	str r4, [sp, 0x30]
	ldr r0, [sp, 0x3C]
	str r0, [sp, 0x20]
_08195092:
	adds r1, r6, 0x1
	str r1, [sp, 0x24]
	lsls r2, r6, 2
	str r2, [sp, 0x2C]
	lsls r3, r6, 1
	str r3, [sp, 0x28]
_0819509E:
	ldr r4, [sp, 0x30]
	lsrs r0, r4, 16
	bl sub_8163524
	lsls r0, 16
	lsrs r5, r0, 16
	movs r7, 0
	cmp r7, r6
	bge _081950F4
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =gUnknown_0203BC8C
	mov r9, r1
	ldr r2, [sp, 0x8]
	mov r8, r2
	ldr r3, [sp, 0xC]
	mov r12, r3
	ldr r4, =0x00000d64
	adds r0, r4
	ldr r1, [sp, 0x20]
	adds r4, r1, r0
_081950C8:
	ldrh r3, [r4]
	cmp r3, r5
	beq _081950F4
	mov r2, r9
	ldr r1, [r2]
	lsls r0, r5, 4
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r8, r0
	beq _081950F4
	cmp r12, r0
	beq _081950F4
	lsls r0, r3, 4
	adds r0, r1
	ldrb r0, [r0, 0xA]
	ldrb r2, [r2, 0xA]
	cmp r0, r2
	beq _081950F4
	adds r4, 0x2
	adds r7, 0x1
	cmp r7, r6
	blt _081950C8
_081950F4:
	cmp r7, r6
	bne _0819509E
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r4, [sp, 0x28]
	ldr r2, [sp, 0x3C]
	adds r1, r4, r2
	ldr r3, =0x00000d64
	adds r0, r3
	adds r0, r1
	strh r5, [r0]
	ldr r2, [sp, 0x2C]
	add r2, sp
	adds r2, 0x8
	ldr r3, =gUnknown_0203BC8C
	ldr r1, [r3]
	lsls r0, r5, 4
	adds r0, r1
	ldrh r0, [r0]
	str r0, [r2]
	ldr r6, [sp, 0x24]
	cmp r6, 0x2
	ble _08195092
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	ldr r5, [sp, 0x38]
	adds r2, r5
	ldr r0, =0x00000d25
	adds r2, r0
	ldrb r0, [r2]
	movs r4, 0x5
	negs r4, r4
	adds r1, r4, 0
	ands r0, r1
	strb r0, [r2]
	ldr r5, =gSaveBlock2Ptr
	ldr r2, [r5]
	ldr r0, [sp, 0x38]
	adds r2, r0
	ldr r1, =0x00000d25
	adds r2, r1
	ldrb r0, [r2]
	subs r4, 0x14
	adds r1, r4, 0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r5]
	ldr r5, [sp, 0x38]
	adds r1, r5
	ldr r0, =0x00000d25
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x1F
	ands r0, r2
	strb r0, [r1]
	adds r5, 0x4
	str r5, [sp, 0x38]
	ldr r1, [sp, 0x3C]
	adds r1, 0x6
	str r1, [sp, 0x3C]
	movs r2, 0x1
	add r10, r2
	mov r4, r10
	cmp r4, 0xF
	bgt _08195178
	b _08194FCC
_08195178:
	movs r5, 0
	mov r10, r5
	ldr r5, [sp, 0x18]
	movs r0, 0
	str r0, [sp, 0x34]
_08195182:
	movs r7, 0
	strh r7, [r5]
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	mov r2, r10
	lsls r1, r2, 2
	adds r0, r1
	ldr r3, =0x00000d24
	adds r0, r3
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	bl sub_8190168
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r6, 0
	ldr r4, [sp, 0x34]
	mov r9, r4
_081951AA:
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	mov r4, r9
	add r4, r10
	adds r4, r6
	lsls r4, 1
	ldr r2, =0x00000d64
	adds r0, r2
	adds r0, r4
	ldrh r1, [r0]
	ldr r3, =gUnknown_0203BC8C
	ldr r0, [r3]
	lsls r1, 4
	adds r1, r0
	ldrh r0, [r1]
	ldrb r3, [r1, 0xB]
	ldrb r1, [r1, 0xC]
	str r1, [sp]
	ldr r1, [sp, 0x1C]
	str r1, [sp, 0x4]
	movs r1, 0x32
	mov r2, r8
	bl sub_818F720
	ldr r2, [sp, 0x1C]
	ldr r1, [r2, 0x4]
	ldrh r0, [r5]
	adds r0, r1
	ldr r1, [r2, 0x8]
	adds r0, r1
	ldr r1, [r2, 0x10]
	adds r0, r1
	ldr r1, [r2, 0x14]
	adds r0, r1
	ldr r1, [r2, 0xC]
	adds r0, r1
	ldr r1, [r2]
	adds r0, r1
	strh r0, [r5]
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	ldr r1, =0x00000d64
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	ldr r2, =gUnknown_0203BC8C
	ldr r1, [r2]
	lsls r0, 4
	adds r0, r1
	ldrh r0, [r0]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	ldr r3, =gBaseStats
	adds r1, r3
	ldrb r0, [r1, 0x6]
	lsls r0, 2
	ldr r4, =gBitTable
	adds r0, r4
	ldr r0, [r0]
	orrs r7, r0
	ldrb r0, [r1, 0x7]
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	orrs r7, r0
	adds r6, 0x1
	cmp r6, 0x2
	ble _081951AA
	movs r4, 0
	movs r1, 0x1
	movs r6, 0x1F
_0819523A:
	adds r0, r7, 0
	ands r0, r1
	cmp r0, 0
	beq _08195244
	adds r4, 0x1
_08195244:
	asrs r7, 1
	subs r6, 0x1
	cmp r6, 0
	bge _0819523A
	movs r1, 0x32
	adds r0, r4, 0
	muls r0, r1
	movs r1, 0x14
	bl __divsi3
	ldrh r1, [r5]
	adds r1, r0
	strh r1, [r5]
	adds r5, 0x2
	ldr r2, [sp, 0x34]
	adds r2, 0x2
	str r2, [sp, 0x34]
	movs r3, 0x1
	add r10, r3
	mov r4, r10
	cmp r4, 0xF
	ble _08195182
	movs r5, 0
	mov r10, r5
	ldr r7, [sp, 0x18]
_08195276:
	mov r6, r10
	adds r6, 0x1
	cmp r6, 0xF
	bgt _081952F8
	mov r8, r7
	ldr r5, =0x00000d24
	lsls r0, r6, 1
	ldr r1, [sp, 0x18]
	adds r4, r0, r1
_08195288:
	mov r2, r8
	ldrh r1, [r2]
	ldrh r0, [r4]
	cmp r1, r0
	bcs _081952C4
	mov r0, r10
	adds r1, r6, 0
	ldr r2, [sp, 0x18]
	bl sub_818F904
	b _081952F0
	.pool
_081952C4:
	cmp r1, r0
	bne _081952F0
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	mov r3, r10
	lsls r0, r3, 2
	adds r0, r1, r0
	adds r0, r5
	ldrh r2, [r0]
	lsls r2, 22
	lsls r0, r6, 2
	adds r1, r0
	adds r1, r5
	ldrh r0, [r1]
	lsls r0, 22
	cmp r2, r0
	bls _081952F0
	mov r0, r10
	adds r1, r6, 0
	ldr r2, [sp, 0x18]
	bl sub_818F904
_081952F0:
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0xF
	ble _08195288
_081952F8:
	adds r7, 0x2
	movs r4, 0x1
	add r10, r4
	mov r5, r10
	cmp r5, 0xE
	ble _08195276
	ldr r0, [sp, 0x18]
	bl Free
	ldr r0, [sp, 0x1C]
	bl Free
	movs r0, 0
	mov r10, r0
_08195314:
	mov r1, r10
	lsls r0, r1, 24
	lsrs r0, 24
	bl sub_8195438
	movs r2, 0x1
	add r10, r2
	mov r3, r10
	cmp r3, 0x3
	ble _08195314
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r4, =0x00000ca9
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r2
	ldr r5, [sp, 0x14]
	orrs r0, r5
	strb r0, [r1]
_0819533E:
	add sp, 0x40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8194F58

	thumb_func_start sub_8195358
sub_8195358: @ 8195358
	push {r4,r5,lr}
	lsls r0, 16
	lsrs r3, r0, 16
	movs r2, 0
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r3
	beq _0819538E
	adds r5, r4, 0
	adds r4, r1, 0
_08195376:
	adds r2, 0x1
	cmp r2, 0xF
	bgt _0819538E
	ldr r0, [r5]
	lsls r1, r2, 2
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r3
	bne _08195376
_0819538E:
	adds r0, r2, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8195358

	thumb_func_start sub_81953A0
sub_81953A0: @ 81953A0
	push {r4,r5,lr}
	lsls r0, 16
	lsrs r3, r0, 16
	movs r2, 0
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r3
	beq _081953D6
	adds r5, r4, 0
	adds r4, r1, 0
_081953BE:
	adds r2, 0x1
	cmp r2, 0xF
	bgt _081953D6
	ldr r0, [r5]
	lsls r1, r2, 2
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	lsls r0, 22
	lsrs r0, 22
	cmp r0, r3
	bne _081953BE
_081953D6:
	adds r0, r2, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81953A0

	thumb_func_start sub_81953E8
sub_81953E8: @ 81953E8
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	lsrs r1, 24
	ldr r2, =gUnknown_0860D1A0
	ldr r0, =gUnknown_0860D1C0
	adds r0, r4, r0
	ldrb r0, [r0]
	lsrs r0, 1
	lsls r0, 2
	adds r1, r0
	adds r1, r2
	ldrb r0, [r1]
	subs r0, 0x10
	lsls r0, 24
	lsrs r0, 24
	mov r1, sp
	bl sub_8192F08
	mov r0, sp
	ldrb r0, [r0]
	cmp r4, r0
	beq _0819542C
	mov r0, sp
	ldrb r0, [r0]
	b _08195430
	.pool
_0819542C:
	mov r0, sp
	ldrb r0, [r0, 0x1]
_08195430:
	add sp, 0x4
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81953E8

	thumb_func_start sub_8195438
sub_8195438: @ 8195438
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x40
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0xC]
	movs r1, 0
	str r1, [sp, 0x10]
	movs r5, 0
	movs r1, 0x3
	ldr r0, [sp]
	ands r0, r1
	lsls r0, 3
	str r0, [sp, 0x14]
_0819545E:
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	lsls r4, r5, 2
	adds r1, r0, r4
	ldr r3, =0x00000d25
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 29
	adds r2, r5, 0x1
	str r2, [sp, 0x24]
	cmp r0, 0
	bge _08195478
	b _08195876
_08195478:
	subs r3, 0x1
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r1, r0, 22
	ldr r0, =0xffc00000
	cmp r1, r0
	bne _08195488
	b _08195876
_08195488:
	str r5, [sp, 0x4]
	lsrs r1, 22
	ldr r0, [sp]
	bl sub_81901A0
	str r0, [sp, 0x8]
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	adds r0, r3, r4
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 22
	ldr r1, =0xff800000
	cmp r0, r1
	bne _08195504
	ldr r2, [sp, 0x8]
	cmp r2, 0xFF
	beq _08195504
	lsls r2, 2
	adds r1, r3, r2
	ldr r3, =0x00000d25
	adds r1, r3
	ldrb r0, [r1]
	movs r3, 0x4
	orrs r0, r3
	strb r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r1, r2
	ldr r2, =0x00000d25
	adds r1, r2
	ldrb r0, [r1]
	subs r3, 0x1D
	ands r0, r3
	ldr r2, [sp, 0x14]
	orrs r0, r2
	strb r0, [r1]
	adds r0, r5, 0
	ldr r1, [sp, 0x8]
	ldr r2, [sp]
	bl sub_8193ED0
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	ldr r5, [sp, 0x8]
	lsls r2, r5, 1
	movs r3, 0xEC
	lsls r3, 4
	adds r1, r3
	adds r1, r2
	b _08195874
	.pool
_08195504:
	ldr r4, =gSaveBlock2Ptr
	ldr r3, [r4]
	ldr r0, [sp, 0x8]
	lsls r2, r0, 2
	adds r0, r3, r2
	ldr r1, =0x00000d24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 22
	ldr r1, =0xff800000
	str r2, [sp, 0x30]
	cmp r0, r1
	bne _0819557C
	ldr r2, [sp, 0x4]
	cmp r2, 0xFF
	beq _0819557C
	lsls r2, 2
	adds r1, r3, r2
	ldr r3, =0x00000d25
	adds r1, r3
	ldrb r0, [r1]
	movs r3, 0x4
	orrs r0, r3
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, r2
	ldr r0, =0x00000d25
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x19
	negs r2, r2
	ands r0, r2
	ldr r3, [sp, 0x14]
	orrs r0, r3
	strb r0, [r1]
	ldr r0, [sp, 0x8]
	ldr r1, [sp, 0x4]
	ldr r2, [sp]
	bl sub_8193ED0
	ldr r1, [r4]
	ldr r3, [sp, 0x4]
	lsls r2, r3, 1
	movs r3, 0xEC
	lsls r3, 4
	adds r1, r3
	adds r1, r2
	strh r0, [r1]
	adds r5, 0x1
	str r5, [sp, 0x24]
	b _08195876
	.pool
_0819557C:
	adds r5, 0x1
	str r5, [sp, 0x24]
	ldr r5, [sp, 0x8]
	cmp r5, 0xFF
	bne _08195588
	b _08195876
_08195588:
	movs r0, 0
	mov r10, r0
	lsls r1, r5, 1
	str r1, [sp, 0x2C]
	ldr r2, [sp, 0x4]
	lsls r2, 1
	str r2, [sp, 0x28]
	ldr r3, [sp, 0x4]
	adds r0, r2, r3
	lsls r0, 1
	mov r9, r0
	adds r0, r1, r5
	lsls r0, 1
	str r0, [sp, 0x18]
_081955A4:
	movs r5, 0
	mov r0, r9
	str r0, [sp, 0x38]
_081955AA:
	movs r6, 0
	lsls r7, r5, 1
	ldr r4, [sp, 0x18]
_081955B0:
	ldr r2, =gSaveBlock2Ptr
	ldr r1, [r2]
	ldr r3, =0x00000d64
	adds r1, r3
	ldr r2, [sp, 0x38]
	adds r0, r1, r2
	ldrh r0, [r0]
	ldr r3, =gUnknown_0203BC8C
	mov r8, r3
	ldr r2, [r3]
	lsls r0, 4
	adds r0, r2
	adds r0, 0x2
	adds r0, r7
	ldrh r0, [r0]
	adds r1, r4
	ldrh r1, [r1]
	lsls r1, 4
	adds r1, r2
	ldrh r1, [r1]
	movs r2, 0x2
	bl sub_818FFC0
	ldr r1, [sp, 0xC]
	adds r1, r0
	str r1, [sp, 0xC]
	adds r4, 0x2
	adds r6, 0x1
	cmp r6, 0x2
	ble _081955B0
	adds r5, 0x1
	cmp r5, 0x3
	ble _081955AA
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	ldr r3, =0x00000d64
	adds r0, r3
	add r0, r9
	ldrh r0, [r0]
	mov r5, r8
	ldr r1, [r5]
	lsls r0, 4
	adds r0, r1
	ldrh r2, [r0]
	ldr r0, =gBaseStats
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	ldrb r2, [r1, 0x1]
	adds r0, r2
	ldrb r2, [r1, 0x2]
	adds r0, r2
	ldrb r2, [r1, 0x3]
	adds r0, r2
	ldrb r3, [r1, 0x4]
	adds r0, r3
	ldrb r1, [r1, 0x5]
	adds r0, r1
	movs r1, 0xA
	bl __divsi3
	ldr r5, [sp, 0xC]
	adds r5, r0
	str r5, [sp, 0xC]
	movs r0, 0x2
	add r9, r0
	movs r1, 0x1
	add r10, r1
	mov r2, r10
	cmp r2, 0x2
	ble _081955A4
	bl Random
	movs r1, 0x1F
	ands r1, r0
	adds r5, r1
	ldr r3, [sp, 0x4]
	adds r5, r3
	str r5, [sp, 0xC]
	movs r5, 0
	mov r10, r5
	ldr r1, [sp, 0x2C]
	ldr r2, [sp, 0x8]
	adds r0, r1, r2
	lsls r0, 1
	str r0, [sp, 0x1C]
	ldr r5, [sp, 0x28]
	adds r0, r5, r3
	lsls r0, 1
	str r0, [sp, 0x20]
_08195668:
	movs r5, 0
	mov r0, r10
	lsls r3, r0, 1
	movs r1, 0x1
	add r10, r1
	ldr r2, [sp, 0x1C]
	adds r2, r3
	mov r8, r2
_08195678:
	movs r6, 0
	lsls r7, r5, 1
	adds r5, 0x1
	str r5, [sp, 0x3C]
	ldr r4, [sp, 0x20]
_08195682:
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	ldr r0, =0x00000d64
	adds r1, r0
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	ldr r5, =gUnknown_0203BC8C
	mov r9, r5
	ldr r2, [r5]
	lsls r0, 4
	adds r0, r2
	adds r0, 0x2
	adds r0, r7
	ldrh r0, [r0]
	adds r1, r4
	ldrh r1, [r1]
	lsls r1, 4
	adds r1, r2
	ldrh r1, [r1]
	movs r2, 0x2
	str r3, [sp, 0x34]
	bl sub_818FFC0
	ldr r1, [sp, 0x10]
	adds r1, r0
	str r1, [sp, 0x10]
	adds r4, 0x2
	adds r6, 0x1
	ldr r3, [sp, 0x34]
	cmp r6, 0x2
	ble _08195682
	ldr r5, [sp, 0x3C]
	cmp r5, 0x3
	ble _08195678
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	ldr r5, [sp, 0x1C]
	adds r1, r3, r5
	ldr r2, =0x00000d64
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	mov r3, r9
	ldr r1, [r3]
	lsls r0, 4
	adds r0, r1
	ldrh r2, [r0]
	ldr r0, =gBaseStats
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1]
	ldrb r2, [r1, 0x1]
	adds r0, r2
	ldrb r5, [r1, 0x2]
	adds r0, r5
	ldrb r2, [r1, 0x3]
	adds r0, r2
	ldrb r2, [r1, 0x4]
	adds r0, r2
	ldrb r1, [r1, 0x5]
	adds r0, r1
	movs r1, 0xA
	bl __divsi3
	ldr r3, [sp, 0x10]
	adds r3, r0
	str r3, [sp, 0x10]
	mov r5, r10
	cmp r5, 0x2
	ble _08195668
	bl Random
	movs r1, 0x1F
	ands r1, r0
	ldr r0, [sp, 0x10]
	adds r0, r1
	ldr r1, [sp, 0x8]
	adds r0, r1
	str r0, [sp, 0x10]
	ldr r2, [sp, 0xC]
	cmp r2, r0
	ble _08195784
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	ldr r5, [sp, 0x30]
	adds r1, r5
	ldr r0, =0x00000d25
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, r5
	ldr r3, =0x00000d25
	adds r1, r3
	ldrb r0, [r1]
	movs r5, 0x19
	negs r5, r5
	ands r0, r5
	ldr r2, [sp, 0x14]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [sp, 0x4]
	ldr r1, [sp, 0x8]
	ldr r2, [sp]
	bl sub_8193ED0
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	movs r5, 0xEC
	lsls r5, 4
	adds r1, r5
	ldr r2, [sp, 0x2C]
	adds r1, r2
	b _08195874
	.pool
_08195784:
	ldr r3, [sp, 0xC]
	ldr r5, [sp, 0x10]
	cmp r3, r5
	bge _081957DC
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r3, [sp, 0x4]
	lsls r2, r3, 2
	adds r1, r2
	ldr r5, =0x00000d25
	adds r1, r5
	ldrb r0, [r1]
	movs r3, 0x4
	orrs r0, r3
	strb r0, [r1]
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	adds r1, r2
	ldr r0, =0x00000d25
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x19
	negs r2, r2
	ands r0, r2
	ldr r3, [sp, 0x14]
	orrs r0, r3
	strb r0, [r1]
	ldr r0, [sp, 0x8]
	ldr r1, [sp, 0x4]
	ldr r2, [sp]
	bl sub_8193ED0
	ldr r1, [r5]
	movs r5, 0xEC
	lsls r5, 4
	adds r1, r5
	ldr r2, [sp, 0x28]
	adds r1, r2
	b _08195874
	.pool
_081957DC:
	ldr r3, [sp, 0x4]
	ldr r5, [sp, 0x8]
	cmp r3, r5
	ble _08195830
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, [sp, 0x30]
	adds r1, r2
	ldr r3, =0x00000d25
	adds r1, r3
	ldrb r0, [r1]
	movs r5, 0x4
	orrs r0, r5
	strb r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r1, r2
	adds r1, r3
	ldrb r0, [r1]
	movs r2, 0x19
	negs r2, r2
	ands r0, r2
	ldr r3, [sp, 0x14]
	orrs r0, r3
	strb r0, [r1]
	ldr r0, [sp, 0x4]
	ldr r1, [sp, 0x8]
	ldr r2, [sp]
	bl sub_8193ED0
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	movs r2, 0xEC
	lsls r2, 4
	adds r1, r2
	ldr r3, [sp, 0x2C]
	b _08195872
	.pool
_08195830:
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	ldr r0, [sp, 0x4]
	lsls r2, r0, 2
	adds r1, r2
	ldr r3, =0x00000d25
	adds r1, r3
	ldrb r0, [r1]
	movs r5, 0x4
	orrs r0, r5
	strb r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r1, r2
	adds r1, r3
	ldrb r0, [r1]
	movs r2, 0x19
	negs r2, r2
	ands r0, r2
	ldr r3, [sp, 0x14]
	orrs r0, r3
	strb r0, [r1]
	ldr r0, [sp, 0x8]
	ldr r1, [sp, 0x4]
	ldr r2, [sp]
	bl sub_8193ED0
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	movs r2, 0xEC
	lsls r2, 4
	adds r1, r2
	ldr r3, [sp, 0x28]
_08195872:
	adds r1, r3
_08195874:
	strh r0, [r1]
_08195876:
	ldr r5, [sp, 0x24]
	cmp r5, 0xF
	bgt _0819587E
	b _0819545E
_0819587E:
	add sp, 0x40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195438

	thumb_func_start sub_8195898
sub_8195898: @ 8195898
	push {r4-r6,lr}
	adds r6, r0, 0
	lsls r1, 16
	lsrs r5, r1, 16
	movs r4, 0
	bl sub_8165C40
	ldr r0, =0x000003fe
	cmp r5, r0
	bne _081958B8
	adds r0, r6, 0
	bl sub_8195938
	b _08195902
	.pool
_081958B8:
	ldr r0, =0x000003ff
	cmp r5, r0
	bne _081958DC
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
_081958C2:
	adds r0, r6, r4
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r4, 0x1
	cmp r4, 0x6
	ble _081958C2
	b _081958FC
	.pool
_081958DC:
	ldr r0, =0x0000012b
	cmp r5, r0
	bhi _081958FC
	ldr r0, =gUnknown_0203BC88
	ldr r1, [r0]
	movs r0, 0x34
	muls r0, r5
	adds r0, r1
	adds r2, r0, 0x4
_081958EE:
	adds r0, r6, r4
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r4, 0x1
	cmp r4, 0x6
	ble _081958EE
_081958FC:
	adds r1, r6, r4
	movs r0, 0xFF
	strb r0, [r1]
_08195902:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195898

	thumb_func_start sub_8195910
sub_8195910: @ 8195910
	ldr r0, =gTrainers
	ldr r1, =0x00007df3
	adds r0, r1
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_8195910

	thumb_func_start sub_8195924
sub_8195924: @ 8195924
	ldr r0, =gTrainers
	ldr r1, =0x00007df1
	adds r0, r1
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_8195924

	thumb_func_start sub_8195938
sub_8195938: @ 8195938
	push {r4,lr}
	adds r3, r0, 0
	movs r2, 0
	ldr r4, =gTrainers + TRAINER_TUCKER * 0x28 + 0x4 @ Tucker's name
_08195940:
	adds r0, r3, r2
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, 0x6
	ble _08195940
	adds r1, r3, r2
	movs r0, 0xFF
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195938

	thumb_func_start sub_8195960
sub_8195960: @ 8195960
	push {lr}
	ldr r1, =gUnknown_0860DE50
	ldr r0, =gSpecialVar_0x8004
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195960

	thumb_func_start sub_8195980
sub_8195980: @ 8195980
	push {r4-r7,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r0, [r4]
	ldr r2, =0x00000ca8
	adds r0, r2
	movs r6, 0
	strb r6, [r0]
	ldr r1, [r4]
	adds r2, 0xA
	adds r0, r1, r2
	strh r6, [r0]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r1, r2
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r4, [r4]
	ldr r0, =0x00000cdc
	adds r3, r4, r0
	ldr r2, =gUnknown_0860DE98
	lsls r1, r5, 2
	lsls r0, r7, 3
	adds r1, r0
	adds r1, r2
	ldr r0, [r3]
	ldr r1, [r1]
	ands r0, r1
	cmp r0, 0
	bne _081959F2
	lsls r0, r5, 1
	lsls r1, r7, 2
	adds r0, r1
	ldr r2, =0x00000dc8
	adds r1, r4, r2
	adds r1, r0
	strh r6, [r1]
_081959F2:
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0x4
	ldrsb r1, [r0, r1]
	movs r2, 0x5
	ldrsb r2, [r0, r2]
	movs r3, 0x1
	negs r3, r3
	movs r0, 0
	bl saved_warp2_set
	ldr r0, =gTrainerBattleOpponent_A
	strh r6, [r0]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195980

	thumb_func_start sub_8195A38
sub_8195A38: @ 8195A38
	push {r4-r7,lr}
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r7, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _08195A90
	cmp r0, 0x1
	bgt _08195A74
	cmp r0, 0
	beq _08195A7A
	b _08195AD0
	.pool
_08195A74:
	cmp r0, 0x2
	beq _08195AB0
	b _08195AD0
_08195A7A:
	ldr r0, =gScriptResult
	ldr r1, [r5]
	ldr r2, =0x00000dc6
	adds r1, r2
	ldrh r1, [r1]
	strh r1, [r0]
	b _08195AD0
	.pool
_08195A90:
	ldr r3, =gScriptResult
	ldr r0, [r5]
	lsls r1, r7, 1
	lsls r2, r6, 2
	adds r1, r2
	ldr r2, =0x00000dc8
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	b _08195AD0
	.pool
_08195AB0:
	ldr r4, =gScriptResult
	ldr r2, [r5]
	ldr r0, =0x00000cdc
	adds r2, r0
	ldr r3, =gUnknown_0860DE98
	lsls r0, r7, 2
	lsls r1, r6, 3
	adds r0, r1
	adds r0, r3
	ldr r1, [r2]
	ldr r0, [r0]
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	strh r0, [r4]
_08195AD0:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195A38

	thumb_func_start sub_8195AE4
sub_8195AE4: @ 8195AE4
	push {r4-r6,lr}
	ldr r6, =gSaveBlock2Ptr
	ldr r0, [r6]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _08195B3C
	cmp r0, 0x1
	bgt _08195B20
	cmp r0, 0
	beq _08195B26
	b _08195BA0
	.pool
_08195B20:
	cmp r0, 0x2
	beq _08195B5C
	b _08195BA0
_08195B26:
	ldr r0, [r6]
	ldr r1, =gSpecialVar_0x8006
	ldrh r1, [r1]
	ldr r2, =0x00000dc6
	adds r0, r2
	strh r1, [r0]
	b _08195BA0
	.pool
_08195B3C:
	ldr r2, [r6]
	lsls r0, r5, 1
	lsls r1, r4, 2
	adds r0, r1
	ldr r1, =0x00000dc8
	adds r2, r1
	adds r2, r0
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	strh r0, [r2]
	b _08195BA0
	.pool
_08195B5C:
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _08195B88
	ldr r2, [r6]
	ldr r0, =0x00000cdc
	adds r2, r0
	ldr r3, =gUnknown_0860DE98
	lsls r1, r5, 2
	lsls r0, r4, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	orrs r0, r1
	b _08195B9E
	.pool
_08195B88:
	ldr r2, [r6]
	ldr r1, =0x00000cdc
	adds r2, r1
	ldr r3, =gUnknown_0860DEA8
	lsls r1, r5, 2
	lsls r0, r4, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	ands r0, r1
_08195B9E:
	str r0, [r2]
_08195BA0:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195AE4

	thumb_func_start sub_8195BB0
sub_8195BB0: @ 8195BB0
	push {r4,lr}
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	ldr r1, =gSaveBlock2Ptr
	ldr r2, [r1]
	ldr r3, =0x00000ca9
	adds r1, r2, r3
	ldrb r1, [r1]
	lsls r1, 30
	lsrs r1, 29
	lsrs r0, 14
	adds r1, r0
	ldr r0, =0x00000dc8
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	cmp r0, 0x31
	bhi _08195C00
	ldr r4, =gScriptResult
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	strh r0, [r4]
	b _08195C16
	.pool
_08195C00:
	cmp r0, 0x62
	bhi _08195C10
	ldr r1, =gScriptResult
	movs r0, 0x3
	b _08195C14
	.pool
_08195C10:
	ldr r1, =gScriptResult
	movs r0, 0x4
_08195C14:
	strh r0, [r1]
_08195C16:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195BB0

	thumb_func_start sub_8195C20
sub_8195C20: @ 8195C20
	push {r4,lr}
	ldr r4, =gTrainerBattleOpponent_A
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xFF
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	lsls r1, r0, 2
	adds r1, r0
	lsrs r1, 6
	strh r1, [r4]
	ldrh r0, [r4]
	movs r1, 0
	bl sub_8162614
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195C20

	thumb_func_start sub_8195C50
sub_8195C50: @ 8195C50
	push {lr}
	ldr r3, =gTrainerBattleOpponent_A
	ldrh r1, [r3]
	ldr r0, =0x0000012b
	cmp r1, r0
	bhi _08195C6C
	ldr r2, =gUnknown_0203BC88
	movs r0, 0x34
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0xC
	bl ConvertBattleFrontierTrainerSpeechToString
_08195C6C:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195C50

	thumb_func_start sub_8195C7C
sub_8195C7C: @ 8195C7C
	push {r4-r7,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r7, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 24
	ldr r4, [r4]
	lsls r1, r7, 1
	lsrs r5, r0, 22
	adds r1, r5
	ldr r3, =0x00000dc8
	adds r6, r4, r3
	adds r3, r6, r1
	ldrh r2, [r3]
	ldr r0, =0x0000270e
	cmp r2, r0
	bhi _08195CCA
	adds r2, 0x1
	strh r2, [r3]
	movs r3, 0xDD
	lsls r3, 4
	adds r0, r4, r3
	adds r1, r0, r1
	adds r0, r5, 0
	ldrh r3, [r1]
	cmp r7, r3
	bls _08195CC0
	adds r0, 0x2
_08195CC0:
	adds r0, r6, r0
	ldrh r0, [r0]
	cmp r0, 0
	beq _08195CCA
	strh r2, [r1]
_08195CCA:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195C7C

	thumb_func_start sub_8195CE4
sub_8195CE4: @ 8195CE4
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl sub_81A4C30
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195CE4

	thumb_func_start sub_8195D28
sub_8195D28: @ 8195D28
	push {r4,r5,lr}
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	ldr r3, =0x00000ca9
	adds r1, r2, r3
	ldrb r1, [r1]
	lsls r1, 30
	lsrs r1, 29
	lsrs r0, 14
	adds r1, r0
	ldr r0, =0x00000dc8
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	cmp r0, 0x29
	bls _08195D88
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_0860DE84
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x9
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r1, =0x00000dc6
	adds r4, r1
	b _08195DA6
	.pool
_08195D88:
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_0860DE78
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x6
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r3, =0x00000dc6
	adds r4, r3
_08195DA6:
	strh r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195D28

	thumb_func_start sub_8195DB8
sub_8195DB8: @ 8195DB8
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000dc6
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x1
	bl AddBagItem
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bne _08195E00
	ldr r0, [r4]
	ldr r1, =0x00000dc6
	adds r0, r1
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r0, [r4]
	ldr r1, =0x00000dc6
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gScriptResult
	strh r5, [r0]
	b _08195E06
	.pool
_08195E00:
	ldr r1, =gScriptResult
	movs r0, 0
	strh r0, [r1]
_08195E06:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195DB8

	thumb_func_start sub_8195E10
sub_8195E10: @ 8195E10
	push {lr}
	bl RtcCalcLocalTime
	ldr r0, =gLocalTime
	bl sub_8195E34
	ldr r1, =gUnknown_0203CD80
	adds r0, 0xA
	str r0, [r1]
	movs r0, 0
	strb r0, [r1, 0x6]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8195E10

	thumb_func_start sub_8195E34
sub_8195E34: @ 8195E34
	adds r3, r0, 0
	movs r1, 0
	ldrsh r0, [r3, r1]
	lsls r1, r0, 1
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	movs r2, 0x2
	ldrsb r2, [r3, r2]
	lsls r1, r2, 4
	subs r1, r2
	lsls r1, 2
	adds r0, r1
	movs r1, 0x3
	ldrsb r1, [r3, r1]
	adds r0, r1
	bx lr
	thumb_func_end sub_8195E34

	thumb_func_start sub_8195E58
sub_8195E58: @ 8195E58
	push {lr}
	bl RtcCalcLocalTime
	ldr r0, =gLocalTime
	bl sub_8195E34
	adds r1, r0, 0
	ldr r2, =gUnknown_0203CD80
	ldr r0, [r2]
	cmp r0, r1
	bhi _08195E74
	subs r0, r1, r0
	cmp r0, 0x9
	bls _08195E84
_08195E74:
	str r1, [r2]
	movs r0, 0x1
	b _08195E86
	.pool
_08195E84:
	movs r0, 0
_08195E86:
	pop {r1}
	bx r1
	thumb_func_end sub_8195E58

	thumb_func_start sub_8195E8C
sub_8195E8C: @ 8195E8C
	push {r4,r5,lr}
	movs r5, 0x1
	ldr r4, =gPlayerParty
	adds r0, r4, 0
	movs r1, 0x6
	bl GetMonData
	cmp r0, 0
	bne _08195EAE
	adds r0, r4, 0
	bl GetMonAbility
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1F
	bne _08195EAE
	movs r5, 0x2
_08195EAE:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	lsls r1, r5, 1
	adds r1, r5
	cmp r0, r1
	blt _08195ED0
	movs r0, 0
	b _08195ED2
	.pool
_08195ED0:
	movs r0, 0x1
_08195ED2:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8195E8C

	thumb_func_start sub_8195ED8
sub_8195ED8: @ 8195ED8
	push {r4,lr}
	ldr r4, =gMapHeader
	ldrb r0, [r4, 0x17]
	bl is_light_level_1_2_3_or_6
	lsls r0, 24
	cmp r0, 0
	beq _08195F30
	ldrb r0, [r4, 0x14]
	cmp r0, 0x39
	beq _08195F30
	cmp r0, 0xE
	bne _08195F0E
	movs r0, 0xF9
	lsls r0, 2
	bl FlagGet
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08195F0E
	movs r0, 0xDC
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08195F30
_08195F0E:
	ldr r0, =gMapHeader
	ldrb r0, [r0, 0x14]
	cmp r0, 0x38
	bne _08195F38
	movs r0, 0xCF
	bl FlagGet
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08195F38
	movs r0, 0x8B
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	bne _08195F38
_08195F30:
	movs r0, 0
	b _08195F3A
	.pool
_08195F38:
	movs r0, 0x1
_08195F3A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8195ED8

	thumb_func_start sub_8195F40
sub_8195F40: @ 8195F40
	push {lr}
	ldr r1, =gUnknown_0203CD80
	ldrb r0, [r1, 0x6]
	adds r0, 0x1
	strb r0, [r1, 0x6]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x9
	bhi _08195F5C
	movs r0, 0
	b _08195F62
	.pool
_08195F5C:
	movs r0, 0
	strb r0, [r1, 0x6]
	movs r0, 0x1
_08195F62:
	pop {r1}
	bx r1
	thumb_func_end sub_8195F40

	thumb_func_start sub_8195F68
sub_8195F68: @ 8195F68
	push {r4,lr}
	bl sub_8195FCC
	adds r4, r0, 0
	cmp r4, 0
	beq _08195FB8
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r4, 0
	bl __umodsi3
	bl sub_8195FF8
	ldr r2, =gUnknown_0203CD80
	movs r1, 0
	strh r0, [r2, 0x4]
	strb r1, [r2, 0x7]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x4E
	beq _08195FB8
	ldrh r0, [r2, 0x4]
	bl sub_8196844
	adds r4, r0, 0
	bl sub_819672C
	ldr r1, =gMapHeader
	lsls r0, 16
	lsrs r0, 16
	ldrb r1, [r1, 0x14]
	cmp r0, r1
	bne _08195FC4
	adds r0, r4, 0
	bl sub_8196710
	cmp r0, 0
	bne _08195FC4
_08195FB8:
	movs r0, 0
	b _08195FC6
	.pool
_08195FC4:
	movs r0, 0x1
_08195FC6:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8195F68

	thumb_func_start sub_8195FCC
sub_8195FCC: @ 8195FCC
	push {r4,r5,lr}
	movs r4, 0
	movs r5, 0
_08195FD2:
	movs r1, 0xAE
	lsls r1, 1
	adds r0, r4, r1
	lsls r0, 16
	lsrs r0, 16
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08195FE8
	adds r5, 0x1
_08195FE8:
	adds r4, 0x1
	cmp r4, 0x3F
	bls _08195FD2
	adds r0, r5, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8195FCC

	thumb_func_start sub_8195FF8
sub_8195FF8: @ 8195FF8
	push {r4-r6,lr}
	adds r5, r0, 0
	movs r4, 0
	ldr r6, =gUnknown_085500A4
_08196000:
	movs r1, 0xAE
	lsls r1, 1
	adds r0, r4, r1
	lsls r0, 16
	lsrs r0, 16
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08196022
	cmp r5, 0
	bne _08196020
	ldrh r0, [r6]
	b _0819602C
	.pool
_08196020:
	subs r5, 0x1
_08196022:
	adds r6, 0x10
	adds r4, 0x1
	cmp r4, 0x3F
	bls _08196000
	movs r0, 0x4E
_0819602C:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8195FF8

	thumb_func_start sub_8196034
sub_8196034: @ 8196034
	push {lr}
	ldr r0, =0x0000012f
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08196078
	bl sub_8195F40
	cmp r0, 0
	beq _08196078
	bl sub_8195E58
	cmp r0, 0
	beq _08196078
	bl sub_8195E8C
	cmp r0, 0
	beq _08196078
	bl sub_8195ED8
	cmp r0, 0
	beq _08196078
	bl sub_8195F68
	cmp r0, 0
	beq _08196078
	bl task_prev_quest
	movs r0, 0x1
	b _0819607A
	.pool
_08196078:
	movs r0, 0
_0819607A:
	pop {r1}
	bx r1
	thumb_func_end sub_8196034

	thumb_func_start sub_8196080
sub_8196080: @ 8196080
	push {lr}
	ldr r1, =gUnknown_0203CD80
	movs r0, 0x1
	strb r0, [r1, 0x7]
	bl task_prev_quest
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196080

	thumb_func_start sub_8196094
sub_8196094: @ 8196094
	push {lr}
	ldr r0, =sub_81960E0
	bl FuncIsActiveTask
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8196094

	thumb_func_start task_prev_quest
task_prev_quest: @ 81960A8
	push {lr}
	ldr r0, =gUnknown_0203CD80
	ldrb r0, [r0, 0x7]
	cmp r0, 0
	bne _081960C2
	bl script_env_2_enable
	bl player_bitmagic
	bl sub_808B864
	bl sub_808BCF4
_081960C2:
	ldr r0, =0x00000107
	bl PlaySE
	ldr r0, =sub_81960E0
	movs r1, 0x1
	bl CreateTask
	pop {r0}
	bx r0
	.pool
	thumb_func_end task_prev_quest

	thumb_func_start sub_81960E0
sub_81960E0: @ 81960E0
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	ldr r1, =gUnknown_0860EF78
	movs r2, 0
	ldrsh r0, [r4, r2]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	adds r0, r5, 0
	bl _call_via_r1
	cmp r0, 0
	beq _0819611E
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	movs r1, 0
	strh r1, [r4, 0x2]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x7
	bls _0819611E
	adds r0, r5, 0
	bl DestroyTask
_0819611E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81960E0

	thumb_func_start sub_819612C
sub_819612C: @ 819612C
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	adds r6, r4, 0
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r5, r0, r1
	ldr r0, =gUnknown_0860EF98
	bl AddWindow
	strh r0, [r5, 0x4]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xFF
	bne _0819615C
	adds r0, r4, 0
	b _081961E0
	.pool
_0819615C:
	ldr r1, =gUnknown_0860EA6C
	movs r2, 0x80
	lsls r2, 1
	movs r3, 0x9C
	lsls r3, 2
	movs r0, 0
	bl LoadBgTiles
	lsls r0, 16
	ldr r1, =0xffff0000
	cmp r0, r1
	bne _08196188
	ldrb r0, [r5, 0x4]
	bl RemoveWindow
	adds r0, r4, 0
	b _081961E0
	.pool
_08196188:
	ldr r1, =gUnknown_0860EB8C
	ldr r3, =0x00000279
	movs r0, 0
	str r0, [sp]
	movs r2, 0
	bl decompress_and_copy_tile_data_to_vram
	cmp r0, 0
	beq _081961D8
	ldrb r0, [r5, 0x4]
	movs r1, 0x88
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_0860EA4C
	movs r1, 0xE0
	movs r2, 0x20
	bl LoadPalette
	ldr r0, =gUnknown_0860EB6C
	movs r1, 0xF0
	movs r2, 0x20
	bl LoadPalette
	ldr r1, =0xffffe000
	movs r0, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x1
	b _081961E6
	.pool
_081961D8:
	ldrb r0, [r5, 0x4]
	bl RemoveWindow
	adds r0, r6, 0
_081961E0:
	bl DestroyTask
	movs r0, 0
_081961E6:
	add sp, 0x4
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_819612C

	thumb_func_start sub_81961F0
sub_81961F0: @ 81961F0
	push {r4,lr}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	bl free_temp_tile_data_buffers_if_possible
	lsls r0, 24
	cmp r0, 0
	bne _08196268
	ldrb r0, [r4, 0x4]
	bl PutWindowTilemap
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	movs r1, 0x9C
	lsls r1, 2
	movs r2, 0xE
	bl sub_819645C
	ldr r1, =0x0000f279
	movs r0, 0x4
	str r0, [sp]
	str r0, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	movs r0, 0x1
	str r0, [sp, 0xC]
	movs r0, 0
	movs r2, 0x1
	movs r3, 0xF
	bl WriteSequenceToBgTilemapBuffer
	ldr r0, =sub_8196694
	movs r1, 0xA
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0xA]
	ldrb r0, [r4, 0x4]
	movs r1, 0x2
	bl CopyWindowToVram
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	movs r0, 0x1
	b _0819626A
	.pool
_08196268:
	movs r0, 0
_0819626A:
	add sp, 0x10
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81961F0

	thumb_func_start sub_8196274
sub_8196274: @ 8196274
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	beq _08196298
	movs r0, 0
	b _081962A4
	.pool
_08196298:
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	ldr r1, =gUnknown_0860EF70
	bl sub_81965D8
	movs r0, 0x1
_081962A4:
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8196274

	thumb_func_start sub_81962B0
sub_81962B0: @ 81962B0
	push {lr}
	movs r1, 0xC0
	lsls r1, 3
	movs r0, 0
	movs r2, 0x1
	bl ChangeBgY
	cmp r0, 0
	bge _081962C6
	movs r0, 0
	b _081962D2
_081962C6:
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x1
_081962D2:
	pop {r1}
	bx r1
	thumb_func_end sub_81962B0

	thumb_func_start sub_81962D8
sub_81962D8: @ 81962D8
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	bl sub_8196648
	cmp r0, 0
	bne _08196328
	ldrb r0, [r4, 0x4]
	movs r1, 0x88
	bl FillWindowPixelBuffer
	ldr r1, =gUnknown_0203CD80
	ldrb r0, [r1, 0x7]
	cmp r0, 0
	bne _0819630C
	ldrh r0, [r1, 0x4]
	ldr r1, =gStringVar4
	bl sub_81967AC
_0819630C:
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	ldr r1, =gStringVar4
	bl sub_81965D8
	movs r0, 0x1
	b _0819632A
	.pool
_08196328:
	movs r0, 0
_0819632A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81962D8

	thumb_func_start sub_8196330
sub_8196330: @ 8196330
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	bl sub_8196648
	cmp r0, 0
	bne _08196388
	bl IsSEPlaying
	lsls r0, 24
	cmp r0, 0
	bne _08196388
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _08196388
	ldrb r0, [r4, 0x4]
	movs r1, 0x88
	bl FillWindowPixelBuffer
	ldrb r0, [r4, 0x4]
	movs r1, 0x2
	bl CopyWindowToVram
	movs r0, 0x84
	lsls r0, 1
	bl PlaySE
	movs r0, 0x1
	b _0819638A
	.pool
_08196388:
	movs r0, 0
_0819638A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8196330

	thumb_func_start sub_8196390
sub_8196390: @ 8196390
	push {r4,lr}
	sub sp, 0x8
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	movs r1, 0xC0
	lsls r1, 3
	movs r0, 0
	movs r2, 0x2
	bl ChangeBgY
	ldr r1, =0xffffe000
	cmp r0, r1
	ble _081963C0
	movs r0, 0
	b _081963E8
	.pool
_081963C0:
	movs r0, 0x1E
	str r0, [sp]
	movs r0, 0x6
	str r0, [sp, 0x4]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	movs r3, 0xE
	bl FillBgTilemapBufferRect_Palette0
	ldrb r0, [r4, 0xA]
	bl DestroyTask
	ldrb r0, [r4, 0x4]
	bl RemoveWindow
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	movs r0, 0x1
_081963E8:
	add sp, 0x8
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8196390

	thumb_func_start sub_81963F0
sub_81963F0: @ 81963F0
	push {lr}
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _08196454
	bl IsSEPlaying
	lsls r0, 24
	cmp r0, 0
	bne _08196454
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	ldr r0, =gUnknown_0203CD80
	ldrb r0, [r0, 0x7]
	cmp r0, 0
	bne _08196446
	bl sub_81973A4
	movs r0, 0xFF
	movs r1, 0
	movs r2, 0
	bl GetFieldObjectIdByLocalIdAndMap
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02037350
	adds r0, r1
	bl FieldObjectClearAnimIfSpecialAnimFinished
	bl sub_80D338C
	bl sub_809757C
	bl script_env_2_disable
_08196446:
	movs r0, 0x1
	b _08196456
	.pool
_08196454:
	movs r0, 0
_08196456:
	pop {r1}
	bx r1
	thumb_func_end sub_81963F0

	thumb_func_start sub_819645C
sub_819645C: @ 819645C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	adds r4, r0, 0
	adds r5, r1, 0
	adds r7, r2, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	movs r1, 0
	bl GetWindowAttribute
	mov r9, r0
	adds r0, r4, 0
	movs r1, 0x1
	bl GetWindowAttribute
	str r0, [sp, 0x8]
	adds r0, r4, 0
	movs r1, 0x2
	bl GetWindowAttribute
	str r0, [sp, 0xC]
	adds r0, r4, 0
	movs r1, 0x3
	bl GetWindowAttribute
	adds r6, r0, 0
	adds r0, r4, 0
	movs r1, 0x4
	bl GetWindowAttribute
	str r0, [sp, 0x10]
	mov r0, r9
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r1, 0xA
	bl GetBgAttribute
	lsls r0, 16
	lsrs r0, 16
	adds r5, r0
	lsls r7, 12
	movs r1, 0xF0
	lsls r1, 8
	adds r0, r1, 0
	ands r7, r0
	adds r1, r7, 0
	orrs r1, r5
	lsls r1, 16
	lsrs r1, 16
	ldr r2, [sp, 0x8]
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	mov r10, r2
	ldr r4, [sp, 0xC]
	subs r4, 0x1
	lsls r4, 24
	lsrs r4, 24
	movs r3, 0x1
	mov r8, r3
	str r3, [sp]
	str r3, [sp, 0x4]
	mov r0, r9
	adds r3, r4, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r1, r5, 0x1
	orrs r1, r7
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x8]
	lsls r2, r0, 24
	lsrs r2, 24
	str r2, [sp, 0x14]
	lsls r0, r6, 24
	lsrs r0, 24
	str r0, [sp, 0x18]
	str r0, [sp]
	mov r2, r8
	str r2, [sp, 0x4]
	mov r0, r9
	ldr r2, [sp, 0x14]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r1, r5, 0x2
	orrs r1, r7
	lsls r1, 16
	lsrs r1, 16
	ldr r3, [sp, 0x8]
	adds r0, r3, r6
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x1C]
	mov r0, r8
	str r0, [sp]
	str r0, [sp, 0x4]
	mov r0, r9
	ldr r2, [sp, 0x1C]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r1, r5, 0x3
	orrs r1, r7
	lsls r1, 16
	lsrs r1, 16
	ldr r2, [sp, 0xC]
	lsls r6, r2, 24
	lsrs r6, 24
	mov r3, r8
	str r3, [sp]
	ldr r0, [sp, 0x10]
	lsls r4, r0, 24
	lsrs r4, 24
	str r4, [sp, 0x4]
	mov r0, r9
	mov r2, r10
	adds r3, r6, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r1, r5, 0x4
	orrs r1, r7
	lsls r1, 16
	lsrs r1, 16
	mov r2, r8
	str r2, [sp]
	str r4, [sp, 0x4]
	mov r0, r9
	ldr r2, [sp, 0x1C]
	adds r3, r6, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r1, r5, 0x5
	orrs r1, r7
	lsls r1, 16
	lsrs r1, 16
	ldr r3, [sp, 0xC]
	ldr r2, [sp, 0x10]
	adds r0, r3, r2
	lsls r0, 24
	lsrs r4, r0, 24
	mov r3, r8
	str r3, [sp]
	str r3, [sp, 0x4]
	mov r0, r9
	mov r2, r10
	adds r3, r4, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r1, r5, 0x6
	orrs r1, r7
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x18]
	str r0, [sp]
	mov r2, r8
	str r2, [sp, 0x4]
	mov r0, r9
	ldr r2, [sp, 0x14]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect_Palette0
	adds r5, 0x7
	orrs r5, r7
	lsls r5, 16
	lsrs r5, 16
	mov r3, r8
	str r3, [sp]
	str r3, [sp, 0x4]
	mov r0, r9
	adds r1, r5, 0
	ldr r2, [sp, 0x1C]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect_Palette0
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819645C

	thumb_func_start sub_81965D8
sub_81965D8: @ 81965D8
	push {lr}
	sub sp, 0x10
	str r1, [sp]
	mov r1, sp
	movs r3, 0
	strb r0, [r1, 0x4]
	mov r0, sp
	movs r1, 0x1
	strb r1, [r0, 0x5]
	movs r2, 0x20
	strb r2, [r0, 0x6]
	strb r1, [r0, 0x7]
	strb r2, [r0, 0x8]
	strb r1, [r0, 0x9]
	strb r3, [r0, 0xA]
	strb r3, [r0, 0xB]
	mov r3, sp
	ldrb r2, [r3, 0xC]
	subs r1, 0x11
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	mov r2, sp
	movs r3, 0xF
	movs r0, 0xA0
	strb r0, [r2, 0xC]
	ldrb r0, [r2, 0xD]
	ands r1, r0
	movs r0, 0x8
	orrs r1, r0
	strb r1, [r2, 0xD]
	ands r1, r3
	movs r0, 0xE0
	orrs r1, r0
	strb r1, [r2, 0xD]
	ldr r2, =gTextFlags
	ldrb r1, [r2]
	movs r0, 0x3
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	bl sav2_get_text_speed
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r0, sp
	movs r2, 0
	bl AddTextPrinter
	add sp, 0x10
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81965D8

	thumb_func_start sub_8196648
sub_8196648: @ 8196648
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, =gMain
	ldrh r1, [r0, 0x2C]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0819666C
	ldr r0, =gTextFlags
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	b _08196678
	.pool
_0819666C:
	ldr r2, =gTextFlags
	ldrb r1, [r2]
	movs r0, 0x2
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_08196678:
	bl RunTextPrinters
	lsls r0, r4, 24
	lsrs r0, 24
	bl IsTextPrinterActive
	lsls r0, 16
	lsrs r0, 16
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8196648

	thumb_func_start sub_8196694
sub_8196694: @ 8196694
	push {lr}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, 0x1
	strh r0, [r2]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x8
	ble _081966FC
	movs r1, 0
	strh r1, [r2]
	ldrh r0, [r2, 0x2]
	adds r0, 0x1
	strh r0, [r2, 0x2]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x7
	ble _081966C8
	strh r1, [r2, 0x2]
_081966C8:
	movs r0, 0x2
	ldrsh r1, [r2, r0]
	lsls r1, 4
	ldr r0, =0x00000279
	adds r1, r0
	strh r1, [r2, 0x4]
	ldr r2, =0xfffff000
	adds r0, r2, 0
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x4
	str r0, [sp]
	str r0, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	movs r0, 0x1
	str r0, [sp, 0xC]
	movs r0, 0
	movs r2, 0x1
	movs r3, 0xF
	bl WriteSequenceToBgTilemapBuffer
	movs r0, 0
	bl CopyBgTilemapBufferToVram
_081966FC:
	add sp, 0x10
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196694

	thumb_func_start sub_8196710
sub_8196710: @ 8196710
	ldr r1, =gSaveBlock1Ptr
	ldr r1, [r1]
	ldr r2, =0x000009ca
	adds r1, r2
	adds r1, r0
	ldrb r1, [r1]
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	bx lr
	.pool
	thumb_func_end sub_8196710

	thumb_func_start sub_819672C
sub_819672C: @ 819672C
	push {lr}
	ldr r1, =gUnknown_085500A4
	lsls r0, 4
	adds r0, r1
	ldrh r2, [r0, 0xA]
	ldrh r1, [r0, 0xC]
	adds r0, r2, 0
	bl get_mapheader_by_bank_and_number
	ldrb r0, [r0, 0x14]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_819672C

	thumb_func_start sub_8196748
sub_8196748: @ 8196748
	push {r4-r6,lr}
	movs r5, 0
	movs r6, 0
	ldr r4, =gUnknown_085500A4
_08196750:
	ldrh r0, [r4]
	bl trainer_flag_check
	lsls r0, 24
	cmp r0, 0
	beq _0819675E
	adds r6, 0x1
_0819675E:
	adds r4, 0x10
	adds r5, 0x1
	cmp r5, 0x3F
	bls _08196750
	adds r0, r6, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8196748

	thumb_func_start sub_8196774
sub_8196774: @ 8196774
	push {r4-r7,lr}
	adds r7, r0, 0
	movs r4, 0
	movs r6, 0
	ldr r5, =gUnknown_085500A4
_0819677E:
	ldrh r0, [r5]
	bl trainer_flag_check
	lsls r0, 24
	cmp r0, 0
	beq _0819679A
	cmp r6, r7
	bne _08196798
	adds r0, r4, 0
	b _081967A4
	.pool
_08196798:
	adds r6, 0x1
_0819679A:
	adds r5, 0x10
	adds r4, 0x1
	cmp r4, 0x4D
	bls _0819677E
	movs r0, 0x4E
_081967A4:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8196774

	thumb_func_start sub_81967AC
sub_81967AC: @ 81967AC
	push {r4-r7,lr}
	adds r6, r1, 0
	movs r7, 0
	bl sub_8196844
	adds r5, r0, 0
	ldr r0, =gUnknown_0203CD88
	strh r7, [r0]
	adds r0, r5, 0
	bl sub_8196710
	cmp r0, 0
	beq _081967EC
	adds r0, r5, 0
	bl sub_819672C
	ldr r1, =gMapHeader
	lsls r0, 16
	lsrs r0, 16
	ldrb r1, [r1, 0x14]
	cmp r0, r1
	bne _081967EC
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_8196864
	b _08196830
	.pool
_081967EC:
	adds r0, r5, 0
	bl sub_8196D74
	cmp r0, 0
	beq _0819680A
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_8196890
	adds r4, r0, 0
	movs r7, 0x1
	adds r0, r5, 0
	bl sub_80B1E94
	b _08196832
_0819680A:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	beq _08196828
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_81968BC
	b _08196830
_08196828:
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_8196910
_08196830:
	adds r4, r0, 0
_08196832:
	adds r0, r5, 0
	adds r1, r4, 0
	adds r2, r6, 0
	bl sub_81969E0
	adds r0, r7, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81967AC

	thumb_func_start sub_8196844
sub_8196844: @ 8196844
	push {lr}
	adds r3, r0, 0
	movs r2, 0
	ldr r1, =gUnknown_0860DEB8
_0819684C:
	ldrh r0, [r1]
	cmp r0, r3
	beq _0819685C
	adds r1, 0x14
	adds r2, 0x1
	b _0819684C
	.pool
_0819685C:
	adds r0, r2, 0
	pop {r1}
	bx r1
	thumb_func_end sub_8196844

	thumb_func_start sub_8196864
sub_8196864: @ 8196864
	ldr r2, =gUnknown_0860DEB8
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrh r1, [r1, 0xE]
	movs r2, 0xFF
	lsrs r0, r1, 8
	subs r0, 0x1
	ands r1, r2
	subs r1, 0x1
	ldr r2, =gUnknown_0860EA2C
	lsls r0, 2
	adds r0, r2
	lsls r1, 3
	ldr r0, [r0]
	adds r0, r1
	bx lr
	.pool
	thumb_func_end sub_8196864

	thumb_func_start sub_8196890
sub_8196890: @ 8196890
	ldr r2, =gUnknown_0860DEB8
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrh r1, [r1, 0x10]
	movs r2, 0xFF
	lsrs r0, r1, 8
	subs r0, 0x1
	ands r1, r2
	subs r1, 0x1
	ldr r2, =gUnknown_0860EA2C
	lsls r0, 2
	adds r0, r2
	lsls r1, 3
	ldr r0, [r0]
	adds r0, r1
	bx lr
	.pool
	thumb_func_end sub_8196890

	thumb_func_start sub_81968BC
sub_81968BC: @ 81968BC
	push {r4,lr}
	adds r4, r0, 0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 16
	ldr r2, =gUnknown_0860DEB8
	lsrs r0, 15
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 2
	adds r0, r1
	adds r2, 0x4
	adds r0, r2
	ldrh r4, [r0]
	cmp r4, 0
	bne _081968EC
	movs r0, 0
	bl SpriteCallbackDummy
_081968EC:
	movs r1, 0xFF
	lsrs r0, r4, 8
	subs r0, 0x1
	ands r4, r1
	subs r1, r4, 0x1
	ldr r2, =gUnknown_0860EA20
	lsls r0, 2
	adds r0, r2
	lsls r1, 3
	ldr r0, [r0]
	adds r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81968BC

	thumb_func_start sub_8196910
sub_8196910: @ 8196910
	push {r4-r7,lr}
	sub sp, 0x4
	adds r6, r0, 0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	bne _081969AC
	movs r5, 0
	movs r4, 0
	lsls r7, r6, 2
_0819692C:
	lsls r0, r4, 16
	lsrs r0, 16
	mov r1, sp
	bl sub_8196E04
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bls _08196940
	adds r5, 0x1
_08196940:
	adds r4, 0x1
	cmp r4, 0x6
	ble _0819692C
	cmp r5, 0
	beq _081969AC
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r5, 0
	bl __modsi3
	adds r5, r0, 0
	movs r4, 0
	b _08196962
_0819695E:
	subs r5, 0x1
_08196960:
	adds r4, 0x1
_08196962:
	cmp r4, 0x6
	bgt _08196980
	lsls r0, r4, 16
	lsrs r0, 16
	mov r1, sp
	bl sub_8196E04
	ldr r1, =gUnknown_0203CD88
	strh r0, [r1, 0x2]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bls _08196960
	cmp r5, 0
	bne _0819695E
_08196980:
	ldr r0, =gUnknown_0203CD88
	strh r4, [r0]
	ldr r1, =gUnknown_0860DEB8
	adds r0, r7, r6
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0xC]
	subs r2, r0, 0x1
	ldr r1, =gUnknown_0860EA34
	ldr r0, [sp]
	lsls r0, 2
	adds r0, r1
	lsls r1, r2, 3
	ldr r0, [r0]
	adds r0, r1
	b _081969D0
	.pool
_081969AC:
	ldr r1, =gUnknown_0860DEB8
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 2
	adds r0, r1
	ldrh r2, [r0, 0xA]
	lsrs r1, r2, 8
	subs r1, 0x1
	str r1, [sp]
	movs r0, 0xFF
	ands r0, r2
	subs r2, r0, 0x1
	ldr r0, =gUnknown_0860EA34
	lsls r1, 2
	adds r1, r0
	lsls r2, 3
	ldr r0, [r1]
	adds r0, r2
_081969D0:
	add sp, 0x4
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8196910

	thumb_func_start sub_81969E0
sub_81969E0: @ 81969E0
	push {r4,r5,lr}
	adds r4, r1, 0
	adds r5, r2, 0
	adds r1, r4, 0x4
	bl sub_81969FC
	ldr r1, [r4]
	adds r0, r5, 0
	bl StringExpandPlaceholders
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_81969E0

	thumb_func_start sub_81969FC
sub_81969FC: @ 81969FC
	push {r4-r7,lr}
	adds r7, r0, 0
	adds r6, r1, 0
	movs r4, 0
	ldr r5, =gUnknown_0860EFA0
_08196A06:
	adds r1, r6, r4
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0
	blt _08196A1A
	adds r1, r0, 0
	ldr r2, [r5]
	adds r0, r7, 0
	bl sub_8196A2C
_08196A1A:
	adds r5, 0x4
	adds r4, 0x1
	cmp r4, 0x2
	ble _08196A06
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81969FC

	thumb_func_start sub_8196A2C
sub_8196A2C: @ 8196A2C
	push {lr}
	ldr r3, =gUnknown_0860EFAC
	lsls r1, 2
	adds r1, r3
	ldr r3, [r1]
	adds r1, r2, 0
	bl _call_via_r3
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196A2C

	thumb_func_start sub_8196A44
sub_8196A44: @ 8196A44
	push {r4-r6,lr}
	adds r5, r1, 0
	ldr r2, =gUnknown_0860DEB8
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrh r4, [r1]
	movs r2, 0
	ldr r3, =gUnknown_0860EFC4
	adds r6, r3, 0
_08196A5A:
	lsls r1, r2, 3
	ldrh r0, [r3]
	cmp r0, r4
	bne _08196A78
	adds r0, r6, 0x4
	adds r0, r1, r0
	ldr r1, [r0]
	adds r0, r5, 0
	bl StringCopy
	b _08196A90
	.pool
_08196A78:
	adds r3, 0x8
	adds r2, 0x1
	cmp r2, 0x5
	bls _08196A5A
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	ldr r0, =gTrainers + 0x4 @ name offset
	adds r1, r0
	adds r0, r5, 0
	bl StringCopy
_08196A90:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196A44

	thumb_func_start sub_8196A9C
sub_8196A9C: @ 8196A9C
	push {r4,lr}
	adds r4, r1, 0
	bl sub_819672C
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	adds r0, r4, 0
	movs r2, 0
	bl GetMapName
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8196A9C

	thumb_func_start sub_8196AB8
sub_8196AB8: @ 8196AB8
	push {lr}
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x13
	bgt _08196AD4
	movs r0, 0
	b _08196B4A
_08196AD4:
	adds r0, r1, 0
	subs r0, 0x14
	cmp r0, 0x13
	bhi _08196AE0
	movs r0, 0x1
	b _08196B4A
_08196AE0:
	adds r0, r1, 0
	subs r0, 0x28
	cmp r0, 0x9
	bhi _08196AEC
	movs r0, 0x2
	b _08196B4A
_08196AEC:
	adds r0, r1, 0
	subs r0, 0x32
	cmp r0, 0x9
	bhi _08196AF8
	movs r0, 0x3
	b _08196B4A
_08196AF8:
	adds r0, r1, 0
	subs r0, 0x3C
	cmp r0, 0x9
	bhi _08196B04
	movs r0, 0x4
	b _08196B4A
_08196B04:
	adds r0, r1, 0
	subs r0, 0x46
	cmp r0, 0x9
	bhi _08196B10
	movs r0, 0x5
	b _08196B4A
_08196B10:
	adds r0, r1, 0
	subs r0, 0x50
	cmp r0, 0x4
	bhi _08196B1C
	movs r0, 0x6
	b _08196B4A
_08196B1C:
	adds r0, r1, 0
	subs r0, 0x55
	cmp r0, 0x4
	bhi _08196B28
	movs r0, 0x7
	b _08196B4A
_08196B28:
	adds r0, r1, 0
	subs r0, 0x5A
	cmp r0, 0x3
	bhi _08196B34
	movs r0, 0x8
	b _08196B4A
_08196B34:
	adds r0, r1, 0
	subs r0, 0x5E
	cmp r0, 0x3
	bhi _08196B40
	movs r0, 0x9
	b _08196B4A
_08196B40:
	cmp r1, 0x62
	beq _08196B48
	movs r0, 0xB
	b _08196B4A
_08196B48:
	movs r0, 0xA
_08196B4A:
	pop {r1}
	bx r1
	thumb_func_end sub_8196AB8

	thumb_func_start sub_8196B50
sub_8196B50: @ 8196B50
	push {lr}
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x3B
	bgt _08196B6C
	movs r0, 0
	b _08196B92
_08196B6C:
	adds r0, r1, 0
	subs r0, 0x3C
	cmp r0, 0x1D
	bhi _08196B78
	movs r0, 0x1
	b _08196B92
_08196B78:
	adds r0, r1, 0
	subs r0, 0x5A
	cmp r0, 0x4
	bhi _08196B84
	movs r0, 0x2
	b _08196B92
_08196B84:
	adds r0, r1, 0
	subs r0, 0x5F
	cmp r0, 0x3
	bls _08196B90
	movs r0, 0x4
	b _08196B92
_08196B90:
	movs r0, 0x3
_08196B92:
	pop {r1}
	bx r1
	thumb_func_end sub_8196B50

	thumb_func_start sub_8196B98
sub_8196B98: @ 8196B98
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	adds r2, r0, 0
	mov r8, r1
	movs r3, 0
	ldr r0, =gWildMonHeaders
	ldrb r1, [r0]
	adds r7, r0, 0
	cmp r1, 0xFF
	beq _08196C5C
	ldr r1, =gUnknown_085500A4
	lsls r0, r2, 4
	adds r2, r0, r1
	ldrh r4, [r2, 0xA]
	adds r1, r7, 0
_08196BBA:
	ldrb r0, [r1]
	cmp r0, r4
	bne _08196BC8
	ldrb r0, [r1, 0x1]
	ldrh r5, [r2, 0xC]
	cmp r0, r5
	beq _08196BD2
_08196BC8:
	adds r1, 0x14
	adds r3, 0x1
	ldrb r0, [r1]
	cmp r0, 0xFF
	bne _08196BBA
_08196BD2:
	adds r1, r7, 0
	lsls r0, r3, 2
	adds r0, r3
	lsls r5, r0, 2
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _08196C5C
	movs r6, 0
	adds r0, r1, 0x4
	adds r0, r5, r0
	ldr r4, [r0]
	cmp r4, 0
	beq _08196C02
	bl sub_8196AB8
	lsls r0, 24
	mov r2, sp
	ldr r1, [r4, 0x4]
	lsrs r0, 22
	adds r0, r1
	ldrh r0, [r0, 0x2]
	strh r0, [r2]
	movs r6, 0x1
_08196C02:
	adds r0, r7, 0
	adds r0, 0x8
	adds r0, r5, r0
	ldr r4, [r0]
	cmp r4, 0
	beq _08196C26
	bl sub_8196B50
	lsls r0, 24
	lsls r1, r6, 1
	mov r3, sp
	adds r2, r3, r1
	ldr r1, [r4, 0x4]
	lsrs r0, 22
	adds r0, r1
	ldrh r0, [r0, 0x2]
	strh r0, [r2]
	adds r6, 0x1
_08196C26:
	cmp r6, 0
	beq _08196C5C
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r6, 0
	bl __modsi3
	lsls r0, 1
	add r0, sp
	ldrh r1, [r0]
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	mov r0, r8
	bl StringCopy
	b _08196C62
	.pool
_08196C5C:
	movs r0, 0xFF
	mov r5, r8
	strb r0, [r5]
_08196C62:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8196B98

	thumb_func_start sub_8196C70
sub_8196C70: @ 8196C70
	push {r4-r7,lr}
	adds r7, r1, 0
	ldr r2, =gUnknown_0860DEB8
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrh r0, [r1]
	bl sub_80B2250
	lsls r0, 16
	lsrs r0, 16
	ldr r5, =gTrainers
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	adds r0, r5, 0
	adds r0, 0x24
	adds r0, r4, r0
	ldr r6, [r0]
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r4, r5
	adds r1, r4, 0
	adds r1, 0x20
	ldrb r1, [r1]
	bl __modsi3
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r4]
	cmp r1, 0x1
	beq _08196CD4
	cmp r1, 0x1
	ble _08196CC2
	cmp r1, 0x2
	beq _08196CD0
	cmp r1, 0x3
	beq _08196CD4
_08196CC2:
	lsls r0, 3
	b _08196CD6
	.pool
_08196CD0:
	lsls r0, 3
	b _08196CD6
_08196CD4:
	lsls r0, 4
_08196CD6:
	adds r0, r6
	ldrh r1, [r0, 0x4]
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	adds r0, r7, 0
	bl StringCopy
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196C70

	thumb_func_start sub_8196CF4
sub_8196CF4: @ 8196CF4
	push {lr}
	adds r0, r1, 0
	ldr r2, =gUnknown_0860EFF4
	ldr r1, =gUnknown_0203CD88
	ldrh r1, [r1]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196CF4

	thumb_func_start sub_8196D14
sub_8196D14: @ 8196D14
	push {r4-r6,lr}
	adds r5, r1, 0
	movs r4, 0
	ldr r0, =gUnknown_0203CD88
	ldrh r1, [r0, 0x2]
	adds r6, r0, 0
	cmp r1, 0
	beq _08196D34
_08196D24:
	adds r0, r1, 0
	movs r1, 0xA
	bl __divsi3
	adds r1, r0, 0
	adds r4, 0x1
	cmp r1, 0
	bne _08196D24
_08196D34:
	ldrh r1, [r6, 0x2]
	lsls r3, r4, 24
	lsrs r3, 24
	adds r0, r5, 0
	movs r2, 0
	bl ConvertIntToDecimalStringN
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8196D14

	thumb_func_start sub_8196D4C
sub_8196D4C: @ 8196D4C
	push {r4,r5,lr}
	movs r4, 0
	ldr r5, =gUnknown_0860F010
	b _08196D5C
	.pool
_08196D58:
	adds r5, 0x2
	adds r4, 0x1
_08196D5C:
	cmp r4, 0x7
	bhi _08196D6C
	ldrh r0, [r5]
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	bne _08196D58
_08196D6C:
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8196D4C

	thumb_func_start sub_8196D74
sub_8196D74: @ 8196D74
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	adds r7, r0, 0
	bl sub_8196D4C
	cmp r0, 0x4
	ble _08196DF4
	bl RtcGetLocalDayCount
	adds r4, r0, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xA
	bl ReadUnalignedWord
	adds r6, r0, 0
	ldr r0, =0x0000ffff
	ands r6, r0
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00002e6a
	adds r0, r1
	ldrh r5, [r0]
	bl sub_8196748
	mov r9, r0
	movs r0, 0xD
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	movs r1, 0xA
	bl __divsi3
	mov r8, r0
	movs r0, 0x9
	bl GetGameStat
	eors r4, r5
	eors r5, r0
	adds r4, r5
	eors r4, r6
	adds r0, r4, 0
	mov r1, r8
	bl __modsi3
	cmp r0, r9
	bge _08196DF4
	bl sub_8196774
	cmp r0, r7
	bne _08196DF4
	movs r0, 0x1
	b _08196DF6
	.pool
_08196DF4:
	movs r0, 0
_08196DF6:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8196D74

	thumb_func_start sub_8196E04
sub_8196E04: @ 8196E04
	push {r4-r6,lr}
	adds r5, r1, 0
	lsls r0, 16
	lsrs r0, 16
	movs r4, 0
	cmp r0, 0x6
	bls _08196E14
	b _08196F7E
_08196E14:
	lsls r0, 2
	ldr r1, =_08196E24
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_08196E24:
	.4byte _08196E9C
	.4byte _08196E40
	.4byte _08196ED0
	.4byte _08196F38
	.4byte _08196E74
	.4byte _08196F04
	.4byte _08196F60
_08196E40:
	movs r3, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000d14
	adds r0, r1
_08196E4A:
	lsls r1, r3, 2
	adds r3, 0x1
	adds r1, r0
	movs r2, 0x1
_08196E52:
	ldrh r6, [r1]
	cmp r4, r6
	bcs _08196E5A
	ldrh r4, [r1]
_08196E5A:
	adds r1, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _08196E52
	cmp r3, 0x1
	ble _08196E4A
	movs r0, 0x3
	b _08196F7C
	.pool
_08196E74:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e08
	adds r0, r1
	movs r3, 0x1
_08196E7E:
	ldrh r6, [r0]
	cmp r4, r6
	bcs _08196E86
	ldrh r4, [r0]
_08196E86:
	adds r0, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _08196E7E
	movs r0, 0x4
	b _08196F7C
	.pool
_08196E9C:
	movs r3, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0xCF
	lsls r1, 4
	adds r0, r1
_08196EA8:
	lsls r1, r3, 2
	adds r3, 0x1
	adds r1, r0
	movs r2, 0x1
_08196EB0:
	ldrh r6, [r1]
	cmp r4, r6
	bcs _08196EB8
	ldrh r4, [r1]
_08196EB8:
	adds r1, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _08196EB0
	movs r2, 0x2
	cmp r3, 0x3
	ble _08196EA8
	str r2, [r5]
	b _08196F7E
	.pool
_08196ED0:
	movs r3, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0xDD
	lsls r1, 4
	adds r0, r1
_08196EDC:
	lsls r1, r3, 2
	adds r3, 0x1
	adds r1, r0
	movs r2, 0x1
_08196EE4:
	ldrh r6, [r1]
	cmp r4, r6
	bcs _08196EEC
	ldrh r4, [r1]
_08196EEC:
	adds r1, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _08196EE4
	movs r2, 0x2
	cmp r3, 0x1
	ble _08196EDC
	str r2, [r5]
	b _08196F7E
	.pool
_08196F04:
	movs r3, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000dea
	adds r0, r1
_08196F0E:
	lsls r1, r3, 2
	adds r3, 0x1
	adds r1, r0
	movs r2, 0x1
_08196F16:
	ldrh r6, [r1]
	cmp r4, r6
	bcs _08196F1E
	ldrh r4, [r1]
_08196F1E:
	adds r1, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _08196F16
	movs r2, 0x2
	cmp r3, 0x1
	ble _08196F0E
	str r2, [r5]
	b _08196F7E
	.pool
_08196F38:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000dde
	adds r0, r1
	movs r3, 0x1
_08196F42:
	ldrh r6, [r0]
	cmp r4, r6
	bcs _08196F4A
	ldrh r4, [r0]
_08196F4A:
	adds r0, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _08196F42
	movs r3, 0x2
	str r3, [r5]
	b _08196F7E
	.pool
_08196F60:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e1e
	adds r0, r1
	movs r3, 0x1
_08196F6A:
	ldrh r6, [r0]
	cmp r4, r6
	bcs _08196F72
	ldrh r4, [r0]
_08196F72:
	adds r0, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _08196F6A
	movs r0, 0x5
_08196F7C:
	str r0, [r5]
_08196F7E:
	adds r0, r4, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8196E04

	thumb_func_start sub_8196F90
sub_8196F90: @ 8196F90
	push {r4,lr}
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x9
	bhi _08196F9E
	movs r0, 0
	b _0819707A
_08196F9E:
	cmp r4, 0x13
	bhi _08196FA6
	movs r0, 0x1
	b _0819707A
_08196FA6:
	cmp r4, 0x1D
	bhi _08196FAE
	movs r0, 0x2
	b _0819707A
_08196FAE:
	cmp r4, 0x27
	bhi _08196FB6
	movs r0, 0x3
	b _0819707A
_08196FB6:
	cmp r4, 0x31
	bhi _08196FBE
	movs r0, 0x4
	b _0819707A
_08196FBE:
	cmp r4, 0x3B
	bhi _08196FC6
	movs r0, 0x5
	b _0819707A
_08196FC6:
	cmp r4, 0x45
	bhi _08196FCE
	movs r0, 0x6
	b _0819707A
_08196FCE:
	cmp r4, 0x4F
	bhi _08196FD6
	movs r0, 0x7
	b _0819707A
_08196FD6:
	cmp r4, 0x59
	bhi _08196FDE
	movs r0, 0x8
	b _0819707A
_08196FDE:
	cmp r4, 0x63
	bhi _08196FE6
	movs r0, 0x9
	b _0819707A
_08196FE6:
	cmp r4, 0x6D
	bhi _08196FEE
	movs r0, 0xA
	b _0819707A
_08196FEE:
	cmp r4, 0x77
	bhi _08196FF6
	movs r0, 0xB
	b _0819707A
_08196FF6:
	cmp r4, 0x81
	bhi _08196FFE
	movs r0, 0xC
	b _0819707A
_08196FFE:
	cmp r4, 0x8B
	bhi _08197006
	movs r0, 0xD
	b _0819707A
_08197006:
	cmp r4, 0x95
	bhi _0819700E
	movs r0, 0xE
	b _0819707A
_0819700E:
	cmp r4, 0x9F
	bhi _08197016
	movs r0, 0xF
	b _0819707A
_08197016:
	cmp r4, 0xA9
	bhi _0819701E
	movs r0, 0x10
	b _0819707A
_0819701E:
	cmp r4, 0xB3
	bhi _08197026
	movs r0, 0x11
	b _0819707A
_08197026:
	cmp r4, 0xBD
	bhi _0819702E
	movs r0, 0x12
	b _0819707A
_0819702E:
	cmp r4, 0xC7
	bls _08197078
	movs r0, 0xCD
	lsls r0, 1
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	bl pokedex_flag_operation
	lsls r0, 24
	cmp r0, 0
	beq _08197050
	subs r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
_08197050:
	ldr r0, =0x00000199
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	bl pokedex_flag_operation
	lsls r0, 24
	cmp r0, 0
	beq _0819706C
	subs r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
_0819706C:
	cmp r4, 0xC7
	bls _08197078
	movs r0, 0x14
	b _0819707A
	.pool
_08197078:
	movs r0, 0x13
_0819707A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8196F90

	thumb_func_start sub_8197080
sub_8197080: @ 8197080
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	movs r0, 0xFA
	lsls r0, 2
	bl Alloc
	adds r7, r0, 0
	cmp r7, 0
	bne _081970A2
	movs r0, 0xFF
	mov r1, r8
	strb r0, [r1]
	b _0819715C
_081970A2:
	movs r0, 0
	bl sub_80C0844
	lsls r0, 16
	lsrs r4, r0, 16
	movs r0, 0x1
	bl sub_80C0844
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, =gStringVar1
	mov r10, r0
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r1, =gStringVar2
	mov r9, r1
	mov r0, r9
	adds r1, r6, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r0, r6, 0
	bl sub_8196F90
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =gUnknown_082A5C9C
	adds r0, r7, 0
	bl StringCopy
	adds r5, r0, 0
	movs r6, 0xFB
	strb r6, [r5]
	adds r5, 0x1
	ldr r1, =gUnknown_082A5D2C
	adds r0, r5, 0
	bl StringCopy
	adds r5, r0, 0
	strb r6, [r5]
	adds r5, 0x1
	ldr r0, =gUnknown_0860F020
	lsls r4, 2
	adds r4, r0
	ldr r1, [r4]
	adds r0, r5, 0
	bl StringCopy
	mov r0, r8
	adds r1, r7, 0
	bl StringExpandPlaceholders
	adds r5, r0, 0
	bl IsNationalPokedexEnabled
	cmp r0, 0
	beq _08197156
	strb r6, [r5]
	adds r5, 0x1
	movs r0, 0
	bl pokedex_count
	lsls r0, 16
	lsrs r4, r0, 16
	movs r0, 0x1
	bl pokedex_count
	lsls r0, 16
	lsrs r6, r0, 16
	mov r0, r10
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	mov r0, r9
	adds r1, r6, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r1, =gUnknown_082A633D
	adds r0, r5, 0
	bl StringExpandPlaceholders
_08197156:
	adds r0, r7, 0
	bl Free
_0819715C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197080

	thumb_func_start sub_8197184
sub_8197184: @ 8197184
	push {r4,r5,lr}
	adds r4, r1, 0
	adds r5, r2, 0
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0
	bl GetWindowAttribute
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0860EA6C
	movs r2, 0x80
	lsls r2, 1
	lsls r4, 16
	lsrs r4, 16
	adds r3, r4, 0
	bl LoadBgTiles
	ldr r0, =gUnknown_0860EA4C
	lsls r5, 20
	lsrs r5, 16
	adds r1, r5, 0
	movs r2, 0x20
	bl LoadPalette
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197184

	thumb_func_start sub_81971C4
sub_81971C4: @ 81971C4
	push {lr}
	bl sub_819645C
	pop {r0}
	bx r0
	thumb_func_end sub_81971C4

	thumb_func_start sub_81971D0
sub_81971D0: @ 81971D0
	push {lr}
	ldr r0, =gUnknown_0860F098
	bl InitWindows
	ldr r0, =gUnknown_0203CD8C
	movs r1, 0xFF
	strb r1, [r0]
	ldr r0, =gUnknown_0203CD8D
	strb r1, [r0]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81971D0

	thumb_func_start sub_81971F4
sub_81971F4: @ 81971F4
	push {lr}
	bl FreeAllWindowBuffers
	pop {r0}
	bx r0
	thumb_func_end sub_81971F4

	thumb_func_start sub_8197200
sub_8197200: @ 8197200
	push {lr}
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	bl DeactivateAllTextPrinters
	bl sub_81973A4
	pop {r0}
	bx r0
	thumb_func_end sub_8197200

	thumb_func_start sub_8197224
sub_8197224: @ 8197224
	push {lr}
	bl RunTextPrinters
	movs r0, 0
	bl IsTextPrinterActive
	lsls r0, 16
	lsrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_8197224

	thumb_func_start AddTextPrinterParametrized
@ u16 AddTextPrinterParametrized(u8 windowId, u8 fontId, u8 *str, u8 speed, void ( *callback)(u16, struct TextPrinter *), u8 fgColor, u8 bgColor, u8 shadowColor)
AddTextPrinterParametrized: @ 8197238
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x10
	ldr r7, [sp, 0x28]
	ldr r4, [sp, 0x2C]
	mov r8, r4
	ldr r5, [sp, 0x30]
	ldr r6, [sp, 0x34]
	lsls r3, 24
	lsrs r3, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	str r2, [sp]
	mov r2, sp
	movs r4, 0
	strb r0, [r2, 0x4]
	mov r0, sp
	strb r1, [r0, 0x5]
	strb r4, [r0, 0x6]
	movs r1, 0x1
	strb r1, [r0, 0x7]
	strb r4, [r0, 0x8]
	strb r1, [r0, 0x9]
	strb r4, [r0, 0xA]
	strb r4, [r0, 0xB]
	mov r4, sp
	ldrb r2, [r4, 0xC]
	subs r1, 0x11
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r4, 0xC]
	mov r0, sp
	mov r2, r8
	lsls r2, 4
	movs r4, 0xF
	strb r2, [r0, 0xC]
	mov r2, sp
	ands r5, r4
	ldrb r0, [r2, 0xD]
	ands r1, r0
	orrs r1, r5
	strb r1, [r2, 0xD]
	mov r0, sp
	lsrs r6, 20
	ands r1, r4
	orrs r1, r6
	strb r1, [r0, 0xD]
	ldr r2, =gTextFlags
	ldrb r1, [r2]
	movs r0, 0x3
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	mov r0, sp
	adds r1, r3, 0
	adds r2, r7, 0
	bl AddTextPrinter
	lsls r0, 16
	lsrs r0, 16
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end AddTextPrinterParametrized

	thumb_func_start AddTextPrinterForMessage
@ void AddTextPrinterForMessage(u8 allowSkippingDelayWithButtonPress)
AddTextPrinterForMessage: @ 81972C4
	push {r4,r5,lr}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	movs r5, 0
	ldr r3, =gTextFlags
	movs r4, 0x1
	ands r0, r4
	ldrb r2, [r3]
	movs r1, 0x2
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	bl sav2_get_text_speed
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	ldr r2, =gStringVar4
	str r5, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x3
	str r0, [sp, 0xC]
	movs r0, 0
	movs r1, 0x1
	bl AddTextPrinterParametrized
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end AddTextPrinterForMessage

	thumb_func_start AddTextPrinterForMessage_2
@ void AddTextPrinterForMessage_2(u8 allowSkippingDelayWithButtonPress)
AddTextPrinterForMessage_2: @ 8197310
	push {r4,lr}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	ldr r3, =gTextFlags
	movs r4, 0x1
	ands r0, r4
	ldrb r2, [r3]
	movs r1, 0x2
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	bl sav2_get_text_speed
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	ldr r2, =gStringVar4
	movs r0, 0
	str r0, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x3
	str r0, [sp, 0xC]
	movs r0, 0
	movs r1, 0x1
	bl AddTextPrinterParametrized
	add sp, 0x10
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end AddTextPrinterForMessage_2

	thumb_func_start AddTextPrinterWithCustomSpeedForMessage
@ void AddTextPrinterWithCustomSpeedForMessage(u8 allowSkippingDelayWithButtonPress, u8 speed)
AddTextPrinterWithCustomSpeedForMessage: @ 819735C
	push {r4,r5,lr}
	sub sp, 0x10
	adds r3, r1, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r3, 24
	lsrs r3, 24
	ldr r4, =gTextFlags
	movs r5, 0x1
	ands r0, r5
	ldrb r2, [r4]
	movs r1, 0x2
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r2, =gStringVar4
	movs r0, 0
	str r0, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0x3
	str r0, [sp, 0xC]
	movs r0, 0
	movs r1, 0x1
	bl AddTextPrinterParametrized
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end AddTextPrinterWithCustomSpeedForMessage

	thumb_func_start sub_81973A4
sub_81973A4: @ 81973A4
	push {lr}
	movs r1, 0x80
	lsls r1, 2
	movs r0, 0
	movs r2, 0xF0
	bl copy_textbox_border_tile_patterns_to_vram
	movs r1, 0x85
	lsls r1, 2
	movs r0, 0
	movs r2, 0xE0
	bl sub_809882C
	pop {r0}
	bx r0
	thumb_func_end sub_81973A4

	thumb_func_start sub_81973C4
sub_81973C4: @ 81973C4
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =sub_81975F4
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl PutWindowTilemap
	cmp r4, 0x1
	bne _081973F2
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_081973F2:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81973C4

	thumb_func_start sub_81973FC
sub_81973FC: @ 81973FC
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =sub_81974A4
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl PutWindowTilemap
	cmp r4, 0x1
	bne _0819742A
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_0819742A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81973FC

	thumb_func_start sub_8197434
sub_8197434: @ 8197434
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =sub_8197804
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl ClearWindowTilemap
	cmp r4, 0x1
	bne _08197462
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_08197462:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197434

	thumb_func_start sub_819746C
sub_819746C: @ 819746C
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =sub_81977BC
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl ClearWindowTilemap
	cmp r4, 0x1
	bne _0819749A
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_0819749A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819746C

	thumb_func_start sub_81974A4
sub_81974A4: @ 81974A4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	adds r4, r2, 0
	ldr r2, [sp, 0x3C]
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r1, 24
	lsls r4, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x10]
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x14]
	movs r3, 0x85
	lsls r3, 2
	lsrs r0, r1, 24
	str r0, [sp, 0xC]
	movs r2, 0xFF
	lsls r2, 24
	adds r2, r1
	mov r8, r2
	lsrs r2, 24
	lsrs r0, r4, 24
	mov r9, r0
	movs r0, 0xFF
	lsls r0, 24
	adds r4, r0
	lsrs r4, 24
	movs r5, 0x1
	str r5, [sp]
	str r5, [sp, 0x4]
	movs r6, 0xE
	str r6, [sp, 0x8]
	adds r0, r7, 0
	adds r1, r3, 0
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000215
	ldr r2, [sp, 0x10]
	str r2, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	adds r0, r7, 0
	ldr r2, [sp, 0xC]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000216
	ldr r3, [sp, 0xC]
	ldr r2, [sp, 0x10]
	adds r0, r3, r2
	lsls r0, 24
	mov r10, r0
	lsrs r2, r0, 24
	str r5, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	adds r0, r7, 0
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	mov r5, r9
	ldr r0, [sp, 0x14]
	add r0, r9
	cmp r9, r0
	bge _08197578
	mov r3, r8
	str r3, [sp, 0x18]
	movs r6, 0x1
	movs r0, 0xE
	mov r8, r0
_0819753E:
	lsls r4, r5, 24
	lsrs r4, 24
	str r6, [sp]
	str r6, [sp, 0x4]
	mov r2, r8
	str r2, [sp, 0x8]
	adds r0, r7, 0
	ldr r1, =0x00000217
	ldr r3, [sp, 0x18]
	lsrs r2, r3, 24
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	str r6, [sp]
	str r6, [sp, 0x4]
	mov r0, r8
	str r0, [sp, 0x8]
	adds r0, r7, 0
	ldr r1, =0x00000219
	mov r3, r10
	lsrs r2, r3, 24
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	adds r5, 0x1
	ldr r0, [sp, 0x14]
	add r0, r9
	cmp r5, r0
	blt _0819753E
_08197578:
	ldr r1, =0x0000021a
	ldr r2, [sp, 0xC]
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	ldr r4, [sp, 0x14]
	add r4, r9
	lsls r4, 24
	lsrs r4, 24
	movs r5, 0x1
	str r5, [sp]
	str r5, [sp, 0x4]
	movs r6, 0xE
	str r6, [sp, 0x8]
	adds r0, r7, 0
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x0000021b
	ldr r0, [sp, 0x10]
	str r0, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	adds r0, r7, 0
	ldr r2, [sp, 0xC]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	movs r1, 0x87
	lsls r1, 2
	ldr r3, [sp, 0xC]
	ldr r0, [sp, 0x10]
	adds r2, r3, r0
	lsls r2, 24
	lsrs r2, 24
	str r5, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	adds r0, r7, 0
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81974A4

	thumb_func_start sub_81975F4
sub_81975F4: @ 81975F4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	adds r6, r0, 0
	adds r5, r2, 0
	mov r8, r3
	ldr r2, [sp, 0x44]
	lsls r6, 24
	lsrs r6, 24
	lsls r0, r1, 24
	lsls r5, 24
	mov r1, r8
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	lsls r1, r2, 24
	lsrs r1, 24
	str r1, [sp, 0x10]
	ldr r1, =0x00000201
	lsrs r2, r0, 24
	str r2, [sp, 0xC]
	movs r3, 0xFE
	lsls r3, 24
	adds r2, r0, r3
	lsrs r2, 24
	str r2, [sp, 0x14]
	lsrs r0, r5, 24
	mov r10, r0
	movs r2, 0xFF
	lsls r2, 24
	adds r5, r2
	lsrs r5, 24
	movs r4, 0x1
	str r4, [sp]
	str r4, [sp, 0x4]
	movs r3, 0xF
	mov r9, r3
	str r3, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0x14]
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000203
	ldr r0, [sp, 0xC]
	subs r0, 0x1
	lsls r2, r0, 24
	lsrs r2, 24
	str r2, [sp, 0x18]
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r0, r9
	str r0, [sp, 0x8]
	adds r0, r6, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	movs r1, 0x81
	lsls r1, 2
	mov r0, r8
	subs r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x1C]
	str r0, [sp]
	str r4, [sp, 0x4]
	mov r2, r9
	str r2, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0xC]
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000205
	ldr r7, [sp, 0xC]
	add r7, r8
	subs r0, r7, 0x1
	lsls r2, r0, 24
	lsrs r2, 24
	str r2, [sp, 0x20]
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r3, r9
	str r3, [sp, 0x8]
	adds r0, r6, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000206
	lsls r2, r7, 24
	lsrs r7, r2, 24
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r0, r9
	str r0, [sp, 0x8]
	adds r0, r6, 0
	adds r2, r7, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000207
	str r4, [sp]
	movs r5, 0x5
	str r5, [sp, 0x4]
	mov r2, r9
	str r2, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0x14]
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000209
	add r8, r4
	mov r3, r8
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp]
	str r5, [sp, 0x4]
	mov r0, r9
	str r0, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0x18]
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x0000020a
	str r4, [sp]
	str r5, [sp, 0x4]
	mov r2, r9
	str r2, [sp, 0x8]
	adds r0, r6, 0
	adds r2, r7, 0
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000a01
	ldr r3, [sp, 0x10]
	add r10, r3
	mov r0, r10
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r2, r9
	str r2, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0x14]
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000a03
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r3, r9
	str r3, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0x18]
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000a04
	ldr r0, [sp, 0x1C]
	str r0, [sp]
	str r4, [sp, 0x4]
	mov r2, r9
	str r2, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0xC]
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000a05
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r3, r9
	str r3, [sp, 0x8]
	adds r0, r6, 0
	ldr r2, [sp, 0x20]
	mov r3, r10
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000a06
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r0, r9
	str r0, [sp, 0x8]
	adds r0, r6, 0
	adds r2, r7, 0
	mov r3, r10
	bl FillBgTilemapBufferRect
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81975F4

	thumb_func_start sub_81977BC
sub_81977BC: @ 81977BC
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r1, 0
	adds r5, r2, 0
	ldr r1, [sp, 0x18]
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsls r5, 24
	lsls r3, 24
	lsls r1, 24
	movs r2, 0xFF
	lsls r2, 24
	adds r4, r2
	lsrs r4, 24
	adds r5, r2
	lsrs r5, 24
	movs r2, 0x80
	lsls r2, 18
	adds r3, r2
	lsrs r3, 24
	str r3, [sp]
	adds r1, r2
	lsrs r1, 24
	str r1, [sp, 0x4]
	movs r1, 0xE
	str r1, [sp, 0x8]
	movs r1, 0
	adds r2, r4, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_81977BC

	thumb_func_start sub_8197804
sub_8197804: @ 8197804
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r1, 0
	adds r5, r2, 0
	ldr r1, [sp, 0x18]
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsls r5, 24
	lsls r3, 24
	lsls r1, 24
	movs r2, 0xFD
	lsls r2, 24
	adds r4, r2
	lsrs r4, 24
	movs r2, 0xFF
	lsls r2, 24
	adds r5, r2
	lsrs r5, 24
	movs r2, 0xC0
	lsls r2, 19
	adds r3, r2
	lsrs r3, 24
	str r3, [sp]
	movs r2, 0x80
	lsls r2, 18
	adds r1, r2
	lsrs r1, 24
	str r1, [sp, 0x4]
	movs r1, 0xE
	str r1, [sp, 0x8]
	movs r1, 0
	adds r2, r4, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_8197804

	thumb_func_start SetStandardWindowBorderStyle
@ void SetStandardWindowBorderStyle(u8 windowId, bool copyToVram)
SetStandardWindowBorderStyle: @ 8197854
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	movs r2, 0x85
	lsls r2, 2
	movs r3, 0xE
	bl SetWindowBorderStyle
	pop {r0}
	bx r0
	thumb_func_end SetStandardWindowBorderStyle

	thumb_func_start sub_819786C
sub_819786C: @ 819786C
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	movs r6, 0x80
	lsls r6, 2
	adds r0, r4, 0
	adds r1, r6, 0
	movs r2, 0xF0
	bl copy_textbox_border_tile_patterns_to_vram
	adds r0, r4, 0
	adds r1, r5, 0
	adds r2, r6, 0
	movs r3, 0xF
	bl sub_8197B1C
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_819786C

	thumb_func_start sub_819789C
sub_819789C: @ 819789C
	push {lr}
	ldr r0, =gUnknown_0860F074
	movs r1, 0xE0
	movs r2, 0x14
	bl LoadPalette
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819789C

	thumb_func_start sub_81978B0
sub_81978B0: @ 81978B0
	push {lr}
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	ldr r0, =gUnknown_0860F074
	movs r2, 0x14
	bl LoadPalette
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81978B0

	thumb_func_start sub_81978C8
sub_81978C8: @ 81978C8
	ldr r0, =gUnknown_0860F074
	bx lr
	.pool
	thumb_func_end sub_81978C8

	thumb_func_start sub_81978D0
sub_81978D0: @ 81978D0
	push {lr}
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0xF
	bls _081978DC
	movs r1, 0
_081978DC:
	ldr r0, =gUnknown_0860F074
	lsls r1, 1
	adds r1, r0
	ldrh r0, [r1]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81978D0

	thumb_func_start DisplayItemMessageOnField
@ void DisplayItemMessageOnField(u8 taskId, u8 *str, void ( *callback)(u8 taskId))
DisplayItemMessageOnField: @ 81978EC
	push {r4-r6,lr}
	sub sp, 0x10
	adds r4, r0, 0
	adds r5, r1, 0
	adds r6, r2, 0
	lsls r4, 24
	lsrs r4, 24
	bl sub_81973A4
	bl sav2_get_text_speed
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0x80
	lsls r2, 2
	movs r1, 0x1
	str r1, [sp]
	str r0, [sp, 0x4]
	str r5, [sp, 0x8]
	str r6, [sp, 0xC]
	adds r0, r4, 0
	movs r1, 0
	movs r3, 0xF
	bl DisplayMessageAndContinueTask
	movs r0, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0x10
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end DisplayItemMessageOnField

	thumb_func_start sub_8197930
sub_8197930: @ 8197930
	push {lr}
	ldr r0, =gUnknown_0860F0A8
	movs r1, 0x85
	lsls r1, 2
	movs r2, 0xE
	movs r3, 0
	bl CreateYesNoMenu
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197930

	thumb_func_start sub_8197948
sub_8197948: @ 8197948
	push {lr}
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	ldr r0, =gUnknown_0860F0A8
	movs r1, 0x85
	lsls r1, 2
	movs r2, 0xE
	bl CreateYesNoMenu
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197948

	thumb_func_start sub_8197964
sub_8197964: @ 8197964
	push {lr}
	ldr r0, =gTextFlags
	ldrb r1, [r0]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _08197988
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r0, [r0, 0x14]
	lsls r0, 29
	lsrs r0, 29
	b _0819798A
	.pool
_08197988:
	movs r0, 0x1
_0819798A:
	pop {r1}
	bx r1
	thumb_func_end sub_8197964

	thumb_func_start sav2_get_text_speed
sav2_get_text_speed: @ 8197990
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldrb r1, [r2, 0x14]
	lsls r0, r1, 29
	lsrs r0, 29
	cmp r0, 0x2
	bls _081979AC
	movs r0, 0x8
	negs r0, r0
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x14]
_081979AC:
	bl sub_8197964
	ldr r1, =gUnknown_0860F094
	adds r0, r1
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sav2_get_text_speed

	thumb_func_start sub_81979C4
sub_81979C4: @ 81979C4
	push {r4,lr}
	sub sp, 0xC
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r4, =gUnknown_0203CD8C
	ldrb r0, [r4]
	cmp r0, 0xFF
	bne _081979F6
	lsls r0, r1, 25
	movs r1, 0x80
	lsls r1, 18
	adds r0, r1
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0xF
	str r0, [sp, 0x4]
	ldr r0, =0x00000139
	str r0, [sp, 0x8]
	movs r0, 0
	movs r1, 0x16
	movs r2, 0x1
	movs r3, 0x7
	bl sub_8198AA4
	strb r0, [r4]
_081979F6:
	ldrb r0, [r4]
	add sp, 0xC
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81979C4

	thumb_func_start GetStartMenuWindowId
GetStartMenuWindowId: @ 8197A08
	ldr r0, =gUnknown_0203CD8C
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end GetStartMenuWindowId

	thumb_func_start remove_start_menu_window_maybe
remove_start_menu_window_maybe: @ 8197A14
	push {r4,lr}
	ldr r4, =gUnknown_0203CD8C
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq _08197A26
	bl RemoveWindow
	movs r0, 0xFF
	strb r0, [r4]
_08197A26:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end remove_start_menu_window_maybe

	thumb_func_start sub_8197A30
sub_8197A30: @ 8197A30
	movs r0, 0x80
	lsls r0, 2
	bx lr
	thumb_func_end sub_8197A30

	thumb_func_start sub_8197A38
sub_8197A38: @ 8197A38
	movs r0, 0x85
	lsls r0, 2
	bx lr
	thumb_func_end sub_8197A38

	thumb_func_start AddMapNamePopUpWindow
AddMapNamePopUpWindow: @ 8197A40
	push {r4,lr}
	sub sp, 0xC
	ldr r4, =gUnknown_0203CD8D
	ldrb r0, [r4]
	cmp r0, 0xFF
	bne _08197A66
	movs r0, 0x3
	str r0, [sp]
	movs r0, 0xE
	str r0, [sp, 0x4]
	adds r0, 0xF9
	str r0, [sp, 0x8]
	movs r0, 0
	movs r1, 0x1
	movs r2, 0x1
	movs r3, 0xA
	bl sub_8198AA4
	strb r0, [r4]
_08197A66:
	ldrb r0, [r4]
	add sp, 0xC
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end AddMapNamePopUpWindow

	thumb_func_start GetMapNamePopUpWindowId
GetMapNamePopUpWindowId: @ 8197A74
	ldr r0, =gUnknown_0203CD8D
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end GetMapNamePopUpWindowId

	thumb_func_start RemoveMapNamePopUpWindow
RemoveMapNamePopUpWindow: @ 8197A80
	push {r4,lr}
	ldr r4, =gUnknown_0203CD8D
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq _08197A92
	bl RemoveWindow
	movs r0, 0xFF
	strb r0, [r4]
_08197A92:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end RemoveMapNamePopUpWindow

	thumb_func_start AddTextPrinterWithCallbackForMessage
@ void AddTextPrinterWithCallbackForMessage(u8 allowSkippingDelayWithButtonPress, void ( *callback)(u16, struct TextPrinter *))
AddTextPrinterWithCallbackForMessage: @ 8197A9C
	push {r4,r5,lr}
	sub sp, 0x10
	adds r5, r1, 0
	lsls r0, 24
	lsrs r0, 24
	ldr r3, =gTextFlags
	movs r4, 0x1
	ands r0, r4
	ldrb r2, [r3]
	movs r1, 0x2
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	bl sav2_get_text_speed
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	ldr r2, =gStringVar4
	str r5, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x3
	str r0, [sp, 0xC]
	movs r0, 0
	movs r1, 0x1
	bl AddTextPrinterParametrized
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end AddTextPrinterWithCallbackForMessage

	thumb_func_start sub_8197AE8
sub_8197AE8: @ 8197AE8
	push {r4,lr}
	sub sp, 0xC
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x20
	str r0, [sp]
	str r0, [sp, 0x4]
	movs r0, 0x11
	str r0, [sp, 0x8]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl FillBgTilemapBufferRect
	cmp r4, 0x1
	bne _08197B12
	movs r0, 0
	bl CopyBgTilemapBufferToVram
_08197B12:
	add sp, 0xC
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8197AE8

	thumb_func_start sub_8197B1C
sub_8197B1C: @ 8197B1C
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_0203CD9C
	strh r2, [r0]
	ldr r0, =gUnknown_0203CD9E
	strb r3, [r0]
	ldr r1, =sub_8197BB4
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl PutWindowTilemap
	cmp r4, 0x1
	bne _08197B52
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_08197B52:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197B1C

	thumb_func_start sub_8197B64
sub_8197B64: @ 8197B64
	push {r4-r6,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_0203CD9C
	strh r2, [r0]
	ldr r5, =gUnknown_0203CD9E
	adds r0, r6, 0
	movs r1, 0x5
	bl GetWindowAttribute
	strb r0, [r5]
	ldr r1, =sub_8197BB4
	adds r0, r6, 0
	bl CallWindowFunction
	adds r0, r6, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r6, 0
	bl PutWindowTilemap
	cmp r4, 0x1
	bne _08197BA2
	adds r0, r6, 0
	movs r1, 0x3
	bl CopyWindowToVram
_08197BA2:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197B64

	thumb_func_start sub_8197BB4
sub_8197BB4: @ 8197BB4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	mov r8, r0
	adds r5, r2, 0
	adds r6, r3, 0
	ldr r2, [sp, 0x44]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r0, r1, 24
	lsls r5, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r1, r2, 24
	lsrs r1, 24
	str r1, [sp, 0x10]
	ldr r2, =gUnknown_0203CD9C
	ldrh r1, [r2]
	adds r1, 0x1
	lsls r1, 16
	lsrs r1, 16
	lsrs r3, r0, 24
	str r3, [sp, 0xC]
	movs r3, 0xFE
	lsls r3, 24
	adds r2, r0, r3
	lsrs r2, 24
	str r2, [sp, 0x14]
	lsrs r0, r5, 24
	mov r9, r0
	movs r2, 0xFF
	lsls r2, 24
	adds r5, r2
	lsrs r5, 24
	movs r4, 0x1
	str r4, [sp]
	str r4, [sp, 0x4]
	ldr r3, =gUnknown_0203CD9E
	mov r10, r3
	ldrb r0, [r3]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x14]
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r0, =gUnknown_0203CD9C
	ldrh r1, [r0]
	adds r1, 0x3
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0xC]
	subs r0, 0x1
	lsls r2, r0, 24
	lsrs r2, 24
	str r2, [sp, 0x18]
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x18]
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r3, =gUnknown_0203CD9C
	ldrh r1, [r3]
	adds r1, 0x4
	lsls r1, 16
	lsrs r1, 16
	subs r0, r6, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x1C]
	str r0, [sp]
	str r4, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0xC]
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r3, =gUnknown_0203CD9C
	ldrh r1, [r3]
	adds r1, 0x5
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0xC]
	adds r7, r0, r6
	subs r0, r7, 0x1
	lsls r2, r0, 24
	lsrs r2, 24
	str r2, [sp, 0x20]
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x20]
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r3, =gUnknown_0203CD9C
	ldrh r1, [r3]
	adds r1, 0x6
	lsls r1, 16
	lsrs r1, 16
	lsls r2, r7, 24
	lsrs r7, r2, 24
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	adds r2, r7, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	ldr r3, =gUnknown_0203CD9C
	ldrh r1, [r3]
	adds r1, 0x7
	lsls r1, 16
	lsrs r1, 16
	str r4, [sp]
	movs r5, 0x5
	str r5, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x14]
	mov r3, r9
	bl FillBgTilemapBufferRect
	ldr r3, =gUnknown_0203CD9C
	ldrh r1, [r3]
	adds r1, 0x9
	lsls r1, 16
	lsrs r1, 16
	adds r6, 0x1
	lsls r6, 24
	lsrs r6, 24
	str r6, [sp]
	str r5, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x18]
	mov r3, r9
	bl FillBgTilemapBufferRect
	ldr r3, =gUnknown_0203CD9C
	ldrh r1, [r3]
	adds r1, 0xA
	lsls r1, 16
	lsrs r1, 16
	str r4, [sp]
	str r5, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	adds r2, r7, 0
	mov r3, r9
	bl FillBgTilemapBufferRect
	ldr r3, =0x00000801
	adds r1, r3, 0
	ldr r0, =gUnknown_0203CD9C
	ldrh r0, [r0]
	adds r1, r0
	lsls r1, 16
	lsrs r1, 16
	ldr r2, [sp, 0x10]
	add r9, r2
	mov r3, r9
	lsls r3, 24
	lsrs r3, 24
	mov r9, r3
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x14]
	bl FillBgTilemapBufferRect
	ldr r3, =0x00000803
	adds r1, r3, 0
	ldr r0, =gUnknown_0203CD9C
	ldrh r0, [r0]
	adds r1, r0
	lsls r1, 16
	lsrs r1, 16
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r2, r10
	ldrb r0, [r2]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x18]
	mov r3, r9
	bl FillBgTilemapBufferRect
	ldr r3, =0x00000804
	adds r1, r3, 0
	ldr r0, =gUnknown_0203CD9C
	ldrh r0, [r0]
	adds r1, r0
	lsls r1, 16
	lsrs r1, 16
	ldr r2, [sp, 0x1C]
	str r2, [sp]
	str r4, [sp, 0x4]
	mov r3, r10
	ldrb r0, [r3]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0xC]
	mov r3, r9
	bl FillBgTilemapBufferRect
	ldr r0, =0x00000805
	adds r1, r0, 0
	ldr r2, =gUnknown_0203CD9C
	ldrh r2, [r2]
	adds r1, r2
	lsls r1, 16
	lsrs r1, 16
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r3, r10
	ldrb r0, [r3]
	str r0, [sp, 0x8]
	mov r0, r8
	ldr r2, [sp, 0x20]
	mov r3, r9
	bl FillBgTilemapBufferRect
	ldr r0, =0x00000806
	adds r1, r0, 0
	ldr r2, =gUnknown_0203CD9C
	ldrh r2, [r2]
	adds r1, r2
	lsls r1, 16
	lsrs r1, 16
	str r4, [sp]
	str r4, [sp, 0x4]
	mov r3, r10
	ldrb r0, [r3]
	str r0, [sp, 0x8]
	mov r0, r8
	adds r2, r7, 0
	mov r3, r9
	bl FillBgTilemapBufferRect
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197BB4

	thumb_func_start sub_8197DF8
sub_8197DF8: @ 8197DF8
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =sub_8197E30
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl ClearWindowTilemap
	cmp r4, 0x1
	bne _08197E26
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_08197E26:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197DF8

	thumb_func_start sub_8197E30
sub_8197E30: @ 8197E30
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r1, 0
	adds r5, r2, 0
	ldr r1, [sp, 0x18]
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsls r5, 24
	lsls r3, 24
	lsls r1, 24
	movs r2, 0xFD
	lsls r2, 24
	adds r4, r2
	lsrs r4, 24
	movs r2, 0xFF
	lsls r2, 24
	adds r5, r2
	lsrs r5, 24
	movs r2, 0xC0
	lsls r2, 19
	adds r3, r2
	lsrs r3, 24
	str r3, [sp]
	movs r2, 0x80
	lsls r2, 18
	adds r1, r2
	lsrs r1, 24
	str r1, [sp, 0x4]
	movs r1, 0
	str r1, [sp, 0x8]
	adds r2, r4, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_8197E30

	thumb_func_start SetWindowBorderStyle
@ void SetWindowBorderStyle(u8 windowId, bool copyToVram, s16 tileStart, s8 palette)
SetWindowBorderStyle: @ 8197E80
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_0203CD9C
	strh r2, [r0]
	ldr r0, =gUnknown_0203CD9E
	strb r3, [r0]
	ldr r1, =DrawWindowBorder
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl PutWindowTilemap
	cmp r4, 0x1
	bne _08197EB6
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_08197EB6:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end SetWindowBorderStyle

	thumb_func_start sub_8197EC8
sub_8197EC8: @ 8197EC8
	push {r4-r6,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_0203CD9C
	strh r2, [r0]
	ldr r5, =gUnknown_0203CD9E
	adds r0, r6, 0
	movs r1, 0x5
	bl GetWindowAttribute
	strb r0, [r5]
	ldr r1, =DrawWindowBorder
	adds r0, r6, 0
	bl CallWindowFunction
	adds r0, r6, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r6, 0
	bl PutWindowTilemap
	cmp r4, 0x1
	bne _08197F06
	adds r0, r6, 0
	movs r1, 0x3
	bl CopyWindowToVram
_08197F06:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8197EC8

	thumb_func_start DrawWindowBorder
DrawWindowBorder: @ 8197F18
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	mov r9, r0
	adds r6, r1, 0
	adds r4, r2, 0
	ldr r0, [sp, 0x38]
	mov r1, r9
	lsls r1, 24
	lsrs r1, 24
	mov r9, r1
	lsls r6, 24
	lsls r4, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x10]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x14]
	ldr r2, =gUnknown_0203CD9C
	ldrh r1, [r2]
	lsrs r0, r6, 24
	str r0, [sp, 0xC]
	movs r2, 0xFF
	lsls r2, 24
	adds r6, r2
	lsrs r6, 24
	lsrs r0, r4, 24
	mov r8, r0
	adds r4, r2
	lsrs r4, 24
	movs r5, 0x1
	str r5, [sp]
	str r5, [sp, 0x4]
	ldr r7, =gUnknown_0203CD9E
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	adds r2, r6, 0
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	ldr r2, =gUnknown_0203CD9C
	ldrh r1, [r2]
	adds r1, 0x1
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x10]
	str r0, [sp]
	str r5, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	ldr r2, [sp, 0xC]
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	ldr r2, =gUnknown_0203CD9C
	ldrh r1, [r2]
	adds r1, 0x2
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0xC]
	ldr r2, [sp, 0x10]
	adds r0, r2
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	str r5, [sp]
	str r5, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	mov r2, r10
	adds r3, r4, 0
	bl FillBgTilemapBufferRect
	ldr r0, =gUnknown_0203CD9C
	ldrh r1, [r0]
	adds r1, 0x3
	lsls r1, 16
	lsrs r1, 16
	str r5, [sp]
	ldr r2, [sp, 0x14]
	str r2, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	adds r2, r6, 0
	mov r3, r8
	bl FillBgTilemapBufferRect
	ldr r0, =gUnknown_0203CD9C
	ldrh r1, [r0]
	adds r1, 0x5
	lsls r1, 16
	lsrs r1, 16
	str r5, [sp]
	ldr r2, [sp, 0x14]
	str r2, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	mov r2, r10
	mov r3, r8
	bl FillBgTilemapBufferRect
	ldr r0, =gUnknown_0203CD9C
	ldrh r1, [r0]
	adds r1, 0x6
	lsls r1, 16
	lsrs r1, 16
	ldr r2, [sp, 0x14]
	add r8, r2
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	str r5, [sp]
	str r5, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	adds r2, r6, 0
	mov r3, r8
	bl FillBgTilemapBufferRect
	ldr r2, =gUnknown_0203CD9C
	ldrh r1, [r2]
	adds r1, 0x7
	lsls r1, 16
	lsrs r1, 16
	ldr r0, [sp, 0x10]
	str r0, [sp]
	str r5, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	ldr r2, [sp, 0xC]
	mov r3, r8
	bl FillBgTilemapBufferRect
	ldr r2, =gUnknown_0203CD9C
	ldrh r1, [r2]
	adds r1, 0x8
	lsls r1, 16
	lsrs r1, 16
	str r5, [sp]
	str r5, [sp, 0x4]
	ldrb r0, [r7]
	str r0, [sp, 0x8]
	mov r0, r9
	mov r2, r10
	mov r3, r8
	bl FillBgTilemapBufferRect
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end DrawWindowBorder

	thumb_func_start sub_8198070
sub_8198070: @ 8198070
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =sub_81980A8
	adds r0, r5, 0
	bl CallWindowFunction
	adds r0, r5, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	adds r0, r5, 0
	bl ClearWindowTilemap
	cmp r4, 0x1
	bne _0819809E
	adds r0, r5, 0
	movs r1, 0x3
	bl CopyWindowToVram
_0819809E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8198070

	thumb_func_start sub_81980A8
sub_81980A8: @ 81980A8
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r1, 0
	adds r5, r2, 0
	ldr r1, [sp, 0x18]
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsls r5, 24
	lsls r3, 24
	lsls r1, 24
	movs r2, 0xFF
	lsls r2, 24
	adds r4, r2
	lsrs r4, 24
	adds r5, r2
	lsrs r5, 24
	movs r2, 0x80
	lsls r2, 18
	adds r3, r2
	lsrs r3, 24
	str r3, [sp]
	adds r1, r2
	lsrs r1, 24
	str r1, [sp, 0x4]
	movs r1, 0
	str r1, [sp, 0x8]
	adds r2, r4, 0
	adds r3, r5, 0
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_81980A8

	thumb_func_start sub_81980F0
sub_81980F0: @ 81980F0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	ldr r4, [sp, 0x20]
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r5, r3, 24
	lsls r4, 16
	lsrs r4, 16
	mov r0, sp
	movs r1, 0
	movs r2, 0x8
	bl memset
	cmp r6, 0x3
	bls _08198126
	movs r1, 0
	mov r0, sp
	strb r1, [r0]
	b _0819812A
_08198126:
	mov r0, sp
	strb r6, [r0]
_0819812A:
	mov r1, sp
	mov r0, r8
	strb r0, [r1, 0x2]
	movs r0, 0x2
	strb r0, [r1, 0x4]
	movs r0, 0x1E
	subs r0, r7
	strb r0, [r1, 0x1]
	strb r7, [r1, 0x3]
	strb r5, [r1, 0x5]
	strh r4, [r1, 0x6]
	ldr r4, =gUnknown_0203CDA0
	mov r0, sp
	bl AddWindow
	strb r0, [r4]
	cmp r5, 0xF
	bls _08198158
	movs r5, 0xF0
	b _0819815C
	.pool
_08198158:
	lsls r0, r5, 28
	lsrs r5, r0, 24
_0819815C:
	ldr r0, =gUnknown_0860F0B0
	adds r1, r5, 0
	movs r2, 0x20
	bl LoadPalette
	ldr r0, =gUnknown_0203CDA0
	ldrb r0, [r0]
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81980F0

	thumb_func_start sub_8198180
sub_8198180: @ 8198180
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	adds r6, r0, 0
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	ldr r5, =gUnknown_0203CDA0
	ldrb r0, [r5]
	cmp r0, 0xFF
	beq _081981EE
	bl PutWindowTilemap
	ldrb r0, [r5]
	movs r1, 0xFF
	bl FillWindowPixelBuffer
	movs r0, 0
	adds r1, r6, 0
	movs r2, 0
	bl GetStringWidth
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	ldrb r0, [r5]
	movs r1, 0x1
	bl GetWindowAttribute
	movs r2, 0xEC
	subs r2, r7
	lsls r0, 3
	subs r2, r0
	subs r2, r4
	lsls r2, 24
	lsrs r2, 24
	ldrb r0, [r5]
	ldr r1, =gUnknown_0860F0D0
	str r1, [sp]
	movs r1, 0
	str r1, [sp, 0x4]
	str r6, [sp, 0x8]
	movs r3, 0x1
	bl box_print
	mov r0, r8
	cmp r0, 0
	beq _081981EE
	ldrb r0, [r5]
	movs r1, 0x3
	bl CopyWindowToVram
_081981EE:
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8198180

	thumb_func_start sub_8198204
sub_8198204: @ 8198204
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	mov r10, r0
	adds r6, r1, 0
	ldr r0, [sp, 0x38]
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r4, 0
	ldr r0, =gUnknown_0203CDA0
	ldrb r1, [r0]
	adds r7, r0, 0
	cmp r1, 0xFF
	beq _081982C8
	cmp r2, 0
	beq _08198244
	add r0, sp, 0x14
	strb r4, [r0]
	adds r1, r0, 0
	b _0819824A
	.pool
_08198244:
	add r1, sp, 0x14
	movs r0, 0xF
	strb r0, [r1]
_0819824A:
	movs r0, 0x1
	strb r0, [r1, 0x1]
	movs r0, 0x2
	strb r0, [r1, 0x2]
	adds r5, r7, 0
	ldrb r0, [r5]
	bl PutWindowTilemap
	ldrb r0, [r5]
	movs r1, 0xFF
	bl FillWindowPixelBuffer
	cmp r6, 0
	beq _0819829E
	movs r0, 0
	adds r1, r6, 0
	movs r2, 0
	bl GetStringWidth
	lsls r0, 16
	lsrs r4, r0, 16
	ldrb r0, [r5]
	movs r1, 0x1
	bl GetWindowAttribute
	movs r2, 0xEC
	mov r1, r8
	subs r2, r1
	lsls r0, 3
	subs r2, r0
	subs r2, r4
	lsls r2, 24
	lsrs r2, 24
	ldrb r0, [r5]
	add r1, sp, 0x14
	str r1, [sp]
	movs r1, 0
	str r1, [sp, 0x4]
	str r6, [sp, 0x8]
	movs r3, 0x1
	bl box_print
_0819829E:
	ldrb r0, [r7]
	movs r1, 0
	str r1, [sp]
	str r1, [sp, 0x4]
	add r2, sp, 0x14
	str r2, [sp, 0x8]
	str r1, [sp, 0xC]
	mov r1, r10
	str r1, [sp, 0x10]
	movs r1, 0x1
	movs r2, 0x4
	movs r3, 0x1
	bl AddTextPrinterParametrized2
	mov r2, r9
	cmp r2, 0
	beq _081982C8
	ldrb r0, [r7]
	movs r1, 0x3
	bl CopyWindowToVram
_081982C8:
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8198204

	thumb_func_start sub_81982D8
sub_81982D8: @ 81982D8
	push {lr}
	ldr r1, =gUnknown_0203CDA0
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _081982E8
	movs r1, 0x3
	bl CopyWindowToVram
_081982E8:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81982D8

	thumb_func_start sub_81982F0
sub_81982F0: @ 81982F0
	push {r4,lr}
	ldr r4, =gUnknown_0203CDA0
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq _08198308
	movs r1, 0xFF
	bl FillWindowPixelBuffer
	ldrb r0, [r4]
	movs r1, 0x3
	bl CopyWindowToVram
_08198308:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81982F0

	thumb_func_start sub_8198314
sub_8198314: @ 8198314
	push {r4,lr}
	ldr r4, =gUnknown_0203CDA0
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq _0819833C
	movs r1, 0
	bl FillWindowPixelBuffer
	ldrb r0, [r4]
	bl ClearWindowTilemap
	ldrb r0, [r4]
	movs r1, 0x3
	bl CopyWindowToVram
	ldrb r0, [r4]
	bl RemoveWindow
	movs r0, 0xFF
	strb r0, [r4]
_0819833C:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8198314

	thumb_func_start sub_8198348
sub_8198348: @ 8198348
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, 0x18]
	mov r8, r4
	ldr r4, [sp, 0x1C]
	ldr r5, [sp, 0x20]
	ldr r6, [sp, 0x24]
	mov r12, r6
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r7, r5, 24
	ldr r5, =gUnknown_0203CD90
	movs r6, 0
	strb r2, [r5]
	strb r3, [r5, 0x1]
	strb r6, [r5, 0x3]
	subs r4, 0x1
	strb r4, [r5, 0x4]
	strb r0, [r5, 0x5]
	strb r1, [r5, 0x6]
	mov r0, r8
	strb r0, [r5, 0x8]
	mov r4, r12
	strb r4, [r5, 0xB]
	cmp r7, 0
	blt _08198388
	movs r0, 0x4
	ldrsb r0, [r5, r0]
	cmp r7, r0
	ble _08198390
_08198388:
	strb r6, [r5, 0x2]
	b _08198392
	.pool
_08198390:
	strb r7, [r5, 0x2]
_08198392:
	movs r0, 0
	bl MoveMenuCursor
	ldr r0, =gUnknown_0203CD90
	ldrb r0, [r0, 0x2]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8198348

	thumb_func_start sub_81983AC
sub_81983AC: @ 81983AC
	push {r4-r6,lr}
	sub sp, 0x10
	ldr r4, [sp, 0x20]
	ldr r5, [sp, 0x24]
	ldr r6, [sp, 0x28]
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	str r4, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	movs r4, 0
	str r4, [sp, 0xC]
	bl sub_8198348
	lsls r0, 24
	lsrs r0, 24
	add sp, 0x10
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_81983AC

	thumb_func_start sub_81983EC
sub_81983EC: @ 81983EC
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x14
	mov r8, r0
	adds r6, r1, 0
	ldr r4, [sp, 0x28]
	ldr r5, [sp, 0x2C]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r6, 24
	lsrs r6, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	adds r0, r6, 0
	movs r1, 0x1
	str r2, [sp, 0xC]
	str r3, [sp, 0x10]
	bl GetMenuCursorDimensionByFont
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	mov r0, r8
	adds r1, r6, 0
	ldr r2, [sp, 0xC]
	ldr r3, [sp, 0x10]
	bl sub_81983AC
	lsls r0, 24
	lsrs r0, 24
	add sp, 0x14
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_81983EC

	thumb_func_start RedrawMenuCursor
@ void RedrawMenuCursor(s8 oldPos, s8 newPos)
RedrawMenuCursor: @ 8198448
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0xC
	adds r6, r0, 0
	mov r8, r1
	lsls r6, 24
	lsrs r6, 24
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r5, =gUnknown_0203CD90
	ldrb r0, [r5, 0x6]
	movs r1, 0
	bl GetMenuCursorDimensionByFont
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldrb r0, [r5, 0x6]
	movs r1, 0x1
	bl GetMenuCursorDimensionByFont
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r5, 0x5]
	mov r9, r1
	ldrb r2, [r5]
	ldrb r1, [r5, 0x8]
	adds r3, r1, 0
	muls r3, r6
	ldrb r6, [r5, 0x1]
	adds r3, r6
	lsls r3, 16
	lsrs r3, 16
	str r4, [sp]
	str r0, [sp, 0x4]
	mov r0, r9
	movs r1, 0x11
	bl FillWindowPixelRect
	ldrb r0, [r5, 0x5]
	ldrb r1, [r5, 0x6]
	ldr r2, =gUnknown_085EE498
	ldrb r3, [r5]
	ldrb r4, [r5, 0x8]
	mov r6, r8
	muls r6, r4
	adds r4, r6, 0
	ldrb r5, [r5, 0x1]
	adds r4, r5
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	str r4, [sp, 0x8]
	bl PrintTextOnWindow
	add sp, 0xC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end RedrawMenuCursor

	thumb_func_start MoveMenuCursor
@ s8 MoveMenuCursor(s8 cursorDelta)
MoveMenuCursor: @ 81984D8
	push {r4,r5,lr}
	ldr r1, =gUnknown_0203CD90
	ldrb r5, [r1, 0x2]
	movs r2, 0x2
	ldrsb r2, [r1, r2]
	lsls r0, 24
	asrs r3, r0, 24
	adds r2, r3
	movs r0, 0x3
	ldrsb r0, [r1, r0]
	adds r4, r1, 0
	cmp r2, r0
	bge _081984FC
	ldrb r0, [r4, 0x4]
	b _0819850A
	.pool
_081984FC:
	movs r0, 0x4
	ldrsb r0, [r4, r0]
	cmp r2, r0
	ble _08198508
	ldrb r0, [r4, 0x3]
	b _0819850A
_08198508:
	adds r0, r3, r5
_0819850A:
	strb r0, [r4, 0x2]
	ldrb r1, [r4, 0x2]
	adds r0, r5, 0
	bl RedrawMenuCursor
	ldrb r0, [r4, 0x2]
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end MoveMenuCursor

	thumb_func_start MoveMenuCursorNoWrapAround
@ s8 MoveMenuCursorNoWrapAround(s8 cursorDelta)
MoveMenuCursorNoWrapAround: @ 819851C
	push {r4,r5,lr}
	ldr r1, =gUnknown_0203CD90
	ldrb r5, [r1, 0x2]
	movs r2, 0x2
	ldrsb r2, [r1, r2]
	lsls r0, 24
	asrs r3, r0, 24
	adds r2, r3
	movs r0, 0x3
	ldrsb r0, [r1, r0]
	adds r4, r1, 0
	cmp r2, r0
	bge _08198540
	ldrb r0, [r4, 0x3]
	b _0819854E
	.pool
_08198540:
	movs r0, 0x4
	ldrsb r0, [r4, r0]
	cmp r2, r0
	ble _0819854C
	ldrb r0, [r4, 0x4]
	b _0819854E
_0819854C:
	adds r0, r3, r5
_0819854E:
	strb r0, [r4, 0x2]
	ldrb r1, [r4, 0x2]
	adds r0, r5, 0
	bl RedrawMenuCursor
	ldrb r0, [r4, 0x2]
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end MoveMenuCursorNoWrapAround

	thumb_func_start GetMenuCursorPos
GetMenuCursorPos: @ 8198560
	ldr r0, =gUnknown_0203CD90
	ldrb r0, [r0, 0x2]
	bx lr
	.pool
	thumb_func_end GetMenuCursorPos

	thumb_func_start ProcessMenuInput
ProcessMenuInput: @ 819856C
	push {r4,lr}
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08198598
	ldr r4, =gUnknown_0203CD90
	ldrb r0, [r4, 0xB]
	cmp r0, 0
	bne _08198588
	movs r0, 0x5
	bl PlaySE
_08198588:
	movs r0, 0x2
	ldrsb r0, [r4, r0]
	b _081985D2
	.pool
_08198598:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081985A6
	movs r0, 0x1
	negs r0, r0
	b _081985D2
_081985A6:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _081985BA
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	b _081985CA
_081985BA:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081985CE
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
_081985CA:
	bl MoveMenuCursor
_081985CE:
	movs r0, 0x2
	negs r0, r0
_081985D2:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end ProcessMenuInput

	thumb_func_start ProcessMenuInputNoWrapAround
@ int ProcessMenuInputNoWrapAround()
ProcessMenuInputNoWrapAround: @ 81985D8
	push {r4-r6,lr}
	ldr r4, =gUnknown_0203CD90
	ldrb r5, [r4, 0x2]
	adds r6, r5, 0
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08198608
	ldrb r0, [r4, 0xB]
	cmp r0, 0
	bne _081985F8
	movs r0, 0x5
	bl PlaySE
_081985F8:
	movs r0, 0x2
	ldrsb r0, [r4, r0]
	b _08198650
	.pool
_08198608:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08198616
	movs r0, 0x1
	negs r0, r0
	b _08198650
_08198616:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08198630
	movs r0, 0x1
	negs r0, r0
	bl MoveMenuCursorNoWrapAround
	lsls r0, 24
	lsrs r0, 24
	cmp r5, r0
	beq _0819864C
	b _08198646
_08198630:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819864C
	movs r0, 0x1
	bl MoveMenuCursorNoWrapAround
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	beq _0819864C
_08198646:
	movs r0, 0x5
	bl PlaySE
_0819864C:
	movs r0, 0x2
	negs r0, r0
_08198650:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end ProcessMenuInputNoWrapAround

	thumb_func_start ProcessMenuInput_other
ProcessMenuInput_other: @ 8198658
	push {r4,lr}
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08198684
	ldr r4, =gUnknown_0203CD90
	ldrb r0, [r4, 0xB]
	cmp r0, 0
	bne _08198674
	movs r0, 0x5
	bl PlaySE
_08198674:
	movs r0, 0x2
	ldrsb r0, [r4, r0]
	b _081986BC
	.pool
_08198684:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08198692
	movs r0, 0x1
	negs r0, r0
	b _081986BC
_08198692:
	ldrh r0, [r2, 0x30]
	movs r1, 0xF0
	ands r1, r0
	cmp r1, 0x40
	bne _081986A8
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	b _081986B4
_081986A8:
	cmp r1, 0x80
	bne _081986B8
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
_081986B4:
	bl MoveMenuCursor
_081986B8:
	movs r0, 0x2
	negs r0, r0
_081986BC:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end ProcessMenuInput_other

	thumb_func_start ProcessMenuInputNoWrapAround_other
ProcessMenuInputNoWrapAround_other: @ 81986C4
	push {r4-r6,lr}
	ldr r4, =gUnknown_0203CD90
	ldrb r5, [r4, 0x2]
	adds r6, r5, 0
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081986F4
	ldrb r0, [r4, 0xB]
	cmp r0, 0
	bne _081986E4
	movs r0, 0x5
	bl PlaySE
_081986E4:
	movs r0, 0x2
	ldrsb r0, [r4, r0]
	b _0819873A
	.pool
_081986F4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08198702
	movs r0, 0x1
	negs r0, r0
	b _0819873A
_08198702:
	ldrh r0, [r2, 0x30]
	movs r1, 0xF0
	ands r1, r0
	cmp r1, 0x40
	bne _0819871E
	movs r0, 0x1
	negs r0, r0
	bl MoveMenuCursorNoWrapAround
	lsls r0, 24
	lsrs r0, 24
	cmp r5, r0
	beq _08198736
	b _08198730
_0819871E:
	cmp r1, 0x80
	bne _08198736
	movs r0, 0x1
	bl MoveMenuCursorNoWrapAround
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	beq _08198736
_08198730:
	movs r0, 0x5
	bl PlaySE
_08198736:
	movs r0, 0x2
	negs r0, r0
_0819873A:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end ProcessMenuInputNoWrapAround_other

	thumb_func_start PrintTextArray
PrintTextArray: @ 8198740
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	ldr r4, [sp, 0x2C]
	ldr r5, [sp, 0x30]
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	lsls r4, 24
	lsrs r7, r4, 24
	lsls r5, 24
	lsrs r5, 24
	movs r4, 0
	cmp r4, r5
	bcs _081987A4
_08198774:
	lsls r0, r4, 3
	ldr r1, [sp, 0x34]
	adds r0, r1
	ldr r2, [r0]
	adds r0, r7, 0
	muls r0, r4
	add r0, r8
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	adds r0, r6, 0
	mov r1, r10
	mov r3, r9
	bl PrintTextOnWindow
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r5
	bcc _08198774
_081987A4:
	adds r0, r6, 0
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end PrintTextArray

	thumb_func_start sub_81987BC
sub_81987BC: @ 81987BC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	ldr r4, [sp, 0x40]
	ldr r5, [sp, 0x44]
	ldr r6, [sp, 0x4C]
	ldr r7, [sp, 0x50]
	mov r8, r7
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x14]
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x18]
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x1C]
	lsls r4, 24
	lsrs r4, 24
	mov r10, r4
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	mov r9, r6
	mov r0, r8
	lsls r0, 24
	lsrs r6, r0, 24
	movs r4, 0
	cmp r4, r5
	bcs _0819883C
_08198804:
	lsls r0, r4, 3
	ldr r1, [sp, 0x48]
	adds r0, r1
	ldr r2, [r0]
	mov r0, r10
	muls r0, r4
	ldr r1, [sp, 0x1C]
	adds r0, r1, r0
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	mov r0, r9
	str r0, [sp, 0xC]
	str r6, [sp, 0x10]
	adds r0, r7, 0
	ldr r1, [sp, 0x14]
	ldr r3, [sp, 0x18]
	bl sub_8199F74
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r5
	bcc _08198804
_0819883C:
	adds r0, r7, 0
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81987BC

	thumb_func_start sub_8198854
sub_8198854: @ 8198854
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	mov r8, r0
	adds r6, r1, 0
	adds r4, r2, 0
	adds r5, r3, 0
	ldr r7, [sp, 0x24]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r6, 24
	lsrs r6, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	adds r0, r6, 0
	movs r1, 0
	bl GetFontAttribute
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	str r4, [sp]
	str r5, [sp, 0x4]
	str r7, [sp, 0x8]
	mov r0, r8
	adds r1, r6, 0
	movs r3, 0x1
	bl PrintTextArray
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8198854

	thumb_func_start AddItemMenuActionTextPrinters
AddItemMenuActionTextPrinters: @ 81988A4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	adds r6, r1, 0
	mov r8, r2
	ldr r1, [sp, 0x38]
	mov r9, r1
	ldr r1, [sp, 0x3C]
	ldr r2, [sp, 0x40]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	lsls r6, 24
	lsrs r6, 24
	mov r4, r8
	lsls r4, 24
	lsrs r4, 24
	mov r8, r4
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x14]
	mov r0, r9
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r7, r2, 24
	mov r0, sp
	ldrb r1, [r0, 0x10]
	strb r1, [r0, 0x4]
	strb r6, [r0, 0x5]
	adds r0, r6, 0
	movs r1, 0x5
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r5, 0xF
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	adds r0, r6, 0
	movs r1, 0x6
	bl GetFontAttribute
	mov r3, sp
	adds r1, r5, 0
	ands r1, r0
	ldrb r2, [r3, 0xD]
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0xD]
	adds r0, r6, 0
	movs r1, 0x7
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xD]
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	adds r0, r6, 0
	movs r1, 0x4
	bl GetFontAttribute
	mov r1, sp
	ands r5, r0
	ldrb r0, [r1, 0xC]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0xC]
	mov r0, sp
	mov r2, r9
	strb r2, [r0, 0xA]
	adds r0, r6, 0
	movs r1, 0x3
	bl GetFontAttribute
	mov r1, sp
	strb r0, [r1, 0xB]
	mov r0, sp
	mov r4, r8
	strb r4, [r0, 0x6]
	strb r4, [r0, 0x8]
	movs r4, 0
	cmp r4, r7
	bcs _0819899E
	mov r5, sp
_0819896E:
	ldr r1, [sp, 0x48]
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, 3
	ldr r2, [sp, 0x44]
	adds r0, r2
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r10
	muls r0, r4
	ldr r1, [sp, 0x14]
	adds r0, r1, r0
	strb r0, [r5, 0x7]
	strb r0, [r5, 0x9]
	mov r0, sp
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r7
	bcc _0819896E
_0819899E:
	ldr r0, [sp, 0x10]
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end AddItemMenuActionTextPrinters

	thumb_func_start sub_81989B8
sub_81989B8: @ 81989B8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x14
	mov r9, r0
	adds r4, r1, 0
	adds r6, r2, 0
	mov r8, r3
	ldr r7, [sp, 0x30]
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	lsls r4, 24
	lsrs r4, 24
	lsls r6, 24
	lsrs r6, 24
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	adds r0, r4, 0
	movs r1, 0
	bl GetFontAttribute
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	adds r0, r4, 0
	movs r1, 0x2
	bl GetFontAttribute
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	str r6, [sp, 0x4]
	mov r0, r8
	str r0, [sp, 0x8]
	str r7, [sp, 0xC]
	ldr r0, [sp, 0x34]
	str r0, [sp, 0x10]
	mov r0, r9
	adds r1, r4, 0
	adds r2, r5, 0
	movs r3, 0x1
	bl AddItemMenuActionTextPrinters
	add sp, 0x14
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81989B8

	thumb_func_start SetWindowTemplateFields
@ void SetWindowTemplateFields(WindowTemplate *template, char bg_id, char x, char y, char w, char h, char a7, s16 a8)
SetWindowTemplateFields: @ 8198A24
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, 0x18]
	ldr r5, [sp, 0x1C]
	ldr r6, [sp, 0x20]
	ldr r7, [sp, 0x24]
	mov r8, r7
	strb r1, [r0]
	strb r2, [r0, 0x1]
	strb r3, [r0, 0x2]
	strb r4, [r0, 0x3]
	strb r5, [r0, 0x4]
	strb r6, [r0, 0x5]
	mov r1, r8
	strh r1, [r0, 0x6]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end SetWindowTemplateFields

	thumb_func_start sub_8198A50
sub_8198A50: @ 8198A50
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x18
	mov r8, r0
	ldr r0, [sp, 0x2C]
	ldr r4, [sp, 0x30]
	ldr r5, [sp, 0x34]
	ldr r6, [sp, 0x38]
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 16
	lsrs r6, 16
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	str r6, [sp, 0xC]
	add r0, sp, 0x10
	bl SetWindowTemplateFields
	ldr r0, [sp, 0x10]
	ldr r1, [sp, 0x14]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, 0x4]
	mov r0, r8
	add sp, 0x18
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r2}
	bx r2
	thumb_func_end sub_8198A50

	thumb_func_start sub_8198AA4
sub_8198AA4: @ 8198AA4
	push {r4-r6,lr}
	sub sp, 0x18
	adds r4, r0, 0
	adds r5, r1, 0
	adds r6, r2, 0
	ldr r0, [sp, 0x28]
	ldr r1, [sp, 0x2C]
	ldr r2, [sp, 0x30]
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 16
	lsrs r2, 16
	str r3, [sp]
	str r0, [sp, 0x4]
	str r1, [sp, 0x8]
	str r2, [sp, 0xC]
	add r0, sp, 0x10
	adds r1, r4, 0
	adds r2, r5, 0
	adds r3, r6, 0
	bl SetWindowTemplateFields
	add r0, sp, 0x10
	bl AddWindow
	lsls r0, 16
	lsrs r0, 16
	add sp, 0x18
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8198AA4

	thumb_func_start sub_8198AF8
sub_8198AF8: @ 8198AF8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	adds r6, r1, 0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, 0x3C]
	ldr r5, [sp, 0x40]
	ldr r1, [sp, 0x44]
	mov r10, r1
	lsls r6, 24
	lsrs r6, 24
	mov r1, r8
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	mov r1, r9
	lsls r1, 24
	lsrs r1, 24
	mov r9, r1
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 24
	lsrs r5, 24
	mov r1, r10
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	ldr r7, =gUnknown_0203CD9F
	bl AddWindow
	strb r0, [r7]
	ldrb r0, [r7]
	movs r1, 0x1
	adds r2, r4, 0
	adds r3, r5, 0
	bl SetWindowBorderStyle
	ldr r0, =gUnknown_085EE491
	str r0, [sp, 0xC]
	add r1, sp, 0xC
	ldrb r0, [r7]
	strb r0, [r1, 0x4]
	adds r0, r1, 0
	strb r6, [r0, 0x5]
	adds r0, r6, 0
	movs r1, 0
	bl GetFontAttribute
	add r1, sp, 0xC
	add r0, r8
	strb r0, [r1, 0x6]
	adds r0, r1, 0
	mov r1, r9
	strb r1, [r0, 0x7]
	adds r1, r0, 0
	ldrb r0, [r0, 0x6]
	strb r0, [r1, 0x8]
	adds r0, r1, 0
	ldrb r0, [r0, 0x7]
	strb r0, [r1, 0x9]
	adds r0, r6, 0
	movs r1, 0x5
	bl GetFontAttribute
	add r3, sp, 0xC
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r5, 0xF
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	adds r0, r6, 0
	movs r1, 0x6
	bl GetFontAttribute
	add r3, sp, 0xC
	adds r1, r5, 0
	ands r1, r0
	ldrb r2, [r3, 0xD]
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0xD]
	adds r0, r6, 0
	movs r1, 0x7
	bl GetFontAttribute
	add r3, sp, 0xC
	lsls r0, 4
	ldrb r2, [r3, 0xD]
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	adds r0, r6, 0
	movs r1, 0x4
	bl GetFontAttribute
	add r1, sp, 0xC
	ands r5, r0
	ldrb r0, [r1, 0xC]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0xC]
	adds r0, r6, 0
	movs r1, 0x2
	bl GetFontAttribute
	add r1, sp, 0xC
	strb r0, [r1, 0xA]
	adds r0, r6, 0
	movs r1, 0x3
	bl GetFontAttribute
	add r1, sp, 0xC
	strb r0, [r1, 0xB]
	adds r0, r1, 0
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	adds r0, r6, 0
	movs r1, 0x1
	bl GetFontAttribute
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r7]
	str r0, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	mov r0, r10
	str r0, [sp, 0x8]
	adds r0, r1, 0
	adds r1, r6, 0
	mov r2, r8
	mov r3, r9
	bl sub_81983AC
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8198AF8

	thumb_func_start sub_8198C34
sub_8198C34: @ 8198C34
	push {lr}
	sub sp, 0xC
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 16
	lsrs r2, 16
	lsls r3, 24
	lsrs r3, 24
	str r2, [sp]
	str r3, [sp, 0x4]
	movs r2, 0
	str r2, [sp, 0x8]
	movs r3, 0x1
	bl sub_8198AF8
	add sp, 0xC
	pop {r0}
	bx r0
	thumb_func_end sub_8198C34

	thumb_func_start sub_8198C58
sub_8198C58: @ 8198C58
	push {r4,lr}
	bl ProcessMenuInputNoWrapAround
	lsls r0, 24
	asrs r4, r0, 24
	movs r0, 0x2
	negs r0, r0
	cmp r4, r0
	beq _08198C6E
	bl sub_8198C78
_08198C6E:
	adds r0, r4, 0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8198C58

	thumb_func_start sub_8198C78
sub_8198C78: @ 8198C78
	push {r4,lr}
	ldr r4, =gUnknown_0203CD9F
	ldrb r0, [r4]
	movs r1, 0x1
	bl sub_8198070
	ldrb r0, [r4]
	bl RemoveWindow
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8198C78

	thumb_func_start sub_8198C94
sub_8198C94: @ 8198C94
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	ldr r4, [sp, 0x40]
	ldr r5, [sp, 0x44]
	ldr r6, [sp, 0x48]
	ldr r7, [sp, 0x4C]
	mov r8, r7
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0xC]
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x10]
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x14]
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp, 0x18]
	lsls r5, 24
	lsrs r5, 24
	str r5, [sp, 0x1C]
	lsls r6, 24
	lsrs r6, 24
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r5, 0
	cmp r5, r9
	bcs _08198D3A
_08198CE0:
	movs r4, 0
	adds r1, r5, 0x1
	mov r8, r1
	cmp r4, r6
	bcs _08198D30
	ldr r7, [sp, 0x1C]
	adds r0, r7, 0
	muls r0, r5
	ldr r1, [sp, 0x14]
	adds r0, r1, r0
	lsls r0, 24
	lsrs r7, r0, 24
_08198CF8:
	adds r0, r5, 0
	muls r0, r6
	adds r0, r4
	lsls r0, 3
	ldr r1, [sp, 0x50]
	adds r0, r1
	ldr r2, [r0]
	ldr r0, [sp, 0x18]
	adds r3, r0, 0
	muls r3, r4
	ldr r1, [sp, 0x10]
	adds r3, r1, r3
	lsls r3, 24
	lsrs r3, 24
	str r7, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	mov r0, r10
	ldr r1, [sp, 0xC]
	bl PrintTextOnWindow
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r6
	bcc _08198CF8
_08198D30:
	mov r7, r8
	lsls r0, r7, 24
	lsrs r5, r0, 24
	cmp r5, r9
	bcc _08198CE0
_08198D3A:
	mov r0, r10
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8198C94

	thumb_func_start sub_8198D54
sub_8198D54: @ 8198D54
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x18
	mov r9, r0
	mov r8, r1
	adds r4, r2, 0
	adds r5, r3, 0
	ldr r6, [sp, 0x34]
	ldr r3, [sp, 0x38]
	ldr r7, [sp, 0x3C]
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r3, 24
	lsrs r3, 24
	movs r1, 0
	str r3, [sp, 0x14]
	bl GetFontAttribute
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	str r4, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	ldr r3, [sp, 0x14]
	str r3, [sp, 0xC]
	str r7, [sp, 0x10]
	mov r0, r9
	mov r1, r8
	movs r3, 0
	bl sub_8198C94
	add sp, 0x18
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8198D54

	thumb_func_start sub_8198DBC
sub_8198DBC: @ 8198DBC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	ldr r4, [sp, 0x40]
	ldr r5, [sp, 0x44]
	ldr r6, [sp, 0x48]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x14]
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x18]
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp, 0x1C]
	lsls r5, 24
	lsrs r5, 24
	mov r8, r5
	lsls r6, 24
	lsrs r6, 24
	mov r10, r6
	mov r0, sp
	ldrb r1, [r0, 0x10]
	strb r1, [r0, 0x4]
	strb r7, [r0, 0x5]
	adds r0, r7, 0
	movs r1, 0x5
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r5, 0xF
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	adds r0, r7, 0
	movs r1, 0x6
	bl GetFontAttribute
	mov r3, sp
	adds r1, r5, 0
	ands r1, r0
	ldrb r2, [r3, 0xD]
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0xD]
	adds r0, r7, 0
	movs r1, 0x7
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xD]
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	adds r0, r7, 0
	movs r1, 0x4
	bl GetFontAttribute
	mov r1, sp
	ands r5, r0
	ldrb r0, [r1, 0xC]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0xC]
	adds r0, r7, 0
	movs r1, 0x2
	bl GetFontAttribute
	mov r1, sp
	strb r0, [r1, 0xA]
	adds r0, r7, 0
	movs r1, 0x3
	bl GetFontAttribute
	mov r1, sp
	strb r0, [r1, 0xB]
	movs r6, 0
	cmp r6, r10
	bcs _08198EDE
_08198E7A:
	movs r5, 0
	adds r2, r6, 0x1
	mov r9, r2
	cmp r5, r8
	bcs _08198ED4
	mov r4, sp
_08198E86:
	mov r0, r8
	muls r0, r6
	adds r0, r5
	ldr r1, [sp, 0x50]
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, 3
	ldr r2, [sp, 0x4C]
	adds r0, r2
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, [sp, 0x1C]
	adds r0, r1, 0
	muls r0, r5
	ldr r2, [sp, 0x14]
	adds r0, r2, r0
	strb r0, [r4, 0x6]
	adds r0, r7, 0
	movs r1, 0x1
	bl GetFontAttribute
	adds r1, r6, 0
	muls r1, r0
	ldr r0, [sp, 0x18]
	adds r1, r0, r1
	strb r1, [r4, 0x7]
	ldrb r0, [r4, 0x6]
	strb r0, [r4, 0x8]
	strb r1, [r4, 0x9]
	mov r0, sp
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, r8
	bcc _08198E86
_08198ED4:
	mov r1, r9
	lsls r0, r1, 24
	lsrs r6, r0, 24
	cmp r6, r10
	bcc _08198E7A
_08198EDE:
	ldr r0, [sp, 0x10]
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8198DBC

	thumb_func_start sub_8198EF8
sub_8198EF8: @ 8198EF8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x18
	mov r8, r0
	adds r3, r1, 0
	adds r4, r2, 0
	ldr r5, [sp, 0x30]
	ldr r6, [sp, 0x34]
	ldr r7, [sp, 0x38]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	adds r0, r3, 0
	movs r1, 0
	str r3, [sp, 0x14]
	bl GetFontAttribute
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	str r4, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	str r7, [sp, 0xC]
	ldr r0, [sp, 0x3C]
	str r0, [sp, 0x10]
	mov r0, r8
	ldr r3, [sp, 0x14]
	adds r1, r3, 0
	movs r3, 0
	bl sub_8198DBC
	add sp, 0x18
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8198EF8

	thumb_func_start sub_8198F58
sub_8198F58: @ 8198F58
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, [sp, 0x20]
	mov r12, r4
	ldr r4, [sp, 0x24]
	mov r8, r4
	ldr r4, [sp, 0x28]
	mov r9, r4
	ldr r4, [sp, 0x2C]
	mov r10, r4
	ldr r4, [sp, 0x30]
	ldr r5, [sp, 0x34]
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r7, r5, 24
	ldr r5, =gUnknown_0203CD90
	movs r6, 0
	strb r2, [r5]
	strb r3, [r5, 0x1]
	strb r6, [r5, 0x3]
	subs r4, 0x1
	strb r4, [r5, 0x4]
	strb r0, [r5, 0x5]
	strb r1, [r5, 0x6]
	mov r0, r12
	strb r0, [r5, 0x7]
	mov r4, r8
	strb r4, [r5, 0x8]
	mov r0, r9
	strb r0, [r5, 0x9]
	mov r4, r10
	strb r4, [r5, 0xA]
	cmp r7, 0
	blt _08198FAC
	movs r0, 0x4
	ldrsb r0, [r5, r0]
	cmp r7, r0
	ble _08198FB4
_08198FAC:
	strb r6, [r5, 0x2]
	b _08198FB6
	.pool
_08198FB4:
	strb r7, [r5, 0x2]
_08198FB6:
	movs r0, 0
	movs r1, 0
	bl sub_8199134
	ldr r0, =gUnknown_0203CD90
	ldrb r0, [r0, 0x2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8198F58

	thumb_func_start sub_8198FD4
sub_8198FD4: @ 8198FD4
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, 0x20
	mov r9, r0
	mov r8, r1
	mov r10, r2
	ldr r6, [sp, 0x3C]
	ldr r4, [sp, 0x40]
	ldr r5, [sp, 0x44]
	ldr r2, [sp, 0x48]
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	mov r0, r10
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r3, 24
	lsrs r3, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r2, 24
	lsrs r2, 24
	mov r0, r8
	movs r1, 0x1
	str r2, [sp, 0x18]
	str r3, [sp, 0x1C]
	bl GetMenuCursorDimensionByFont
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	muls r1, r5
	lsls r1, 24
	lsrs r1, 24
	str r6, [sp]
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	str r5, [sp, 0xC]
	str r1, [sp, 0x10]
	ldr r2, [sp, 0x18]
	str r2, [sp, 0x14]
	mov r0, r9
	mov r1, r8
	mov r2, r10
	ldr r3, [sp, 0x1C]
	bl sub_8198F58
	lsls r0, 24
	lsrs r0, 24
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8198FD4

	thumb_func_start sub_8199060
sub_8199060: @ 8199060
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	mov r8, r0
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r0, r1, 24
	lsrs r7, r0, 24
	ldr r5, =gUnknown_0203CD90
	ldrb r0, [r5, 0x6]
	movs r1, 0
	bl GetMenuCursorDimensionByFont
	mov r9, r0
	mov r1, r9
	lsls r1, 24
	lsrs r1, 24
	mov r9, r1
	ldrb r0, [r5, 0x6]
	movs r1, 0x1
	bl GetMenuCursorDimensionByFont
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	ldrb r0, [r5, 0x9]
	mov r10, r0
	mov r0, r8
	mov r1, r10
	bl __umodsi3
	ldrb r1, [r5, 0x7]
	adds r4, r1, 0
	muls r4, r0
	ldrb r1, [r5]
	adds r4, r1
	lsls r4, 24
	lsrs r4, 24
	mov r0, r8
	mov r1, r10
	bl __udivsi3
	ldrb r1, [r5, 0x8]
	adds r3, r1, 0
	muls r3, r0
	ldrb r0, [r5, 0x1]
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	ldrb r0, [r5, 0x5]
	mov r1, r9
	str r1, [sp]
	str r6, [sp, 0x4]
	movs r1, 0x11
	adds r2, r4, 0
	bl FillWindowPixelRect
	ldrb r6, [r5, 0x9]
	adds r0, r7, 0
	adds r1, r6, 0
	bl __umodsi3
	ldrb r1, [r5, 0x7]
	adds r4, r1, 0
	muls r4, r0
	ldrb r0, [r5]
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r7, 0
	adds r1, r6, 0
	bl __udivsi3
	ldrb r1, [r5, 0x8]
	adds r3, r1, 0
	muls r3, r0
	ldrb r1, [r5, 0x1]
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	ldrb r0, [r5, 0x5]
	ldrb r1, [r5, 0x6]
	ldr r2, =gUnknown_085EE498
	str r3, [sp]
	movs r3, 0
	str r3, [sp, 0x4]
	str r3, [sp, 0x8]
	adds r3, r4, 0
	bl PrintTextOnWindow
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8199060

	thumb_func_start sub_8199134
sub_8199134: @ 8199134
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r1, 24
	lsrs r1, 24
	mov r9, r1
	ldr r1, =gUnknown_0203CD90
	ldrb r2, [r1, 0x2]
	mov r8, r2
	lsls r0, 24
	asrs r6, r0, 24
	adds r5, r1, 0
	cmp r6, 0
	beq _0819918A
	movs r7, 0x2
	ldrsb r7, [r5, r7]
	ldrb r4, [r5, 0x9]
	adds r0, r7, 0
	adds r1, r4, 0
	bl __modsi3
	adds r0, r6
	cmp r0, 0
	bge _08199174
	adds r0, r4, 0
	adds r0, 0xFF
	add r0, r8
	b _08199188
	.pool
_08199174:
	cmp r0, r4
	blt _08199184
	adds r0, r7, 0
	adds r1, r4, 0
	bl __divsi3
	muls r0, r4
	b _08199188
_08199184:
	mov r1, r8
	adds r0, r6, r1
_08199188:
	strb r0, [r5, 0x2]
_0819918A:
	mov r2, r9
	lsls r0, r2, 24
	asrs r6, r0, 24
	cmp r6, 0
	beq _081991CE
	movs r0, 0x2
	ldrsb r0, [r5, r0]
	ldrb r4, [r5, 0x9]
	adds r1, r4, 0
	bl __divsi3
	adds r1, r0, r6
	cmp r1, 0
	bge _081991B2
	ldrb r0, [r5, 0xA]
	subs r0, 0x1
	muls r0, r4
	ldrb r1, [r5, 0x2]
	adds r0, r1
	b _081991CC
_081991B2:
	ldrb r0, [r5, 0xA]
	cmp r1, r0
	blt _081991C4
	subs r0, 0x1
	adds r1, r4, 0
	muls r1, r0
	ldrb r0, [r5, 0x2]
	subs r0, r1
	b _081991CC
_081991C4:
	adds r0, r4, 0
	muls r0, r6
	ldrb r2, [r5, 0x2]
	adds r0, r2
_081991CC:
	strb r0, [r5, 0x2]
_081991CE:
	movs r1, 0x2
	ldrsb r1, [r5, r1]
	movs r0, 0x4
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bgt _081991E4
	ldrb r1, [r5, 0x2]
	mov r0, r8
	bl sub_8199060
	b _081991E8
_081991E4:
	mov r0, r8
	strb r0, [r5, 0x2]
_081991E8:
	ldrb r0, [r5, 0x2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8199134

	thumb_func_start sub_81991F8
sub_81991F8: @ 81991F8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	ldr r1, =gUnknown_0203CD90
	ldrb r7, [r1, 0x2]
	lsls r0, 24
	asrs r4, r0, 24
	adds r5, r1, 0
	cmp r4, 0
	beq _0819922C
	movs r0, 0x2
	ldrsb r0, [r5, r0]
	ldrb r6, [r5, 0x9]
	adds r1, r6, 0
	bl __modsi3
	adds r0, r4
	cmp r0, 0
	blt _0819922C
	cmp r0, r6
	bge _0819922C
	adds r0, r4, r7
	strb r0, [r5, 0x2]
_0819922C:
	mov r1, r8
	lsls r0, r1, 24
	asrs r4, r0, 24
	cmp r4, 0
	beq _08199258
	movs r0, 0x2
	ldrsb r0, [r5, r0]
	ldrb r6, [r5, 0x9]
	adds r1, r6, 0
	bl __divsi3
	adds r0, r4
	cmp r0, 0
	blt _08199258
	ldrb r1, [r5, 0xA]
	cmp r0, r1
	bge _08199258
	adds r0, r6, 0
	muls r0, r4
	ldrb r1, [r5, 0x2]
	adds r0, r1
	strb r0, [r5, 0x2]
_08199258:
	movs r1, 0x2
	ldrsb r1, [r5, r1]
	movs r0, 0x4
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bgt _08199274
	ldrb r1, [r5, 0x2]
	adds r0, r7, 0
	bl sub_8199060
	b _08199276
	.pool
_08199274:
	strb r7, [r5, 0x2]
_08199276:
	ldrb r0, [r5, 0x2]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81991F8

	thumb_func_start sub_8199284
sub_8199284: @ 8199284
	push {r4,lr}
	ldr r4, =gMain
	ldrh r1, [r4, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081992AC
	movs r0, 0x5
	bl PlaySE
	ldr r0, =gUnknown_0203CD90
	ldrb r0, [r0, 0x2]
	lsls r0, 24
	asrs r0, 24
	b _0819932C
	.pool
_081992AC:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081992BA
	movs r0, 0x1
	negs r0, r0
	b _0819932C
_081992BA:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _081992D0
	movs r0, 0x5
	bl PlaySE
	movs r1, 0x1
	negs r1, r1
	movs r0, 0
	b _08199324
_081992D0:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081992E4
	movs r0, 0x5
	bl PlaySE
	movs r0, 0
	movs r1, 0x1
	b _08199324
_081992E4:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _081992F8
	bl GetLRKeysState
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08199304
_081992F8:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	b _08199322
_08199304:
	ldrh r1, [r4, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0819931A
	bl GetLRKeysState
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _08199328
_0819931A:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
_08199322:
	movs r1, 0
_08199324:
	bl sub_8199134
_08199328:
	movs r0, 0x2
	negs r0, r0
_0819932C:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8199284

	thumb_func_start sub_8199334
sub_8199334: @ 8199334
	push {r4-r6,lr}
	ldr r5, =gUnknown_0203CD90
	ldrb r4, [r5, 0x2]
	ldr r6, =gMain
	ldrh r1, [r6, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0819935C
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x2
	ldrsb r0, [r5, r0]
	b _081993D2
	.pool
_0819935C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819936A
	movs r0, 0x1
	negs r0, r0
	b _081993D2
_0819936A:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0819937A
	movs r1, 0x1
	negs r1, r1
	movs r0, 0
	b _081993BC
_0819937A:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08199388
	movs r0, 0
	movs r1, 0x1
	b _081993BC
_08199388:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0819939C
	bl GetLRKeysState
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081993A2
_0819939C:
	movs r0, 0x1
	negs r0, r0
	b _081993BA
_081993A2:
	ldrh r1, [r6, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _081993B8
	bl GetLRKeysState
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _081993CE
_081993B8:
	movs r0, 0x1
_081993BA:
	movs r1, 0
_081993BC:
	bl sub_81991F8
	lsls r0, 24
	lsrs r0, 24
	cmp r4, r0
	beq _081993CE
	movs r0, 0x5
	bl PlaySE
_081993CE:
	movs r0, 0x2
	negs r0, r0
_081993D2:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8199334

	thumb_func_start sub_81993D8
sub_81993D8: @ 81993D8
	push {r4,r5,lr}
	ldr r4, =gMain
	ldrh r1, [r4, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08199400
	movs r0, 0x5
	bl PlaySE
	ldr r0, =gUnknown_0203CD90
	ldrb r0, [r0, 0x2]
	lsls r0, 24
	asrs r0, 24
	b _0819947C
	.pool
_08199400:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819940E
	movs r0, 0x1
	negs r0, r0
	b _0819947C
_0819940E:
	ldrh r0, [r4, 0x30]
	movs r5, 0xF0
	adds r1, r5, 0
	ands r1, r0
	cmp r1, 0x40
	bne _08199428
	movs r0, 0x5
	bl PlaySE
	movs r1, 0x1
	negs r1, r1
	movs r0, 0
	b _08199474
_08199428:
	cmp r1, 0x80
	bne _08199438
	movs r0, 0x5
	bl PlaySE
	movs r0, 0
	movs r1, 0x1
	b _08199474
_08199438:
	cmp r1, 0x20
	beq _08199448
	bl sub_812210C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08199454
_08199448:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	b _08199472
_08199454:
	ldrh r1, [r4, 0x30]
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0x10
	beq _0819946A
	bl sub_812210C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _08199478
_0819946A:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
_08199472:
	movs r1, 0
_08199474:
	bl sub_8199134
_08199478:
	movs r0, 0x2
	negs r0, r0
_0819947C:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81993D8

	thumb_func_start sub_8199484
sub_8199484: @ 8199484
	push {r4-r6,lr}
	ldr r6, =gUnknown_0203CD90
	ldrb r4, [r6, 0x2]
	ldr r5, =gMain
	ldrh r1, [r5, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081994AC
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x2
	ldrsb r0, [r6, r0]
	b _0819951E
	.pool
_081994AC:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081994BA
	movs r0, 0x1
	negs r0, r0
	b _0819951E
_081994BA:
	ldrh r0, [r5, 0x30]
	movs r6, 0xF0
	adds r1, r6, 0
	ands r1, r0
	cmp r1, 0x40
	bne _081994CE
	movs r1, 0x1
	negs r1, r1
	movs r0, 0
	b _08199508
_081994CE:
	cmp r1, 0x80
	bne _081994D8
	movs r0, 0
	movs r1, 0x1
	b _08199508
_081994D8:
	cmp r1, 0x20
	beq _081994E8
	bl sub_812210C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081994EE
_081994E8:
	movs r0, 0x1
	negs r0, r0
	b _08199506
_081994EE:
	ldrh r1, [r5, 0x30]
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0x10
	beq _08199504
	bl sub_812210C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _0819951A
_08199504:
	movs r0, 0x1
_08199506:
	movs r1, 0
_08199508:
	bl sub_81991F8
	lsls r0, 24
	lsrs r0, 24
	cmp r4, r0
	beq _0819951A
	movs r0, 0x5
	bl PlaySE
_0819951A:
	movs r0, 0x2
	negs r0, r0
_0819951E:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8199484

	thumb_func_start InitMenuInUpperLeftCorner
@ int InitMenuInUpperLeftCorner(s8 windowId, s8 numItems, u8 initialCursorPos, bool doNotPlaySoundWhenAPressed)
InitMenuInUpperLeftCorner: @ 8199524
	push {r4-r6,lr}
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r5, r2, 24
	ldr r4, =gUnknown_0203CD90
	movs r6, 0
	strb r6, [r4]
	movs r2, 0x1
	strb r2, [r4, 0x1]
	strb r6, [r4, 0x3]
	subs r1, 0x1
	strb r1, [r4, 0x4]
	strb r0, [r4, 0x5]
	strb r2, [r4, 0x6]
	movs r0, 0x10
	strb r0, [r4, 0x8]
	strb r3, [r4, 0xB]
	cmp r5, 0
	blt _08199554
	movs r0, 0x4
	ldrsb r0, [r4, r0]
	cmp r5, r0
	ble _0819955C
_08199554:
	strb r6, [r4, 0x2]
	b _0819955E
	.pool
_0819955C:
	strb r5, [r4, 0x2]
_0819955E:
	movs r0, 0
	bl MoveMenuCursor
	lsls r0, 24
	lsrs r0, 24
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end InitMenuInUpperLeftCorner

	thumb_func_start InitMenuInUpperLeftCornerPlaySoundWhenAPressed
InitMenuInUpperLeftCornerPlaySoundWhenAPressed: @ 8199570
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	movs r3, 0
	bl InitMenuInUpperLeftCorner
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	thumb_func_end InitMenuInUpperLeftCornerPlaySoundWhenAPressed

	thumb_func_start PrintMenuTable
PrintMenuTable: @ 819958C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r1, 24
	lsrs r7, r1, 24
	movs r5, 0
	cmp r5, r7
	bcs _081995D0
	movs r6, 0x80
	lsls r6, 17
	adds r4, r2, 0
_081995AA:
	ldr r2, [r4]
	lsrs r0, r6, 24
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	mov r0, r8
	movs r1, 0x1
	movs r3, 0x8
	bl PrintTextOnWindow
	movs r0, 0x80
	lsls r0, 21
	adds r6, r0
	adds r4, 0x8
	adds r5, 0x1
	cmp r5, r7
	bcc _081995AA
_081995D0:
	mov r0, r8
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end PrintMenuTable

	thumb_func_start sub_81995E4
sub_81995E4: @ 81995E4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	mov r9, r2
	mov r8, r3
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	mov r0, sp
	movs r1, 0
	mov r10, r1
	strb r6, [r0, 0x4]
	mov r1, sp
	movs r0, 0x1
	strb r0, [r1, 0x5]
	movs r1, 0x5
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r5, 0xF
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	movs r0, 0x1
	movs r1, 0x6
	bl GetFontAttribute
	mov r3, sp
	adds r1, r5, 0
	ands r1, r0
	ldrb r2, [r3, 0xD]
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0xD]
	movs r0, 0x1
	movs r1, 0x7
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xD]
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	movs r0, 0x1
	movs r1, 0x4
	bl GetFontAttribute
	mov r1, sp
	ands r5, r0
	ldrb r0, [r1, 0xC]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0xC]
	mov r0, sp
	mov r1, r10
	strb r1, [r0, 0xA]
	strb r1, [r0, 0xB]
	movs r1, 0x8
	strb r1, [r0, 0x6]
	strb r1, [r0, 0x8]
	movs r4, 0
	cmp r4, r7
	bcs _081996A6
	mov r5, sp
_0819967C:
	mov r1, r8
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, 3
	add r0, r9
	ldr r0, [r0]
	str r0, [sp]
	lsls r0, r4, 4
	adds r0, 0x1
	strb r0, [r5, 0x7]
	strb r0, [r5, 0x9]
	mov r0, sp
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r7
	bcc _0819967C
_081996A6:
	adds r0, r6, 0
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81995E4

	thumb_func_start CreateYesNoMenu
@ void CreateYesNoMenu(struct WindowTemplate *windowTemplate, u16 borderFirstTileNum, u8 borderPalette, u8 initialCursorPos)
CreateYesNoMenu: @ 81996C0
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x10
	adds r4, r1, 0
	adds r5, r2, 0
	adds r6, r3, 0
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	ldr r1, =gUnknown_0203CD9F
	mov r8, r1
	bl AddWindow
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r2]
	movs r1, 0x1
	adds r2, r4, 0
	adds r3, r5, 0
	bl SetWindowBorderStyle
	ldr r0, =gUnknown_085EE491
	str r0, [sp]
	mov r1, sp
	mov r2, r8
	ldrb r0, [r2]
	movs r2, 0
	mov r9, r2
	strb r0, [r1, 0x4]
	mov r0, sp
	movs r2, 0x1
	strb r2, [r0, 0x5]
	movs r0, 0x8
	strb r0, [r1, 0x6]
	mov r0, sp
	strb r2, [r0, 0x7]
	ldrb r0, [r0, 0x6]
	strb r0, [r1, 0x8]
	mov r0, sp
	ldrb r0, [r0, 0x7]
	strb r0, [r1, 0x9]
	movs r0, 0x1
	movs r1, 0x5
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r5, 0xF
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	movs r0, 0x1
	movs r1, 0x6
	bl GetFontAttribute
	mov r3, sp
	adds r1, r5, 0
	ands r1, r0
	ldrb r2, [r3, 0xD]
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0xD]
	movs r0, 0x1
	movs r1, 0x7
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xD]
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	movs r0, 0x1
	movs r1, 0x4
	bl GetFontAttribute
	mov r1, sp
	ands r5, r0
	ldrb r0, [r1, 0xC]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0xC]
	mov r0, sp
	mov r1, r9
	strb r1, [r0, 0xA]
	strb r1, [r0, 0xB]
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	mov r2, r8
	ldrb r0, [r2]
	movs r1, 0x2
	adds r2, r6, 0
	bl InitMenuInUpperLeftCornerPlaySoundWhenAPressed
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end CreateYesNoMenu

	thumb_func_start sub_81997AC
sub_81997AC: @ 81997AC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0xC]
	lsls r2, 24
	lsrs r6, r2, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x10]
	movs r7, 0
	cmp r7, r3
	bcs _08199824
_081997D4:
	movs r4, 0
	adds r0, r7, 0x1
	mov r9, r0
	cmp r4, r6
	bcs _0819981C
	lsls r0, r7, 4
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r5, 0x80
	lsls r5, 20
_081997EC:
	adds r0, r7, 0
	muls r0, r6
	adds r0, r4
	lsls r0, 3
	ldr r1, [sp, 0x34]
	adds r0, r1
	ldr r2, [r0]
	lsrs r3, r5, 24
	mov r0, r8
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	mov r0, r10
	movs r1, 0x1
	bl PrintTextOnWindow
	ldr r1, [sp, 0xC]
	lsls r0, r1, 24
	adds r5, r0
	adds r4, 0x1
	cmp r4, r6
	bcc _081997EC
_0819981C:
	mov r7, r9
	ldr r4, [sp, 0x10]
	cmp r7, r4
	bcc _081997D4
_08199824:
	mov r0, r10
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81997AC

	thumb_func_start sub_819983C
sub_819983C: @ 819983C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x14]
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r3, 24
	mov r10, r3
	mov r0, sp
	movs r6, 0
	ldrb r1, [r0, 0x10]
	strb r1, [r0, 0x4]
	mov r1, sp
	movs r0, 0x1
	strb r0, [r1, 0x5]
	movs r1, 0x5
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r5, 0xF
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	movs r0, 0x1
	movs r1, 0x6
	bl GetFontAttribute
	mov r3, sp
	adds r1, r5, 0
	ands r1, r0
	ldrb r2, [r3, 0xD]
	movs r4, 0x10
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0xD]
	movs r0, 0x1
	movs r1, 0x7
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xD]
	adds r1, r5, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	movs r0, 0x1
	movs r1, 0x4
	bl GetFontAttribute
	mov r1, sp
	ands r5, r0
	ldrb r0, [r1, 0xC]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0xC]
	mov r0, sp
	strb r6, [r0, 0xA]
	strb r6, [r0, 0xB]
	movs r7, 0
	cmp r7, r10
	bcs _0819992A
_081998D6:
	movs r5, 0
	adds r2, r7, 0x1
	mov r9, r2
	cmp r5, r8
	bcs _08199920
	mov r4, sp
	lsls r0, r7, 4
	adds r6, r0, 0x1
_081998E6:
	mov r0, r8
	muls r0, r7
	adds r0, r5
	ldr r1, [sp, 0x3C]
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, 3
	ldr r2, [sp, 0x38]
	adds r0, r2
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, [sp, 0x14]
	adds r0, r1, 0
	muls r0, r5
	adds r0, 0x8
	strb r0, [r4, 0x6]
	strb r6, [r4, 0x7]
	strb r0, [r4, 0x8]
	strb r6, [r4, 0x9]
	mov r0, sp
	movs r1, 0xFF
	movs r2, 0
	bl AddTextPrinter
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, r8
	bcc _081998E6
_08199920:
	mov r2, r9
	lsls r0, r2, 24
	lsrs r7, r0, 24
	cmp r7, r10
	bcc _081998D6
_0819992A:
	ldr r0, [sp, 0x10]
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819983C

	thumb_func_start sub_8199944
sub_8199944: @ 8199944
	push {r4-r7,lr}
	ldr r4, [sp, 0x14]
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r7, r4, 24
	ldr r6, =gUnknown_0203CD90
	movs r4, 0
	mov r12, r4
	mov r4, r12
	strb r4, [r6]
	movs r5, 0x1
	strb r5, [r6, 0x1]
	strb r4, [r6, 0x3]
	adds r4, r2, 0
	muls r4, r3
	subs r4, 0x1
	strb r4, [r6, 0x4]
	strb r0, [r6, 0x5]
	strb r5, [r6, 0x6]
	strb r1, [r6, 0x7]
	movs r0, 0x10
	strb r0, [r6, 0x8]
	strb r2, [r6, 0x9]
	strb r3, [r6, 0xA]
	cmp r7, 0
	blt _08199986
	movs r0, 0x4
	ldrsb r0, [r6, r0]
	cmp r7, r0
	ble _08199990
_08199986:
	mov r0, r12
	strb r0, [r6, 0x2]
	b _08199992
	.pool
_08199990:
	strb r7, [r6, 0x2]
_08199992:
	movs r0, 0
	movs r1, 0
	bl sub_8199134
	ldr r0, =gUnknown_0203CD90
	ldrb r0, [r0, 0x2]
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_8199944

	thumb_func_start clear_scheduled_bg_copies_to_vram
@ void clear_scheduled_bg_copies_to_vram()
clear_scheduled_bg_copies_to_vram: @ 81999A8
	push {lr}
	ldr r0, =gUnknown_0203CDA4
	movs r1, 0
	movs r2, 0x4
	bl memset
	pop {r0}
	bx r0
	.pool
	thumb_func_end clear_scheduled_bg_copies_to_vram

	thumb_func_start schedule_bg_copy_tilemap_to_vram
@ void schedule_bg_copy_tilemap_to_vram(u8 bg_id)
schedule_bg_copy_tilemap_to_vram: @ 81999BC
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0203CDA4
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	bx lr
	.pool
	thumb_func_end schedule_bg_copy_tilemap_to_vram

	thumb_func_start do_scheduled_bg_tilemap_copies_to_vram
@ void do_scheduled_bg_tilemap_copies_to_vram()
do_scheduled_bg_tilemap_copies_to_vram: @ 81999D0
	push {r4,lr}
	ldr r4, =gUnknown_0203CDA4
	ldrb r0, [r4]
	cmp r0, 0x1
	bne _081999E4
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	movs r0, 0
	strb r0, [r4]
_081999E4:
	ldrb r0, [r4, 0x1]
	cmp r0, 0x1
	bne _081999F4
	movs r0, 0x1
	bl CopyBgTilemapBufferToVram
	movs r0, 0
	strb r0, [r4, 0x1]
_081999F4:
	ldrb r0, [r4, 0x2]
	cmp r0, 0x1
	bne _08199A04
	movs r0, 0x2
	bl CopyBgTilemapBufferToVram
	movs r0, 0
	strb r0, [r4, 0x2]
_08199A04:
	ldrb r0, [r4, 0x3]
	cmp r0, 0x1
	bne _08199A14
	movs r0, 0x3
	bl CopyBgTilemapBufferToVram
	movs r0, 0
	strb r0, [r4, 0x3]
_08199A14:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end do_scheduled_bg_tilemap_copies_to_vram

	thumb_func_start reset_temp_tile_data_buffers
@ void reset_temp_tile_data_buffers()
reset_temp_tile_data_buffers: @ 8199A20
	push {lr}
	ldr r3, =gUnknown_0203CDA8
	ldr r1, =gUnknown_0203CDAC
	movs r2, 0
	adds r0, r1, 0
	adds r0, 0x7C
_08199A2C:
	str r2, [r0]
	subs r0, 0x4
	cmp r0, r1
	bge _08199A2C
	movs r0, 0
	strh r0, [r3]
	pop {r0}
	bx r0
	.pool
	thumb_func_end reset_temp_tile_data_buffers

	thumb_func_start free_temp_tile_data_buffers_if_possible
free_temp_tile_data_buffers_if_possible: @ 8199A44
	push {r4-r6,lr}
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _08199A88
	ldr r1, =gUnknown_0203CDA8
	ldrh r0, [r1]
	cmp r0, 0
	beq _08199A7C
	movs r4, 0
	ldrh r1, [r1]
	cmp r4, r1
	bge _08199A76
	ldr r5, =gUnknown_0203CDAC
	movs r6, 0
_08199A64:
	ldr r0, [r5]
	bl Free
	stm r5!, {r6}
	adds r4, 0x1
	ldr r0, =gUnknown_0203CDA8
	ldrh r0, [r0]
	cmp r4, r0
	blt _08199A64
_08199A76:
	ldr r1, =gUnknown_0203CDA8
	movs r0, 0
	strh r0, [r1]
_08199A7C:
	movs r0, 0
	b _08199A8A
	.pool
_08199A88:
	movs r0, 0x1
_08199A8A:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end free_temp_tile_data_buffers_if_possible

	thumb_func_start decompress_and_copy_tile_data_to_vram
@ int decompress_and_copy_tile_data_to_vram(u8 bg_id, int src, int size, u16 offset, u8 mode)
decompress_and_copy_tile_data_to_vram: @ 8199A90
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	adds r4, r1, 0
	adds r5, r2, 0
	ldr r1, [sp, 0x24]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r3, 16
	lsrs r3, 16
	mov r9, r3
	lsls r1, 24
	lsrs r7, r1, 24
	ldr r6, =gUnknown_0203CDA8
	ldrh r0, [r6]
	cmp r0, 0x1F
	bhi _08199AF8
	adds r0, r4, 0
	add r1, sp, 0x4
	bl malloc_and_decompress
	adds r4, r0, 0
	cmp r5, 0
	bne _08199AC8
	ldr r5, [sp, 0x4]
_08199AC8:
	cmp r4, 0
	beq _08199AEC
	lsls r2, r5, 16
	lsrs r2, 16
	str r7, [sp]
	mov r0, r8
	adds r1, r4, 0
	mov r3, r9
	bl copy_decompressed_tile_data_to_vram
	ldr r2, =gUnknown_0203CDAC
	ldrh r0, [r6]
	adds r1, r0, 0x1
	strh r1, [r6]
	lsls r0, 16
	lsrs r0, 14
	adds r0, r2
	str r4, [r0]
_08199AEC:
	adds r0, r4, 0
	b _08199AFA
	.pool
_08199AF8:
	movs r0, 0
_08199AFA:
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end decompress_and_copy_tile_data_to_vram

	thumb_func_start copy_decompressed_tile_data_to_vram_autofree
@ void copy_decompressed_tile_data_to_vram_autofree(u8 bg_id, int src, u16 size, u16 offset, u8 mode)
copy_decompressed_tile_data_to_vram_autofree: @ 8199B08
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	adds r5, r2, 0
	ldr r2, [sp, 0x24]
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r3, 16
	lsrs r3, 16
	mov r9, r3
	lsls r2, 24
	lsrs r7, r2, 24
	adds r0, r1, 0
	add r1, sp, 0x4
	bl malloc_and_decompress
	adds r6, r0, 0
	cmp r5, 0
	bne _08199B36
	ldr r5, [sp, 0x4]
_08199B36:
	cmp r6, 0
	beq _08199B6E
	ldr r0, =task_free_buf_after_copying_tile_data_to_vram
	movs r1, 0
	bl CreateTask
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r2, r5, 16
	lsrs r2, 16
	str r7, [sp]
	mov r0, r8
	adds r1, r6, 0
	mov r3, r9
	bl copy_decompressed_tile_data_to_vram
	ldr r2, =gTasks
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r2
	strh r0, [r1, 0x8]
	adds r0, r4, 0
	movs r1, 0x1
	adds r2, r6, 0
	bl SetWordTaskArg
_08199B6E:
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end copy_decompressed_tile_data_to_vram_autofree

	thumb_func_start task_free_buf_after_copying_tile_data_to_vram
@ void task_free_buf_after_copying_tile_data_to_vram(int task_id)
task_free_buf_after_copying_tile_data_to_vram: @ 8199B84
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0x8
	ldrsh r0, [r0, r1]
	bl CheckForSpaceForDma3Request
	lsls r0, 16
	cmp r0, 0
	bne _08199BB4
	adds r0, r4, 0
	movs r1, 0x1
	bl GetWordTaskArg
	bl Free
	adds r0, r4, 0
	bl DestroyTask
_08199BB4:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end task_free_buf_after_copying_tile_data_to_vram

	thumb_func_start malloc_and_decompress
@ void *malloc_and_decompress(void *src, int *size)
malloc_and_decompress: @ 8199BC0
	push {r4,r5,lr}
	adds r5, r0, 0
	ldrb r0, [r5, 0x1]
	strb r0, [r1]
	ldrb r0, [r5, 0x2]
	strb r0, [r1, 0x1]
	ldrb r0, [r5, 0x3]
	strb r0, [r1, 0x2]
	movs r0, 0
	strb r0, [r1, 0x3]
	ldr r0, [r1]
	bl Alloc
	adds r4, r0, 0
	cmp r4, 0
	beq _08199BE8
	adds r0, r5, 0
	adds r1, r4, 0
	bl LZ77UnCompWram
_08199BE8:
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end malloc_and_decompress

	thumb_func_start copy_decompressed_tile_data_to_vram
@ s16 copy_decompressed_tile_data_to_vram(u8 bg_id, int src, u16 size, u16 offset, u8 mode)
copy_decompressed_tile_data_to_vram: @ 8199BF0
	push {r4,lr}
	adds r4, r1, 0
	ldr r1, [sp, 0x8]
	lsls r0, 24
	lsrs r0, 24
	lsls r2, 16
	lsrs r2, 16
	lsls r3, 16
	lsrs r3, 16
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0
	beq _08199C18
	cmp r1, 0x1
	beq _08199C20
	ldr r0, =0x0000ffff
	b _08199C2A
	.pool
_08199C18:
	adds r1, r4, 0
	bl LoadBgTiles
	b _08199C26
_08199C20:
	adds r1, r4, 0
	bl LoadBgTilemap
_08199C26:
	lsls r0, 16
	lsrs r0, 16
_08199C2A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end copy_decompressed_tile_data_to_vram

	thumb_func_start sub_8199C30
sub_8199C30: @ 8199C30
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	adds r5, r2, 0
	ldr r4, [sp, 0x28]
	ldr r2, [sp, 0x2C]
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp]
	lsls r5, 24
	lsrs r5, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x4]
	lsls r4, 24
	lsrs r4, 24
	lsls r2, 24
	lsrs r2, 24
	mov r10, r2
	bl GetBgTilemapBuffer
	mov r8, r0
	adds r0, r5, r4
	cmp r5, r0
	bge _08199CA8
	mov r9, r0
_08199C6E:
	ldr r3, [sp]
	ldr r1, [sp, 0x4]
	adds r0, r3, r1
	adds r7, r5, 0x1
	cmp r3, r0
	bge _08199CA0
	lsls r6, r5, 5
	ldr r1, =0x00000fff
	mov r12, r1
	mov r1, r10
	lsls r5, r1, 12
	adds r4, r0, 0
_08199C86:
	adds r1, r6, r3
	lsls r1, 1
	add r1, r8
	ldrh r2, [r1]
	mov r0, r12
	ands r0, r2
	orrs r0, r5
	strh r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r4
	blt _08199C86
_08199CA0:
	lsls r0, r7, 24
	lsrs r5, r0, 24
	cmp r5, r9
	blt _08199C6E
_08199CA8:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8199C30

	thumb_func_start sub_8199CBC
sub_8199CBC: @ 8199CBC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	mov r10, r1
	ldr r1, [sp, 0x24]
	ldr r4, [sp, 0x28]
	lsls r0, 24
	lsrs r0, 24
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp]
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r4, 24
	lsrs r4, 24
	mov r8, r4
	bl GetBgTilemapBuffer
	adds r7, r0, 0
	movs r0, 0
	cmp r0, r8
	bcs _08199D2A
_08199CF4:
	movs r2, 0
	adds r6, r0, 0x1
	cmp r2, r5
	bcs _08199D22
	adds r4, r0, 0
	muls r4, r5
	ldr r1, [sp]
	adds r0, r1
	lsls r3, r0, 5
_08199D06:
	adds r1, r4, r2
	lsls r1, 1
	add r1, r10
	adds r0, r3, r2
	add r0, r9
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, r5
	bcc _08199D06
_08199D22:
	lsls r0, r6, 24
	lsrs r0, 24
	cmp r0, r8
	bcc _08199CF4
_08199D2A:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8199CBC

	thumb_func_start sub_8199D3C
sub_8199D3C: @ 8199D3C
	push {r4-r7,lr}
	adds r6, r0, 0
	adds r5, r1, 0
	ldr r0, [sp, 0x14]
	adds r4, r2, 0
	muls r4, r3
	cmp r0, 0x1
	bne _08199D64
	adds r3, r6, 0
	movs r2, 0
	cmp r2, r4
	bge _08199D8C
_08199D54:
	adds r1, r3, r2
	ldrb r0, [r1]
	adds r0, r5
	strb r0, [r1]
	adds r2, 0x1
	cmp r2, r4
	blt _08199D54
	b _08199D8C
_08199D64:
	cmp r4, 0
	ble _08199D8C
	movs r0, 0xFC
	lsls r0, 8
	mov r12, r0
	ldr r0, =0x000003ff
	adds r7, r0, 0
	adds r3, r6, 0
	adds r2, r4, 0
_08199D76:
	ldrh r0, [r3]
	mov r1, r12
	ands r1, r0
	adds r0, r5
	ands r0, r7
	orrs r1, r0
	strh r1, [r3]
	adds r3, 0x2
	subs r2, 0x1
	cmp r2, 0
	bne _08199D76
_08199D8C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_8199D3C

	thumb_func_start sub_8199D98
sub_8199D98: @ 8199D98
	push {lr}
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	pop {r0}
	bx r0
	thumb_func_end sub_8199D98

	thumb_func_start sub_8199DF0
sub_8199DF0: @ 8199DF0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r8, r2
	mov r9, r3
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r5, 0
	movs r1, 0x4
	bl GetBgAttribute
	lsls r0, 16
	movs r7, 0x40
	cmp r0, 0
	bne _08199E16
	movs r7, 0x20
_08199E16:
	adds r0, r5, 0
	movs r1, 0x1
	bl GetBgAttribute
	adds r4, r0, 0
	adds r0, r5, 0
	movs r1, 0xA
	bl GetBgAttribute
	lsls r4, 16
	lsrs r4, 2
	lsls r0, 16
	lsrs r0, 16
	add r0, r8
	muls r0, r7
	adds r4, r0
	lsls r0, r6, 24
	lsls r1, r6, 16
	orrs r0, r1
	lsls r1, r6, 8
	orrs r0, r1
	orrs r0, r6
	movs r1, 0xC0
	lsls r1, 19
	adds r4, r1
	mov r2, r9
	muls r2, r7
	lsls r2, 16
	lsrs r2, 16
	adds r1, r4, 0
	movs r3, 0x1
	bl RequestDma3Fill
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8199DF0

	thumb_func_start box_print
box_print: @ 8199E64
	push {r4-r6,lr}
	sub sp, 0x10
	adds r4, r1, 0
	ldr r6, [sp, 0x20]
	ldr r5, [sp, 0x24]
	ldr r1, [sp, 0x28]
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	str r1, [sp]
	mov r1, sp
	strb r0, [r1, 0x4]
	mov r0, sp
	strb r4, [r0, 0x5]
	strb r2, [r0, 0x6]
	strb r3, [r0, 0x7]
	ldrb r0, [r0, 0x6]
	strb r0, [r1, 0x8]
	mov r0, sp
	ldrb r0, [r0, 0x7]
	strb r0, [r1, 0x9]
	adds r0, r4, 0
	movs r1, 0x2
	bl GetFontAttribute
	mov r1, sp
	strb r0, [r1, 0xA]
	adds r0, r4, 0
	movs r1, 0x3
	bl GetFontAttribute
	mov r1, sp
	strb r0, [r1, 0xB]
	mov r3, sp
	ldrb r2, [r3, 0xC]
	movs r1, 0x10
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r3, 0xC]
	mov r2, sp
	ldrb r0, [r6, 0x1]
	lsls r0, 4
	movs r4, 0xF
	strb r0, [r2, 0xC]
	ldrb r2, [r6]
	adds r0, r4, 0
	ands r0, r2
	ldrb r2, [r3, 0xD]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xD]
	mov r2, sp
	ldrb r0, [r6, 0x2]
	lsls r0, 4
	ands r1, r4
	orrs r1, r0
	strb r1, [r2, 0xD]
	mov r0, sp
	adds r1, r5, 0
	movs r2, 0
	bl AddTextPrinter
	add sp, 0x10
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end box_print

	thumb_func_start AddTextPrinterParametrized2
@ void AddTextPrinterParametrized2(u8 windowId, u8 fontId, u8 x, u8 y, u8 letterSpacing, u8 lineSpacing, struct TextColor *color, u8 speed, u8 *str)
AddTextPrinterParametrized2: @ 8199EEC
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x10
	adds r5, r1, 0
	ldr r1, [sp, 0x28]
	mov r8, r1
	ldr r1, [sp, 0x2C]
	mov r9, r1
	ldr r6, [sp, 0x30]
	ldr r1, [sp, 0x34]
	ldr r4, [sp, 0x38]
	str r4, [sp]
	mov r4, sp
	strb r0, [r4, 0x4]
	mov r0, sp
	strb r5, [r0, 0x5]
	strb r2, [r0, 0x6]
	strb r3, [r0, 0x7]
	mov r2, sp
	ldrb r0, [r0, 0x6]
	strb r0, [r2, 0x8]
	mov r0, sp
	ldrb r0, [r0, 0x7]
	strb r0, [r2, 0x9]
	mov r0, sp
	mov r2, r8
	strb r2, [r0, 0xA]
	mov r2, r9
	strb r2, [r0, 0xB]
	ldrb r3, [r4, 0xC]
	movs r2, 0x10
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r4, 0xC]
	mov r3, sp
	ldrb r0, [r6, 0x1]
	lsls r0, 4
	movs r5, 0xF
	strb r0, [r3, 0xC]
	ldrb r3, [r6]
	adds r0, r5, 0
	ands r0, r3
	ldrb r3, [r4, 0xD]
	ands r2, r3
	orrs r2, r0
	strb r2, [r4, 0xD]
	mov r3, sp
	ldrb r0, [r6, 0x2]
	lsls r0, 4
	ands r2, r5
	orrs r2, r0
	strb r2, [r3, 0xD]
	lsls r1, 24
	lsrs r1, 24
	mov r0, sp
	movs r2, 0
	bl AddTextPrinter
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end AddTextPrinterParametrized2

	thumb_func_start sub_8199F74
sub_8199F74: @ 8199F74
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x10
	adds r6, r1, 0
	ldr r4, [sp, 0x2C]
	ldr r1, [sp, 0x30]
	mov r8, r1
	ldr r7, [sp, 0x34]
	ldr r5, [sp, 0x38]
	ldr r1, [sp, 0x3C]
	mov r9, r1
	lsls r6, 24
	lsrs r6, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	mov r1, r8
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	str r2, [sp]
	mov r1, sp
	strb r0, [r1, 0x4]
	mov r0, sp
	strb r6, [r0, 0x5]
	strb r3, [r0, 0x6]
	strb r4, [r0, 0x7]
	strb r3, [r0, 0x8]
	strb r4, [r0, 0x9]
	strb r5, [r0, 0xA]
	mov r1, r9
	strb r1, [r0, 0xB]
	mov r2, sp
	ldrb r1, [r2, 0xC]
	movs r5, 0x10
	negs r5, r5
	adds r0, r5, 0
	ands r0, r1
	strb r0, [r2, 0xC]
	adds r0, r6, 0
	movs r1, 0x5
	bl GetFontAttribute
	mov r3, sp
	lsls r0, 4
	ldrb r2, [r3, 0xC]
	movs r4, 0xF
	adds r1, r4, 0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, 0xC]
	adds r0, r6, 0
	movs r1, 0x6
	bl GetFontAttribute
	mov r2, sp
	adds r1, r4, 0
	ands r1, r0
	ldrb r0, [r2, 0xD]
	ands r5, r0
	orrs r5, r1
	strb r5, [r2, 0xD]
	adds r0, r6, 0
	movs r1, 0x7
	bl GetFontAttribute
	mov r2, sp
	lsls r0, 4
	ldrb r1, [r2, 0xD]
	ands r4, r1
	orrs r4, r0
	strb r4, [r2, 0xD]
	mov r0, sp
	mov r1, r8
	adds r2, r7, 0
	bl AddTextPrinter
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8199F74

	thumb_func_start sub_819A024
sub_819A024: @ 819A024
	push {r4-r7,lr}
	sub sp, 0xC
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r2, 16
	lsrs r4, r2, 16
	lsls r3, 16
	lsrs r5, r3, 16
	movs r2, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldrb r0, [r3]
	ldr r6, =gStringVar4
	cmp r0, 0xFF
	beq _0819A04C
_0819A042:
	adds r2, 0x1
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _0819A042
_0819A04C:
	adds r0, r6, 0
	bl StringExpandPlaceholders
	lsls r3, r4, 24
	lsrs r3, 24
	lsls r0, r5, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	adds r0, r7, 0
	movs r1, 0x1
	adds r2, r6, 0
	bl PrintTextOnWindow
	add sp, 0xC
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819A024

	thumb_func_start sub_819A080
sub_819A080: @ 819A080
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	str r0, [sp]
	str r1, [sp, 0x4]
	ldr r0, [sp, 0x48]
	ldr r4, [sp, 0x4C]
	ldr r1, [sp, 0x50]
	ldr r5, [sp, 0x54]
	lsls r2, 16
	lsrs r2, 16
	str r2, [sp, 0x8]
	lsls r3, 16
	lsrs r3, 16
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0xC]
	lsls r4, 16
	lsrs r4, 16
	lsls r1, 16
	lsrs r1, 16
	lsls r5, 16
	lsrs r5, 16
	ldr r2, [sp, 0x4]
	ldrh r0, [r2, 0x4]
	ldr r2, [sp, 0xC]
	subs r0, r2
	ldr r2, [sp, 0x8]
	adds r2, r1, r2
	str r2, [sp, 0x10]
	cmp r0, r1
	bge _0819A0CC
	ldr r1, [sp, 0x8]
	adds r0, r1
	str r0, [sp, 0x10]
_0819A0CC:
	ldr r2, [sp, 0x4]
	ldrh r1, [r2, 0x6]
	subs r0, r1, r4
	cmp r0, r5
	bge _0819A0DE
	adds r0, r3, r1
	subs r0, r4
	str r0, [sp, 0x14]
	b _0819A0E2
_0819A0DE:
	adds r5, r3, r5
	str r5, [sp, 0x14]
_0819A0E2:
	ldr r0, [sp]
	ldrh r1, [r0, 0x4]
	movs r2, 0x7
	adds r0, r1, 0
	ands r0, r2
	adds r1, r0
	asrs r1, 3
	str r1, [sp, 0x18]
	ldr r0, [sp, 0x4]
	ldrh r1, [r0, 0x4]
	adds r0, r1, 0
	ands r0, r2
	adds r1, r0
	asrs r1, 3
	str r1, [sp, 0x1C]
	mov r12, r3
	mov r8, r4
	ldr r1, [sp, 0x14]
	cmp r12, r1
	blt _0819A10C
	b _0819A24A
_0819A10C:
	ldr r5, [sp, 0x8]
	ldr r6, [sp, 0xC]
	mov r2, r12
	adds r2, 0x1
	str r2, [sp, 0x20]
	mov r0, r8
	adds r0, 0x1
	str r0, [sp, 0x24]
	ldr r1, [sp, 0x10]
	cmp r5, r1
	blt _0819A124
	b _0819A23A
_0819A124:
	movs r7, 0x1
	movs r2, 0xF0
	mov r10, r2
	movs r0, 0xF
	mov r9, r0
_0819A12E:
	asrs r0, r5, 1
	movs r1, 0x3
	ands r0, r1
	ldr r2, [sp]
	ldr r1, [r2]
	adds r1, r0
	asrs r0, r5, 3
	lsls r0, 5
	adds r1, r0
	mov r2, r12
	asrs r0, r2, 3
	ldr r2, [sp, 0x18]
	muls r0, r2
	lsls r0, 5
	adds r1, r0
	mov r2, r12
	lsls r0, r2, 29
	lsrs r0, 27
	adds r3, r1, r0
	asrs r0, r6, 1
	movs r1, 0x3
	ands r0, r1
	ldr r2, [sp, 0x4]
	ldr r1, [r2]
	adds r1, r0
	asrs r0, r6, 3
	lsls r0, 5
	adds r1, r0
	mov r2, r8
	asrs r0, r2, 3
	ldr r2, [sp, 0x1C]
	muls r0, r2
	lsls r0, 5
	adds r1, r0
	mov r2, r8
	lsls r0, r2, 29
	lsrs r0, 27
	adds r4, r1, r0
	adds r0, r4, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A1DA
	subs r4, 0x1
	adds r0, r6, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A1B2
	ldrh r0, [r4]
	ldr r2, =0x00000fff
	ands r2, r0
	adds r0, r5, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A1A8
	ldrb r1, [r3]
	mov r0, r10
	ands r0, r1
	lsls r0, 8
	b _0819A22A
	.pool
_0819A1A8:
	ldrb r1, [r3]
	mov r0, r9
	ands r0, r1
	lsls r0, 12
	b _0819A22A
_0819A1B2:
	ldrh r0, [r4]
	ldr r2, =0x0000f0ff
	ands r2, r0
	adds r0, r5, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A1D0
	ldrb r1, [r3]
	mov r0, r10
	ands r0, r1
	lsls r0, 4
	b _0819A22A
	.pool
_0819A1D0:
	ldrb r1, [r3]
	mov r0, r9
	ands r0, r1
	lsls r0, 8
	b _0819A22A
_0819A1DA:
	adds r0, r6, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A206
	ldrh r0, [r4]
	ldr r2, =0x0000ff0f
	ands r2, r0
	adds r0, r5, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A1FC
	ldrb r1, [r3]
	mov r0, r10
	b _0819A228
	.pool
_0819A1FC:
	ldrb r1, [r3]
	mov r0, r9
	ands r0, r1
	lsls r0, 4
	b _0819A22A
_0819A206:
	ldrh r0, [r4]
	ldr r2, =0x0000fff0
	ands r2, r0
	adds r0, r5, 0
	ands r0, r7
	cmp r0, 0
	beq _0819A224
	ldrb r1, [r3]
	mov r0, r10
	ands r0, r1
	lsrs r0, 4
	b _0819A22A
	.pool
_0819A224:
	ldrb r1, [r3]
	mov r0, r9
_0819A228:
	ands r0, r1
_0819A22A:
	orrs r2, r0
	strh r2, [r4]
	adds r5, 0x1
	adds r6, 0x1
	ldr r0, [sp, 0x10]
	cmp r5, r0
	bge _0819A23A
	b _0819A12E
_0819A23A:
	ldr r1, [sp, 0x20]
	mov r12, r1
	ldr r2, [sp, 0x24]
	mov r8, r2
	ldr r0, [sp, 0x14]
	cmp r12, r0
	bge _0819A24A
	b _0819A10C
_0819A24A:
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819A080

	thumb_func_start sub_819A25C
sub_819A25C: @ 819A25C
	push {r4,lr}
	adds r4, r0, 0
	adds r0, r1, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, 16
	lsrs r0, 16
	bl sub_80D30B0
	adds r1, r4, 0
	movs r2, 0x20
	bl LoadPalette
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_819A25C

	thumb_func_start sub_819A27C
sub_819A27C: @ 819A27C
	push {r4-r6,lr}
	sub sp, 0x8
	adds r6, r0, 0
	adds r0, r1, 0
	adds r1, r2, 0
	adds r4, r3, 0
	ldr r5, [sp, 0x18]
	lsls r6, 24
	lsrs r6, 24
	lsls r0, 16
	lsrs r0, 16
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 16
	lsrs r5, 16
	movs r2, 0x1
	bl sub_80D2EDC
	adds r1, r0, 0
	movs r0, 0x20
	str r0, [sp]
	str r0, [sp, 0x4]
	adds r0, r6, 0
	adds r2, r4, 0
	adds r3, r5, 0
	bl BlitBitmapToWindow
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_819A27C

	thumb_func_start sub_819A2BC
sub_819A2BC: @ 819A2BC
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0x1
	beq _0819A2DC
	cmp r1, 0x1
	ble _0819A2D2
	cmp r1, 0x2
	beq _0819A2E4
_0819A2D2:
	ldr r0, =gUnknown_08DC4318
	b _0819A2E6
	.pool
_0819A2DC:
	ldr r0, =gUnknown_08DC4338
	b _0819A2E6
	.pool
_0819A2E4:
	ldr r0, =gUnknown_08DC4358
_0819A2E6:
	adds r1, r2, 0
	movs r2, 0x20
	bl LoadPalette
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819A2BC

	thumb_func_start blit_move_info_icon
@ void blit_move_info_icon(u8 windowId, u8 a2, u16 x, u16 y)
blit_move_info_icon: @ 819A2F8
	push {r4,r5,lr}
	sub sp, 0x18
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsls r2, 16
	lsrs r2, 16
	lsls r3, 16
	lsrs r3, 16
	ldr r4, =gUnknown_0860F0D4
	lsrs r1, 22
	adds r1, r4
	ldrh r5, [r1, 0x2]
	lsls r5, 5
	ldr r4, =gUnknown_08DC4378
	adds r5, r4
	movs r4, 0x80
	str r4, [sp]
	str r4, [sp, 0x4]
	str r2, [sp, 0x8]
	str r3, [sp, 0xC]
	ldrb r2, [r1]
	str r2, [sp, 0x10]
	ldrb r1, [r1, 0x1]
	str r1, [sp, 0x14]
	adds r1, r5, 0
	movs r2, 0
	movs r3, 0
	bl BlitBitmapRectToWindow
	add sp, 0x18
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end blit_move_info_icon

	thumb_func_start sub_819A344
sub_819A344: @ 819A344
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r3, r0, 24
	lsls r2, 24
	lsrs r2, 24
	adds r5, r1, 0
	movs r1, 0xFC
	strb r1, [r5]
	adds r5, 0x1
	movs r0, 0x1
	strb r0, [r5]
	adds r5, 0x1
	strb r2, [r5]
	adds r5, 0x1
	strb r1, [r5]
	adds r5, 0x1
	movs r0, 0x3
	strb r0, [r5]
	adds r5, 0x1
	adds r2, 0x1
	strb r2, [r5]
	adds r5, 0x1
	cmp r3, 0x4
	bhi _0819A43C
	lsls r0, r3, 2
	ldr r1, =_0819A384
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819A384:
	.4byte _0819A398
	.4byte _0819A3A8
	.4byte _0819A3D6
	.4byte _0819A404
	.4byte _0819A414
_0819A398:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r0, r5, 0
	bl StringCopy
	b _0819A43C
	.pool
_0819A3A8:
	bl IsNationalPokedexEnabled
	cmp r0, 0
	beq _0819A3B8
	movs r0, 0x1
	bl pokedex_count
	b _0819A3BE
_0819A3B8:
	movs r0, 0x1
	bl sub_80C0844
_0819A3BE:
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	adds r0, r5, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r5, r0, 0
	movs r0, 0xFF
	strb r0, [r5]
	b _0819A43C
_0819A3D6:
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldrh r1, [r0, 0xE]
	adds r0, r5, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r5, r0, 0
	movs r0, 0xF0
	strb r0, [r5]
	adds r5, 0x1
	ldr r0, [r4]
	ldrb r1, [r0, 0x10]
	adds r0, r5, 0
	movs r2, 0x2
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	b _0819A43C
	.pool
_0819A404:
	ldr r0, =gMapHeader
	ldrb r1, [r0, 0x14]
	adds r0, r5, 0
	bl sub_81245DC
	b _0819A43C
	.pool
_0819A414:
	ldr r4, =0x00000867
	movs r6, 0
	adds r7, r5, 0x1
_0819A41A:
	lsls r0, r4, 16
	lsrs r0, 16
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _0819A42A
	adds r6, 0x1
_0819A42A:
	adds r4, 0x1
	ldr r0, =0x0000086e
	cmp r4, r0
	ble _0819A41A
	adds r0, r6, 0
	subs r0, 0x5F
	strb r0, [r5]
	movs r0, 0xFF
	strb r0, [r7]
_0819A43C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819A344

	thumb_func_start sub_819A44C
sub_819A44C: @ 819A44C
	push {r4,r5,lr}
	adds r5, r0, 0
	ldrb r4, [r5, 0x5]
	lsrs r4, 4
	movs r0, 0x65
	bl IndexOfSpritePaletteTag
	lsls r0, 24
	lsls r4, 16
	lsrs r4, 16
	lsrs r0, 24
	cmp r4, r0
	bne _0819A4BA
	adds r0, r5, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0819A4B0
	ldrh r1, [r5, 0x2E]
	movs r2, 0x2E
	ldrsh r0, [r5, r2]
	cmp r0, 0
	beq _0819A484
	subs r0, r1, 0x1
	strh r0, [r5, 0x2E]
	b _0819A4C2
_0819A484:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x5
	bl __umodsi3
	lsls r0, 16
	cmp r0, 0
	bne _0819A4A6
	adds r0, r5, 0
	movs r1, 0
	bl StartSpriteAnim
	movs r0, 0x20
	strh r0, [r5, 0x2E]
	b _0819A4C2
_0819A4A6:
	adds r0, r5, 0
	movs r1, 0x1
	bl StartSpriteAnim
	b _0819A4C2
_0819A4B0:
	adds r0, r5, 0
	movs r1, 0x1
	bl StartSpriteAnimIfDifferent
	b _0819A4C2
_0819A4BA:
	adds r0, r5, 0
	movs r1, 0
	bl StartSpriteAnimIfDifferent
_0819A4C2:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_819A44C

	thumb_func_start sub_819A4C8
sub_819A4C8: @ 819A4C8
	push {lr}
	bl AnimateSprites
	bl BuildOamBuffer
	bl RunTextPrinters
	bl UpdatePaletteFade
	bl RunTasks
	pop {r0}
	bx r0
	thumb_func_end sub_819A4C8

	thumb_func_start sub_819A4E4
sub_819A4E4: @ 819A4E4
	push {lr}
	bl LoadOam
	bl ProcessSpriteCopyRequests
	bl TransferPlttBuffer
	pop {r0}
	bx r0
	thumb_func_end sub_819A4E4

	thumb_func_start sub_819A4F8
sub_819A4F8: @ 819A4F8
	push {lr}
	ldr r0, =gUnknown_0300127C
	movs r1, 0
	str r1, [r0]
	ldr r0, =sub_819A514
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819A4F8

	thumb_func_start sub_819A514
sub_819A514: @ 819A514
	push {r4,r5,lr}
	sub sp, 0xC
	ldr r0, =gMain
	movs r1, 0x87
	lsls r1, 3
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0xA
	bls _0819A528
	b _0819A98E
_0819A528:
	lsls r0, 2
	ldr r1, =_0819A53C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819A53C:
	.4byte _0819A568
	.4byte _0819A5C0
	.4byte _0819A69C
	.4byte _0819A77C
	.4byte _0819A7CC
	.4byte _0819A868
	.4byte _0819A8A4
	.4byte _0819A8AC
	.4byte _0819A8C4
	.4byte _0819A8DC
	.4byte _0819A8FC
_0819A568:
	ldr r4, =gUnknown_0203CE3C
	ldr r0, [r4]
	cmp r0, 0
	beq _0819A578
	bl Free
	movs r0, 0
	str r0, [r4]
_0819A578:
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0
	str r0, [sp, 0x8]
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, =0x05006000
	add r0, sp, 0x8
	bl CpuSet
	movs r0, 0
	bl ResetBgsAndClearDma3BusyFlags
	ldr r1, =gUnknown_08610428
	movs r0, 0
	movs r2, 0x3
	bl InitBgsFromTemplates
	ldr r0, =gUnknown_08610434
	bl InitWindows
	bl DeactivateAllTextPrinters
	b _0819A8E6
	.pool
_0819A5C0:
	ldr r5, =gUnknown_0203CE2C
	movs r4, 0x88
	lsls r4, 3
	adds r0, r4, 0
	bl Alloc
	str r0, [r5]
	ldr r5, =gUnknown_0203CE30
	adds r0, r4, 0
	bl AllocZeroed
	str r0, [r5]
	ldr r5, =gUnknown_0203CE34
	movs r4, 0x80
	lsls r4, 4
	adds r0, r4, 0
	bl Alloc
	str r0, [r5]
	ldr r5, =gUnknown_0203CE38
	adds r0, r4, 0
	bl AllocZeroed
	str r0, [r5]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x50
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x52
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x54
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4C
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x40
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x44
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x42
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x46
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0
	bl SetGpuReg
	ldr r1, =gMain
	movs r3, 0x87
	lsls r3, 3
	adds r1, r3
	b _0819A8EE
	.pool
_0819A69C:
	bl ResetPaletteFade
	bl ResetSpriteData
	bl ResetTasks
	bl FreeAllSpritePalettes
	ldr r0, =gUnknown_08DC0754
	ldr r5, =gUnknown_0203CE2C
	ldr r1, [r5]
	movs r2, 0x88
	lsls r2, 2
	bl CpuSet
	ldr r0, =gUnknown_0861033C
	ldr r4, =gUnknown_0203CE30
	ldr r1, [r4]
	movs r2, 0x30
	bl CpuSet
	ldr r1, [r5]
	movs r2, 0x88
	lsls r2, 3
	movs r0, 0x1
	movs r3, 0
	bl LoadBgTiles
	ldr r1, [r4]
	movs r0, 0x3
	movs r2, 0x60
	movs r3, 0
	bl LoadBgTiles
	ldr r0, =gUnknown_08DC0B94
	ldr r4, =gUnknown_0203CE34
	ldr r1, [r4]
	movs r2, 0x80
	lsls r2, 3
	bl CpuSet
	ldr r1, [r4]
	movs r2, 0x80
	lsls r2, 4
	movs r0, 0x1
	movs r3, 0
	bl LoadBgTilemap
	ldr r0, =gUnknown_08DC0714
	movs r1, 0
	movs r2, 0x40
	bl LoadPalette
	ldr r4, =gUnknown_0861046C
	adds r0, r4, 0
	movs r1, 0xF0
	movs r2, 0x8
	bl LoadPalette
	adds r0, r4, 0
	movs r1, 0xE0
	movs r2, 0xA
	bl LoadPalette
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r0, [r1, 0x6]
	cmp r0, 0x1
	bne _0819A738
	ldr r0, =gPlttBufferUnfaded
	movs r2, 0xA9
	lsls r2, 2
	adds r1, r2
	ldrh r1, [r1]
	movs r3, 0xE4
	lsls r3, 1
	adds r0, r3
	strh r1, [r0]
_0819A738:
	ldr r0, =gUnknown_0861039C
	movs r1, 0x20
	movs r2, 0x4
	bl LoadPalette
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819A8EE
	.pool
_0819A77C:
	ldr r0, =gUnknown_0203CE38
	ldr r1, [r0]
	movs r0, 0x3
	bl SetBgTilemapBuffer
	ldr r5, =gUnknown_0861023C
	movs r4, 0x8
	str r4, [sp]
	str r4, [sp, 0x4]
	movs r0, 0x3
	adds r1, r5, 0
	movs r2, 0xB
	movs r3, 0x4
	bl CopyToBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	movs r0, 0x3
	adds r1, r5, 0
	movs r2, 0x2
	movs r3, 0x4
	bl CopyToBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	movs r0, 0x3
	adds r1, r5, 0
	movs r2, 0x14
	movs r3, 0x4
	bl CopyToBgTilemapBufferRect
	movs r0, 0x3
	bl CopyBgTilemapBufferToVram
	b _0819A8E6
	.pool
_0819A7CC:
	ldr r0, =gUnknown_086103F4
	bl LoadSpritePalettes
	ldr r0, =gUnknown_086103BC
	bl LoadSpriteSheets
	ldr r0, =gUnknown_086103E4
	bl LoadCompressedObjectPic
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	ldr r0, =sub_819A4E4
	bl SetVBlankCallback
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	movs r1, 0x9A
	lsls r1, 5
	movs r0, 0
	bl SetGpuReg
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r0, [r0, 0x6]
	cmp r0, 0x1
	bne _0819A854
	movs r0, 0x58
	movs r1, 0x98
	movs r2, 0x20
	movs r3, 0x60
	bl sub_819C5D0
	movs r0, 0x3
	bl ShowBg
	ldr r1, =0x00001248
	movs r0, 0x50
	bl SetGpuReg
	ldr r1, =0x0000040b
	movs r0, 0x52
	bl SetGpuReg
	b _0819A85A
	.pool
_0819A854:
	movs r0, 0x3
	bl HideBg
_0819A85A:
	ldr r1, =gMain
	movs r3, 0x87
	lsls r3, 3
	adds r1, r3
	b _0819A8EE
	.pool
_0819A868:
	ldr r4, =gUnknown_0300127C
	ldr r1, [r4]
	ldrb r0, [r1, 0x6]
	cmp r0, 0x1
	bne _0819A878
	ldr r0, =gUnknown_0203CF20
	ldrb r0, [r0]
	strb r0, [r1, 0x3]
_0819A878:
	bl sub_819A9AC
	bl sub_819AA18
	ldr r0, [r4]
	ldrb r0, [r0, 0x6]
	cmp r0, 0x1
	bne _0819A88C
	bl sub_819BE34
_0819A88C:
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819A8EE
	.pool
_0819A8A4:
	bl sub_819BA64
	movs r0, 0x2
	b _0819A8E2
_0819A8AC:
	bl sub_819BCF8
	movs r0, 0x5
	bl PutWindowTilemap
	ldr r1, =gMain
	movs r3, 0x87
	lsls r3, 3
	adds r1, r3
	b _0819A8EE
	.pool
_0819A8C4:
	bl sub_819B9E8
	movs r0, 0x1
	bl PutWindowTilemap
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819A8EE
	.pool
_0819A8DC:
	bl sub_819B9B4
	movs r0, 0
_0819A8E2:
	bl PutWindowTilemap
_0819A8E6:
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
_0819A8EE:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0819A98E
	.pool
_0819A8FC:
	ldr r0, =sub_819C69C
	movs r1, 0
	bl CreateTask
	ldr r2, =gUnknown_0300127C
	ldr r1, [r2]
	ldr r3, =0x000002a1
	adds r1, r3
	strb r0, [r1]
	ldr r3, [r2]
	ldrb r5, [r3, 0x6]
	cmp r5, 0
	bne _0819A954
	ldr r4, =gTasks
	ldr r1, =0x000002a1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	strh r5, [r0, 0x8]
	ldr r0, =sub_819B378
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r1, r0, 24
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	strh r5, [r0, 0x8]
	b _0819A988
	.pool
_0819A954:
	ldr r4, =gTasks
	ldr r2, =0x000002a1
	adds r0, r3, r2
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	movs r2, 0
	movs r1, 0x1
	strh r1, [r0, 0x8]
	ldr r1, =0x000002a2
	adds r0, r3, r1
	strb r2, [r0]
	ldr r0, =sub_819B124
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r1, r0, 24
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	movs r1, 0xD
	strh r1, [r0, 0x8]
_0819A988:
	ldr r0, =sub_819A4C8
	bl SetMainCallback2
_0819A98E:
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819A514

	thumb_func_start sub_819A9AC
sub_819A9AC: @ 819A9AC
	push {r4,r5,lr}
	ldr r5, =gUnknown_0300127C
	ldr r4, [r5]
	cmp r4, 0
	bne _0819AA12
	movs r0, 0xAB
	lsls r0, 2
	bl AllocZeroed
	str r0, [r5]
	strb r4, [r0, 0x3]
	ldr r1, [r5]
	movs r0, 0x1
	strb r0, [r1, 0x5]
	ldr r0, [r5]
	strb r4, [r0, 0x6]
	movs r2, 0
	movs r4, 0x6C
	movs r3, 0
_0819A9D2:
	ldr r0, [r5]
	adds r1, r2, 0
	muls r1, r4
	adds r0, r1
	strb r3, [r0, 0x10]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _0819A9D2
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x2
	beq _0819AA0C
	movs r0, 0
	bl sub_819B484
	b _0819AA12
	.pool
_0819AA0C:
	movs r0, 0
	bl sub_819B63C
_0819AA12:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_819A9AC

	thumb_func_start sub_819AA18
sub_819AA18: @ 819AA18
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r4, 0
	mov r8, r4
	ldr r7, =gSprites
_0819AA24:
	lsls r1, r4, 3
	adds r1, r4
	lsls r1, 2
	subs r1, r4
	adds r1, 0x20
	lsls r1, 16
	asrs r1, 16
	ldr r0, =gUnknown_086105D8
	movs r2, 0x40
	movs r3, 0x1
	bl CreateSprite
	ldr r6, =gUnknown_0300127C
	ldr r2, [r6]
	movs r5, 0x6C
	adds r1, r4, 0
	muls r1, r5
	adds r2, r1
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r2, 0xE]
	ldrh r1, [r2, 0xE]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	mov r1, r8
	strh r1, [r0, 0x2E]
	adds r0, r4, 0
	bl sub_819ADAC
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x5
	bls _0819AA24
	ldr r0, [r6]
	ldrb r1, [r0, 0x3]
	ldr r4, =gSprites
	muls r1, r5
	adds r0, r1
	ldrh r0, [r0, 0xE]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldr r0, =gUnknown_086105F0
	movs r2, 0x20
	ldrsh r1, [r1, r2]
	movs r2, 0x58
	movs r3, 0
	bl CreateSprite
	ldr r1, [r6]
	movs r5, 0
	strb r0, [r1, 0x4]
	ldr r0, =gUnknown_08610608
	movs r1, 0xB0
	movs r2, 0x70
	movs r3, 0
	bl CreateSprite
	ldr r1, [r6]
	strb r0, [r1, 0x1]
	ldr r0, =gUnknown_08610620
	movs r1, 0xB0
	movs r2, 0x90
	movs r3, 0
	bl CreateSprite
	ldr r1, [r6]
	strb r0, [r1, 0x2]
	ldr r0, [r6]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x28
	strb r5, [r0]
	ldr r0, [r6]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x29
	strb r5, [r0]
	ldr r0, [r6]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x28
	strb r5, [r0]
	ldr r0, [r6]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x29
	strb r5, [r0]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819AA18

	thumb_func_start sub_819AB40
sub_819AB40: @ 819AB40
	push {r4-r6,lr}
	movs r4, 0
_0819AB44:
	ldr r6, =gUnknown_0300127C
	ldr r1, [r6]
	movs r0, 0x6C
	muls r0, r4
	adds r1, r0
	ldrh r1, [r1, 0xE]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r5, =gSprites
	adds r0, r5
	bl DestroySprite
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x5
	bls _0819AB44
	ldr r0, [r6]
	ldrb r1, [r0, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	bl DestroySprite
	ldr r0, [r6]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	bl DestroySprite
	ldr r0, [r6]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	bl DestroySprite
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819AB40

	thumb_func_start sub_819ABA8
sub_819ABA8: @ 819ABA8
	push {r4,lr}
	lsls r0, 24
	cmp r0, 0
	ble _0819ABC8
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r3, [r1, 0x3]
	adds r2, r0, 0
	cmp r3, 0x5
	beq _0819ABC4
	adds r0, r3, 0x1
	b _0819ABDE
	.pool
_0819ABC4:
	movs r0, 0
	b _0819ABDE
_0819ABC8:
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r3, [r1, 0x3]
	adds r2, r0, 0
	cmp r3, 0
	beq _0819ABDC
	subs r0, r3, 0x1
	b _0819ABDE
	.pool
_0819ABDC:
	movs r0, 0x5
_0819ABDE:
	strb r0, [r1, 0x3]
	ldr r2, [r2]
	ldrb r3, [r2, 0x3]
	ldr r4, =gSprites
	ldrb r0, [r2, 0x4]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	movs r0, 0x6C
	muls r0, r3
	adds r2, r0
	ldrh r2, [r2, 0xE]
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r4
	ldrh r0, [r0, 0x20]
	strh r0, [r1, 0x20]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819ABA8

	thumb_func_start sub_819AC10
sub_819AC10: @ 819AC10
	push {lr}
	lsls r0, 24
	cmp r0, 0
	ble _0819AC30
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r3, [r1]
	adds r2, r0, 0
	cmp r3, 0x2
	beq _0819AC2C
	adds r0, r3, 0x1
	b _0819AC46
	.pool
_0819AC2C:
	movs r0, 0
	b _0819AC46
_0819AC30:
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r3, [r1]
	adds r2, r0, 0
	cmp r3, 0
	beq _0819AC44
	subs r0, r3, 0x1
	b _0819AC46
	.pool
_0819AC44:
	movs r0, 0x2
_0819AC46:
	strb r0, [r1]
	ldr r3, =gSprites
	ldr r2, [r2]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r0, [r2, 0x2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819AC10

	thumb_func_start sub_819AC78
sub_819AC78: @ 819AC78
	push {lr}
	lsls r0, 24
	cmp r0, 0
	ble _0819AC98
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r3, [r1, 0x7]
	adds r2, r0, 0
	cmp r3, 0x1
	beq _0819AC94
	adds r0, r3, 0x1
	b _0819ACAE
	.pool
_0819AC94:
	movs r0, 0
	b _0819ACAE
_0819AC98:
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r3, [r1, 0x7]
	adds r2, r0, 0
	cmp r3, 0
	beq _0819ACAC
	subs r0, r3, 0x1
	b _0819ACAE
	.pool
_0819ACAC:
	movs r0, 0x1
_0819ACAE:
	strb r0, [r1, 0x7]
	ldr r3, =gSprites
	ldr r2, [r2]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2, 0x7]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r0, [r2, 0x2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2, 0x7]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819AC78

	thumb_func_start sub_819ACE0
sub_819ACE0: @ 819ACE0
	push {r4-r6,lr}
	ldr r5, =gUnknown_0300127C
	ldr r0, [r5]
	ldrb r6, [r0, 0x3]
	movs r1, 0x6C
	adds r4, r6, 0
	muls r4, r1
	adds r0, r4
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	beq _0819AD60
	movs r0, 0x64
	bl IndexOfSpritePaletteTag
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r1, [r5]
	ldrb r0, [r1, 0x5]
	cmp r0, 0x3
	bne _0819AD44
	adds r0, r1, r4
	ldrb r0, [r0, 0x10]
	cmp r0, 0x1
	bne _0819AD44
	movs r2, 0
	ldrb r0, [r1, 0x10]
	cmp r0, 0x2
	beq _0819AD32
	movs r4, 0x6C
_0819AD1A:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bhi _0819AD32
	ldr r0, [r5]
	adds r1, r2, 0
	muls r1, r4
	adds r0, r1
	ldrb r0, [r0, 0x10]
	cmp r0, 0x2
	bne _0819AD1A
_0819AD32:
	cmp r2, 0x6
	beq _0819AD9C
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	movs r0, 0x6C
	muls r0, r2
	adds r1, r0
	movs r0, 0x1
	strb r0, [r1, 0x10]
_0819AD44:
	ldr r2, =gUnknown_0300127C
	ldr r1, [r2]
	movs r0, 0x6C
	muls r0, r6
	adds r1, r0
	movs r0, 0
	strb r0, [r1, 0x10]
	ldr r1, [r2]
	ldrb r0, [r1, 0x5]
	subs r0, 0x1
	b _0819AD78
	.pool
_0819AD60:
	movs r0, 0x65
	bl IndexOfSpritePaletteTag
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r0, [r5]
	adds r1, r0, r4
	ldrb r0, [r0, 0x5]
	strb r0, [r1, 0x10]
	ldr r1, [r5]
	ldrb r0, [r1, 0x5]
	adds r0, 0x1
_0819AD78:
	strb r0, [r1, 0x5]
	ldr r2, =gSprites
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	movs r1, 0x6C
	muls r1, r6
	adds r0, r1
	ldrh r0, [r0, 0xE]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	lsls r3, 4
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
_0819AD9C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819ACE0

	thumb_func_start sub_819ADAC
sub_819ADAC: @ 819ADAC
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	movs r1, 0x6C
	muls r1, r4
	adds r0, r1
	ldrb r0, [r0, 0x10]
	cmp r0, 0
	beq _0819ADCC
	movs r0, 0x65
	b _0819ADCE
	.pool
_0819ADCC:
	movs r0, 0x64
_0819ADCE:
	bl IndexOfSpritePaletteTag
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r2, =gSprites
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	movs r1, 0x6C
	muls r1, r4
	adds r0, r1
	ldrh r0, [r0, 0xE]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	lsls r3, 4
	ldrb r2, [r1, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819ADAC

	thumb_func_start sub_819AE08
sub_819AE08: @ 819AE08
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r6, r0, r1
	movs r1, 0x8
	ldrsh r0, [r6, r1]
	cmp r0, 0x7
	beq _0819AE64
	cmp r0, 0x7
	bgt _0819AE30
	cmp r0, 0x6
	beq _0819AE36
	b _0819AF50
	.pool
_0819AE30:
	cmp r0, 0x8
	beq _0819AEE8
	b _0819AF50
_0819AE36:
	ldr r1, =gPlttBufferUnfaded
	ldr r0, =gPlttBufferFaded
	movs r2, 0xE4
	lsls r2, 1
	adds r0, r2
	ldrh r0, [r0]
	adds r1, r2
	movs r2, 0
	strh r0, [r1]
	movs r0, 0x1
	negs r0, r0
	str r2, [sp]
	movs r1, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	movs r0, 0x7
	strh r0, [r6, 0x8]
	b _0819AF50
	.pool
_0819AE64:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _0819AF50
	ldr r4, =gUnknown_0300127C
	ldr r0, [r4]
	ldr r2, =0x000002a1
	adds r0, r2
	ldrb r0, [r0]
	bl DestroyTask
	ldr r1, [r4]
	movs r3, 0xA6
	lsls r3, 2
	adds r0, r1, r3
	ldr r0, [r0]
	movs r2, 0xA8
	lsls r2, 2
	adds r1, r2
	bl sub_819F444
	bl sub_819AB40
	ldr r4, =gUnknown_0203CE2C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE30
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE34
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE38
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	bl FreeAllWindowBuffers
	movs r0, 0x8
	strh r0, [r6, 0x8]
	b _0819AF50
	.pool
_0819AEE8:
	ldr r4, =gUnknown_0300127C
	ldr r1, [r4]
	ldr r0, =gPlttBufferUnfaded
	movs r3, 0xE4
	lsls r3, 1
	adds r0, r3
	ldrh r0, [r0]
	adds r3, 0xDC
	adds r1, r3
	strh r0, [r1]
	adds r0, r2, 0
	bl DestroyTask
	ldr r1, [r4]
	movs r0, 0x1
	strb r0, [r1, 0x6]
	ldr r0, [r4]
	ldrb r6, [r0, 0x3]
	ldr r4, =gUnknown_0203CE3C
	movs r0, 0x96
	lsls r0, 2
	bl AllocZeroed
	str r0, [r4]
	movs r4, 0
_0819AF1A:
	ldr r5, =gUnknown_0203CE3C
	ldr r1, [r5]
	movs r0, 0x64
	muls r0, r4
	adds r0, r1
	ldr r1, =gUnknown_0300127C
	ldr r1, [r1]
	movs r2, 0x6C
	muls r2, r4
	adds r1, r2
	adds r1, 0x14
	movs r2, 0x64
	bl memcpy
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x5
	bls _0819AF1A
	ldr r1, [r5]
	ldr r0, =sub_819A514
	str r0, [sp]
	movs r0, 0x1
	adds r2, r6, 0
	movs r3, 0x5
	bl sub_81BF8EC
_0819AF50:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819AE08

	thumb_func_start bc_exit_to_overworld
bc_exit_to_overworld: @ 819AF68
	push {r4-r7,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r7, =gUnknown_0300127C
	ldr r0, [r7]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819B00E
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r4, r0, r1
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	cmp r1, 0
	beq _0819AFA0
	cmp r1, 0x1
	beq _0819AFB8
	b _0819B00E
	.pool
_0819AFA0:
	movs r0, 0x1
	negs r0, r0
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _0819B00E
_0819AFB8:
	bl UpdatePaletteFade
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _0819B00E
	bl sub_819B764
	ldr r0, [r7]
	ldr r1, =0x000002a1
	adds r0, r1
	ldrb r0, [r0]
	bl DestroyTask
	bl sub_819AB40
	ldr r4, =gUnknown_0203CE2C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE34
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE38
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r0, [r7]
	bl Free
	str r5, [r7]
	bl FreeAllWindowBuffers
	ldr r0, =sub_80861B0
	bl SetMainCallback2
	adds r0, r6, 0
	bl DestroyTask
_0819B00E:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bc_exit_to_overworld

	thumb_func_start sub_819B02C
sub_819B02C: @ 819B02C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r7, =gUnknown_0300127C
	ldr r0, [r7]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819B11A
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r5, r0, r1
	movs r1, 0x8
	ldrsh r0, [r5, r1]
	cmp r0, 0x5
	beq _0819B084
	cmp r0, 0x5
	bgt _0819B06C
	cmp r0, 0x4
	beq _0819B07A
	b _0819B11A
	.pool
_0819B06C:
	cmp r0, 0xA
	bne _0819B11A
	bl sub_819C4B4
	movs r0, 0x4
	strh r0, [r5, 0x8]
	b _0819B11A
_0819B07A:
	bl sub_819B8D4
	movs r0, 0x5
	strh r0, [r5, 0x8]
	b _0819B11A
_0819B084:
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	mov r8, r0
	movs r6, 0x1
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	beq _0819B0B8
	movs r0, 0x5
	bl PlaySE
	ldr r0, [r7]
	ldrb r4, [r0, 0x7]
	cmp r4, 0
	bne _0819B0C6
	bl sub_819C568
	strh r4, [r5, 0x8]
	ldr r0, =bc_exit_to_overworld
	str r0, [r5]
	b _0819B11A
	.pool
_0819B0B8:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819B0EC
	movs r0, 0x5
	bl PlaySE
_0819B0C6:
	movs r0, 0x4
	bl sub_819B958
	bl sub_819BC9C
	ldr r0, [r7]
	ldr r1, =0x000002a2
	adds r0, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r5, 0x8]
	ldr r0, =sub_819B378
	str r0, [r5]
	b _0819B11A
	.pool
_0819B0EC:
	ldrh r1, [r2, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0819B106
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	bl sub_819AC78
	b _0819B11A
_0819B106:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819B11A
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	bl sub_819AC78
_0819B11A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819B02C

	thumb_func_start sub_819B124
sub_819B124: @ 819B124
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldrh r0, [r0, 0x8]
	subs r0, 0x2
	lsls r0, 16
	asrs r0, 16
	adds r6, r1, 0
	cmp r0, 0xB
	bls _0819B144
	b _0819B36E
_0819B144:
	lsls r0, 2
	ldr r1, =_0819B158
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819B158:
	.4byte _0819B188
	.4byte _0819B1EC
	.4byte _0819B36E
	.4byte _0819B36E
	.4byte _0819B36E
	.4byte _0819B36E
	.4byte _0819B36E
	.4byte _0819B1BC
	.4byte _0819B36E
	.4byte _0819B36E
	.4byte _0819B300
	.4byte _0819B35C
_0819B188:
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldrb r0, [r1, 0x6]
	cmp r0, 0
	bne _0819B1A2
	ldr r2, =0x00000299
	adds r0, r1, r2
	movs r7, 0xA8
	lsls r7, 2
	adds r1, r7
	movs r2, 0
	bl sub_819F2B4
_0819B1A2:
	ldr r0, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	movs r0, 0x9
	b _0819B36C
	.pool
_0819B1BC:
	ldr r4, =gUnknown_0300127C
	ldr r0, [r4]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0819B1CE
	b _0819B36E
_0819B1CE:
	bl sub_819B844
	ldr r1, [r4]
	movs r0, 0
	strb r0, [r1, 0x6]
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	b _0819B344
	.pool
_0819B1EC:
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r7, 0x1
	movs r6, 0x1
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	beq _0819B27C
	movs r0, 0x5
	bl PlaySE
	bl sub_819BC04
	lsls r0, 24
	lsrs r0, 24
	adds r1, r0, 0
	cmp r0, 0x1
	bne _0819B228
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldr r2, =0x000002a2
	adds r0, r2
	b _0819B2AC
	.pool
_0819B228:
	cmp r0, 0x2
	bne _0819B248
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0xA
	strh r1, [r0, 0x8]
	ldr r1, =sub_819B02C
	str r1, [r0]
	b _0819B36E
	.pool
_0819B248:
	cmp r1, 0x3
	bne _0819B260
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0xB
	strh r1, [r0, 0x8]
	b _0819B2BA
	.pool
_0819B260:
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x6
	strh r1, [r0, 0x8]
	ldr r1, =sub_819AE08
	str r1, [r0]
	b _0819B36E
	.pool
_0819B27C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819B2D0
	movs r0, 0x5
	bl PlaySE
	ldr r4, =gUnknown_0300127C
	ldr r1, [r4]
	movs r2, 0xA6
	lsls r2, 2
	adds r0, r1, r2
	ldr r0, [r0]
	adds r2, 0x8
	adds r1, r2
	movs r2, 0
	bl sub_819F3F8
	movs r0, 0x3
	bl sub_819B958
	ldr r0, [r4]
	ldr r1, =0x000002a2
	adds r0, r1
_0819B2AC:
	strb r7, [r0]
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	strh r6, [r0, 0x8]
_0819B2BA:
	ldr r1, =sub_819B378
	str r1, [r0]
	b _0819B36E
	.pool
_0819B2D0:
	ldrh r1, [r2, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0819B2EA
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	bl sub_819AC10
	b _0819B36E
_0819B2EA:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819B36E
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	bl sub_819AC10
	b _0819B36E
_0819B300:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	bne _0819B36E
	ldr r4, =gUnknown_0300127C
	ldr r2, [r4]
	ldrb r0, [r2, 0x6]
	cmp r0, 0x1
	bne _0819B338
	ldr r1, =gPlttBufferFaded
	movs r7, 0xA9
	lsls r7, 2
	adds r0, r2, r7
	ldrh r0, [r0]
	movs r2, 0xE4
	lsls r2, 1
	adds r1, r2
	strh r0, [r1]
	ldr r0, =gPlttBufferUnfaded
	subs r7, 0xBC
	adds r1, r0, r7
	ldrh r1, [r1]
	adds r0, r2
	strh r1, [r0]
_0819B338:
	ldr r0, [r4]
	strb r3, [r0, 0x6]
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r6
_0819B344:
	movs r1, 0x3
	strh r1, [r0, 0x8]
	b _0819B36E
	.pool
_0819B35C:
	bl sub_819B844
	ldr r0, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	movs r0, 0xC
_0819B36C:
	strh r0, [r1, 0x8]
_0819B36E:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B124

	thumb_func_start sub_819B378
sub_819B378: @ 819B378
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r5, =gUnknown_0300127C
	ldr r3, [r5]
	movs r7, 0xA8
	lsls r7, 2
	adds r0, r3, r7
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819B476
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r4, r0, r1
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	cmp r1, 0x1
	beq _0819B3DC
	cmp r1, 0x1
	bgt _0819B3B4
	cmp r1, 0
	beq _0819B3BA
	b _0819B476
	.pool
_0819B3B4:
	cmp r1, 0xB
	beq _0819B440
	b _0819B476
_0819B3BA:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0819B476
	movs r0, 0x1
	movs r1, 0x1
	strh r1, [r4, 0x8]
	ldr r2, =0x000002a2
	adds r1, r3, r2
	strb r0, [r1]
	b _0819B476
	.pool
_0819B3DC:
	ldr r2, =gMain
	ldrh r0, [r2, 0x2E]
	ands r1, r0
	cmp r1, 0
	beq _0819B40C
	movs r0, 0x5
	bl PlaySE
	ldr r0, [r5]
	ldr r1, =0x000002a2
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	movs r0, 0x2
	strh r0, [r4, 0x8]
	ldr r0, =sub_819B124
	str r0, [r4]
	b _0819B476
	.pool
_0819B40C:
	ldrh r1, [r2, 0x30]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819B422
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	b _0819B432
_0819B422:
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0819B476
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
_0819B432:
	bl sub_819ABA8
	bl sub_819BCF8
	bl sub_819B9E8
	b _0819B476
_0819B440:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r6, 0x1
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	beq _0819B476
	movs r0, 0x5
	bl PlaySE
	ldr r1, [r5]
	movs r2, 0xA6
	lsls r2, 2
	adds r0, r1, r2
	ldr r0, [r0]
	adds r1, r7
	movs r2, 0
	bl sub_819F3F8
	bl sub_819BA64
	ldr r0, [r5]
	ldr r1, =0x000002a2
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	strh r6, [r4, 0x8]
_0819B476:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B378

	thumb_func_start sub_819B484
sub_819B484: @ 819B484
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	movs r6, 0
	add r0, sp, 0xC
	strb r6, [r0]
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 24
	lsrs r0, 24
	adds r6, r0, 0
	ldr r7, =gSaveBlock2Ptr
	ldr r2, [r7]
	ldr r0, =0x00000ca9
	adds r4, r2, r0
	ldrb r0, [r4]
	lsls r0, 30
	lsrs r0, 30
	adds r5, r0, 0
	lsls r0, r5, 1
	lsls r1, r6, 2
	adds r0, r1
	ldr r1, =0x00000de2
	adds r2, r1
	adds r2, r0
	ldrh r0, [r2]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x18]
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	ldrb r1, [r4]
	movs r0, 0x3
	ands r0, r1
	movs r2, 0x32
	str r2, [sp, 0x14]
	cmp r0, 0
	beq _0819B4EA
	movs r3, 0x64
	str r3, [sp, 0x14]
_0819B4EA:
	adds r0, r6, 0
	adds r1, r5, 0
	bl sub_81A6F70
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x1C]
	ldr r1, [r7]
	ldrb r0, [r1, 0xA]
	mov r9, r0
	ldrb r0, [r1, 0xB]
	lsls r0, 8
	mov r2, r9
	orrs r2, r0
	ldrb r0, [r1, 0xC]
	lsls r0, 16
	orrs r2, r0
	ldrb r0, [r1, 0xD]
	lsls r0, 24
	orrs r2, r0
	mov r9, r2
	movs r3, 0
	mov r8, r3
_0819B518:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	mov r2, r8
	lsls r0, r2, 1
	add r0, r8
	lsls r0, 2
	adds r1, r0
	movs r3, 0xE7
	lsls r3, 4
	adds r1, r3
	ldrh r5, [r1]
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	ldr r2, [sp, 0x10]
	add r2, r8
	movs r3, 0x6C
	adds r0, r2, 0
	muls r0, r3
	adds r1, r0
	strh r5, [r1, 0xC]
	mov r10, r2
	ldr r0, [sp, 0x1C]
	cmp r8, r0
	bcs _0819B570
	ldr r0, [sp, 0x18]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	b _0819B572
	.pool
_0819B570:
	ldr r0, [sp, 0x18]
_0819B572:
	movs r1, 0
	bl sub_81A6CA8
	lsls r0, 24
	lsrs r6, r0, 24
	movs r1, 0x6C
	mov r4, r10
	muls r4, r1
	adds r4, 0xC
	ldr r2, =gUnknown_0300127C
	ldr r0, [r2]
	adds r0, r4
	adds r0, 0x8
	ldr r1, =gUnknown_0203BC8C
	ldr r2, [r1]
	lsls r5, 4
	adds r2, r5, r2
	ldrh r1, [r2]
	ldrb r3, [r2, 0xC]
	str r6, [sp]
	ldrb r2, [r2, 0xB]
	str r2, [sp, 0x4]
	mov r2, r9
	str r2, [sp, 0x8]
	ldr r2, [sp, 0x14]
	bl sub_8068634
	movs r1, 0
	add r0, sp, 0xC
	strb r1, [r0]
	movs r6, 0
	adds r7, r5, 0
	movs r3, 0x1
	add r8, r3
	ldr r3, =gUnknown_0300127C
_0819B5B8:
	ldr r0, [r3]
	adds r0, r4
	adds r0, 0x8
	ldr r5, =gUnknown_0203BC8C
	ldr r1, [r5]
	adds r1, r7, r1
	lsls r2, r6, 1
	adds r1, 0x2
	adds r1, r2
	ldrh r1, [r1]
	adds r2, r6, 0
	str r3, [sp, 0x20]
	bl sub_81A7024
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r3, [sp, 0x20]
	cmp r6, 0x3
	bls _0819B5B8
	movs r0, 0x6C
	mov r4, r10
	muls r4, r0
	adds r4, 0xC
	ldr r1, =gUnknown_0300127C
	ldr r0, [r1]
	adds r0, r4
	adds r0, 0x8
	movs r1, 0x20
	add r2, sp, 0xC
	bl SetMonData
	ldr r2, =gUnknown_0300127C
	ldr r0, [r2]
	adds r0, r4
	adds r0, 0x8
	ldr r1, [r5]
	adds r1, r7, r1
	ldrb r2, [r1, 0xA]
	lsls r2, 1
	ldr r1, =gBattleFrontierHeldItems
	adds r2, r1
	movs r1, 0xC
	bl SetMonData
	mov r3, r8
	lsls r0, r3, 24
	lsrs r0, 24
	mov r8, r0
	cmp r0, 0x5
	bhi _0819B620
	b _0819B518
_0819B620:
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B484

	thumb_func_start sub_819B63C
sub_819B63C: @ 819B63C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	add r0, sp, 0xC
	movs r1, 0
	strb r1, [r0]
	ldr r2, =gUnknown_0203BC8C
	ldr r0, =gSlateportBattleTentMons
	str r0, [r2]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldrb r3, [r1, 0xA]
	ldrb r0, [r1, 0xB]
	lsls r0, 8
	orrs r3, r0
	ldrb r0, [r1, 0xC]
	lsls r0, 16
	orrs r3, r0
	ldrb r0, [r1, 0xD]
	lsls r0, 24
	orrs r3, r0
	mov r10, r3
	movs r7, 0
	mov r9, r7
_0819B678:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	mov r2, r9
	lsls r0, r2, 1
	add r0, r9
	lsls r0, 2
	adds r1, r0
	movs r3, 0xE7
	lsls r3, 4
	adds r1, r3
	ldrh r1, [r1]
	mov r8, r1
	ldr r7, =gUnknown_0300127C
	ldr r0, [r7]
	ldr r6, [sp, 0x10]
	add r6, r9
	movs r1, 0x6C
	adds r4, r6, 0
	muls r4, r1
	adds r1, r0, r4
	mov r2, r8
	strh r2, [r1, 0xC]
	adds r4, 0xC
	adds r0, r4
	adds r0, 0x8
	ldr r3, =gUnknown_0203BC8C
	ldr r2, [r3]
	mov r7, r8
	lsls r5, r7, 4
	adds r2, r5, r2
	ldrh r1, [r2]
	ldrb r3, [r2, 0xC]
	movs r7, 0
	str r7, [sp]
	ldrb r2, [r2, 0xB]
	str r2, [sp, 0x4]
	mov r2, r10
	str r2, [sp, 0x8]
	movs r2, 0x1E
	bl sub_8068634
	add r0, sp, 0xC
	movs r3, 0
	strb r3, [r0]
	movs r0, 0x1
	add r9, r0
_0819B6D4:
	ldr r1, =gUnknown_0300127C
	ldr r0, [r1]
	adds r0, r4
	adds r0, 0x8
	ldr r3, =gUnknown_0203BC8C
	ldr r2, [r3]
	mov r3, r8
	lsls r1, r3, 4
	adds r1, r2
	lsls r2, r7, 1
	adds r1, 0x2
	adds r1, r2
	ldrh r1, [r1]
	adds r2, r7, 0
	bl sub_81A7024
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0x3
	bls _0819B6D4
	movs r7, 0x6C
	adds r4, r6, 0
	muls r4, r7
	adds r4, 0xC
	ldr r1, =gUnknown_0300127C
	ldr r0, [r1]
	adds r0, r4
	adds r0, 0x8
	movs r1, 0x20
	add r2, sp, 0xC
	bl SetMonData
	ldr r2, =gUnknown_0300127C
	ldr r0, [r2]
	adds r0, r4
	adds r0, 0x8
	ldr r3, =gUnknown_0203BC8C
	ldr r1, [r3]
	adds r1, r5, r1
	ldrb r2, [r1, 0xA]
	lsls r2, 1
	ldr r1, =gBattleFrontierHeldItems
	adds r2, r1
	movs r1, 0xC
	bl SetMonData
	mov r7, r9
	lsls r0, r7, 24
	lsrs r0, 24
	mov r9, r0
	cmp r0, 0x5
	bls _0819B678
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B63C

	thumb_func_start sub_819B764
sub_819B764: @ 819B764
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	movs r7, 0
	ldr r0, =gUnknown_0300127C
	mov r10, r0
	ldr r1, =gSaveBlock2Ptr
	mov r8, r1
_0819B778:
	movs r2, 0
	adds r0, r7, 0x1
	mov r9, r0
_0819B77E:
	mov r1, r10
	ldr r0, [r1]
	movs r1, 0x6C
	adds r6, r2, 0
	muls r6, r1
	adds r1, r0, r6
	ldrb r0, [r1, 0x10]
	cmp r0, r9
	bne _0819B81C
	movs r0, 0x64
	adds r5, r7, 0
	muls r5, r0
	ldr r2, =gPlayerParty
	adds r5, r2
	adds r1, 0x14
	adds r0, r5, 0
	movs r2, 0x64
	bl memcpy
	mov r0, r8
	ldr r1, [r0]
	lsls r4, r7, 1
	adds r4, r7
	lsls r4, 2
	adds r1, r4
	mov r2, r10
	ldr r0, [r2]
	adds r0, r6
	ldrh r0, [r0, 0xC]
	movs r2, 0xE7
	lsls r2, 4
	adds r1, r2
	strh r0, [r1]
	adds r0, r5, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r2, r8
	ldr r1, [r2]
	ldr r2, =0x00000e74
	adds r1, r2
	adds r1, r4
	str r0, [r1]
	adds r0, r5, 0
	movs r1, 0x2E
	movs r2, 0
	bl GetBoxMonData
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4
	ldr r2, =0x00000e79
	adds r1, r2
	strb r0, [r1]
	adds r0, r5, 0
	movs r1, 0x28
	movs r2, 0
	bl GetBoxMonData
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4
	ldr r2, =0x00000e78
	adds r1, r2
	strb r0, [r1]
	b _0819B826
	.pool
_0819B81C:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _0819B77E
_0819B826:
	mov r1, r9
	lsls r0, r1, 24
	lsrs r7, r0, 24
	cmp r7, 0x2
	bls _0819B778
	bl CalculatePlayerPartyCount
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819B764

	thumb_func_start sub_819B844
sub_819B844: @ 819B844
	push {r4,r5,lr}
	ldr r5, =gUnknown_0300127C
	ldr r1, [r5]
	ldrb r0, [r1, 0x6]
	cmp r0, 0
	bne _0819B852
	strb r0, [r1]
_0819B852:
	ldr r4, =gSprites
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xB0
	strh r1, [r0, 0x20]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r1, [r2, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xD0
	strh r1, [r0, 0x20]
	ldrb r0, [r2, 0x2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r1]
	ldr r0, [r5]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	bl sub_819BAFC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B844

	thumb_func_start sub_819B8D4
sub_819B8D4: @ 819B8D4
	push {r4,r5,lr}
	ldr r5, =gUnknown_0300127C
	ldr r1, [r5]
	movs r0, 0
	strb r0, [r1, 0x7]
	ldr r4, =gSprites
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xB0
	strh r1, [r0, 0x20]
	ldrb r1, [r2, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r3, 0x70
	strh r3, [r0, 0x22]
	ldrb r1, [r2, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xD0
	strh r1, [r0, 0x20]
	ldrb r1, [r2, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	strh r3, [r0, 0x22]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r1]
	ldr r0, [r5]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	bl sub_819BBA8
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B8D4

	thumb_func_start sub_819B958
sub_819B958: @ 819B958
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r5, =gSprites
	ldr r3, =gUnknown_0300127C
	ldr r0, [r3]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r0, r4, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	adds r0, r4, 0
	movs r1, 0x2
	bl CopyWindowToVram
	adds r0, r4, 0
	bl ClearWindowTilemap
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B958

	thumb_func_start sub_819B9B4
sub_819B9B4: @ 819B9B4
	push {lr}
	sub sp, 0xC
	movs r0, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r2, =gUnknown_085EEBB2
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x2
	bl PrintTextOnWindow
	movs r0, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B9B4

	thumb_func_start sub_819B9E8
sub_819B9E8: @ 819B9E8
	push {r4,r5,lr}
	sub sp, 0xC
	ldr r5, =gUnknown_0300127C
	ldr r0, [r5]
	ldrb r4, [r0, 0x3]
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x6C
	muls r0, r4
	ldr r1, [r5]
	adds r0, r1
	adds r0, 0x14
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	ldr r4, =gStringVar4
	movs r1, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	adds r0, r4, 0
	bl StringCopy
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0x56
	bl GetStringRightAlignXOffset
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	ldr r0, =gUnknown_08610479
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x1
	movs r1, 0x1
	movs r3, 0x1
	bl box_print
	movs r0, 0x1
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819B9E8

	thumb_func_start sub_819BA64
sub_819BA64: @ 819BA64
	push {lr}
	sub sp, 0xC
	movs r0, 0x2
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r0, [r0, 0x5]
	cmp r0, 0x1
	bne _0819BA88
	ldr r2, =gUnknown_085EEBC1
	b _0819BA9C
	.pool
_0819BA88:
	cmp r0, 0x2
	bne _0819BA94
	ldr r2, =gUnknown_085EEBDB
	b _0819BA9C
	.pool
_0819BA94:
	ldr r2, =gUnknown_085EEC2D
	cmp r0, 0x3
	bne _0819BA9C
	ldr r2, =gUnknown_085EEBF6
_0819BA9C:
	movs r0, 0x5
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r0, 0x2
	movs r1, 0x1
	movs r3, 0x2
	bl PrintTextOnWindow
	movs r0, 0x2
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0xC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BA64

	thumb_func_start sub_819BAC8
sub_819BAC8: @ 819BAC8
	push {lr}
	sub sp, 0xC
	movs r0, 0x2
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r2, =gUnknown_085EEC50
	movs r0, 0x5
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r0, 0x2
	movs r1, 0x1
	movs r3, 0x2
	bl PrintTextOnWindow
	movs r0, 0x2
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0xC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BAC8

	thumb_func_start sub_819BAFC
sub_819BAFC: @ 819BAFC
	push {r4-r6,lr}
	sub sp, 0xC
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r2, [r0, 0x3]
	movs r1, 0x6C
	muls r1, r2
	adds r0, r1
	ldrb r5, [r0, 0x10]
	movs r0, 0x3
	bl PutWindowTilemap
	movs r0, 0x3
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r4, =gUnknown_08610476
	str r4, [sp]
	movs r6, 0
	str r6, [sp, 0x4]
	ldr r0, =gUnknown_085EEC15
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x1
	bl box_print
	cmp r5, 0
	beq _0819BB60
	str r4, [sp]
	str r6, [sp, 0x4]
	ldr r0, =gUnknown_085EEC24
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x11
	bl box_print
	b _0819BB74
	.pool
_0819BB60:
	str r4, [sp]
	str r5, [sp, 0x4]
	ldr r0, =gUnknown_085EEC10
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x11
	bl box_print
_0819BB74:
	ldr r0, =gUnknown_08610476
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	ldr r0, =gUnknown_085EEC1D
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x21
	bl box_print
	movs r0, 0x3
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BAFC

	thumb_func_start sub_819BBA8
sub_819BBA8: @ 819BBA8
	push {r4,r5,lr}
	sub sp, 0xC
	movs r0, 0x4
	bl PutWindowTilemap
	movs r0, 0x4
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r5, =gUnknown_08610476
	str r5, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EEC49
	str r0, [sp, 0x8]
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x1
	bl box_print
	str r5, [sp]
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EEC4D
	str r0, [sp, 0x8]
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x11
	bl box_print
	movs r0, 0x4
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BBA8

	thumb_func_start sub_819BC04
sub_819BC04: @ 819BC04
	push {lr}
	ldr r2, =gUnknown_030062E8
	ldr r1, =gUnknown_0861041C
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	str r0, [r2]
	bl _call_via_r0
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_819BC04

	thumb_func_start sub_819BC30
sub_819BC30: @ 819BC30
	push {r4,lr}
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r2, [r0, 0x3]
	movs r1, 0x6C
	muls r1, r2
	adds r0, r1
	ldrb r1, [r0, 0x10]
	ldrh r0, [r0, 0xC]
	cmp r1, 0
	bne _0819BC60
	bl sub_819C634
	cmp r0, 0
	bne _0819BC60
	bl sub_819BAC8
	movs r0, 0x3
	bl sub_819B958
	movs r0, 0x3
	b _0819BC96
	.pool
_0819BC60:
	ldr r4, =gUnknown_0300127C
	ldr r1, [r4]
	movs r2, 0xA6
	lsls r2, 2
	adds r0, r1, r2
	ldr r0, [r0]
	adds r2, 0x8
	adds r1, r2
	movs r2, 0
	bl sub_819F3F8
	bl sub_819ACE0
	bl sub_819BA64
	movs r0, 0x3
	bl sub_819B958
	ldr r0, [r4]
	ldrb r0, [r0, 0x5]
	cmp r0, 0x3
	bhi _0819BC94
	movs r0, 0x1
	b _0819BC96
	.pool
_0819BC94:
	movs r0, 0x2
_0819BC96:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_819BC30

	thumb_func_start sub_819BC9C
sub_819BC9C: @ 819BC9C
	push {lr}
	bl sub_819C568
	bl sub_819ACE0
	bl sub_819BA64
	movs r0, 0x3
	bl sub_819B958
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r0, [r0, 0x5]
	cmp r0, 0x3
	bhi _0819BCC4
	movs r0, 0x1
	b _0819BCC6
	.pool
_0819BCC4:
	movs r0, 0x2
_0819BCC6:
	pop {r1}
	bx r1
	thumb_func_end sub_819BC9C

	thumb_func_start sub_819BCCC
sub_819BCCC: @ 819BCCC
	movs r0, 0
	bx lr
	thumb_func_end sub_819BCCC

	thumb_func_start sub_819BCD0
sub_819BCD0: @ 819BCD0
	push {lr}
	ldr r0, =gUnknown_0300127C
	ldr r1, [r0]
	movs r2, 0xA6
	lsls r2, 2
	adds r0, r1, r2
	ldr r0, [r0]
	adds r2, 0x8
	adds r1, r2
	movs r2, 0
	bl sub_819F3F8
	movs r0, 0x3
	bl sub_819B958
	movs r0, 0x1
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_819BCD0

	thumb_func_start sub_819BCF8
sub_819BCF8: @ 819BCF8
	push {r4,r5,lr}
	sub sp, 0x2C
	ldr r5, =gUnknown_0300127C
	ldr r0, [r5]
	ldrb r4, [r0, 0x3]
	cmp r4, 0x5
	bhi _0819BD64
	movs r0, 0x5
	bl PutWindowTilemap
	movs r0, 0x5
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x6C
	muls r0, r4
	ldr r1, [r5]
	adds r0, r1
	adds r0, 0x14
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	add r1, sp, 0xC
	bl sub_81DB468
	movs r0, 0x1
	add r1, sp, 0xC
	movs r2, 0x76
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r0, 0x5
	movs r1, 0x1
	add r2, sp, 0xC
	bl PrintTextOnWindow
	movs r0, 0x5
	movs r1, 0x2
	bl CopyWindowToVram
_0819BD64:
	add sp, 0x2C
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BCF8

	thumb_func_start sub_819BD70
sub_819BD70: @ 819BD70
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x10
	ldr r6, =gUnknown_0300127C
	ldr r2, [r6]
	ldrb r1, [r2, 0x3]
	movs r0, 0x6C
	adds r4, r1, 0
	muls r4, r0
	adds r4, r2
	adds r4, 0x14
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r8, r0
	adds r0, r4, 0
	movs r1, 0x1
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	movs r0, 0x58
	str r0, [sp]
	movs r0, 0x20
	str r0, [sp, 0x4]
	movs r0, 0xF
	str r0, [sp, 0x8]
	ldr r0, =0x0000ffff
	str r0, [sp, 0xC]
	adds r0, r5, 0
	mov r2, r8
	movs r3, 0x1
	bl sub_818D7D8
	ldr r1, [r6]
	movs r2, 0xA6
	lsls r2, 2
	adds r1, r2
	movs r3, 0
	strb r0, [r1]
	ldr r4, =gSprites
	ldr r0, [r6]
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x28
	strb r3, [r0]
	ldr r0, [r6]
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x29
	strb r3, [r0]
	ldr r0, [r6]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	strb r3, [r0]
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BD70

	thumb_func_start sub_819BE20
sub_819BE20: @ 819BE20
	ldr r1, =gUnknown_0300127C
	ldr r1, [r1]
	movs r2, 0xA8
	lsls r2, 2
	adds r1, r2
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_819BE20

	thumb_func_start sub_819BE34
sub_819BE34: @ 819BE34
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	ldr r0, =gUnknown_08610638
	movs r1, 0x78
	movs r2, 0x40
	movs r3, 0x1
	bl CreateSprite
	ldr r6, =gUnknown_0300127C
	ldr r1, [r6]
	ldr r2, =0x00000299
	mov r10, r2
	add r1, r10
	movs r7, 0
	strb r0, [r1]
	ldr r0, [r6]
	add r0, r10
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	mov r8, r1
	add r0, r8
	movs r1, 0x2
	bl StartSpriteAffineAnim
	ldr r2, [r6]
	ldrb r1, [r2, 0x3]
	movs r0, 0x6C
	adds r4, r1, 0
	muls r4, r0
	adds r4, r2
	adds r4, 0x14
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r9, r0
	adds r0, r4, 0
	movs r1, 0x1
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	movs r0, 0x58
	str r0, [sp]
	movs r0, 0x20
	str r0, [sp, 0x4]
	movs r0, 0xF
	str r0, [sp, 0x8]
	ldr r0, =0x0000ffff
	str r0, [sp, 0xC]
	adds r0, r5, 0
	mov r2, r9
	movs r3, 0x1
	bl sub_818D7D8
	ldr r1, [r6]
	movs r2, 0xA6
	lsls r2, 2
	adds r1, r2
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x28
	strb r7, [r0]
	ldr r0, [r6]
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x29
	strb r7, [r0]
	ldr r0, [r6]
	add r0, r10
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BE34

	thumb_func_start sub_819BF2C
sub_819BF2C: @ 819BF2C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	movs r7, 0
	ldr r0, =gUnknown_0300127C
	mov r9, r0
_0819BF3E:
	movs r2, 0
	adds r1, r7, 0x1
	mov r10, r1
	lsls r0, r7, 2
	mov r8, r0
_0819BF48:
	mov r0, r9
	ldr r1, [r0]
	movs r0, 0x6C
	adds r4, r2, 0
	muls r4, r0
	adds r0, r1, r4
	ldrb r0, [r0, 0x10]
	cmp r0, r10
	bne _0819C008
	adds r4, r1
	adds r4, 0x14
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	adds r6, r0, 0
	adds r0, r4, 0
	movs r1, 0x1
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	lsls r0, r7, 3
	adds r0, r7
	lsls r0, 19
	movs r2, 0x80
	lsls r2, 13
	adds r0, r2
	asrs r0, 16
	str r0, [sp]
	movs r0, 0x20
	str r0, [sp, 0x4]
	adds r0, r7, 0
	adds r0, 0xD
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x8]
	ldr r0, =0x0000ffff
	str r0, [sp, 0xC]
	adds r0, r5, 0
	adds r2, r6, 0
	movs r3, 0x1
	bl sub_818D7D8
	mov r2, r9
	ldr r1, [r2]
	add r1, r8
	movs r2, 0xA5
	lsls r2, 2
	adds r1, r2
	strb r0, [r1]
	mov r1, r9
	ldr r0, [r1]
	add r0, r8
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r2, =gSprites
	adds r0, r2
	adds r0, 0x28
	movs r1, 0
	strb r1, [r0]
	mov r2, r9
	ldr r0, [r2]
	add r0, r8
	movs r1, 0xA5
	lsls r1, 2
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r2, =gSprites
	adds r0, r2
	adds r0, 0x29
	movs r1, 0
	strb r1, [r0]
	b _0819C012
	.pool
_0819C008:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _0819BF48
_0819C012:
	mov r2, r10
	lsls r0, r2, 24
	lsrs r7, r0, 24
	cmp r7, 0x2
	bls _0819BF3E
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819BF2C

	thumb_func_start sub_819C040
sub_819C040: @ 819C040
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819C0DC
	ldr r3, =gSprites
	ldr r6, =gUnknown_0300127C
	ldr r2, [r6]
	ldr r0, =0x00000295
	adds r5, r2, r0
	ldrb r0, [r5]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	adds r1, 0x3F
	ldrb r0, [r1]
	lsls r0, 26
	cmp r0, 0
	bge _0819C0DC
	ldr r1, =0x0000029d
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3F
	ldrb r0, [r0]
	lsls r0, 26
	cmp r0, 0
	bge _0819C0DC
	adds r1, r4, 0
	adds r1, 0x3E
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r6]
	ldr r1, =0x0000029d
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldr r0, =sub_819C1D0
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, =SpriteCallbackDummy
	str r0, [r4, 0x1C]
_0819C0DC:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819C040

	thumb_func_start sub_819C100
sub_819C100: @ 819C100
	push {r4-r7,lr}
	adds r5, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819C1BA
	ldr r6, =gSprites
	ldr r4, =gUnknown_0300127C
	ldr r2, [r4]
	ldr r7, =0x00000295
	adds r0, r2, r7
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x3F
	ldrb r0, [r0]
	lsls r0, 26
	cmp r0, 0
	bge _0819C1BA
	ldr r1, =0x0000029d
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x3F
	ldrb r0, [r0]
	lsls r0, 26
	cmp r0, 0
	bge _0819C1BA
	ldrb r0, [r5, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl FreeOamMatrix
	ldr r0, [r4]
	adds r0, r7
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl FreeOamMatrix
	ldr r0, [r4]
	ldr r1, =0x0000029d
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl FreeOamMatrix
	ldr r0, [r4]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, r7
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	bl DestroySprite
	ldr r0, [r4]
	ldr r1, =0x0000029d
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	bl DestroySprite
	adds r0, r5, 0
	bl DestroySprite
_0819C1BA:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819C100

	thumb_func_start sub_819C1D0
sub_819C1D0: @ 819C1D0
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	ldr r1, =gTasks
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	beq _0819C24E
	cmp r0, 0x1
	bgt _0819C1F8
	cmp r0, 0
	beq _0819C1FE
	b _0819C2BA
	.pool
_0819C1F8:
	cmp r0, 0x2
	beq _0819C270
	b _0819C2BA
_0819C1FE:
	movs r0, 0x10
	strh r0, [r4, 0xE]
	movs r0, 0xE0
	strh r0, [r4, 0x38]
	movs r0, 0x40
	strh r0, [r4, 0x12]
	movs r0, 0x41
	strh r0, [r4, 0x18]
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl SetGpuRegBits
	ldrh r1, [r4, 0xE]
	lsls r1, 8
	ldrh r0, [r4, 0x38]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x40
	bl SetGpuReg
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0x3F
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x37
	bl SetGpuReg
	b _0819C2C6
_0819C24E:
	movs r0, 0x3
	bl ShowBg
	ldr r1, =0x00001248
	movs r0, 0x50
	bl SetGpuReg
	ldr r1, =0x0000040b
	movs r0, 0x52
	bl SetGpuReg
	b _0819C2C6
	.pool
_0819C270:
	ldrh r0, [r4, 0x12]
	subs r0, 0x4
	strh r0, [r4, 0x12]
	ldrh r1, [r4, 0x18]
	adds r1, 0x4
	strh r1, [r4, 0x18]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x20
	ble _0819C28C
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0x5F
	ble _0819C29E
_0819C28C:
	movs r0, 0x20
	strh r0, [r4, 0x12]
	movs r0, 0x60
	strh r0, [r4, 0x18]
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl ClearGpuRegBits
_0819C29E:
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r1, 0x12
	ldrsh r0, [r4, r1]
	cmp r0, 0x20
	bne _0819C2CC
	b _0819C2C6
_0819C2BA:
	adds r0, r2, 0
	bl DestroyTask
	bl sub_819BF2C
	b _0819C2CC
_0819C2C6:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_0819C2CC:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_819C1D0

	thumb_func_start sub_819C2D4
sub_819C2D4: @ 819C2D4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	ldr r1, =gTasks
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _0819C2F6
	b _0819C410
_0819C2F6:
	cmp r0, 0x1
	bne _0819C2FC
	b _0819C460
_0819C2FC:
	movs r0, 0x3
	bl HideBg
	ldr r4, =gSprites
	ldr r0, =gUnknown_0300127C
	mov r8, r0
	ldr r0, [r0]
	ldr r1, =0x00000299
	mov r12, r1
	add r0, r12
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r2, [r1]
	movs r3, 0x5
	negs r3, r3
	adds r0, r3, 0
	ands r0, r2
	strb r0, [r1]
	mov r0, r8
	ldr r2, [r0]
	mov r1, r12
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r6, r4, 0
	adds r6, 0x1C
	adds r0, r6
	ldr r1, =sub_819C100
	str r1, [r0]
	ldr r0, =0x00000295
	mov r9, r0
	add r2, r9
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r2, [r0]
	adds r1, r3, 0
	ands r1, r2
	strb r1, [r0]
	mov r1, r8
	ldr r2, [r1]
	mov r1, r9
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldr r1, =SpriteCallbackDummy
	mov r10, r1
	str r1, [r0]
	ldr r5, =0x0000029d
	adds r2, r5
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r3, r1
	strb r3, [r0]
	mov r0, r8
	ldr r2, [r0]
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	mov r1, r10
	str r1, [r0]
	add r2, r12
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x1
	bl StartSpriteAffineAnim
	mov r1, r8
	ldr r0, [r1]
	add r0, r9
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x1
	bl StartSpriteAffineAnim
	mov r1, r8
	ldr r0, [r1]
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0x1
	bl StartSpriteAffineAnim
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl ClearGpuRegBits
	adds r0, r7, 0
	bl DestroyTask
	b _0819C4A4
	.pool
_0819C410:
	movs r0, 0x10
	strh r0, [r4, 0xE]
	movs r0, 0xE0
	strh r0, [r4, 0x38]
	movs r0, 0x20
	strh r0, [r4, 0x12]
	movs r0, 0x60
	strh r0, [r4, 0x18]
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl SetGpuRegBits
	ldrh r1, [r4, 0xE]
	lsls r1, 8
	ldrh r0, [r4, 0x38]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x40
	bl SetGpuReg
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0x3F
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x37
	bl SetGpuReg
	b _0819C49E
_0819C460:
	ldrh r0, [r4, 0x12]
	adds r0, 0x4
	strh r0, [r4, 0x12]
	ldrh r1, [r4, 0x18]
	subs r1, 0x4
	strh r1, [r4, 0x18]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3F
	bgt _0819C47C
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0x41
	bgt _0819C484
_0819C47C:
	movs r0, 0x40
	strh r0, [r4, 0x12]
	movs r0, 0x41
	strh r0, [r4, 0x18]
_0819C484:
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r1, 0x12
	ldrsh r0, [r4, r1]
	cmp r0, 0x40
	bne _0819C4A4
_0819C49E:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_0819C4A4:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819C2D4

	thumb_func_start sub_819C4B4
sub_819C4B4: @ 819C4B4
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r4, =gUnknown_08610638
	adds r0, r4, 0
	movs r1, 0x78
	movs r2, 0x40
	movs r3, 0x1
	bl CreateSprite
	ldr r6, =gUnknown_0300127C
	ldr r1, [r6]
	ldr r2, =0x00000299
	mov r8, r2
	add r1, r8
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x2C
	movs r2, 0x40
	movs r3, 0x1
	bl CreateSprite
	ldr r1, [r6]
	ldr r5, =0x00000295
	adds r1, r5
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0xC4
	movs r2, 0x40
	movs r3, 0x1
	bl CreateSprite
	ldr r1, [r6]
	ldr r4, =0x0000029d
	adds r1, r4
	strb r0, [r1]
	ldr r3, =gSprites
	ldr r2, [r6]
	add r8, r2
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r3, 0x1C
	adds r0, r3
	ldr r1, =sub_819C040
	str r1, [r0]
	adds r5, r2, r5
	ldrb r1, [r5]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldr r5, =SpriteCallbackDummy
	str r5, [r0]
	adds r4, r2, r4
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	str r5, [r0]
	movs r0, 0xA8
	lsls r0, 2
	adds r2, r0
	movs r0, 0x1
	strb r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819C4B4

	thumb_func_start sub_819C568
sub_819C568: @ 819C568
	push {r4,lr}
	ldr r4, =gUnknown_0300127C
	ldr r0, [r4]
	movs r1, 0xA5
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	bl sub_818D820
	ldr r0, [r4]
	movs r1, 0xA6
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	bl sub_818D820
	ldr r0, [r4]
	movs r1, 0xA7
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	bl sub_818D820
	ldr r0, =sub_819C2D4
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, [r4]
	movs r1, 0xA8
	lsls r1, 2
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819C568

	thumb_func_start sub_819C5D0
sub_819C5D0: @ 819C5D0
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	adds r4, r0, 0
	adds r6, r1, 0
	adds r5, r2, 0
	mov r8, r3
	lsls r4, 16
	lsrs r4, 16
	lsls r6, 16
	lsrs r6, 16
	lsls r5, 16
	lsrs r5, 16
	mov r0, r8
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl SetGpuRegBits
	lsls r4, 24
	lsrs r4, 16
	orrs r4, r6
	movs r0, 0x40
	adds r1, r4, 0
	bl SetGpuReg
	lsls r5, 24
	lsrs r5, 16
	mov r0, r8
	orrs r5, r0
	movs r0, 0x44
	adds r1, r5, 0
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0x3F
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x37
	bl SetGpuReg
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_819C5D0

	thumb_func_start sub_819C634
sub_819C634: @ 819C634
	push {r4-r7,lr}
	lsls r0, 16
	ldr r2, =gUnknown_0203BC8C
	ldr r1, [r2]
	lsrs r0, 12
	adds r0, r1
	ldrh r6, [r0]
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldrb r5, [r0, 0x5]
	movs r3, 0x1
	cmp r3, r5
	bcs _0819C694
	adds r4, r0, 0
	movs r0, 0x6C
	mov r12, r0
	adds r7, r2, 0
_0819C656:
	movs r2, 0
_0819C658:
	mov r0, r12
	muls r0, r2
	adds r1, r4, r0
	ldrb r0, [r1, 0x10]
	cmp r0, r3
	bne _0819C680
	ldrh r0, [r1, 0xC]
	ldr r1, [r7]
	lsls r0, 4
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r6
	bne _0819C68A
	movs r0, 0
	b _0819C696
	.pool
_0819C680:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _0819C658
_0819C68A:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r5
	bcc _0819C656
_0819C694:
	movs r0, 0x1
_0819C696:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_819C634

	thumb_func_start sub_819C69C
sub_819C69C: @ 819C69C
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r5, r0, r1
	movs r0, 0x8
	ldrsh r2, [r5, r0]
	cmp r2, 0x1
	beq _0819C6F8
	cmp r2, 0x1
	bgt _0819C6C4
	cmp r2, 0
	beq _0819C6CA
	b _0819C7D8
	.pool
_0819C6C4:
	cmp r2, 0x2
	beq _0819C7B4
	b _0819C7D8
_0819C6CA:
	ldr r1, =gUnknown_0300127C
	ldr r0, [r1]
	ldr r3, =0x000002a7
	adds r0, r3
	strb r2, [r0]
	ldr r0, [r1]
	adds r3, 0x1
	adds r0, r3
	strb r2, [r0]
	ldr r0, [r1]
	ldr r1, =0x000002a6
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	strh r1, [r5, 0x8]
	b _0819C7D8
	.pool
_0819C6F8:
	ldr r0, =gUnknown_0300127C
	ldr r3, [r0]
	ldr r2, =0x000002a2
	adds r1, r3, r2
	ldrb r1, [r1]
	adds r7, r0, 0
	cmp r1, 0
	beq _0819C7D8
	ldr r1, =0x000002a9
	adds r0, r3, r1
	ldrb r4, [r0]
	cmp r4, 0
	beq _0819C724
	movs r0, 0x2
	strh r0, [r5, 0x8]
	b _0819C7D8
	.pool
_0819C724:
	ldr r2, =0x000002a7
	adds r1, r3, r2
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, [r7]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0x6
	bls _0819C764
	strb r4, [r1]
	ldr r1, [r7]
	subs r2, 0x1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0819C758
	movs r3, 0xAA
	lsls r3, 2
	adds r1, r3
	ldrb r0, [r1]
	subs r0, 0x1
	b _0819C762
	.pool
_0819C758:
	movs r0, 0xAA
	lsls r0, 2
	adds r1, r0
	ldrb r0, [r1]
	adds r0, 0x1
_0819C762:
	strb r0, [r1]
_0819C764:
	movs r0, 0x80
	lsls r0, 7
	ldr r1, [r7]
	movs r4, 0xAA
	lsls r4, 2
	adds r1, r4
	ldrb r1, [r1]
	movs r2, 0
	bl BlendPalettes
	ldr r2, [r7]
	adds r4, r2, r4
	ldrb r0, [r4]
	cmp r0, 0x5
	bls _0819C790
	ldr r3, =0x000002a6
	adds r1, r2, r3
	movs r0, 0
	b _0819C7D6
	.pool
_0819C790:
	cmp r0, 0
	bne _0819C7D8
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	movs r1, 0x2
	strh r1, [r0, 0x8]
	ldr r0, =0x000002a6
	adds r1, r2, r0
	movs r0, 0x1
	b _0819C7D6
	.pool
_0819C7B4:
	ldr r0, =gUnknown_0300127C
	ldr r0, [r0]
	ldr r2, =0x000002a9
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0xE
	bls _0819C7D4
	movs r0, 0
	strb r0, [r1]
	movs r0, 0x1
	strh r0, [r5, 0x8]
	b _0819C7D8
	.pool
_0819C7D4:
	adds r0, 0x1
_0819C7D6:
	strb r0, [r1]
_0819C7D8:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819C69C

	thumb_func_start sub_819C7E0
sub_819C7E0: @ 819C7E0
	push {lr}
	bl AnimateSprites
	bl BuildOamBuffer
	bl RunTextPrinters
	bl UpdatePaletteFade
	bl RunTasks
	pop {r0}
	bx r0
	thumb_func_end sub_819C7E0

	thumb_func_start sub_819C7FC
sub_819C7FC: @ 819C7FC
	push {lr}
	bl LoadOam
	bl ProcessSpriteCopyRequests
	bl TransferPlttBuffer
	pop {r0}
	bx r0
	thumb_func_end sub_819C7FC

	thumb_func_start sub_819C810
sub_819C810: @ 819C810
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x4
	ldr r4, =gPlayerParty
	ldr r5, =gUnknown_03001284
	ldr r1, [r5]
	ldrb r0, [r1, 0x12]
	movs r6, 0x64
	muls r0, r6
	adds r0, r4
	ldr r2, =gEnemyParty
	mov r9, r2
	ldrb r1, [r1, 0x13]
	muls r1, r6
	add r1, r9
	movs r2, 0x64
	bl memcpy
	movs r1, 0
	mov r0, sp
	strb r1, [r0]
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	muls r0, r6
	adds r0, r4
	movs r1, 0x20
	mov r2, sp
	bl SetMonData
	ldr r3, =gSaveBlock2Ptr
	mov r8, r3
	ldr r3, [r3]
	ldr r4, [r5]
	ldrb r0, [r4, 0x12]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	adds r2, r3, r2
	ldrb r1, [r4, 0x13]
	adds r1, 0x3
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r3, r0
	movs r1, 0xE7
	lsls r1, 4
	adds r0, r1
	ldrh r0, [r0]
	adds r2, r1
	strh r0, [r2]
	ldrb r0, [r4, 0x12]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	adds r2, r3, r2
	ldrb r1, [r4, 0x13]
	adds r1, 0x3
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r3, r0
	ldr r0, =0x00000e78
	adds r3, r0
	ldrb r1, [r3]
	adds r2, r0
	strb r1, [r2]
	ldr r0, [r5]
	ldrb r0, [r0, 0x13]
	muls r0, r6
	add r0, r9
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r1, r8
	ldr r2, [r1]
	ldr r4, [r5]
	ldrb r3, [r4, 0x12]
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 2
	ldr r3, =0x00000e74
	adds r2, r3
	adds r2, r1
	str r0, [r2]
	ldrb r0, [r4, 0x13]
	muls r0, r6
	add r0, r9
	movs r1, 0x2E
	movs r2, 0
	bl GetBoxMonData
	mov r1, r8
	ldr r2, [r1]
	ldr r1, [r5]
	ldrb r3, [r1, 0x12]
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 2
	adds r2, r1
	ldr r3, =0x00000e79
	adds r2, r3
	strb r0, [r2]
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819C810

	thumb_func_start sub_819C90C
sub_819C90C: @ 819C90C
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r6, r0, r1
	movs r1, 0x8
	ldrsh r0, [r6, r1]
	cmp r0, 0x7
	beq _0819C950
	cmp r0, 0x7
	bgt _0819C934
	cmp r0, 0x6
	beq _0819C93A
	b _0819C9F0
	.pool
_0819C934:
	cmp r0, 0x8
	beq _0819C9C4
	b _0819C9F0
_0819C93A:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	movs r0, 0x7
	strh r0, [r6, 0x8]
	b _0819C9F0
_0819C950:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _0819C9F0
	ldr r4, =gUnknown_03001284
	ldr r0, [r4]
	adds r0, 0x21
	ldrb r0, [r0]
	bl DestroyTask
	ldr r1, [r4]
	ldr r0, [r1, 0x2C]
	adds r1, 0x30
	bl sub_819F444
	bl sub_819E538
	ldr r4, =gUnknown_0203CE40
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE44
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE48
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE4C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	bl FreeAllWindowBuffers
	movs r0, 0x8
	strh r0, [r6, 0x8]
	b _0819C9F0
	.pool
_0819C9C4:
	adds r0, r2, 0
	bl DestroyTask
	ldr r2, =gUnknown_03001284
	ldr r1, [r2]
	movs r0, 0x1
	strb r0, [r1, 0x15]
	ldr r2, [r2]
	ldr r0, =gPlttBufferUnfaded
	movs r1, 0xF4
	lsls r1, 1
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r2, 0x24]
	ldr r1, =gPlayerParty
	ldrb r2, [r2, 0x3]
	ldr r0, =sub_819DC1C
	str r0, [sp]
	movs r0, 0
	movs r3, 0x2
	bl sub_81BF8EC
_0819C9F0:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819C90C

	thumb_func_start sub_819CA08
sub_819CA08: @ 819CA08
	push {r4-r7,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r7, =gUnknown_03001284
	ldr r2, [r7]
	adds r0, r2, 0
	adds r0, 0x30
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819CAFE
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r4, r0, r1
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	cmp r1, 0x1
	beq _0819CA78
	cmp r1, 0x1
	bgt _0819CA44
	cmp r1, 0
	beq _0819CA4E
	b _0819CAFE
	.pool
_0819CA44:
	cmp r1, 0x2
	beq _0819CA8C
	cmp r1, 0x3
	beq _0819CAA4
	b _0819CAFE
_0819CA4E:
	adds r0, r2, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0819CA68
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	ldr r0, =gScriptResult
	strh r1, [r0]
	b _0819CAFE
	.pool
_0819CA68:
	movs r0, 0x2
	strh r0, [r4, 0x8]
	ldr r1, =gScriptResult
	movs r0, 0x1
	strh r0, [r1]
	b _0819CAFE
	.pool
_0819CA78:
	adds r0, r2, 0
	adds r0, 0x20
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0819CA9C
	ldrb r0, [r2, 0x3]
	strb r0, [r2, 0x13]
	bl sub_819C810
	b _0819CA9C
_0819CA8C:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
_0819CA9C:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _0819CAFE
_0819CAA4:
	bl UpdatePaletteFade
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _0819CAFE
	ldr r0, [r7]
	adds r0, 0x21
	ldrb r0, [r0]
	bl DestroyTask
	bl sub_819E538
	ldr r4, =gUnknown_0203CE40
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE44
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE48
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r4, =gUnknown_0203CE4C
	ldr r0, [r4]
	bl Free
	str r5, [r4]
	ldr r0, [r7]
	bl Free
	str r5, [r7]
	bl FreeAllWindowBuffers
	ldr r0, =sub_80861B0
	bl SetMainCallback2
	adds r0, r6, 0
	bl DestroyTask
_0819CAFE:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819CA08

	thumb_func_start sub_819CB1C
sub_819CB1C: @ 819CB1C
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r7, =gUnknown_03001284
	ldr r0, [r7]
	adds r0, 0x30
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819CBD6
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0x4
	beq _0819CB50
	cmp r0, 0x5
	beq _0819CB5A
	b _0819CBD6
	.pool
_0819CB50:
	bl sub_819E9E0
	movs r0, 0x5
	strh r0, [r4, 0x8]
	b _0819CBD6
_0819CB5A:
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r6, 0x1
	adds r5, r6, 0
	ands r5, r1
	cmp r5, 0
	beq _0819CB86
	movs r0, 0x5
	bl PlaySE
	ldr r0, [r7]
	ldrb r0, [r0, 0x16]
	cmp r0, 0
	bne _0819CB80
	strh r6, [r4, 0xA]
	b _0819CB9C
	.pool
_0819CB80:
	movs r0, 0
	strh r0, [r4, 0xA]
	b _0819CB96
_0819CB86:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819CBA8
	movs r0, 0x5
	bl PlaySE
	strh r5, [r4, 0xA]
_0819CB96:
	movs r0, 0x4
	bl sub_819EA64
_0819CB9C:
	ldrh r0, [r4, 0x14]
	ldrh r1, [r4, 0x16]
	lsls r0, 16
	orrs r0, r1
	str r0, [r4]
	b _0819CBD6
_0819CBA8:
	ldrh r1, [r2, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0819CBC2
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	bl sub_819E758
	b _0819CBD6
_0819CBC2:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819CBD6
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	bl sub_819E758
_0819CBD6:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819CB1C

	thumb_func_start sub_819CBDC
sub_819CBDC: @ 819CBDC
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r2, r1, r2
	movs r1, 0xA
	ldrsh r0, [r2, r1]
	cmp r0, 0x1
	bne _0819CC04
	movs r0, 0
	strh r0, [r2, 0x8]
	ldr r0, =sub_819CA08
	b _0819CC16
	.pool
_0819CC04:
	movs r0, 0
	strh r0, [r2, 0x8]
	ldr r1, =sub_819CE40
	lsrs r0, r1, 16
	strh r0, [r2, 0x14]
	strh r1, [r2, 0x16]
	movs r0, 0x1
	strh r0, [r2, 0x12]
	ldr r0, =sub_819D770
_0819CC16:
	str r0, [r2]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819CBDC

	thumb_func_start sub_819CC24
sub_819CC24: @ 819CC24
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r4, r1, r2
	movs r0, 0x8
	ldrsh r5, [r4, r0]
	cmp r5, 0
	bne _0819CC5A
	ldr r0, =gUnknown_085EECBB
	bl sub_819EBEC
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x20
	strb r5, [r0]
	movs r0, 0x4
	strh r0, [r4, 0x8]
	ldr r1, =sub_819CBDC
	lsrs r0, r1, 16
	strh r0, [r4, 0x14]
	strh r1, [r4, 0x16]
	ldr r0, =sub_819CB1C
	str r0, [r4]
_0819CC5A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819CC24

	thumb_func_start sub_819CC74
sub_819CC74: @ 819CC74
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldr r0, [r1, 0x2C]
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F3F8
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r2, r0, r1
	movs r1, 0xA
	ldrsh r0, [r2, r1]
	cmp r0, 0x1
	bne _0819CCB0
	movs r0, 0
	strh r0, [r2, 0x8]
	ldr r0, =sub_819CA08
	b _0819CCC2
	.pool
_0819CCB0:
	movs r0, 0
	strh r0, [r2, 0x8]
	ldr r1, =sub_819CE40
	lsrs r0, r1, 16
	strh r0, [r2, 0x14]
	strh r1, [r2, 0x16]
	movs r0, 0x1
	strh r0, [r2, 0x12]
	ldr r0, =sub_819D770
_0819CCC2:
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819CC74

	thumb_func_start sub_819CCD4
sub_819CCD4: @ 819CCD4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r5, r1, r2
	movs r1, 0x8
	ldrsh r0, [r5, r1]
	cmp r0, 0
	bne _0819CD1A
	ldr r4, =gUnknown_03001284
	ldr r1, [r4]
	adds r0, r1, 0
	adds r0, 0x2D
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F2B4
	ldr r0, =gUnknown_085EECF0
	bl sub_819EBEC
	ldr r0, [r4]
	adds r0, 0x20
	movs r1, 0x1
	strb r1, [r0]
	movs r0, 0x4
	strh r0, [r5, 0x8]
	ldr r1, =sub_819CC74
	lsrs r0, r1, 16
	strh r0, [r5, 0x14]
	strh r1, [r5, 0x16]
	ldr r0, =sub_819CB1C
	str r0, [r5]
_0819CD1A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819CCD4

	thumb_func_start sub_819CD34
sub_819CD34: @ 819CD34
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r5, r0, r1
	movs r1, 0x8
	ldrsh r0, [r5, r1]
	cmp r0, 0x3
	beq _0819CDA4
	cmp r0, 0x3
	bgt _0819CD60
	cmp r0, 0x2
	beq _0819CD66
	b _0819CE36
	.pool
_0819CD60:
	cmp r0, 0x9
	beq _0819CD88
	b _0819CE36
_0819CD66:
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x15]
	cmp r0, 0
	bne _0819CD7C
	adds r0, r1, 0
	adds r0, 0x2D
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F2B4
_0819CD7C:
	movs r0, 0x9
	strh r0, [r5, 0x8]
	b _0819CE36
	.pool
_0819CD88:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x30
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819CE36
	bl sub_819E944
	movs r0, 0x3
	strh r0, [r5, 0x8]
	b _0819CE36
	.pool
_0819CDA4:
	ldr r7, =gUnknown_03001284
	ldr r0, [r7]
	adds r0, 0x30
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819CE36
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	mov r8, r0
	mov r4, r8
	ands r4, r1
	cmp r4, 0
	beq _0819CDD8
	movs r0, 0x5
	bl PlaySE
	adds r0, r6, 0
	bl sub_819F0A0
	b _0819CE36
	.pool
_0819CDD8:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819CE14
	movs r0, 0x5
	bl PlaySE
	ldr r1, [r7]
	ldr r0, [r1, 0x2C]
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F3F8
	movs r0, 0x3
	bl sub_819EA64
	strh r4, [r5, 0x8]
	ldr r1, =sub_819CE40
	lsrs r0, r1, 16
	strh r0, [r5, 0x14]
	strh r1, [r5, 0x16]
	mov r1, r8
	strh r1, [r5, 0x12]
	ldr r0, =sub_819D770
	str r0, [r5]
	b _0819CE36
	.pool
_0819CE14:
	ldrh r1, [r2, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0819CE28
	movs r0, 0x1
	negs r0, r0
	bl sub_819E7C0
	b _0819CE36
_0819CE28:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819CE36
	movs r0, 0x1
	bl sub_819E7C0
_0819CE36:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819CD34

	thumb_func_start sub_819CE40
sub_819CE40: @ 819CE40
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _0819CE64
	cmp r0, 0x1
	beq _0819CE88
	b _0819CF4C
	.pool
_0819CE64:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0819CF4C
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x22
	movs r1, 0x1
	strb r1, [r0]
	strh r1, [r4, 0x8]
	b _0819CF4C
	.pool
_0819CE88:
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	adds r5, r1, 0
	ands r5, r0
	cmp r5, 0
	beq _0819CEBC
	movs r0, 0x5
	bl PlaySE
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x22
	movs r1, 0
	strb r1, [r0]
	bl sub_819EE08
	bl sub_819EAC0
	adds r0, r6, 0
	bl sub_819F184
	b _0819CF4C
	.pool
_0819CEBC:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819CEF8
	movs r0, 0x5
	bl PlaySE
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x22
	strb r5, [r0]
	bl sub_819EE08
	bl sub_819EAC0
	ldr r1, =sub_819CC24
	lsrs r0, r1, 16
	strh r0, [r4, 0x14]
	strh r1, [r4, 0x16]
	strh r5, [r4, 0x8]
	strh r5, [r4, 0x12]
	ldr r0, =sub_819D588
	str r0, [r4]
	b _0819CF4C
	.pool
_0819CEF8:
	ldrh r1, [r2, 0x30]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819CF0C
	movs r0, 0x1
	negs r0, r0
	bl sub_819E694
	b _0819CF2A
_0819CF0C:
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0819CF1C
	movs r0, 0x1
	bl sub_819E694
	b _0819CF2A
_0819CF1C:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0819CF34
	movs r0, 0x1
	bl sub_819E6E8
_0819CF2A:
	bl sub_819EFA8
	bl sub_819EB4C
	b _0819CF4C
_0819CF34:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0819CF4C
	movs r0, 0x1
	negs r0, r0
	bl sub_819E6E8
	bl sub_819EFA8
	bl sub_819EB4C
_0819CF4C:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_819CE40

	thumb_func_start sub_819CF54
sub_819CF54: @ 819CF54
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	movs r0, 0x8
	ldrsh r2, [r4, r0]
	cmp r2, 0x1
	beq _0819CFA0
	cmp r2, 0x1
	bgt _0819CF7C
	cmp r2, 0
	beq _0819CF82
	b _0819D05C
	.pool
_0819CF7C:
	cmp r2, 0x2
	beq _0819D03C
	b _0819D05C
_0819CF82:
	ldr r1, =gUnknown_03001284
	ldr r0, [r1]
	adds r0, 0x27
	strb r2, [r0]
	ldr r0, [r1]
	adds r0, 0x28
	strb r2, [r0]
	ldr r0, [r1]
	adds r0, 0x26
	movs r1, 0x1
	strb r1, [r0]
	strh r1, [r4, 0x8]
	b _0819D05C
	.pool
_0819CFA0:
	ldr r1, =gUnknown_03001284
	ldr r2, [r1]
	adds r0, r2, 0
	adds r0, 0x22
	ldrb r0, [r0]
	adds r6, r1, 0
	cmp r0, 0
	beq _0819D05C
	adds r0, r2, 0
	adds r0, 0x29
	ldrb r3, [r0]
	cmp r3, 0
	beq _0819CFC4
	movs r0, 0x2
	strh r0, [r4, 0x8]
	b _0819D05C
	.pool
_0819CFC4:
	adds r1, r2, 0
	adds r1, 0x27
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, [r6]
	adds r1, r0, 0
	adds r1, 0x27
	ldrb r0, [r1]
	cmp r0, 0x6
	bls _0819CFF8
	strb r3, [r1]
	ldr r1, [r6]
	adds r0, r1, 0
	adds r0, 0x26
	ldrb r0, [r0]
	cmp r0, 0
	bne _0819CFF0
	adds r1, 0x28
	ldrb r0, [r1]
	subs r0, 0x1
	b _0819CFF6
_0819CFF0:
	adds r1, 0x28
	ldrb r0, [r1]
	adds r0, 0x1
_0819CFF6:
	strb r0, [r1]
_0819CFF8:
	movs r0, 0x80
	lsls r0, 7
	ldr r1, [r6]
	adds r1, 0x28
	ldrb r1, [r1]
	movs r2, 0
	bl BlendPalettes
	ldr r2, [r6]
	adds r0, r2, 0
	adds r0, 0x28
	ldrb r0, [r0]
	cmp r0, 0x5
	bls _0819D01C
	adds r1, r2, 0
	adds r1, 0x26
	movs r0, 0
	b _0819D05A
_0819D01C:
	cmp r0, 0
	bne _0819D05C
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x2
	strh r1, [r0, 0x8]
	adds r1, r2, 0
	adds r1, 0x26
	movs r0, 0x1
	b _0819D05A
	.pool
_0819D03C:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r1, r0, 0
	adds r1, 0x29
	ldrb r0, [r1]
	cmp r0, 0xE
	bls _0819D058
	movs r0, 0
	strb r0, [r1]
	movs r0, 0x1
	strh r0, [r4, 0x8]
	b _0819D05C
	.pool
_0819D058:
	adds r0, 0x1
_0819D05A:
	strb r0, [r1]
_0819D05C:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_819CF54

	thumb_func_start sub_819D064
sub_819D064: @ 819D064
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r4, r1, r2
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	cmp r1, 0x1
	beq _0819D0A4
	cmp r1, 0x1
	bgt _0819D08C
	cmp r1, 0
	beq _0819D092
	b _0819D118
	.pool
_0819D08C:
	cmp r1, 0x2
	beq _0819D0BC
	b _0819D118
_0819D092:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x27
	strb r1, [r0]
	strh r1, [r4, 0x10]
	b _0819D0AE
	.pool
_0819D0A4:
	ldr r0, =gPlttBufferUnfaded+ 0x1E0
	movs r1, 0xE0
	movs r2, 0xA
	bl LoadPalette
_0819D0AE:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _0819D118
	.pool
_0819D0BC:
	ldr r2, =gUnknown_03001284
	ldr r0, [r2]
	adds r0, 0x28
	ldrb r0, [r0]
	cmp r0, 0xF
	bls _0819D0D2
	movs r0, 0x1
	strh r0, [r4, 0x10]
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_0819D0D2:
	ldr r1, [r2]
	adds r1, 0x27
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, [r2]
	adds r1, r0, 0
	adds r1, 0x27
	ldrb r0, [r1]
	cmp r0, 0x3
	bls _0819D108
	movs r0, 0
	strb r0, [r1]
	ldr r1, =gPlttBufferUnfaded
	ldr r0, =gPlttBufferFaded
	movs r3, 0xE4
	lsls r3, 1
	adds r0, r3
	ldrh r0, [r0]
	adds r3, 0x20
	adds r1, r3
	strh r0, [r1]
	ldr r1, [r2]
	adds r1, 0x28
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_0819D108:
	movs r0, 0x80
	lsls r0, 7
	ldr r1, [r2]
	adds r1, 0x28
	ldrb r1, [r1]
	movs r2, 0
	bl BlendPalettes
_0819D118:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819D064

	thumb_func_start sub_819D12C
sub_819D12C: @ 819D12C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	ldr r1, =gTasks
	lsls r0, 2
	ldr r2, [sp]
	adds r0, r2
	lsls r0, 3
	adds r4, r0, r1
	movs r2, 0x8
	ldrsh r3, [r4, r2]
	cmp r3, 0
	beq _0819D15C
	cmp r3, 0x1
	beq _0819D168
	b _0819D310
	.pool
_0819D15C:
	strh r3, [r4, 0xA]
	strh r3, [r4, 0xC]
	strh r3, [r4, 0xE]
	movs r0, 0x1
	strh r0, [r4, 0x8]
	b _0819D310
_0819D168:
	movs r3, 0
	str r3, [sp, 0x4]
	movs r1, 0x2
	str r0, [sp, 0x8]
	ldr r0, =gTasks
	str r0, [sp, 0xC]
_0819D174:
	lsls r0, r1, 24
	asrs r4, r0, 24
	mov r9, r0
	cmp r4, 0x2
	beq _0819D1F2
	ldr r2, =gSprites
	ldr r3, =gUnknown_03001284
	ldr r0, [r3]
	adds r0, 0x5
	mov r8, r0
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r6, r0, r2
	ldrh r1, [r6, 0x20]
	mov r12, r1
	mov r7, r12
	ldr r1, [sp, 0x4]
	subs r0, r1, r7
	lsls r0, 24
	lsrs r5, r0, 24
	mov r10, r2
	cmp r5, 0x10
	beq _0819D1BE
	adds r0, r4, 0x2
	lsls r0, 1
	ldr r2, [sp, 0x8]
	adds r0, r2
	ldr r1, =gTasks
	adds r1, 0x8
	adds r0, r1
	movs r3, 0
	ldrsh r0, [r0, r3]
	cmp r0, 0x1
	bne _0819D1D8
_0819D1BE:
	lsls r0, r7, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	mov r0, r12
	adds r0, 0xA
	strh r0, [r6, 0x20]
	b _0819D210
	.pool
_0819D1D8:
	cmp r5, 0x10
	bls _0819D210
	adds r0, r4, 0x1
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r10
	ldrh r0, [r0, 0x20]
	subs r0, 0x30
	strh r0, [r6, 0x20]
	b _0819D210
_0819D1F2:
	ldr r3, =gSprites
	ldr r4, =gUnknown_03001284
	ldr r0, [r4]
	ldrb r1, [r0, 0x7]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r2, [r0, 0x20]
	lsls r1, r2, 24
	lsrs r1, 24
	str r1, [sp, 0x4]
	adds r2, 0xA
	strh r2, [r0, 0x20]
	mov r10, r3
_0819D210:
	mov r0, r9
	asrs r2, r0, 24
	adds r0, r2, 0x1
	lsls r0, 1
	ldr r1, [sp, 0x8]
	adds r0, r1
	ldr r1, =gTasks
	adds r1, 0x8
	adds r0, r1
	movs r3, 0
	ldrsh r0, [r0, r3]
	cmp r0, 0x1
	bne _0819D26A
	ldr r1, =gUnknown_03001284
	ldr r0, [r1]
	adds r0, 0x5
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	mov r3, r10
	adds r1, r0, r3
	movs r0, 0x20
	ldrsh r3, [r1, r0]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 4
	adds r0, 0x48
	cmp r3, r0
	ble _0819D260
	strh r0, [r1, 0x20]
	movs r7, 0x1
	b _0819D26C
	.pool
_0819D260:
	movs r7, 0
	cmp r3, r0
	bne _0819D26C
	movs r7, 0x1
	b _0819D26C
_0819D26A:
	movs r7, 0
_0819D26C:
	mov r6, r10
	ldr r5, =gUnknown_03001284
	ldr r2, [r5]
	mov r1, r9
	asrs r4, r1, 24
	adds r0, r2, 0x5
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r0, r6
	movs r3, 0x20
	ldrsh r0, [r1, r3]
	subs r0, 0x10
	cmp r0, 0xF0
	ble _0819D2F8
	ldrh r0, [r1, 0x20]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	ldr r0, =0x0000fff0
	strh r0, [r1, 0x20]
	ldrb r0, [r2, 0x14]
	cmp r0, 0x1
	bne _0819D2C0
	movs r0, 0x65
	bl IndexOfSpritePaletteTag
	ldr r1, [r5]
	adds r1, 0x5
	adds r1, r4
	ldrb r1, [r1]
	lsls r2, r1, 4
	adds r2, r1
	lsls r2, 2
	adds r2, r6
	b _0819D2D8
	.pool
_0819D2C0:
	movs r0, 0x64
	bl IndexOfSpritePaletteTag
	ldr r2, =gUnknown_03001284
	ldr r1, [r2]
	adds r1, 0x5
	adds r1, r4
	ldrb r1, [r1]
	lsls r2, r1, 4
	adds r2, r1
	lsls r2, 2
	add r2, r10
_0819D2D8:
	lsls r0, 4
	ldrb r3, [r2, 0x5]
	movs r1, 0xF
	ands r1, r3
	orrs r1, r0
	strb r1, [r2, 0x5]
	mov r3, r9
	asrs r0, r3, 23
	adds r0, 0x2
	ldr r1, [sp, 0x8]
	adds r0, r1
	ldr r2, [sp, 0xC]
	adds r2, 0x8
	adds r0, r2
	movs r1, 0x1
	strh r1, [r0]
_0819D2F8:
	movs r0, 0xFF
	lsls r0, 24
	add r0, r9
	lsrs r1, r0, 24
	cmp r0, 0
	blt _0819D306
	b _0819D174
_0819D306:
	cmp r7, 0x1
	bne _0819D310
	ldr r0, [sp]
	bl DestroyTask
_0819D310:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819D12C

	thumb_func_start sub_819D324
sub_819D324: @ 819D324
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r7, r0, 24
	movs r0, 0
	mov r8, r0
	ldr r1, =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r2, r0, r1
	ldrb r4, [r2, 0xE]
	movs r0, 0xC
	ldrsh r5, [r2, r0]
	mov r10, r1
	cmp r5, 0x1
	bne _0819D352
	lsls r0, r4, 24
	negs r0, r0
	lsrs r4, r0, 24
_0819D352:
	movs r1, 0x8
	ldrsh r0, [r2, r1]
	cmp r0, 0
	beq _0819D368
	cmp r0, 0x1
	bne _0819D360
	b _0819D480
_0819D360:
	b _0819D570
	.pool
_0819D368:
	ldr r3, =gSprites
	ldr r2, =gUnknown_03001284
	ldr r0, [r2]
	ldrb r1, [r0, 0x8]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r0, [r0, 0x20]
	cmp r5, 0
	bne _0819D39C
	lsls r0, 16
	asrs r0, 16
	lsls r2, r4, 24
	asrs r1, r2, 24
	adds r0, r1
	movs r1, 0x1
	cmp r0, 0xEF
	ble _0819D3B2
	movs r1, 0
	movs r0, 0xF0
	b _0819D3B0
	.pool
_0819D39C:
	lsls r0, 16
	asrs r0, 16
	lsls r2, r4, 24
	asrs r1, r2, 24
	adds r0, r1
	movs r1, 0x1
	cmp r0, 0xA0
	bgt _0819D3B2
	movs r1, 0
	movs r0, 0xA0
_0819D3B0:
	mov r8, r0
_0819D3B2:
	cmp r1, 0x1
	bne _0819D3FC
	movs r3, 0
	ldr r7, =gSprites
	ldr r6, =gUnknown_03001284
	asrs r5, r2, 24
_0819D3BE:
	movs r4, 0
	adds r2, r3, 0x1
_0819D3C2:
	ldr r1, [r6]
	lsls r0, r4, 1
	adds r0, r4
	adds r0, r3, r0
	adds r1, 0x8
	adds r1, r0
	ldrb r1, [r1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldrh r1, [r0, 0x20]
	adds r1, r5
	strh r1, [r0, 0x20]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _0819D3C2
	lsls r0, r2, 24
	lsrs r3, r0, 24
	cmp r3, 0x2
	bls _0819D3BE
	b _0819D570
	.pool
_0819D3FC:
	movs r4, 0
	lsls r1, r7, 2
	mov r12, r1
	mov r6, r8
	adds r6, 0x10
	movs r0, 0x30
	add r0, r8
	mov r9, r0
	ldr r5, =gSprites
_0819D40E:
	ldr r1, =gUnknown_03001284
	ldr r2, [r1]
	lsls r3, r4, 1
	adds r3, r4
	adds r0, r2, 0
	adds r0, 0x8
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	mov r1, r8
	strh r1, [r0, 0x20]
	adds r0, r2, 0
	adds r0, 0x9
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r6, [r0, 0x20]
	adds r2, 0xA
	adds r2, r3
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	mov r1, r9
	strh r1, [r0, 0x20]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _0819D40E
	mov r1, r12
	adds r0, r1, r7
	lsls r0, 3
	add r0, r10
	ldrb r1, [r0, 0xA]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	add r0, r10
	movs r1, 0x1
	strh r1, [r0, 0xE]
	adds r0, r7, 0
	bl DestroyTask
	b _0819D570
	.pool
_0819D480:
	ldr r2, =gSprites
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r1, [r0, 0xE]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x20]
	cmp r5, 0
	bne _0819D4B4
	lsls r0, 16
	asrs r0, 16
	lsls r2, r4, 24
	asrs r1, r2, 24
	adds r0, r1
	movs r1, 0x1
	cmp r0, 0xEF
	ble _0819D4CA
	movs r1, 0
	movs r0, 0xF0
	b _0819D4C8
	.pool
_0819D4B4:
	lsls r0, 16
	asrs r0, 16
	lsls r2, r4, 24
	asrs r1, r2, 24
	adds r0, r1
	movs r1, 0x1
	cmp r0, 0xC0
	bgt _0819D4CA
	movs r1, 0
	movs r0, 0xC0
_0819D4C8:
	mov r8, r0
_0819D4CA:
	cmp r1, 0x1
	bne _0819D510
	movs r3, 0
	ldr r7, =gSprites
	ldr r6, =gUnknown_03001284
	asrs r5, r2, 24
_0819D4D6:
	movs r4, 0
	adds r2, r3, 0x1
_0819D4DA:
	ldr r0, [r6]
	lsls r1, r4, 1
	adds r1, r3, r1
	adds r0, 0xE
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	ldrh r1, [r0, 0x20]
	adds r1, r5
	strh r1, [r0, 0x20]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _0819D4DA
	lsls r0, r2, 24
	lsrs r3, r0, 24
	cmp r3, 0x1
	bls _0819D4D6
	b _0819D570
	.pool
_0819D510:
	movs r4, 0
	lsls r1, r7, 2
	mov r12, r1
	mov r6, r8
	adds r6, 0x10
	ldr r5, =gSprites
	ldr r0, =gUnknown_03001284
	mov r9, r0
_0819D520:
	mov r1, r9
	ldr r2, [r1]
	lsls r3, r4, 1
	adds r0, r2, 0
	adds r0, 0xE
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	mov r1, r8
	strh r1, [r0, 0x20]
	adds r2, 0xF
	adds r2, r3
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r6, [r0, 0x20]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _0819D520
	mov r1, r12
	adds r0, r1, r7
	lsls r0, 3
	add r0, r10
	ldrb r1, [r0, 0xA]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	add r0, r10
	movs r1, 0x1
	strh r1, [r0, 0x10]
	adds r0, r7, 0
	bl DestroyTask
_0819D570:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819D324

	thumb_func_start sub_819D588
sub_819D588: @ 819D588
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r2, 0x8
	ldrsh r0, [r0, r2]
	mov r8, r1
	cmp r0, 0x5
	bls _0819D5AA
	b _0819D762
_0819D5AA:
	lsls r0, 2
	ldr r1, =_0819D5BC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819D5BC:
	.4byte _0819D5D4
	.4byte _0819D5F0
	.4byte _0819D60C
	.4byte _0819D63C
	.4byte _0819D6F0
	.4byte _0819D73A
_0819D5D4:
	ldr r0, =gUnknown_08610918
	movs r1, 0xE0
	movs r2, 0xA
	bl LoadPalette
	bl sub_819ED34
	movs r0, 0x5
	bl PutWindowTilemap
	b _0819D622
	.pool
_0819D5F0:
	movs r0, 0x3
	bl sub_819EA64
	ldr r0, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0819D762
	.pool
_0819D60C:
	movs r0, 0x80
	lsls r0, 7
	ldr r1, =gUnknown_0860F13C
	adds r1, 0x4A
	ldrh r1, [r1]
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
_0819D622:
	ldr r1, =gTasks
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x8]
	adds r1, 0x1
	strh r1, [r0, 0x8]
	b _0819D762
	.pool
_0819D63C:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0
	beq _0819D64E
	b _0819D762
_0819D64E:
	movs r0, 0x5
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x5
	movs r1, 0x2
	bl CopyWindowToVram
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x14]
	cmp r0, 0x1
	bne _0819D6B0
	ldr r0, =sub_819D324
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gTasks
	lsls r2, r5, 2
	adds r2, r5
	lsls r2, 3
	adds r2, r1
	strh r6, [r2, 0xE]
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0xA]
	strh r6, [r0, 0x8]
	strh r6, [r0, 0xC]
	movs r1, 0x6
	strh r1, [r0, 0xE]
	movs r0, 0x5
	strh r0, [r2, 0xC]
	ldrh r0, [r2, 0x8]
	adds r0, 0x1
	strh r0, [r2, 0x8]
	b _0819D762
	.pool
_0819D6B0:
	ldr r0, =sub_819D324
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r3, =gTasks
	lsls r2, r5, 2
	adds r2, r5
	lsls r2, 3
	adds r2, r3
	movs r1, 0x1
	strh r1, [r2, 0xE]
	strh r6, [r2, 0x10]
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r3
	strh r5, [r0, 0xA]
	strh r1, [r0, 0x8]
	strh r6, [r0, 0xC]
	movs r1, 0x6
	strh r1, [r0, 0xE]
	ldrh r0, [r2, 0x8]
	adds r0, 0x2
	strh r0, [r2, 0x8]
	b _0819D762
	.pool
_0819D6F0:
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	mov r1, r8
	adds r6, r0, r1
	ldrh r0, [r6, 0xC]
	movs r2, 0xC
	ldrsh r7, [r6, r2]
	cmp r7, 0
	bne _0819D734
	ldr r0, =sub_819D324
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	strh r7, [r6, 0x10]
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	add r0, r8
	strh r5, [r0, 0xA]
	movs r1, 0x1
	strh r1, [r0, 0x8]
	strh r7, [r0, 0xC]
	movs r1, 0x6
	strh r1, [r0, 0xE]
	ldrh r0, [r6, 0x8]
	adds r0, 0x1
	strh r0, [r6, 0x8]
	b _0819D762
	.pool
_0819D734:
	subs r0, 0x1
	strh r0, [r6, 0xC]
	b _0819D762
_0819D73A:
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	mov r1, r8
	adds r2, r0, r1
	movs r1, 0xE
	ldrsh r0, [r2, r1]
	cmp r0, 0x1
	bne _0819D762
	movs r1, 0x10
	ldrsh r0, [r2, r1]
	cmp r0, 0x1
	bne _0819D762
	ldrh r0, [r2, 0x12]
	strh r0, [r2, 0x8]
	ldrh r0, [r2, 0x14]
	ldrh r1, [r2, 0x16]
	lsls r0, 16
	orrs r0, r1
	str r0, [r2]
_0819D762:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819D588

	thumb_func_start sub_819D770
sub_819D770: @ 819D770
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, =gUnknown_03001284
	ldr r0, [r1]
	adds r0, 0x30
	ldrb r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x1
	bne _0819D78C
	b _0819D9D8
_0819D78C:
	ldr r0, =gTasks
	lsls r2, r6, 2
	adds r1, r2, r6
	lsls r1, 3
	adds r1, r0
	movs r4, 0x8
	ldrsh r1, [r1, r4]
	mov r8, r0
	adds r5, r2, 0
	cmp r1, 0x8
	bls _0819D7A4
	b _0819D9D8
_0819D7A4:
	lsls r0, r1, 2
	ldr r1, =_0819D7BC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819D7BC:
	.4byte _0819D7E0
	.4byte _0819D868
	.4byte _0819D8AE
	.4byte _0819D8F4
	.4byte _0819D910
	.4byte _0819D928
	.4byte _0819D936
	.4byte _0819D948
	.4byte _0819D9B0
_0819D7E0:
	ldr r0, [r3]
	ldrb r7, [r0, 0x14]
	cmp r7, 0x1
	bne _0819D828
	ldr r0, =sub_819D324
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r3, =gTasks
	adds r2, r5, r6
	lsls r2, 3
	adds r2, r3
	movs r1, 0
	strh r1, [r2, 0xE]
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r3
	strh r6, [r0, 0xA]
	strh r1, [r0, 0x8]
	strh r7, [r0, 0xC]
	movs r1, 0x6
	strh r1, [r0, 0xE]
	movs r0, 0xA
	strh r0, [r2, 0xC]
	ldrh r0, [r2, 0x8]
	adds r0, 0x1
	strh r0, [r2, 0x8]
	b _0819D9D8
	.pool
_0819D828:
	ldr r0, =sub_819D324
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r3, =gTasks
	adds r2, r5, r6
	lsls r2, 3
	adds r2, r3
	movs r0, 0
	movs r1, 0x1
	strh r1, [r2, 0xE]
	strh r0, [r2, 0x10]
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r3
	strh r6, [r0, 0xA]
	strh r1, [r0, 0x8]
	strh r1, [r0, 0xC]
	movs r1, 0x6
	strh r1, [r0, 0xE]
	ldrh r0, [r2, 0x8]
	adds r0, 0x2
	strh r0, [r2, 0x8]
	b _0819D9D8
	.pool
_0819D868:
	adds r0, r5, r6
	lsls r0, 3
	mov r1, r8
	adds r5, r0, r1
	ldrh r0, [r5, 0xC]
	movs r2, 0xC
	ldrsh r7, [r5, r2]
	cmp r7, 0
	bne _0819D8A8
	ldr r0, =sub_819D324
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
	strh r7, [r5, 0x10]
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	add r0, r8
	strh r6, [r0, 0xA]
	movs r1, 0x1
	strh r1, [r0, 0x8]
	strh r1, [r0, 0xC]
	movs r1, 0x6
	strh r1, [r0, 0xE]
	ldrh r0, [r5, 0x8]
	adds r0, 0x1
	strh r0, [r5, 0x8]
	b _0819D9D8
	.pool
_0819D8A8:
	subs r0, 0x1
	strh r0, [r5, 0xC]
	b _0819D9D8
_0819D8AE:
	adds r0, r5, r6
	lsls r0, 3
	mov r1, r8
	adds r4, r0, r1
	movs r2, 0xE
	ldrsh r0, [r4, r2]
	cmp r0, 0x1
	beq _0819D8C0
	b _0819D9D8
_0819D8C0:
	movs r1, 0x10
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	beq _0819D8CA
	b _0819D9D8
_0819D8CA:
	ldr r1, =gPlttBufferFaded
	ldr r0, =gUnknown_0860F13C
	adds r0, 0x4A
	ldrh r0, [r0]
	movs r2, 0xE2
	lsls r2, 1
	adds r1, r2
	strh r0, [r1]
	bl sub_819ED34
	movs r0, 0x5
	bl PutWindowTilemap
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _0819D9D8
	.pool
_0819D8F4:
	movs r0, 0x80
	lsls r0, 7
	ldr r1, =gUnknown_0860F13C
	adds r1, 0x4A
	ldrh r1, [r1]
	str r1, [sp]
	movs r1, 0
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	b _0819D990
	.pool
_0819D910:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0819D9D8
	movs r0, 0
	bl sub_819EDBC
	b _0819D990
	.pool
_0819D928:
	movs r0, 0x1
	bl sub_819EDBC
	movs r0, 0x3
	bl PutWindowTilemap
	b _0819D990
_0819D936:
	movs r0, 0x5
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x5
	movs r1, 0x2
	bl CopyWindowToVram
	b _0819D990
_0819D948:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x14]
	cmp r0, 0
	bne _0819D964
	ldr r0, =gUnknown_085EEC73
	bl sub_819EBEC
	b _0819D96A
	.pool
_0819D964:
	ldr r0, =gUnknown_085EEC8B
	bl sub_819EBEC
_0819D96A:
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x3]
	cmp r0, 0x2
	bhi _0819D98C
	ldr r2, =gSprites
	ldrb r1, [r1, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
_0819D98C:
	bl sub_819EFA8
_0819D990:
	ldr r0, =gTasks
	adds r1, r5, r6
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0819D9D8
	.pool
_0819D9B0:
	bl sub_819EEF0
	bl sub_819EADC
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x22
	movs r1, 0x1
	strb r1, [r0]
	ldr r1, =gTasks
	adds r0, r5, r6
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x12]
	strh r1, [r0, 0x8]
	ldrh r1, [r0, 0x14]
	ldrh r2, [r0, 0x16]
	lsls r1, 16
	orrs r1, r2
	str r1, [r0]
_0819D9D8:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819D770

	thumb_func_start sub_819D9EC
sub_819D9EC: @ 819D9EC
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x30
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0819DA00
	b _0819DBCA
_0819DA00:
	ldr r0, =gTasks
	lsls r2, r6, 2
	adds r1, r2, r6
	lsls r1, 3
	adds r1, r0
	movs r3, 0x8
	ldrsh r1, [r1, r3]
	adds r3, r0, 0
	adds r7, r2, 0
	cmp r1, 0x4
	bls _0819DA18
	b _0819DBCA
_0819DA18:
	lsls r0, r1, 2
	ldr r1, =_0819DA30
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819DA30:
	.4byte _0819DA44
	.4byte _0819DA58
	.4byte _0819DA8C
	.4byte _0819DABC
	.4byte _0819DBB0
_0819DA44:
	bl sub_819EEF0
	ldr r0, =gTasks
	adds r1, r7, r6
	lsls r1, 3
	adds r1, r0
	b _0819DB96
	.pool
_0819DA58:
	bl sub_819EADC
	ldr r2, =gSprites
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r1, [r0, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, =gTasks
	adds r1, r7, r6
	lsls r1, 3
	adds r1, r0
	b _0819DB96
	.pool
_0819DA8C:
	ldr r0, =sub_819D12C
	movs r1, 0
	bl CreateTask
	ldr r2, =gTasks
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x21
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldr r1, =sub_819D064
	str r1, [r0]
	b _0819DB90
	.pool
_0819DABC:
	ldr r0, =sub_819D12C
	bl FuncIsActiveTask
	lsls r0, 24
	cmp r0, 0
	beq _0819DACA
	b _0819DBCA
_0819DACA:
	ldr r2, =gTasks
	ldr r4, =gUnknown_03001284
	ldr r0, [r4]
	adds r0, 0x21
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	movs r1, 0x10
	ldrsh r0, [r0, r1]
	cmp r0, 0x1
	bne _0819DBCA
	bl sub_819EAC0
	ldr r0, [r4]
	ldrb r0, [r0, 0x14]
	cmp r0, 0
	bne _0819DB04
	movs r0, 0x1
	bl sub_819F048
	b _0819DB32
	.pool
_0819DB04:
	movs r0, 0
	bl sub_819F048
	movs r2, 0
	ldr r5, =gSprites
	movs r3, 0x4
_0819DB10:
	ldr r0, [r4]
	adds r0, 0xB
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x2
	bls _0819DB10
_0819DB32:
	ldr r5, =gSprites
	ldr r4, =gUnknown_03001284
	ldr r3, [r4]
	ldrb r0, [r3, 0x4]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	adds r0, r3, 0x5
	ldrb r2, [r3, 0x3]
	adds r0, r2
	ldrb r2, [r0]
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r5
	ldrh r0, [r0, 0x20]
	movs r5, 0
	strh r0, [r1, 0x20]
	ldr r2, =gTasks
	adds r0, r3, 0
	adds r0, 0x21
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldr r1, =sub_819CF54
	str r1, [r0]
	adds r3, 0x27
	strb r5, [r3]
	ldr r0, [r4]
	adds r0, 0x28
	movs r1, 0x6
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, 0x26
	strb r5, [r0]
	ldr r0, [r4]
	adds r0, 0x21
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	movs r1, 0x1
	strh r1, [r0, 0x8]
_0819DB90:
	adds r1, r7, r6
	lsls r1, 3
	adds r1, r2
_0819DB96:
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0819DBCA
	.pool
_0819DBB0:
	adds r0, r7, r6
	lsls r0, 3
	adds r0, r3
	movs r1, 0
	strh r1, [r0, 0x8]
	ldr r2, =sub_819CE40
	lsrs r1, r2, 16
	strh r1, [r0, 0x14]
	strh r2, [r0, 0x16]
	movs r1, 0x1
	strh r1, [r0, 0x12]
	ldr r1, =sub_819D770
	str r1, [r0]
_0819DBCA:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819D9EC

	thumb_func_start sub_819DBD8
sub_819DBD8: @ 819DBD8
	push {r4,r5,lr}
	ldr r5, =gUnknown_03001284
	ldr r4, [r5]
	cmp r4, 0
	bne _0819DBF6
	movs r0, 0x34
	bl AllocZeroed
	str r0, [r5]
	strb r4, [r0, 0x3]
	ldr r0, [r5]
	adds r0, 0x30
	strb r4, [r0]
	ldr r0, [r5]
	strb r4, [r0, 0x15]
_0819DBF6:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819DBD8

	thumb_func_start sub_819DC00
sub_819DC00: @ 819DC00
	push {lr}
	ldr r0, =gUnknown_03001284
	movs r1, 0
	str r1, [r0]
	ldr r0, =sub_819DC1C
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819DC00

	thumb_func_start sub_819DC1C
sub_819DC1C: @ 819DC1C
	push {r4-r6,lr}
	sub sp, 0xC
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, r1, 0
	cmp r0, 0xF
	bls _0819DC32
	b _0819E0AA
_0819DC32:
	lsls r0, 2
	ldr r1, =_0819DC44
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819DC44:
	.4byte _0819DC84
	.4byte _0819DCD4
	.4byte _0819DDA8
	.4byte _0819DE68
	.4byte _0819DE94
	.4byte _0819DECC
	.4byte _0819DEEC
	.4byte _0819DF10
	.4byte _0819DF30
	.4byte _0819DF3C
	.4byte _0819DF64
	.4byte _0819DF70
	.4byte _0819DF78
	.4byte _0819DF8C
	.4byte _0819DFA4
	.4byte _0819E01C
_0819DC84:
	movs r0, 0
	bl SetHBlankCallback
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0
	str r0, [sp, 0x8]
	movs r1, 0xC0
	lsls r1, 19
	ldr r2, =0x05006000
	add r0, sp, 0x8
	bl CpuSet
	movs r0, 0
	bl ResetBgsAndClearDma3BusyFlags
	ldr r1, =gUnknown_086108B8
	movs r0, 0
	movs r2, 0x4
	bl InitBgsFromTemplates
	ldr r0, =gUnknown_086108C8
	bl InitWindows
	bl DeactivateAllTextPrinters
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819E00E
	.pool
_0819DCD4:
	ldr r5, =gUnknown_0203CE40
	movs r4, 0x88
	lsls r4, 3
	adds r0, r4, 0
	bl Alloc
	str r0, [r5]
	ldr r5, =gUnknown_0203CE44
	adds r0, r4, 0
	bl AllocZeroed
	str r0, [r5]
	ldr r5, =gUnknown_0203CE48
	movs r4, 0x80
	lsls r4, 4
	adds r0, r4, 0
	bl Alloc
	str r0, [r5]
	ldr r5, =gUnknown_0203CE4C
	adds r0, r4, 0
	bl AllocZeroed
	str r0, [r5]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x3
	movs r1, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x54
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4C
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x40
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x44
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x42
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x46
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0
	bl SetGpuReg
	b _0819E006
	.pool
_0819DDA8:
	bl ResetPaletteFade
	bl ResetSpriteData
	bl ResetTasks
	bl FreeAllSpritePalettes
	bl dp13_810BB8C
	ldr r0, =gUnknown_08DC0754
	ldr r5, =gUnknown_0203CE40
	ldr r1, [r5]
	movs r2, 0x88
	lsls r2, 2
	bl CpuSet
	ldr r0, =gUnknown_0861033C
	ldr r4, =gUnknown_0203CE44
	ldr r1, [r4]
	movs r2, 0x30
	bl CpuSet
	ldr r1, [r5]
	movs r2, 0x88
	lsls r2, 3
	movs r0, 0x1
	movs r3, 0
	bl LoadBgTiles
	ldr r1, [r4]
	movs r0, 0x3
	movs r2, 0x60
	movs r3, 0
	bl LoadBgTiles
	ldr r0, =gUnknown_08DC0B94
	ldr r4, =gUnknown_0203CE48
	ldr r1, [r4]
	movs r2, 0x80
	lsls r2, 3
	bl CpuSet
	ldr r1, [r4]
	movs r2, 0x80
	lsls r2, 4
	movs r0, 0x1
	movs r3, 0
	bl LoadBgTilemap
	ldr r0, =gUnknown_08DC0714
	movs r1, 0
	movs r2, 0x40
	bl LoadPalette
	ldr r4, =gUnknown_08610918
	adds r0, r4, 0
	movs r1, 0xF0
	movs r2, 0xA
	bl LoadPalette
	adds r0, r4, 0
	movs r1, 0xE0
	movs r2, 0xA
	bl LoadPalette
	ldr r0, =gUnknown_0861039C
	movs r1, 0x20
	movs r2, 0x4
	bl LoadPalette
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819E00E
	.pool
_0819DE68:
	ldr r0, =gUnknown_0203CE4C
	ldr r1, [r0]
	movs r0, 0x3
	bl SetBgTilemapBuffer
	ldr r1, =gUnknown_0861023C
	movs r0, 0x8
	str r0, [sp]
	str r0, [sp, 0x4]
	movs r0, 0x3
	movs r2, 0xB
	movs r3, 0x4
	bl CopyToBgTilemapBufferRect
	movs r0, 0x3
	bl CopyBgTilemapBufferToVram
	b _0819E006
	.pool
_0819DE94:
	ldr r0, =gUnknown_086106B0
	bl LoadSpritePalettes
	ldr r0, =gUnknown_08610650
	bl LoadSpriteSheets
	ldr r0, =gUnknown_086106A0
	bl LoadCompressedObjectPic
	ldr r0, =sub_819C7FC
	bl SetVBlankCallback
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819E00E
	.pool
_0819DECC:
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x15]
	cmp r0, 0x1
	bne _0819DEDC
	ldr r0, =gUnknown_0203CF20
	ldrb r0, [r0]
	strb r0, [r1, 0x3]
_0819DEDC:
	movs r0, 0x87
	lsls r0, 3
	adds r1, r2, r0
	b _0819E00E
	.pool
_0819DEEC:
	bl sub_819DBD8
	bl sub_819E0C0
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x15]
	cmp r0, 0x1
	bne _0819DF02
	bl sub_819F304
_0819DF02:
	movs r0, 0
	bl sub_819F048
	b _0819E006
	.pool
_0819DF10:
	ldr r0, =gUnknown_085EEC73
	bl sub_819EBEC
	movs r0, 0x2
	bl PutWindowTilemap
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819E00E
	.pool
_0819DF30:
	bl sub_819EFA8
	movs r0, 0x8
	bl PutWindowTilemap
	b _0819E006
_0819DF3C:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x15]
	cmp r0, 0
	bne _0819DF4A
	bl sub_819EB4C
_0819DF4A:
	movs r0, 0x1
	bl PutWindowTilemap
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819E00E
	.pool
_0819DF64:
	bl sub_819EB18
	movs r0, 0
	bl PutWindowTilemap
	b _0819E006
_0819DF70:
	movs r0, 0x87
	lsls r0, 3
	adds r1, r2, r0
	b _0819E00E
_0819DF78:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x15]
	cmp r0, 0
	beq _0819E006
	bl sub_819EE08
	b _0819E006
	.pool
_0819DF8C:
	bl sub_819ED78
	movs r0, 0x3
	bl PutWindowTilemap
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
	b _0819E00E
	.pool
_0819DFA4:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	movs r1, 0x82
	lsls r1, 5
	movs r0, 0
	bl SetGpuReg
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x15]
	cmp r0, 0x1
	bne _0819E000
	movs r0, 0x3
	bl ShowBg
	ldr r1, =0x00001248
	movs r0, 0x50
	bl SetGpuReg
	ldr r1, =0x0000040b
	movs r0, 0x52
	bl SetGpuReg
	b _0819E006
	.pool
_0819E000:
	movs r0, 0x3
	bl HideBg
_0819E006:
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
_0819E00E:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0819E0AA
	.pool
_0819E01C:
	ldr r0, =sub_819CF54
	movs r1, 0
	bl CreateTask
	ldr r6, =gUnknown_03001284
	ldr r1, [r6]
	adds r1, 0x21
	strb r0, [r1]
	ldr r0, [r6]
	ldrb r5, [r0, 0x15]
	cmp r5, 0
	bne _0819E06C
	ldr r4, =gTasks
	adds r0, 0x21
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	strh r5, [r0, 0x8]
	ldr r0, =sub_819CE40
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r1, r0, 24
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	strh r5, [r0, 0x8]
	b _0819E0A4
	.pool
_0819E06C:
	bl sub_819EAF8
	ldr r4, =gTasks
	ldr r2, [r6]
	adds r0, r2, 0
	adds r0, 0x21
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	movs r3, 0
	movs r1, 0x1
	strh r1, [r0, 0x8]
	adds r2, 0x22
	strb r3, [r2]
	ldr r0, =sub_819CD34
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r1, r0, 24
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r4
	movs r1, 0x2
	strh r1, [r0, 0x8]
_0819E0A4:
	ldr r0, =sub_819C7E0
	bl SetMainCallback2
_0819E0AA:
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819DC1C

	thumb_func_start sub_819E0C0
sub_819E0C0: @ 819E0C0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	mov r1, sp
	ldr r0, =gUnknown_08610834
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2,r5,r6}
	stm r1!, {r2,r5,r6}
	mov r1, sp
	movs r0, 0x65
	strh r0, [r1, 0x2]
	movs r6, 0
	ldr r4, =gUnknown_03001284
	movs r7, 0
	ldr r5, =gSprites
_0819E0E6:
	lsls r1, r6, 1
	adds r1, r6
	lsls r1, 20
	movs r3, 0x90
	lsls r3, 15
	adds r1, r3
	asrs r1, 16
	mov r0, sp
	movs r2, 0x40
	movs r3, 0x1
	bl CreateSprite
	ldr r1, [r4]
	adds r1, 0x5
	adds r1, r6
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, 0x5
	adds r0, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r7, [r0, 0x2E]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x2
	bls _0819E0E6
	ldr r7, =gUnknown_03001284
	ldr r1, [r7]
	adds r0, r1, 0x5
	ldrb r1, [r1, 0x3]
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gSprites
	adds r0, r4
	movs r5, 0x20
	ldrsh r1, [r0, r5]
	ldr r0, =gUnknown_0861084C
	movs r2, 0x58
	movs r3, 0
	bl CreateSprite
	ldr r1, [r7]
	movs r4, 0
	strb r0, [r1, 0x4]
	ldr r0, =gUnknown_08610864
	movs r1, 0xB0
	movs r2, 0x70
	movs r3, 0
	bl CreateSprite
	ldr r1, [r7]
	strb r0, [r1, 0x1]
	ldr r0, =gUnknown_0861087C
	movs r1, 0xB0
	movs r2, 0x90
	movs r3, 0
	bl CreateSprite
	ldr r1, [r7]
	strb r0, [r1, 0x2]
	ldr r0, [r7]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r6, =gSprites
	adds r0, r6
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x28
	strb r4, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x29
	strb r4, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x28
	strb r4, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x29
	strb r4, [r0]
	ldr r0, [r7]
	ldrb r0, [r0, 0x15]
	movs r1, 0xC0
	str r1, [sp, 0x18]
	cmp r0, 0x1
	bne _0819E1E8
	movs r2, 0xF0
	str r2, [sp, 0x18]
_0819E1E8:
	mov r1, sp
	ldr r0, =gUnknown_0861084C
	ldm r0!, {r3-r5}
	stm r1!, {r3-r5}
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	mov r0, sp
	movs r4, 0x68
	mov r10, r4
	mov r5, r10
	strh r5, [r0]
	movs r1, 0xF0
	movs r2, 0x78
	movs r3, 0xA
	bl CreateSprite
	ldr r1, [r7]
	strb r0, [r1, 0x8]
	mov r1, sp
	ldr r0, =gUnknown_08610864
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldm r0!, {r4-r6}
	stm r1!, {r4-r6}
	mov r0, sp
	movs r1, 0x69
	mov r9, r1
	mov r2, r9
	strh r2, [r0]
	movs r4, 0x80
	lsls r4, 1
	adds r1, r4, 0
	movs r2, 0x78
	movs r3, 0xA
	bl CreateSprite
	ldr r1, [r7]
	strb r0, [r1, 0x9]
	movs r5, 0x90
	lsls r5, 1
	mov r0, sp
	adds r1, r5, 0
	movs r2, 0x78
	movs r3, 0xA
	bl CreateSprite
	ldr r1, [r7]
	strb r0, [r1, 0xA]
	mov r1, sp
	ldr r0, =gUnknown_0861084C
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	mov r0, sp
	movs r3, 0x6A
	mov r8, r3
	mov r6, r8
	strh r6, [r0]
	movs r1, 0xF0
	movs r2, 0x78
	movs r3, 0x1
	bl CreateSprite
	ldr r1, [r7]
	strb r0, [r1, 0xB]
	mov r1, sp
	ldr r0, =gUnknown_08610864
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	ldm r0!, {r2,r3,r6}
	stm r1!, {r2,r3,r6}
	mov r1, sp
	movs r0, 0x6B
	strh r0, [r1]
	mov r0, sp
	adds r1, r4, 0
	movs r2, 0x78
	movs r3, 0x1
	bl CreateSprite
	ldr r1, [r7]
	strb r0, [r1, 0xC]
	mov r0, sp
	movs r6, 0x6C
	strh r6, [r0]
	adds r1, r5, 0
	movs r2, 0x78
	movs r3, 0x1
	bl CreateSprite
	ldr r1, [r7]
	strb r0, [r1, 0xD]
	mov r1, sp
	ldr r0, =gUnknown_0861084C
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	mov r0, sp
	mov r4, r10
	strh r4, [r0]
	ldr r1, [sp, 0x18]
	movs r2, 0x90
	movs r3, 0xA
	bl CreateSprite
	ldr r1, [r7]
	strb r0, [r1, 0xE]
	mov r1, sp
	ldr r0, =gUnknown_08610864
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r4,r5}
	stm r1!, {r2,r4,r5}
	mov r0, sp
	mov r3, r9
	strh r3, [r0]
	ldr r4, [sp, 0x18]
	adds r4, 0x10
	adds r1, r4, 0
	movs r2, 0x90
	movs r3, 0xA
	bl CreateSprite
	ldr r1, [r7]
	strb r0, [r1, 0xF]
	mov r1, sp
	ldr r0, =gUnknown_0861084C
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	mov r0, sp
	mov r5, r8
	strh r5, [r0]
	ldr r1, [sp, 0x18]
	movs r2, 0x90
	movs r3, 0x1
	bl CreateSprite
	ldr r1, [r7]
	strb r0, [r1, 0x10]
	mov r1, sp
	ldr r0, =gUnknown_08610864
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	mov r0, sp
	strh r6, [r0]
	adds r1, r4, 0
	movs r2, 0x90
	movs r3, 0x1
	bl CreateSprite
	ldr r1, [r7]
	strb r0, [r1, 0x11]
	movs r6, 0
	ldr r5, =gSprites
	adds r4, r7, 0
	movs r7, 0
	movs r0, 0x4
	mov r10, r0
_0819E330:
	ldr r0, [r4]
	lsls r3, r6, 1
	adds r2, r3, r6
	adds r0, 0x8
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x28
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0x8
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x29
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0x9
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x28
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0x9
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x29
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0xA
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x28
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0xA
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x29
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0xE
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x28
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0xE
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x29
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0xF
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x28
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0xF
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x29
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, 0x8
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	mov r8, r0
	ldrb r1, [r0]
	mov r0, r10
	orrs r1, r0
	mov r0, r8
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, 0x9
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	mov r8, r0
	ldrb r1, [r0]
	mov r0, r10
	orrs r1, r0
	mov r0, r8
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, 0xA
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	mov r2, r10
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, 0xE
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, 0xF
	adds r0, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r3, =gUnknown_03001284
	mov r8, r3
	ldr r0, =gSprites
	mov r9, r0
	cmp r6, 0x1
	bhi _0819E496
	b _0819E330
_0819E496:
	ldr r0, [r3]
	ldrb r0, [r0, 0xE]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	add r1, r9
	adds r1, 0x3E
	ldrb r2, [r1]
	movs r3, 0x5
	negs r3, r3
	adds r0, r3, 0
	b _0819E4C8
	.pool
_0819E4C8:
	ands r0, r2
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r0, 0xF]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r9
	adds r0, 0x3E
	ldrb r2, [r0]
	adds r1, r3, 0
	ands r1, r2
	strb r1, [r0]
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, 0x8]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r9
	adds r0, 0x3E
	ldrb r2, [r0]
	adds r1, r3, 0
	ands r1, r2
	strb r1, [r0]
	mov r4, r8
	ldr r0, [r4]
	ldrb r1, [r0, 0x9]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r9
	adds r0, 0x3E
	ldrb r2, [r0]
	adds r1, r3, 0
	ands r1, r2
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r1, [r0, 0xA]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r9
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r3, r1
	strb r3, [r0]
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819E0C0

	thumb_func_start sub_819E538
sub_819E538: @ 819E538
	push {r4-r7,lr}
	movs r5, 0
_0819E53C:
	ldr r6, =gUnknown_03001284
	ldr r0, [r6]
	adds r0, 0x5
	adds r0, r5
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gSprites
	adds r0, r4
	bl DestroySprite
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _0819E53C
	ldr r0, [r6]
	ldrb r1, [r0, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl DestroySprite
	ldr r0, [r6]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl DestroySprite
	ldr r0, [r6]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl DestroySprite
	movs r5, 0
_0819E590:
	movs r4, 0
	lsls r6, r5, 1
_0819E594:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r1, r6, r5
	adds r1, r4, r1
	adds r0, 0x8
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	bl DestroySprite
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _0819E594
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bls _0819E590
	movs r5, 0
_0819E5C6:
	movs r4, 0
	adds r7, r5, 0x1
	lsls r6, r5, 1
_0819E5CC:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r1, r4, r6
	adds r0, 0xE
	adds r0, r1
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	bl DestroySprite
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bls _0819E5CC
	lsls r0, r7, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bls _0819E5C6
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E538

	thumb_func_start sub_819E608
sub_819E608: @ 819E608
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x2
	bhi _0819E65C
	ldr r4, =gSprites
	ldr r5, =gUnknown_03001284
	ldr r0, [r5]
	ldrb r1, [r0, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	bl sub_819E8EC
	ldr r0, [r5]
	ldrb r2, [r0, 0x4]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	adds r0, 0x5
	adds r0, r6
	ldrb r2, [r0]
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r4
	ldrh r0, [r0, 0x20]
	strh r0, [r1, 0x20]
	b _0819E684
	.pool
_0819E65C:
	ldr r2, =gSprites
	ldr r3, =gUnknown_03001284
	ldr r0, [r3]
	ldrb r1, [r0, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r3]
	ldr r1, [r0, 0x18]
	lsls r0, r6, 3
	adds r0, r1
	ldrb r0, [r0]
	bl sub_819E838
_0819E684:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E608

	thumb_func_start sub_819E694
sub_819E694: @ 819E694
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl PlaySE
	lsls r4, 24
	cmp r4, 0
	ble _0819E6C0
	ldr r1, =gUnknown_03001284
	ldr r2, [r1]
	ldrb r0, [r2, 0x3]
	adds r0, 0x1
	ldrb r3, [r2, 0x17]
	cmp r0, r3
	bne _0819E6D8
	movs r0, 0
	b _0819E6D8
	.pool
_0819E6C0:
	ldr r0, =gUnknown_03001284
	ldr r2, [r0]
	ldrb r3, [r2, 0x3]
	adds r1, r0, 0
	cmp r3, 0
	beq _0819E6D4
	subs r0, r3, 0x1
	b _0819E6D8
	.pool
_0819E6D4:
	ldrb r0, [r2, 0x17]
	subs r0, 0x1
_0819E6D8:
	strb r0, [r2, 0x3]
	ldr r0, [r1]
	ldrb r0, [r0, 0x3]
	bl sub_819E608
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_819E694

	thumb_func_start sub_819E6E8
sub_819E6E8: @ 819E6E8
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl PlaySE
	lsls r4, 24
	cmp r4, 0
	ble _0819E728
	ldr r0, =gUnknown_03001284
	ldr r2, [r0]
	ldrb r1, [r2, 0x3]
	adds r4, r0, 0
	cmp r1, 0x2
	bhi _0819E714
	movs r0, 0x3
	strb r0, [r2, 0x3]
	b _0819E74A
	.pool
_0819E714:
	ldrb r0, [r2, 0x3]
	adds r0, 0x1
	ldrb r1, [r2, 0x17]
	cmp r0, r1
	beq _0819E722
	strb r0, [r2, 0x3]
	b _0819E74A
_0819E722:
	movs r0, 0
	strb r0, [r2, 0x3]
	b _0819E74A
_0819E728:
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r3, [r1, 0x3]
	adds r2, r3, 0
	adds r4, r0, 0
	cmp r2, 0x2
	bls _0819E744
	cmp r2, 0
	beq _0819E744
	subs r0, r3, 0x1
	b _0819E748
	.pool
_0819E744:
	ldrb r0, [r1, 0x17]
	subs r0, 0x1
_0819E748:
	strb r0, [r1, 0x3]
_0819E74A:
	ldr r0, [r4]
	ldrb r0, [r0, 0x3]
	bl sub_819E608
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_819E6E8

	thumb_func_start sub_819E758
sub_819E758: @ 819E758
	push {lr}
	lsls r0, 24
	cmp r0, 0
	ble _0819E778
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r3, [r1, 0x16]
	adds r2, r0, 0
	cmp r3, 0x1
	beq _0819E774
	adds r0, r3, 0x1
	b _0819E78E
	.pool
_0819E774:
	movs r0, 0
	b _0819E78E
_0819E778:
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r3, [r1, 0x16]
	adds r2, r0, 0
	cmp r3, 0
	beq _0819E78C
	subs r0, r3, 0x1
	b _0819E78E
	.pool
_0819E78C:
	movs r0, 0x1
_0819E78E:
	strb r0, [r1, 0x16]
	ldr r3, =gSprites
	ldr r2, [r2]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2, 0x16]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r0, [r2, 0x2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2, 0x16]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E758

	thumb_func_start sub_819E7C0
sub_819E7C0: @ 819E7C0
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl PlaySE
	lsls r4, 24
	cmp r4, 0
	ble _0819E7EC
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r3, [r1]
	adds r2, r0, 0
	cmp r3, 0x2
	beq _0819E7E8
	adds r0, r3, 0x1
	b _0819E802
	.pool
_0819E7E8:
	movs r0, 0
	b _0819E802
_0819E7EC:
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r3, [r1]
	adds r2, r0, 0
	cmp r3, 0
	beq _0819E800
	subs r0, r3, 0x1
	b _0819E802
	.pool
_0819E800:
	movs r0, 0x2
_0819E802:
	strb r0, [r1]
	ldr r3, =gSprites
	ldr r2, [r2]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r0, [r2, 0x2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E7C0

	thumb_func_start sub_819E838
sub_819E838: @ 819E838
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r6, r0, 24
	movs r4, 0
	movs r0, 0x5
	negs r0, r0
	mov r9, r0
	movs r2, 0x4
	mov r8, r2
	ldr r0, =gSprites
	mov r12, r0
	ldr r7, =gUnknown_03001284
_0819E856:
	cmp r6, 0x2
	bne _0819E898
	ldr r5, =gSprites
	ldr r3, =gUnknown_03001284
	ldr r0, [r3]
	adds r0, 0xB
	adds r0, r4
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	adds r1, 0x3E
	ldrb r2, [r1]
	mov r0, r9
	ands r0, r2
	strb r0, [r1]
	cmp r4, 0x1
	bhi _0819E8D4
	ldr r0, [r3]
	adds r0, 0x10
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	b _0819E8CA
	.pool
_0819E898:
	cmp r6, 0x3
	bne _0819E8D4
	cmp r4, 0x1
	bhi _0819E8BA
	ldr r0, [r7]
	adds r0, 0x10
	adds r0, r4
	ldrb r0, [r0]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	add r1, r12
	adds r1, 0x3E
	ldrb r2, [r1]
	mov r0, r9
	ands r0, r2
	strb r0, [r1]
_0819E8BA:
	ldr r0, [r7]
	adds r0, 0xB
	adds r0, r4
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r12
_0819E8CA:
	adds r0, 0x3E
	ldrb r1, [r0]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0]
_0819E8D4:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _0819E856
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_819E838

	thumb_func_start sub_819E8EC
sub_819E8EC: @ 819E8EC
	push {r4-r6,lr}
	movs r2, 0
	ldr r5, =gSprites
	ldr r4, =gUnknown_03001284
	adds r6, r5, 0
	movs r3, 0x4
_0819E8F8:
	ldr r0, [r4]
	adds r0, 0xB
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
	cmp r2, 0x1
	bhi _0819E92C
	ldr r0, [r4]
	adds r0, 0x10
	adds r0, r2
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
_0819E92C:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x2
	bls _0819E8F8
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E8EC

	thumb_func_start sub_819E944
sub_819E944: @ 819E944
	push {r4,r5,lr}
	ldr r0, =gUnknown_03001284
	ldr r3, [r0]
	ldrb r1, [r3, 0x15]
	adds r5, r0, 0
	cmp r1, 0x1
	bne _0819E95C
	movs r0, 0
	strb r0, [r3, 0x15]
	b _0819E960
	.pool
_0819E95C:
	movs r0, 0
	strb r0, [r3]
_0819E960:
	ldr r4, =gSprites
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xB0
	strh r1, [r0, 0x20]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r1, [r2, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xD0
	strh r1, [r0, 0x20]
	ldrb r0, [r2, 0x2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	ldrb r0, [r2]
	lsls r0, 4
	adds r0, 0x70
	strh r0, [r1, 0x22]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r1]
	ldr r0, [r5]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	bl sub_819EC20
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E944

	thumb_func_start sub_819E9E0
sub_819E9E0: @ 819E9E0
	push {r4,r5,lr}
	ldr r5, =gUnknown_03001284
	ldr r1, [r5]
	movs r0, 0
	strb r0, [r1, 0x16]
	ldr r4, =gSprites
	ldr r2, [r5]
	ldrb r1, [r2, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xB0
	strh r1, [r0, 0x20]
	ldrb r1, [r2, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r3, 0x70
	strh r3, [r0, 0x22]
	ldrb r1, [r2, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	movs r1, 0xD0
	strh r1, [r0, 0x20]
	ldrb r1, [r2, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	strh r3, [r0, 0x22]
	ldrb r0, [r2, 0x1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r1]
	ldr r0, [r5]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	bl sub_819EC94
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819E9E0

	thumb_func_start sub_819EA64
sub_819EA64: @ 819EA64
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r5, =gSprites
	ldr r3, =gUnknown_03001284
	ldr r0, [r3]
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r1, [r0, 0x2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r0, r4, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	adds r0, r4, 0
	movs r1, 0x2
	bl CopyWindowToVram
	adds r0, r4, 0
	bl ClearWindowTilemap
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EA64

	thumb_func_start sub_819EAC0
sub_819EAC0: @ 819EAC0
	push {lr}
	movs r0, 0x1
	bl PutWindowTilemap
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x1
	movs r1, 0x2
	bl CopyWindowToVram
	pop {r0}
	bx r0
	thumb_func_end sub_819EAC0

	thumb_func_start sub_819EADC
sub_819EADC: @ 819EADC
	push {lr}
	movs r0, 0x7
	bl PutWindowTilemap
	movs r0, 0x7
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x7
	movs r1, 0x2
	bl CopyWindowToVram
	pop {r0}
	bx r0
	thumb_func_end sub_819EADC

	thumb_func_start sub_819EAF8
sub_819EAF8: @ 819EAF8
	push {lr}
	bl sub_819EAC0
	movs r0, 0x5
	bl PutWindowTilemap
	movs r0, 0x5
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x5
	movs r1, 0x2
	bl CopyWindowToVram
	pop {r0}
	bx r0
	thumb_func_end sub_819EAF8

	thumb_func_start sub_819EB18
sub_819EB18: @ 819EB18
	push {lr}
	sub sp, 0xC
	movs r0, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r2, =gUnknown_085EEC66
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x2
	bl PrintTextOnWindow
	movs r0, 0
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EB18

	thumb_func_start sub_819EB4C
sub_819EB4C: @ 819EB4C
	push {r4,lr}
	sub sp, 0xC
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x3]
	cmp r0, 0x2
	bls _0819EB70
	movs r0, 0x1
	movs r1, 0x2
	bl CopyWindowToVram
	b _0819EBD4
	.pool
_0819EB70:
	ldrb r2, [r1, 0x3]
	ldrb r0, [r1, 0x14]
	cmp r0, 0
	bne _0819EB84
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gPlayerParty
	b _0819EB8A
	.pool
_0819EB84:
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gEnemyParty
_0819EB8A:
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r4, =gStringVar4
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	adds r0, r4, 0
	bl StringCopy
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0x56
	bl GetStringRightAlignXOffset
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	ldr r0, =gUnknown_08610925
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x1
	movs r1, 0x1
	movs r3, 0x1
	bl box_print
	movs r0, 0x1
	movs r1, 0x3
	bl CopyWindowToVram
_0819EBD4:
	add sp, 0xC
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EB4C

	thumb_func_start sub_819EBEC
sub_819EBEC: @ 819EBEC
	push {r4,lr}
	sub sp, 0xC
	adds r4, r0, 0
	movs r0, 0x2
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x5
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r0, 0x2
	movs r1, 0x1
	adds r2, r4, 0
	movs r3, 0x2
	bl PrintTextOnWindow
	movs r0, 0x2
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_819EBEC

	thumb_func_start sub_819EC20
sub_819EC20: @ 819EC20
	push {r4,r5,lr}
	sub sp, 0xC
	movs r0, 0x3
	bl PutWindowTilemap
	movs r0, 0x3
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r5, =gUnknown_08610922
	str r5, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EECAA
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0xF
	movs r3, 0x1
	bl box_print
	str r5, [sp]
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EECA5
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0xF
	movs r3, 0x11
	bl box_print
	str r5, [sp]
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EECB2
	str r0, [sp, 0x8]
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0xF
	movs r3, 0x21
	bl box_print
	movs r0, 0x3
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EC20

	thumb_func_start sub_819EC94
sub_819EC94: @ 819EC94
	push {r4,r5,lr}
	sub sp, 0xC
	movs r0, 0x4
	bl PutWindowTilemap
	movs r0, 0x4
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r5, =gUnknown_08610922
	str r5, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EECCA
	str r0, [sp, 0x8]
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x1
	bl box_print
	str r5, [sp]
	str r4, [sp, 0x4]
	ldr r0, =gUnknown_085EECCE
	str r0, [sp, 0x8]
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0x7
	movs r3, 0x11
	bl box_print
	movs r0, 0x4
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EC94

	thumb_func_start sub_819ECF0
sub_819ECF0: @ 819ECF0
	push {r4-r6,lr}
	sub sp, 0xC
	adds r6, r0, 0
	adds r5, r1, 0
	adds r4, r2, 0
	movs r0, 0
	adds r1, r6, 0
	movs r2, 0x46
	bl GetStringRightAlignXOffset
	adds r2, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r0, =gUnknown_08610922
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r6, [sp, 0x8]
	adds r0, r4, 0
	movs r1, 0
	adds r3, r5, 0
	bl box_print
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819ECF0

	thumb_func_start sub_819ED34
sub_819ED34: @ 819ED34
	push {lr}
	movs r0, 0x5
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x14]
	cmp r0, 0
	beq _0819ED56
	cmp r0, 0x1
	bne _0819ED60
	ldr r0, =gUnknown_085EECD1
	movs r1, 0
	movs r2, 0x5
	bl sub_819ECF0
_0819ED56:
	ldr r0, =gUnknown_085EECDD
	movs r1, 0x18
	movs r2, 0x5
	bl sub_819ECF0
_0819ED60:
	movs r0, 0x5
	movs r1, 0x3
	bl CopyWindowToVram
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819ED34

	thumb_func_start sub_819ED78
sub_819ED78: @ 819ED78
	push {lr}
	movs r0, 0x3
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x14]
	cmp r0, 0
	beq _0819ED9A
	cmp r0, 0x1
	bne _0819EDA4
	ldr r0, =gUnknown_085EECD1
	movs r1, 0x8
	movs r2, 0x3
	bl sub_819ECF0
_0819ED9A:
	ldr r0, =gUnknown_085EECDD
	movs r1, 0x20
	movs r2, 0x3
	bl sub_819ECF0
_0819EDA4:
	movs r0, 0x3
	movs r1, 0x3
	bl CopyWindowToVram
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819ED78

	thumb_func_start sub_819EDBC
sub_819EDBC: @ 819EDBC
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _0819EDCC
	cmp r0, 0x1
	beq _0819EDEC
	b _0819EDF6
_0819EDCC:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x14]
	cmp r0, 0x1
	bne _0819EDF6
	ldr r0, =gUnknown_085EECD1
	movs r1, 0x8
	movs r2, 0x3
	bl sub_819ECF0
	b _0819EDF6
	.pool
_0819EDEC:
	ldr r0, =gUnknown_085EECDD
	movs r1, 0x20
	movs r2, 0x3
	bl sub_819ECF0
_0819EDF6:
	movs r0, 0x3
	movs r1, 0x3
	bl CopyWindowToVram
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EDBC

	thumb_func_start sub_819EE08
sub_819EE08: @ 819EE08
	push {r4,lr}
	sub sp, 0x18
	ldr r0, =gUnknown_08610918
	add r1, sp, 0xC
	movs r2, 0x4
	bl CpuSet
	ldr r0, =gUnknown_03001284
	ldr r2, [r0]
	ldrb r0, [r2, 0x15]
	cmp r0, 0
	bne _0819EE3C
	add r0, sp, 0xC
	ldr r1, =gPlttBufferFaded
	movs r2, 0xE4
	lsls r2, 1
	adds r1, r2
	ldrh r1, [r1]
	strh r1, [r0, 0x8]
	b _0819EE42
	.pool
_0819EE3C:
	add r1, sp, 0xC
	ldrh r0, [r2, 0x24]
	strh r0, [r1, 0x8]
_0819EE42:
	add r0, sp, 0xC
	movs r1, 0xF0
	movs r2, 0xA
	bl LoadPalette
	movs r0, 0x7
	bl PutWindowTilemap
	movs r0, 0x7
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x3]
	cmp r0, 0x2
	bls _0819EE74
	movs r0, 0x7
	movs r1, 0x3
	bl CopyWindowToVram
	b _0819EED8
	.pool
_0819EE74:
	ldrb r2, [r1, 0x3]
	ldrb r0, [r1, 0x14]
	cmp r0, 0
	bne _0819EE88
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gPlayerParty
	b _0819EE8E
	.pool
_0819EE88:
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gEnemyParty
_0819EE8E:
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r4, =gStringVar4
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	adds r0, r4, 0
	bl StringCopy
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0x56
	bl GetStringRightAlignXOffset
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	ldr r0, =gUnknown_08610925
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x7
	movs r1, 0x1
	movs r3, 0x1
	bl box_print
	movs r0, 0x7
	movs r1, 0x3
	bl CopyWindowToVram
_0819EED8:
	add sp, 0x18
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EE08

	thumb_func_start sub_819EEF0
sub_819EEF0: @ 819EEF0
	push {r4,lr}
	sub sp, 0xC
	ldr r0, =gUnknown_08610918
	movs r1, 0xE0
	movs r2, 0xA
	bl LoadPalette
	ldr r0, =gPlttBufferUnfaded+ 0x1E0
	ldr r1, =gPlttBufferFaded + 0x1C0
	movs r2, 0x5
	bl CpuSet
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x3]
	cmp r0, 0x2
	bls _0819EF2C
	movs r0, 0x1
	movs r1, 0x2
	bl CopyWindowToVram
	b _0819EF90
	.pool
_0819EF2C:
	ldrb r2, [r1, 0x3]
	ldrb r0, [r1, 0x14]
	cmp r0, 0
	bne _0819EF40
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gPlayerParty
	b _0819EF46
	.pool
_0819EF40:
	movs r0, 0x64
	muls r0, r2
	ldr r1, =gEnemyParty
_0819EF46:
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r4, =gStringVar4
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	adds r0, r4, 0
	bl StringCopy
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0x56
	bl GetStringRightAlignXOffset
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	ldr r0, =gUnknown_08610925
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x1
	movs r1, 0x1
	movs r3, 0x1
	bl box_print
	movs r0, 0x1
	movs r1, 0x3
	bl CopyWindowToVram
_0819EF90:
	add sp, 0xC
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EEF0

	thumb_func_start sub_819EFA8
sub_819EFA8: @ 819EFA8
	push {r4-r6,lr}
	sub sp, 0x2C
	ldr r6, =gUnknown_03001284
	ldr r0, [r6]
	ldrb r4, [r0, 0x3]
	adds r5, r4, 0
	movs r0, 0x8
	movs r1, 0
	bl FillWindowPixelBuffer
	cmp r4, 0x2
	bls _0819EFD0
	movs r0, 0x8
	movs r1, 0x2
	bl CopyWindowToVram
	b _0819F03A
	.pool
_0819EFD0:
	movs r0, 0x8
	bl PutWindowTilemap
	ldr r0, [r6]
	ldrb r0, [r0, 0x14]
	cmp r0, 0
	bne _0819EFEC
	movs r0, 0x64
	muls r0, r4
	ldr r1, =gPlayerParty
	b _0819EFF2
	.pool
_0819EFEC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, =gEnemyParty
_0819EFF2:
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	add r1, sp, 0xC
	bl sub_81DB468
	movs r0, 0x1
	add r1, sp, 0xC
	movs r2, 0x76
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r0, 0x8
	movs r1, 0x1
	add r2, sp, 0xC
	bl PrintTextOnWindow
	movs r0, 0x8
	movs r1, 0x2
	bl CopyWindowToVram
_0819F03A:
	add sp, 0x2C
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819EFA8

	thumb_func_start sub_819F048
sub_819F048: @ 819F048
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r4, =gUnknown_03001284
	ldr r3, [r4]
	ldrb r0, [r3, 0x15]
	cmp r0, 0x1
	beq _0819F094
	cmp r2, 0
	beq _0819F068
	cmp r2, 0x1
	beq _0819F080
	b _0819F094
	.pool
_0819F068:
	strb r2, [r3, 0x14]
	ldr r0, [r4]
	strb r2, [r0, 0x3]
	ldr r1, [r4]
	movs r0, 0x4
	strb r0, [r1, 0x17]
	ldr r1, [r4]
	ldr r0, =gUnknown_08610928
	b _0819F092
	.pool
_0819F080:
	movs r1, 0
	strb r2, [r3, 0x14]
	ldr r0, [r4]
	strb r1, [r0, 0x3]
	ldr r1, [r4]
	movs r0, 0x5
	strb r0, [r1, 0x17]
	ldr r1, [r4]
	ldr r0, =gUnknown_08610948
_0819F092:
	str r0, [r1, 0x18]
_0819F094:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F048

	thumb_func_start sub_819F0A0
sub_819F0A0: @ 819F0A0
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r3, =gUnknown_03001280
	ldr r2, =gUnknown_086108AC
	ldr r1, =gUnknown_03001284
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	str r1, [r3]
	bl _call_via_r1
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F0A0

	thumb_func_start sub_819F0CC
sub_819F0CC: @ 819F0CC
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r5, =gUnknown_03001284
	ldr r1, [r5]
	ldr r0, [r1, 0x2C]
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F3F8
	ldr r0, [r5]
	ldrb r1, [r0, 0x3]
	movs r5, 0
	strb r1, [r0, 0x12]
	movs r0, 0x3
	bl sub_819EA64
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0x8]
	ldr r1, =sub_819D9EC
	str r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F0CC

	thumb_func_start sub_819F114
sub_819F114: @ 819F114
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r0, 0x6
	strh r0, [r1, 0x8]
	ldr r0, =sub_819C90C
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_819F114

	thumb_func_start sub_819F134
sub_819F134: @ 819F134
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldr r0, [r1, 0x2C]
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F3F8
	movs r0, 0x3
	bl sub_819EA64
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x8]
	ldr r2, =sub_819CE40
	lsrs r1, r2, 16
	strh r1, [r0, 0x14]
	strh r2, [r0, 0x16]
	movs r1, 0x1
	strh r1, [r0, 0x12]
	ldr r1, =sub_819D770
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F134

	thumb_func_start sub_819F184
sub_819F184: @ 819F184
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r3, =gUnknown_03001280
	ldr r1, =gUnknown_03001284
	ldr r2, [r1]
	ldrb r1, [r2, 0x3]
	ldr r2, [r2, 0x18]
	lsls r1, 3
	adds r1, r2
	ldr r1, [r1, 0x4]
	str r1, [r3]
	bl _call_via_r1
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F184

	thumb_func_start sub_819F1AC
sub_819F1AC: @ 819F1AC
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r2, =sub_819CC24
	lsrs r0, r2, 16
	movs r3, 0
	strh r0, [r1, 0x14]
	strh r2, [r1, 0x16]
	strh r3, [r1, 0x8]
	strh r3, [r1, 0x12]
	ldr r0, =sub_819D588
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_819F1AC

	thumb_func_start sub_819F1DC
sub_819F1DC: @ 819F1DC
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r2, =sub_819D9EC
	lsrs r0, r2, 16
	movs r3, 0
	strh r0, [r1, 0x14]
	strh r2, [r1, 0x16]
	strh r3, [r1, 0x12]
	strh r3, [r1, 0x8]
	ldr r0, =sub_819D588
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_819F1DC

	thumb_func_start sub_819F20C
sub_819F20C: @ 819F20C
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r5, =gUnknown_03001284
	ldr r1, [r5]
	ldrb r0, [r1, 0x14]
	cmp r0, 0
	bne _0819F240
	ldr r3, =gTasks
	lsls r4, r6, 2
	adds r0, r4, r6
	lsls r0, 3
	adds r0, r3
	ldr r2, =sub_819CD34
	lsrs r1, r2, 16
	strh r1, [r0, 0x14]
	strh r2, [r0, 0x16]
	movs r1, 0x2
	strh r1, [r0, 0x12]
	b _0819F292
	.pool
_0819F240:
	ldrb r0, [r1, 0x3]
	bl sub_819F59C
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1
	bne _0819F278
	ldr r1, [r5]
	adds r0, r1, 0
	adds r0, 0x2D
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F2B4
	ldr r1, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x8]
	strh r4, [r0, 0x12]
	ldr r1, =sub_819F488
	b _0819F29E
	.pool
_0819F278:
	ldr r4, =gTasks
	lsls r5, r6, 2
	adds r0, r5, r6
	lsls r0, 3
	adds r0, r4
	ldr r2, =sub_819CCD4
	lsrs r1, r2, 16
	movs r3, 0
	strh r1, [r0, 0x14]
	strh r2, [r0, 0x16]
	strh r3, [r0, 0x12]
	adds r3, r4, 0
	adds r4, r5, 0
_0819F292:
	adds r0, r4, r6
	lsls r0, 3
	adds r0, r3
	movs r1, 0
	strh r1, [r0, 0x8]
	ldr r1, =sub_819D588
_0819F29E:
	str r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F20C

	thumb_func_start sub_819F2B4
sub_819F2B4: @ 819F2B4
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r6, r1, 0
	lsls r5, r2, 24
	lsrs r5, 24
	ldr r0, =gUnknown_08610894
	movs r1, 0x78
	movs r2, 0x40
	movs r3, 0x1
	bl CreateSprite
	strb r0, [r4]
	ldr r2, =gSprites
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r2, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, =sub_819F600
	str r1, [r0]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strh r5, [r0, 0x3C]
	movs r0, 0x1
	strb r0, [r6]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F2B4

	thumb_func_start sub_819F304
sub_819F304: @ 819F304
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, 0x10
	ldr r0, =gUnknown_08610894
	movs r1, 0x78
	movs r2, 0x40
	movs r3, 0x1
	bl CreateSprite
	ldr r6, =gUnknown_03001284
	ldr r1, [r6]
	adds r1, 0x2D
	movs r2, 0
	mov r10, r2
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, 0x2D
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	mov r8, r1
	add r0, r8
	movs r1, 0x2
	bl StartSpriteAffineAnim
	ldr r0, [r6]
	ldrb r1, [r0, 0x3]
	movs r0, 0x64
	adds r4, r1, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r9, r0
	adds r0, r4, 0
	movs r1, 0x1
	movs r2, 0
	bl GetMonData
	adds r2, r0, 0
	movs r0, 0x58
	str r0, [sp]
	movs r0, 0x20
	str r0, [sp, 0x4]
	movs r0, 0xF
	str r0, [sp, 0x8]
	ldr r0, =0x0000ffff
	str r0, [sp, 0xC]
	adds r0, r5, 0
	mov r1, r9
	movs r3, 0x1
	bl sub_818D7D8
	ldr r1, [r6]
	adds r1, 0x2C
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, 0x2C
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x28
	mov r2, r10
	strb r2, [r0]
	ldr r0, [r6]
	adds r0, 0x2C
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x29
	strb r2, [r0]
	ldr r0, [r6]
	adds r0, 0x2D
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r8
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F304

	thumb_func_start sub_819F3F8
sub_819F3F8: @ 819F3F8
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r6, r1, 0
	lsls r5, r2, 24
	lsrs r5, 24
	lsls r0, r4, 24
	lsrs r0, 24
	bl sub_818D820
	ldr r0, =sub_819F7B4
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r5, [r1, 0x16]
	lsrs r4, 8
	lsls r4, 24
	lsrs r4, 24
	strh r4, [r1, 0x14]
	ldr r1, [r1]
	bl _call_via_r1
	movs r0, 0x1
	strb r0, [r6]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F3F8

	thumb_func_start sub_819F444
sub_819F444: @ 819F444
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r6, r1, 0
	lsls r0, r4, 24
	lsrs r0, 24
	bl sub_818D820
	ldr r5, =gSprites
	lsls r4, 16
	lsrs r1, r4, 24
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r0, [r0, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl FreeOamMatrix
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	adds r0, r5
	bl DestroySprite
	movs r0, 0
	strb r0, [r6]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F444

	thumb_func_start sub_819F488
sub_819F488: @ 819F488
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gUnknown_03001284
	ldr r0, [r1]
	adds r0, 0x30
	ldrb r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x1
	beq _0819F58A
	ldr r2, =gTasks
	lsls r1, r4, 2
	adds r0, r1, r4
	lsls r0, 3
	adds r0, r2
	movs r2, 0x8
	ldrsh r0, [r0, r2]
	adds r5, r1, 0
	cmp r0, 0x4
	bhi _0819F58A
	lsls r0, 2
	ldr r1, =_0819F4C8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0819F4C8:
	.4byte _0819F4DC
	.4byte _0819F4F8
	.4byte _0819F52C
	.4byte _0819F548
	.4byte _0819F568
_0819F4DC:
	ldr r0, =gUnknown_085EED0A
	bl sub_819EBEC
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x20
	movs r1, 0
	strb r1, [r0]
	b _0819F54E
	.pool
_0819F4F8:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0819F50C
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0819F58A
_0819F50C:
	movs r0, 0x5
	bl PlaySE
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldr r0, [r1, 0x2C]
	adds r1, 0x30
	movs r2, 0x1
	bl sub_819F3F8
	b _0819F54E
	.pool
_0819F52C:
	ldr r0, [r3]
	adds r0, 0x30
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0819F58A
	movs r0, 0x5
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x5
	movs r1, 0x2
	bl CopyWindowToVram
	b _0819F54E
_0819F548:
	ldr r0, =gUnknown_085EEC8B
	bl sub_819EBEC
_0819F54E:
	ldr r0, =gTasks
	adds r1, r5, r4
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0819F58A
	.pool
_0819F568:
	bl sub_819EEF0
	bl sub_819EADC
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x22
	movs r1, 0x1
	strb r1, [r0]
	ldr r1, =gTasks
	adds r0, r5, r4
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x12]
	strh r1, [r0, 0x8]
	ldr r1, =sub_819CE40
	str r1, [r0]
_0819F58A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F488

	thumb_func_start sub_819F59C
sub_819F59C: @ 819F59C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x64
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	movs r4, 0
_0819F5B8:
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	ldrb r0, [r0, 0x12]
	cmp r4, r0
	beq _0819F5EC
	movs r0, 0x64
	muls r0, r4
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r5
	bne _0819F5EC
	movs r0, 0x1
	b _0819F5F8
	.pool
_0819F5EC:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _0819F5B8
	movs r0, 0
_0819F5F8:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_819F59C

	thumb_func_start sub_819F600
sub_819F600: @ 819F600
	push {r4,lr}
	adds r4, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819F640
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, =sub_819F69C
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldrh r2, [r4, 0x3C]
	strh r2, [r1, 0x16]
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, =SpriteCallbackDummy
	str r0, [r4, 0x1C]
_0819F640:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F600

	thumb_func_start sub_819F654
sub_819F654: @ 819F654
	push {r4,lr}
	adds r4, r0, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0819F694
	ldrb r0, [r4, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl FreeOamMatrix
	movs r1, 0x3C
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	bne _0819F688
	ldr r0, =gUnknown_03001284
	ldr r0, [r0]
	adds r0, 0x30
	movs r1, 0
	strb r1, [r0]
	b _0819F68E
	.pool
_0819F688:
	movs r0, 0
	bl sub_819BE20
_0819F68E:
	adds r0, r4, 0
	bl DestroySprite
_0819F694:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_819F654

	thumb_func_start sub_819F69C
sub_819F69C: @ 819F69C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	beq _0819F71A
	cmp r0, 0x1
	bgt _0819F6C4
	cmp r0, 0
	beq _0819F6CA
	b _0819F77C
	.pool
_0819F6C4:
	cmp r0, 0x2
	beq _0819F73C
	b _0819F77C
_0819F6CA:
	movs r0, 0x58
	strh r0, [r4, 0xE]
	movs r0, 0x98
	strh r0, [r4, 0x38]
	movs r0, 0x40
	strh r0, [r4, 0x12]
	movs r0, 0x41
	strh r0, [r4, 0x18]
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl SetGpuRegBits
	ldrh r1, [r4, 0xE]
	lsls r1, 8
	ldrh r0, [r4, 0x38]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x40
	bl SetGpuReg
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0x3F
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x37
	bl SetGpuReg
	b _0819F7A6
_0819F71A:
	movs r0, 0x3
	bl ShowBg
	ldr r1, =0x00001248
	movs r0, 0x50
	bl SetGpuReg
	ldr r1, =0x0000040b
	movs r0, 0x52
	bl SetGpuReg
	b _0819F7A6
	.pool
_0819F73C:
	ldrh r0, [r4, 0x12]
	subs r0, 0x4
	strh r0, [r4, 0x12]
	ldrh r1, [r4, 0x18]
	adds r1, 0x4
	strh r1, [r4, 0x18]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x20
	ble _0819F758
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0x5F
	ble _0819F760
_0819F758:
	movs r0, 0x20
	strh r0, [r4, 0x12]
	movs r0, 0x60
	strh r0, [r4, 0x18]
_0819F760:
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r2, 0x12
	ldrsh r0, [r4, r2]
	cmp r0, 0x20
	bne _0819F7AC
	b _0819F7A6
_0819F77C:
	adds r0, r5, 0
	bl DestroyTask
	ldr r0, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	movs r2, 0x16
	ldrsh r0, [r1, r2]
	cmp r0, 0x1
	bne _0819F7A0
	bl sub_819F8E0
	b _0819F7AC
	.pool
_0819F7A0:
	bl sub_819BD70
	b _0819F7AC
_0819F7A6:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_0819F7AC:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_819F69C

	thumb_func_start sub_819F7B4
sub_819F7B4: @ 819F7B4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _0819F844
	cmp r0, 0x1
	beq _0819F894
	movs r0, 0x3
	bl HideBg
	ldr r3, =gSprites
	movs r0, 0x14
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r4, 0x16]
	strh r1, [r0, 0x3C]
	movs r0, 0x14
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	movs r0, 0x14
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r3, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, =sub_819F654
	str r1, [r0]
	movs r0, 0x14
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	movs r1, 0x1
	bl StartSpriteAffineAnim
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl ClearGpuRegBits
	adds r0, r5, 0
	bl DestroyTask
	b _0819F8D8
	.pool
_0819F844:
	movs r0, 0x58
	strh r0, [r4, 0xE]
	movs r0, 0x98
	strh r0, [r4, 0x38]
	movs r0, 0x20
	strh r0, [r4, 0x12]
	movs r0, 0x60
	strh r0, [r4, 0x18]
	movs r1, 0x80
	lsls r1, 6
	movs r0, 0
	bl SetGpuRegBits
	ldrh r1, [r4, 0xE]
	lsls r1, 8
	ldrh r0, [r4, 0x38]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x40
	bl SetGpuReg
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r0, 0x48
	movs r1, 0x3F
	bl SetGpuReg
	movs r0, 0x4A
	movs r1, 0x37
	bl SetGpuReg
	b _0819F8D2
_0819F894:
	ldrh r0, [r4, 0x12]
	adds r0, 0x4
	strh r0, [r4, 0x12]
	ldrh r1, [r4, 0x18]
	subs r1, 0x4
	strh r1, [r4, 0x18]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3F
	bgt _0819F8B0
	lsls r0, r1, 16
	asrs r0, 16
	cmp r0, 0x41
	bgt _0819F8B8
_0819F8B0:
	movs r0, 0x40
	strh r0, [r4, 0x12]
	movs r0, 0x41
	strh r0, [r4, 0x18]
_0819F8B8:
	ldrh r1, [r4, 0x12]
	lsls r1, 8
	ldrh r0, [r4, 0x18]
	orrs r1, r0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x44
	bl SetGpuReg
	movs r1, 0x12
	ldrsh r0, [r4, r1]
	cmp r0, 0x40
	bne _0819F8D8
_0819F8D2:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_0819F8D8:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_819F7B4

	thumb_func_start sub_819F8E0
sub_819F8E0: @ 819F8E0
	push {r4-r6,lr}
	sub sp, 0x10
	ldr r0, =gUnknown_03001284
	ldr r1, [r0]
	ldrb r0, [r1, 0x14]
	cmp r0, 0
	bne _0819F900
	ldrb r1, [r1, 0x3]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	b _0819F908
	.pool
_0819F900:
	ldrb r1, [r1, 0x3]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gEnemyParty
_0819F908:
	adds r6, r1, r0
	adds r0, r6, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	adds r0, r6, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	adds r5, r0, 0
	adds r0, r6, 0
	movs r1, 0x1
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	movs r0, 0x58
	str r0, [sp]
	movs r0, 0x20
	str r0, [sp, 0x4]
	movs r0, 0xF
	str r0, [sp, 0x8]
	ldr r0, =0x0000ffff
	str r0, [sp, 0xC]
	adds r0, r4, 0
	adds r2, r5, 0
	movs r3, 0x1
	bl sub_818D7D8
	ldr r2, =gUnknown_03001284
	ldr r1, [r2]
	adds r1, 0x2C
	movs r3, 0
	strb r0, [r1]
	ldr r4, =gSprites
	ldr r0, [r2]
	adds r0, 0x2C
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x28
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, 0x2C
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x29
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, 0x30
	strb r3, [r0]
	add sp, 0x10
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F8E0

	thumb_func_start sub_819F99C
sub_819F99C: @ 819F99C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r1, [r2]
	lsls r0, r5, 4
	adds r0, r5
	lsls r0, 2
	adds r1, r0
	adds r1, 0xDE
	ldrb r1, [r1]
	movs r6, 0
	adds r7, r2, 0
	ldr r0, =gStringVar1
	mov r8, r0
	cmp r1, 0
	beq _0819F9DC
_0819F9C2:
	adds r0, r1, 0
	movs r1, 0xA
	bl __udivsi3
	lsls r0, 24
	lsrs r1, r0, 24
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r1, 0
	beq _0819F9DC
	cmp r6, 0x3
	bls _0819F9C2
_0819F9DC:
	lsls r4, r5, 4
	adds r4, r5
	lsls r4, 2
	ldr r1, [r7]
	adds r1, r4, r1
	movs r0, 0x8A
	lsls r0, 1
	adds r1, r0
	mov r0, r8
	bl StringCopy7
	ldr r0, [r7]
	adds r0, r4
	ldr r1, =0x0000011b
	adds r0, r1
	ldrb r1, [r0]
	mov r0, r8
	bl ConvertInternationalString
	ldr r0, =gStringVar2
	ldr r1, [r7]
	adds r1, r4
	adds r1, 0xDE
	ldrb r1, [r1]
	movs r2, 0x1
	adds r3, r6, 0
	bl ConvertIntToDecimalStringN
	ldr r1, =gUnknown_08611330
	ldr r0, [r7]
	adds r0, r4
	adds r0, 0xDC
	ldrb r0, [r0]
	lsls r0, 27
	lsrs r0, 25
	adds r0, r1
	ldr r1, [r0]
	ldr r0, =gStringVar4
	bl StringExpandPlaceholders
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819F99C

	thumb_func_start sub_819FA50
sub_819FA50: @ 819FA50
	push {lr}
	bl script_env_2_enable_and_set_ctx_running
	pop {r0}
	bx r0
	thumb_func_end sub_819FA50

	thumb_func_start sub_819FA5C
sub_819FA5C: @ 819FA5C
	push {r4,r5,lr}
	adds r3, r0, 0
	movs r2, 0
	adds r4, r3, 0
	adds r4, 0x28
	ldr r0, =0x0000ffff
	adds r5, r0, 0
_0819FA6A:
	lsls r0, r2, 1
	adds r0, r4, r0
	ldrh r1, [r0]
	orrs r1, r5
	strh r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _0819FA6A
	adds r1, r3, 0
	adds r1, 0x38
	movs r0, 0xFF
	strb r0, [r1]
	ldrb r1, [r3]
	movs r0, 0x20
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r3]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819FA5C

	thumb_func_start sub_819FAA0
sub_819FAA0: @ 819FAA0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	adds r1, 0xB2
	ldrb r2, [r1]
	movs r0, 0x19
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	movs r0, 0
	mov r12, r0
	adds r5, r3, 0
	mov r8, r0
	ldr r1, =0x0000ffff
	mov r10, r1
_0819FAC6:
	movs r2, 0
	mov r3, r12
	lsls r7, r3, 4
	movs r4, 0x1
	add r4, r12
	mov r9, r4
	adds r0, r7, r3
	lsls r3, r0, 2
_0819FAD6:
	ldr r1, [r5]
	lsls r0, r2, 1
	adds r0, r3
	movs r4, 0x82
	lsls r4, 1
	adds r1, r4
	adds r1, r0
	ldrh r0, [r1]
	mov r4, r10
	orrs r0, r4
	strh r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _0819FAD6
	ldr r2, [r5]
	mov r0, r12
	adds r3, r7, r0
	lsls r3, 2
	adds r2, r3
	adds r2, 0xDC
	ldrb r1, [r2]
	movs r0, 0x20
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5]
	adds r0, r3
	movs r1, 0x8A
	lsls r1, 1
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldr r1, [r5]
	adds r1, r3
	adds r1, 0xDC
	ldrb r2, [r1]
	movs r0, 0x61
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r3
	adds r0, 0xDE
	mov r4, r8
	strb r4, [r0]
	ldr r0, [r5]
	adds r0, r3
	adds r0, 0xDD
	strb r4, [r0]
	movs r2, 0
	ldr r6, =gSaveBlock2Ptr
	movs r4, 0x88
	lsls r4, 1
_0819FB48:
	ldr r0, [r6]
	adds r1, r2, r3
	adds r0, r4
	adds r0, r1
	mov r1, r8
	strb r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x3
	bls _0819FB48
	ldr r0, [r5]
	mov r3, r12
	adds r2, r7, r3
	lsls r2, 2
	adds r0, r2
	ldr r4, =gGameLanguage
	ldrb r1, [r4]
	ldr r3, =0x0000011b
	adds r0, r3
	strb r1, [r0]
	ldr r0, [r5]
	movs r4, 0x8E
	lsls r4, 1
	adds r0, r4
	adds r0, r2
	mov r1, r8
	str r1, [r0]
	mov r3, r9
	lsls r0, r3, 24
	lsrs r0, 24
	mov r12, r0
	cmp r0, 0x3
	bls _0819FAC6
	bl sub_81A087C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819FAA0

	thumb_func_start sub_819FBB0
sub_819FBB0: @ 819FBB0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB1
	ldrb r0, [r0]
	movs r1, 0x3
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	bx lr
	.pool
	thumb_func_end sub_819FBB0

	thumb_func_start sub_819FBC8
sub_819FBC8: @ 819FBC8
	push {r4,r5,lr}
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	adds r0, 0xDE
	ldrb r0, [r0]
	cmp r0, 0
	bne _0819FC10
	adds r4, r2, 0
	ldr r5, =gUnknown_08611548
_0819FBDA:
	bl Random
	ldr r2, [r4]
	lsls r0, 16
	movs r1, 0xE0
	lsls r1, 11
	ands r1, r0
	lsrs r1, 16
	adds r1, r5
	ldrb r0, [r1]
	adds r2, 0xB0
	strb r0, [r2]
	ldr r0, [r4]
	adds r1, r0, 0
	adds r1, 0xB0
	adds r0, 0xDC
	ldrb r0, [r0]
	lsls r0, 27
	ldrb r1, [r1]
	lsrs r0, 27
	cmp r1, r0
	beq _0819FBDA
	b _0819FC38
	.pool
_0819FC10:
	adds r4, r2, 0
_0819FC12:
	bl Random
	ldr r2, [r4]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xF
	ands r0, r1
	adds r2, 0xB0
	strb r0, [r2]
	ldr r0, [r4]
	adds r1, r0, 0
	adds r1, 0xB0
	adds r0, 0xDC
	ldrb r0, [r0]
	lsls r0, 27
	ldrb r1, [r1]
	lsrs r0, 27
	cmp r1, r0
	beq _0819FC12
_0819FC38:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_819FBC8

	thumb_func_start sub_819FC40
sub_819FC40: @ 819FC40
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r2, [r1]
	adds r2, 0xB1
	movs r1, 0x3
	ands r0, r1
	ldrb r3, [r2]
	subs r1, 0x7
	ands r1, r3
	orrs r1, r0
	strb r1, [r2]
	bx lr
	.pool
	thumb_func_end sub_819FC40

	thumb_func_start sub_819FC60
sub_819FC60: @ 819FC60
	push {r4-r7,lr}
	sub sp, 0xC
	movs r5, 0
_0819FC66:
	mov r1, sp
	adds r0, r1, r5
	strb r5, [r0]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x9
	bls _0819FC66
	movs r5, 0
_0819FC78:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	mov r7, sp
	adds r2, r7, r4
	ldrb r3, [r2]
	adds r1, r7, r0
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x31
	bls _0819FC78
	movs r5, 0
	ldr r6, =gSaveBlock2Ptr
	movs r4, 0xF
_0819FCBC:
	ldr r3, [r6]
	adds r3, 0xB4
	adds r3, r5
	lsls r2, r5, 1
	mov r1, sp
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r1, r4, 0
	ands r1, r0
	lsls r1, 4
	adds r2, 0x1
	mov r7, sp
	adds r0, r7, r2
	ldrb r2, [r0]
	adds r0, r4, 0
	ands r0, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _0819FCBC
	add sp, 0xC
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819FC60

	thumb_func_start sub_819FCF8
sub_819FCF8: @ 819FCF8
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	movs r5, 0
	cmp r0, 0x2
	bne _0819FD4C
	ldr r6, =gUnknown_030062EC
_0819FD06:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r5, r0, 24
	movs r3, 0
	movs r2, 0
	ldr r1, [r6]
	lsls r0, r5, 2
	adds r0, r5
	lsls r4, r0, 1
	adds r1, 0x2
_0819FD26:
	lsls r0, r2, 1
	adds r0, r4
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, 0
	beq _0819FD38
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
_0819FD38:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x4
	bls _0819FD26
	cmp r3, 0x3
	bhi _0819FD06
	b _0819FD5A
	.pool
_0819FD4C:
	cmp r0, 0x1
	bne _0819FD5A
	ldrb r0, [r2]
	adds r1, r0
	ldrb r5, [r1]
	adds r0, 0x1
	strb r0, [r2]
_0819FD5A:
	adds r0, r5, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_819FCF8

	thumb_func_start sub_819FD64
sub_819FD64: @ 819FD64
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	movs r5, 0
	mov r0, sp
	adds r0, 0xC
	str r0, [sp, 0x14]
	mov r1, sp
	adds r1, 0x10
	str r1, [sp, 0x18]
	adds r1, r0, 0
_0819FD80:
	adds r0, r1, r5
	strb r5, [r0]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _0819FD80
	movs r5, 0
	ldr r6, [sp, 0x14]
_0819FD92:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r4, r0, 24
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	adds r2, r6, r4
	ldrb r3, [r2]
	adds r1, r6, r0
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x9
	bls _0819FD92
	movs r5, 0
	ldr r2, =gUnknown_086114D3
_0819FDD0:
	mov r4, sp
	adds r1, r4, r5
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x9
	bls _0819FDD0
	movs r5, 0
_0819FDE6:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 24
	lsrs r4, r0, 24
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	mov r6, sp
	adds r2, r6, r4
	ldrb r3, [r2]
	adds r1, r6, r0
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x31
	bls _0819FDE6
	ldr r4, =gUnknown_030062EC
	movs r0, 0x30
	bl AllocZeroed
	str r0, [r4]
	movs r1, 0
	strb r1, [r0]
	movs r5, 0
	movs r2, 0x4
_0819FE34:
	movs r3, 0
_0819FE36:
	ldr r0, [r4]
	lsls r1, r3, 2
	adds r1, r3
	adds r1, r5, r1
	adds r0, 0x20
	adds r0, r1
	strb r2, [r0]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x2
	bls _0819FE36
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x4
	bls _0819FE34
	movs r0, 0
	ldr r7, [sp, 0x18]
	strb r0, [r7]
	movs r5, 0
_0819FE60:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	lsls r4, r5, 2
	adds r3, r4
	mov r1, sp
	adds r6, r1, r5
	ldrb r0, [r6]
	adds r3, 0xB8
	movs r2, 0x3
	ands r2, r0
	ldrb r0, [r3]
	movs r7, 0x4
	negs r7, r7
	adds r1, r7, 0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldrb r0, [r6]
	adds r5, 0x1
	str r5, [sp, 0x1C]
	mov r8, r4
	cmp r0, 0x3
	beq _0819FF62
	ldrb r0, [r6]
	ldr r1, [sp, 0x14]
	ldr r2, [sp, 0x18]
	bl sub_819FCF8
	ldr r1, =gSaveBlock2Ptr
	ldr r3, [r1]
	add r3, r8
	adds r3, 0xB8
	movs r2, 0x3
	ands r2, r0
	lsls r2, 2
	ldrb r0, [r3]
	movs r4, 0xD
	negs r4, r4
	adds r1, r4, 0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r7, =gSaveBlock2Ptr
	ldr r0, [r7]
	add r0, r8
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r7, r0, 30
	ldrb r0, [r6]
	cmp r0, 0x2
	bne _0819FF62
	lsls r0, r7, 2
	adds r0, r7
	mov r10, r0
	ldr r0, =gUnknown_030062EC
	mov r9, r0
_0819FED2:
	bl Random
	lsls r0, 16
	lsrs r4, r0, 16
	movs r1, 0x3
	ands r4, r1
	movs r3, 0
	mov r6, r9
	ldr r2, [r6]
	ldrb r0, [r2]
	adds r1, r0, 0x1
	lsls r5, r7, 2
	cmp r3, r1
	bge _0819FF12
	adds r2, 0x20
	mov r6, r10
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, r4
	beq _0819FF12
	adds r6, r1, 0
	adds r1, r5, r7
_0819FEFE:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r6
	bge _0819FF12
	adds r0, r3, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r4
	bne _0819FEFE
_0819FF12:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	adds r0, 0x1
	ldr r1, =gUnknown_030062EC
	cmp r3, r0
	bne _0819FED2
	ldr r0, [r1]
	orrs r5, r7
	ldrb r2, [r0]
	adds r1, r5, r2
	adds r0, 0x20
	adds r0, r1
	strb r4, [r0]
	ldr r6, =gSaveBlock2Ptr
	ldr r2, [r6]
	add r2, r8
	adds r2, 0xB8
	movs r7, 0x3
	ands r4, r7
	lsls r3, r4, 4
	ldrb r0, [r2]
	movs r4, 0x31
	negs r4, r4
	adds r1, r4, 0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r0, [r6]
	add r0, r8
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r0, 30
	bl sub_819FF98
	ldr r1, [r6]
	add r1, r8
	adds r1, 0xBA
	strh r0, [r1]
_0819FF62:
	ldr r6, [sp, 0x1C]
	lsls r0, r6, 24
	lsrs r5, r0, 24
	cmp r5, 0x8
	bhi _0819FF6E
	b _0819FE60
_0819FF6E:
	ldr r4, =gUnknown_030062EC
	ldr r0, [r4]
	bl Free
	movs r0, 0
	str r0, [r4]
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_819FD64

	thumb_func_start sub_819FF98
sub_819FF98: @ 819FF98
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0xC]
	movs r7, 0
	ldr r1, [sp]
	cmp r1, 0x2
	bhi _0819FFE0
	ldr r2, =gSaveBlock2Ptr
	ldr r1, [r2]
	adds r0, r1, 0
	adds r0, 0xB4
	ldr r3, [sp]
	adds r0, r3
	ldrb r4, [r0]
	adds r1, 0xB2
	ldrb r0, [r1]
	lsls r0, 29
	lsrs r0, 29
	asrs r0, r3
	movs r1, 0x1
	ands r0, r1
	lsls r0, 2
	asrs r4, r0
	movs r0, 0xF
	ands r4, r0
	b _0819FFE4
	.pool
_0819FFE0:
	movs r4, 0
	ldr r2, =gSaveBlock2Ptr
_0819FFE4:
	ldr r3, =gUnknown_08610970
	lsls r1, r4, 1
	ldr r4, [r2]
	adds r0, r4, 0
	adds r0, 0xB0
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, r0
	adds r3, 0x34
	adds r1, r3
	ldrh r1, [r1]
	str r1, [sp, 0x8]
	ldr r1, =gLevelUpLearnsets
	ldr r2, [sp, 0x8]
	lsls r0, r2, 2
	adds r0, r1
	ldr r6, [r0]
	movs r3, 0
	adds r4, 0xB1
	ldrb r1, [r4]
	movs r0, 0x3
	ands r0, r1
	movs r5, 0x3C
	cmp r0, 0x1
	bne _081A001A
	movs r5, 0x32
_081A001A:
	ldrh r1, [r6]
	ldr r4, =0x0000ffff
	cmp r1, r4
	beq _081A004C
	movs r2, 0xFE
	lsls r2, 8
	adds r0, r2, 0
	ands r0, r1
	lsls r1, r5, 9
	cmp r0, r1
	bgt _081A004C
	adds r5, r2, 0
	adds r2, r1, 0
_081A0034:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	lsls r0, r3, 1
	adds r0, r6
	ldrh r1, [r0]
	cmp r1, r4
	beq _081A004C
	adds r0, r5, 0
	ands r0, r1
	cmp r0, r2
	ble _081A0034
_081A004C:
	adds r5, r3, 0
	movs r3, 0
	str r3, [sp, 0x4]
_081A0052:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081A0068
	ldr r0, [sp, 0xC]
	cmp r0, 0x1
	bne _081A00E0
_081A0068:
	ldr r1, =0x000001ff
	mov r8, r1
_081A006C:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3A
	bl __umodsi3
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, [sp, 0x8]
	adds r1, r4, 0
	bl CanSpeciesLearnTMHM
	adds r2, r0, 0
	cmp r2, 0
	beq _081A006C
	ldr r2, =0x00000121
	adds r0, r4, r2
	bl ItemIdToBattleMoveId
	lsls r0, 16
	lsrs r7, r0, 16
	movs r2, 0x1
	cmp r5, 0x4
	bhi _081A00BC
	movs r3, 0
	b _081A00C6
	.pool
_081A00BC:
	subs r0, r5, 0x4
	b _081A00C2
_081A00C0:
	adds r0, r3, 0x1
_081A00C2:
	lsls r0, 24
	lsrs r3, r0, 24
_081A00C6:
	cmp r3, r5
	bcs _081A00DA
	lsls r0, r3, 1
	adds r0, r6
	ldrh r0, [r0]
	mov r1, r8
	ands r0, r1
	cmp r0, r7
	bne _081A00C0
	movs r2, 0
_081A00DA:
	cmp r2, 0x1
	bne _081A006C
	b _081A0146
_081A00E0:
	cmp r5, 0x4
	bhi _081A00EA
	movs r2, 0x1
	str r2, [sp, 0xC]
	b _081A0168
_081A00EA:
	subs r4, r5, 0x4
	ldr r3, =0x000001ff
	mov r10, r3
	mov r8, r3
	lsls r0, r4, 24
	mov r9, r0
_081A00F6:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r4, 0
	bl __modsi3
	lsls r0, 24
	lsrs r0, 23
	adds r0, r6
	ldrh r0, [r0]
	mov r7, r8
	ands r7, r0
	movs r2, 0x1
	mov r1, r9
	lsrs r3, r1, 24
	cmp r3, r5
	bcs _081A0142
	lsls r0, r3, 1
	adds r0, r6
	ldrh r1, [r0]
	mov r0, r8
	b _081A013A
	.pool
_081A0128:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r5
	bcs _081A0142
	lsls r0, r3, 1
	adds r0, r6
	ldrh r0, [r0]
	mov r1, r10
_081A013A:
	ands r0, r1
	cmp r0, r7
	bne _081A0128
	movs r2, 0
_081A0142:
	cmp r2, 0x1
	bne _081A00F6
_081A0146:
	ldr r0, [sp]
	adds r1, r7, 0
	bl sub_81A0194
	lsls r0, 24
	cmp r0, 0
	beq _081A0168
	ldr r0, =gUnknown_08611370
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r0, 0
	bne _081A0170
	ldr r0, [sp, 0x4]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
_081A0168:
	ldr r2, [sp, 0x4]
	cmp r2, 0x4
	bhi _081A0170
	b _081A0052
_081A0170:
	ldr r0, =gUnknown_030062EC
	ldr r1, [r0]
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	adds r0, r7, 0
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_819FF98

	thumb_func_start sub_81A0194
sub_81A0194: @ 81A0194
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 16
	lsrs r5, r1, 16
	movs r3, 0
	ldr r0, =gUnknown_030062EC
	mov r12, r0
	ldr r2, [r0]
	lsls r1, r4, 2
	adds r0, r1, r4
	lsls r6, r0, 1
	adds r2, 0x2
	adds r7, r1, 0
_081A01B0:
	lsls r0, r3, 1
	adds r0, r6
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, r5
	bne _081A01C4
	movs r0, 0
	b _081A01E2
	.pool
_081A01C4:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x4
	bls _081A01B0
	mov r2, r12
	ldr r1, [r2]
	adds r0, r7, r4
	ldrb r2, [r1]
	adds r0, r2
	lsls r0, 1
	adds r1, 0x2
	adds r1, r0
	strh r5, [r1]
	movs r0, 0x1
_081A01E2:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81A0194

	thumb_func_start sub_81A01E8
sub_81A01E8: @ 81A01E8
	push {r4-r7,lr}
	mov r12, r1
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB1
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	movs r4, 0x3C
	cmp r0, 0x1
	bne _081A0204
	movs r4, 0x32
_081A0204:
	ldr r1, =gLevelUpLearnsets
	lsls r0, r2, 2
	adds r0, r1
	ldr r6, [r0]
	movs r5, 0
	ldrh r1, [r6]
	ldr r3, =0x0000ffff
	cmp r1, r3
	beq _081A0240
	movs r2, 0xFE
	lsls r2, 8
	adds r0, r2, 0
	ands r0, r1
	lsls r1, r4, 9
	cmp r0, r1
	bgt _081A0240
	adds r4, r2, 0
	adds r2, r1, 0
_081A0228:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 1
	adds r0, r6
	ldrh r1, [r0]
	cmp r1, r3
	beq _081A0240
	adds r0, r4, 0
	ands r0, r1
	cmp r0, r2
	ble _081A0228
_081A0240:
	adds r4, r5, 0
	cmp r4, 0x4
	bls _081A0248
	movs r4, 0x4
_081A0248:
	movs r2, 0
	cmp r2, r4
	bcs _081A026C
	ldr r7, =0x000001ff
_081A0250:
	lsls r3, r2, 1
	add r3, r12
	adds r2, 0x1
	subs r0, r5, r2
	lsls r0, 1
	adds r0, r6
	ldrh r1, [r0]
	adds r0, r7, 0
	ands r0, r1
	strh r0, [r3]
	lsls r2, 24
	lsrs r2, 24
	cmp r2, r4
	bcc _081A0250
_081A026C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A01E8

	thumb_func_start sub_81A0284
sub_81A0284: @ 81A0284
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r5, r2, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r2, [r1]
	adds r0, r2, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	adds r7, r1, 0
	cmp r0, 0x2
	bhi _081A02B8
	movs r0, 0
	b _081A037C
	.pool
_081A02B8:
	movs r4, 0
	movs r3, 0
	adds r0, r2, 0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	ldr r1, =gUnknown_08610970
	mov r12, r1
	lsls r6, 1
	lsls r5, 1
	mov r9, r5
	cmp r0, 0
	beq _081A02F4
	adds r2, r7, 0
_081A02D4:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x8
	bhi _081A02F4
	ldr r0, [r2]
	lsls r1, r3, 2
	adds r0, r1
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bne _081A02D4
_081A02F4:
	ldr r0, [r7]
	adds r0, 0xB0
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r6, r0
	mov r1, r12
	adds r1, 0x34
	adds r0, r1
	ldrh r0, [r0]
	mov r1, sp
	bl sub_81A01E8
	movs r3, 0
	cmp r3, r4
	bcs _081A0376
	ldr r1, [r7]
	adds r0, r1, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	cmp r3, r0
	bge _081A0376
	adds r6, r7, 0
	adds r5, r1, 0
_081A032A:
	lsls r0, r3, 2
	adds r2, r5, r0
	adds r0, r2, 0
	adds r0, 0xB8
	ldrb r1, [r0]
	lsls r0, r1, 30
	lsrs r0, 30
	cmp r0, 0x2
	bne _081A035C
	lsls r0, r1, 28
	lsrs r0, 30
	cmp r0, r8
	bne _081A035C
	lsrs r0, r1, 6
	cmp r0, 0
	beq _081A035C
	lsls r0, r1, 26
	lsrs r0, 30
	lsls r0, 1
	mov r7, sp
	adds r1, r7, r0
	adds r0, r2, 0
	adds r0, 0xBA
	ldrh r0, [r0]
	strh r0, [r1]
_081A035C:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, r4
	bcs _081A0376
	ldr r0, [r6]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	cmp r3, r0
	blt _081A032A
_081A0376:
	mov r0, sp
	add r0, r9
	ldrh r0, [r0]
_081A037C:
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A0284

	thumb_func_start sub_81A0390
sub_81A0390: @ 81A0390
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r5, 0
	ldr r7, =gSaveBlock2Ptr
	adds r6, r7, 0
	movs r4, 0
_081A03A6:
	ldr r0, [r6]
	lsls r2, r5, 1
	adds r2, r5
	lsls r2, 2
	adds r0, r2
	adds r1, r0, 0
	adds r1, 0xE0
	strh r4, [r1]
	adds r0, 0xEA
	strh r4, [r0]
	movs r3, 0
_081A03BC:
	ldr r0, [r6]
	lsls r1, r3, 1
	adds r1, r2
	adds r0, 0xE2
	adds r0, r1
	strh r4, [r0]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x3
	bls _081A03BC
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _081A03A6
	ldr r0, [r7]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsrs r3, r0, 6
	movs r5, 0
_081A03E6:
	lsls r0, r3, 2
	mov r1, sp
	adds r2, r1, r0
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, 0xE0
	ldr r1, [r7]
	adds r1, r0
	str r1, [r2]
	adds r0, r3, 0x1
	movs r1, 0x3
	bl __modsi3
	lsls r0, 24
	lsrs r3, r0, 24
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _081A03E6
	movs r5, 0
	ldr r7, =gSaveBlock2Ptr
	ldr r6, =gUnknown_086109A4
_081A0416:
	ldr r0, [r7]
	mov r12, r0
	adds r0, 0xB4
	adds r0, r5
	ldrb r2, [r0]
	mov r0, r12
	adds r0, 0xB2
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r0, 29
	asrs r0, r5
	movs r1, 0x1
	ands r0, r1
	lsls r0, 2
	asrs r2, r0
	movs r0, 0xF
	ands r2, r0
	lsls r0, r5, 2
	mov r1, sp
	adds r3, r1, r0
	ldr r4, [r3]
	lsls r2, 1
	mov r0, r12
	adds r0, 0xB0
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r2, r0
	adds r2, r6
	ldrh r0, [r2]
	strh r0, [r4]
	ldr r1, [r3]
	ldrh r0, [r1]
	adds r1, 0x2
	bl sub_81A01E8
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _081A0416
	movs r5, 0
	cmp r5, r8
	bcs _081A04D6
	ldr r7, =gSaveBlock2Ptr
_081A0470:
	ldr r1, [r7]
	lsls r0, r5, 2
	adds r4, r1, r0
	adds r0, r4, 0
	adds r0, 0xB8
	ldrb r2, [r0]
	lsls r0, r2, 30
	lsrs r1, r0, 30
	lsls r0, r2, 28
	lsrs r3, r0, 30
	adds r6, r3, 0
	cmp r1, 0x1
	bne _081A04A8
	lsrs r0, r2, 6
	cmp r0, 0
	beq _081A04CC
	lsls r0, r3, 2
	add r0, sp
	ldr r1, [r0]
	adds r0, r4, 0
	adds r0, 0xBA
	ldrh r0, [r0]
	strh r0, [r1, 0xA]
	b _081A04CC
	.pool
_081A04A8:
	cmp r1, 0x2
	bne _081A04CC
	lsls r0, r2, 24
	lsrs r0, 30
	cmp r0, 0
	beq _081A04CC
	lsls r2, 26
	lsrs r2, 30
	lsls r0, r6, 2
	add r0, sp
	ldr r1, [r0]
	lsls r2, 1
	adds r1, 0x2
	adds r1, r2
	adds r0, r4, 0
	adds r0, 0xBA
	ldrh r0, [r0]
	strh r0, [r1]
_081A04CC:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, r8
	bcc _081A0470
_081A04D6:
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81A0390

	thumb_func_start sub_81A04E4
sub_81A04E4: @ 81A04E4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	lsls r0, 24
	lsrs r0, 24
	movs r7, 0x2
	cmp r0, 0x6
	bls _081A04FC
	b _081A064C
_081A04FC:
	lsls r0, 2
	ldr r1, =_081A050C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A050C:
	.4byte _081A0528
	.4byte _081A0540
	.4byte _081A05B4
	.4byte _081A05F4
	.4byte _081A061C
	.4byte _081A064C
	.4byte _081A0634
_081A0528:
	movs r0, 0x12
	mov r10, r0
	movs r6, 0x8
	ldr r0, =gUnknown_085EAEB1
	str r0, [sp, 0xC]
	ldr r0, =gUnknown_085EAEB8
	str r0, [sp, 0x10]
	b _081A0652
	.pool
_081A0540:
	movs r7, 0x3
	movs r1, 0x12
	mov r10, r1
	movs r6, 0x6
	movs r4, 0
	ldr r0, =gSpeciesNames
	mov r9, r0
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	movs r1, 0xB2
	adds r1, r3
	mov r12, r1
	adds r5, r3, 0
	adds r5, 0xB0
	ldr r0, =gUnknown_086109A4
	mov r8, r0
_081A0560:
	adds r0, r3, 0
	adds r0, 0xB4
	adds r0, r4
	ldrb r2, [r0]
	mov r1, r12
	ldrb r0, [r1]
	lsls r0, 29
	lsrs r0, 29
	asrs r0, r4
	movs r1, 0x1
	ands r0, r1
	lsls r0, 2
	asrs r2, r0
	movs r0, 0xF
	ands r2, r0
	lsls r2, 1
	ldrb r1, [r5]
	movs r0, 0x58
	muls r0, r1
	adds r2, r0
	add r2, r8
	ldrh r1, [r2]
	lsls r0, r4, 2
	mov r2, sp
	adds r2, r0
	adds r2, 0xC
	movs r0, 0xB
	muls r0, r1
	add r0, r9
	str r0, [r2]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A0560
	b _081A0652
	.pool
_081A05B4:
	movs r0, 0x12
	mov r10, r0
	movs r6, 0x8
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	cmp r0, 0x2
	bls _081A05CC
	b _081A06FA
_081A05CC:
	ldr r0, =gUnknown_030062F0
	ldr r3, [r0]
	ldrh r0, [r3, 0x2]
	movs r2, 0xB
	muls r0, r2
	ldr r1, =gSpeciesNames
	adds r0, r1
	str r0, [sp, 0x10]
	ldrh r0, [r3]
	muls r0, r2
	adds r0, r1
	str r0, [sp, 0xC]
	b _081A0652
	.pool
_081A05F4:
	movs r1, 0x11
	mov r10, r1
	movs r6, 0x8
	ldr r0, =gUnknown_030062F0
	ldr r3, [r0]
	ldrh r0, [r3, 0x4]
	movs r2, 0xD
	muls r0, r2
	ldr r1, =gMoveNames
	adds r0, r1
	str r0, [sp, 0xC]
	ldrh r0, [r3, 0x6]
	muls r0, r2
	adds r0, r1
	str r0, [sp, 0x10]
	b _081A0652
	.pool
_081A061C:
	movs r0, 0x12
	mov r10, r0
	movs r6, 0x8
	ldr r0, =gUnknown_085ED193
	str r0, [sp, 0xC]
	ldr r0, =gUnknown_085ED198
	str r0, [sp, 0x10]
	b _081A0652
	.pool
_081A0634:
	movs r1, 0x14
	mov r10, r1
	movs r6, 0x8
	ldr r0, =gUnknown_085EAE62
	str r0, [sp, 0xC]
	ldr r0, =gUnknown_085EAE66
	str r0, [sp, 0x10]
	b _081A0652
	.pool
_081A064C:
	movs r0, 0
	mov r10, r0
	movs r6, 0
_081A0652:
	movs r5, 0
	movs r4, 0
	lsls r1, r7, 25
	mov r8, r1
	cmp r4, r7
	bcs _081A067E
_081A065E:
	lsls r0, r4, 2
	add r0, sp
	adds r0, 0xC
	ldr r1, [r0]
	movs r0, 0x1
	movs r2, 0
	bl GetStringWidth
	cmp r0, r5
	ble _081A0674
	adds r5, r0, 0
_081A0674:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r7
	bcc _081A065E
_081A067E:
	adds r0, r5, 0
	bl convert_pixel_width_to_tile_width
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	mov r0, r10
	adds r1, r4, 0
	bl sub_80E2D5C
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	mov r0, r8
	lsrs r3, r0, 24
	mov r0, r10
	adds r1, r6, 0
	adds r2, r4, 0
	bl sub_81A0784
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r5, 0
	movs r1, 0
	bl SetStandardWindowBorderStyle
	movs r4, 0
	cmp r4, r7
	bcs _081A06E6
_081A06B8:
	lsls r0, r4, 2
	add r0, sp
	adds r0, 0xC
	ldr r2, [r0]
	lsls r0, r4, 4
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	adds r0, r5, 0
	movs r1, 0x1
	movs r3, 0x8
	bl PrintTextOnWindow
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r7
	bcc _081A06B8
_081A06E6:
	adds r0, r5, 0
	adds r1, r7, 0
	movs r2, 0
	bl InitMenuInUpperLeftCornerPlaySoundWhenAPressed
	movs r0, 0x1
	adds r1, r7, 0
	adds r2, r5, 0
	bl sub_81A0804
_081A06FA:
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81A04E4

	thumb_func_start sub_81A070C
sub_81A070C: @ 81A070C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _081A0730
	bl ProcessMenuInputNoWrapAround
	b _081A0734
	.pool
_081A0730:
	bl ProcessMenuInput
_081A0734:
	lsls r0, 24
	lsrs r0, 24
	lsls r0, 24
	asrs r1, r0, 24
	movs r0, 0x2
	negs r0, r0
	cmp r1, r0
	beq _081A0778
	adds r0, 0x1
	cmp r1, r0
	bne _081A0764
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _081A0778
	movs r0, 0x5
	bl PlaySE
	ldr r1, =gScriptResult
	movs r0, 0x7F
	strh r0, [r1]
	b _081A0768
	.pool
_081A0764:
	ldr r0, =gScriptResult
	strh r1, [r0]
_081A0768:
	ldrb r0, [r4, 0xC]
	bl sub_81A07E8
	adds r0, r5, 0
	bl DestroyTask
	bl script_env_2_enable_and_set_ctx_running
_081A0778:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A070C

	thumb_func_start sub_81A0784
sub_81A0784: @ 81A0784
	push {r4,r5,lr}
	sub sp, 0x20
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 24
	lsls r5, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x80
	lsls r0, 17
	adds r4, r0
	lsrs r4, 24
	adds r5, r0
	lsrs r5, 24
	str r2, [sp]
	str r3, [sp, 0x4]
	movs r0, 0xF
	str r0, [sp, 0x8]
	movs r0, 0x64
	str r0, [sp, 0xC]
	add r0, sp, 0x10
	movs r1, 0
	adds r2, r4, 0
	adds r3, r5, 0
	bl sub_8198A50
	ldr r0, [sp, 0x10]
	ldr r1, [sp, 0x14]
	str r0, [sp, 0x18]
	str r1, [sp, 0x1C]
	add r0, sp, 0x18
	bl AddWindow
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0
	movs r1, 0x3
	bl CopyWindowToVram
	adds r0, r4, 0
	add sp, 0x20
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81A0784

	thumb_func_start sub_81A07E8
sub_81A07E8: @ 81A07E8
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8198070
	adds r0, r4, 0
	bl RemoveWindow
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_81A07E8

	thumb_func_start sub_81A0804
sub_81A0804: @ 81A0804
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r2, 24
	lsrs r6, r2, 24
	ldr r0, =sub_81A070C
	movs r1, 0x50
	bl CreateTask
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r1, r0, r1
	strh r4, [r1, 0x10]
	cmp r5, 0x3
	bls _081A0840
	movs r0, 0x1
	b _081A0842
	.pool
_081A0840:
	movs r0, 0
_081A0842:
	strh r0, [r1, 0x12]
	ldr r1, =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r0, r1
	strh r6, [r0, 0x14]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0804

	thumb_func_start sub_81A085C
sub_81A085C: @ 81A085C
	push {lr}
	ldr r1, =gUnknown_086114E0
	ldr r0, =gSpecialVar_0x8004
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A085C

	thumb_func_start sub_81A087C
sub_81A087C: @ 81A087C
	push {r4-r7,lr}
	bl sub_819FBC8
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	adds r1, 0xB1
	ldrb r2, [r1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, 0xB1
	ldrb r2, [r1]
	movs r0, 0x3D
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, 0xB1
	ldrb r2, [r1]
	movs r0, 0x3F
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, 0xB2
	ldrb r2, [r1]
	movs r0, 0x8
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	movs r4, 0
	movs r1, 0
_081A08BE:
	ldr r0, [r3]
	adds r0, 0xB4
	adds r0, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A08BE
	movs r4, 0
	ldr r5, =gSaveBlock2Ptr
	movs r0, 0x4
	negs r0, r0
	mov r12, r0
	movs r7, 0xD
	negs r7, r7
	movs r6, 0x31
	negs r6, r6
_081A08E2:
	ldr r1, [r5]
	lsls r3, r4, 2
	adds r1, r3
	adds r1, 0xB8
	ldrb r2, [r1]
	mov r0, r12
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r3
	adds r1, 0xB8
	ldrb r2, [r1]
	adds r0, r7, 0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r3
	adds r1, 0xB8
	ldrb r2, [r1]
	adds r0, r6, 0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r3
	adds r1, 0xB8
	ldrb r2, [r1]
	movs r0, 0x3F
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r3
	adds r0, 0xBA
	movs r1, 0
	strh r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x8
	bls _081A08E2
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A087C

	thumb_func_start sub_81A093C
sub_81A093C: @ 81A093C
	push {lr}
	bl sub_819FBB0
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	bne _081A0954
	ldr r0, =gScriptResult
	strh r1, [r0]
	b _081A095A
	.pool
_081A0954:
	ldr r1, =gScriptResult
	movs r0, 0x1
	strh r0, [r1]
_081A095A:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A093C

	thumb_func_start sub_81A0964
sub_81A0964: @ 81A0964
	push {lr}
	ldr r0, =gSpecialVar_0x8005
	ldrb r0, [r0]
	bl sub_819FC40
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0964

	thumb_func_start sub_81A0978
sub_81A0978: @ 81A0978
	push {lr}
	bl sub_819FBC8
	pop {r0}
	bx r0
	thumb_func_end sub_81A0978

	thumb_func_start sub_81A0984
sub_81A0984: @ 81A0984
	push {lr}
	bl sub_819FD64
	pop {r0}
	bx r0
	thumb_func_end sub_81A0984

	thumb_func_start sub_81A0990
sub_81A0990: @ 81A0990
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	adds r2, 0xB1
	ldrb r3, [r2]
	lsls r1, r3, 26
	lsrs r1, 28
	adds r1, 0x1
	movs r0, 0xF
	ands r1, r0
	lsls r1, 2
	movs r0, 0x3D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.pool
	thumb_func_end sub_81A0990

	thumb_func_start sub_81A09B4
sub_81A09B4: @ 81A09B4
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	strh r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A09B4

	thumb_func_start sub_81A09D0
sub_81A09D0: @ 81A09D0
	push {lr}
	ldr r3, =gSaveBlock2Ptr
	ldr r0, [r3]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r1, r0, 0x3
	cmp r1, 0
	bge _081A09F4
	ldr r1, =gScriptResult
	movs r0, 0
	strh r0, [r1]
	b _081A0A1C
	.pool
_081A09F4:
	ldr r2, =gScriptResult
	cmp r1, 0x8
	ble _081A09FE
	movs r0, 0x1
	strh r0, [r2]
_081A09FE:
	ldr r0, [r3]
	lsls r1, 2
	adds r0, r1
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bne _081A0A18
	movs r0, 0x1
	b _081A0A1A
	.pool
_081A0A18:
	movs r0, 0
_081A0A1A:
	strh r0, [r2]
_081A0A1C:
	pop {r0}
	bx r0
	thumb_func_end sub_81A09D0

	thumb_func_start sub_81A0A20
sub_81A0A20: @ 81A0A20
	push {lr}
	ldr r0, =gSpecialVar_0x8005
	ldrb r0, [r0]
	bl sub_81A04E4
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0A20

	thumb_func_start sub_81A0A34
sub_81A0A34: @ 81A0A34
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_8197224
	lsls r0, 16
	cmp r0, 0
	bne _081A0A68
	adds r0, r4, 0
	bl DestroyTask
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A0A64
	ldr r0, =script_env_2_enable_and_set_ctx_running
	bl sub_81A172C
	b _081A0A68
	.pool
_081A0A64:
	bl script_env_2_enable_and_set_ctx_running
_081A0A68:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_81A0A34

	thumb_func_start sub_81A0A70
sub_81A0A70: @ 81A0A70
	push {lr}
	ldr r1, =gSpecialVar_0x8006
	ldrh r0, [r1]
	cmp r0, 0x6
	bne _081A0A94
	ldr r1, =gUnknown_08610FF0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	b _081A0C66
	.pool
_081A0A94:
	cmp r0, 0x7
	bne _081A0AB0
	ldr r1, =gUnknown_08610FF0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	b _081A0C66
	.pool
_081A0AB0:
	cmp r0, 0x8
	bne _081A0ACC
	ldr r1, =gUnknown_086111B0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	b _081A0C66
	.pool
_081A0ACC:
	cmp r0, 0x9
	bne _081A0AE8
	ldr r1, =gUnknown_086111B0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	b _081A0C66
	.pool
_081A0AE8:
	cmp r0, 0x4
	bne _081A0B04
	ldr r1, =gUnknown_08611230
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	b _081A0C66
	.pool
_081A0B04:
	cmp r0, 0x5
	bne _081A0B20
	ldr r1, =gUnknown_08611230
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	b _081A0C66
	.pool
_081A0B20:
	cmp r0, 0xA
	bne _081A0B40
	ldr r2, =gUnknown_08611070
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	b _081A0BD6
	.pool
_081A0B40:
	cmp r0, 0xB
	bne _081A0B5C
	ldr r1, =gUnknown_086112B0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	b _081A0C66
	.pool
_081A0B5C:
	cmp r0, 0xC
	bne _081A0B7C
	ldr r2, =gUnknown_08611070
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0xC
	b _081A0BD6
	.pool
_081A0B7C:
	cmp r0, 0xD
	bne _081A0B9C
	ldr r2, =gUnknown_08611070
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x4
	b _081A0BD6
	.pool
_081A0B9C:
	ldrh r0, [r1]
	cmp r0, 0x10
	bne _081A0BC0
	ldr r2, =gUnknown_08611070
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x10
	b _081A0BD6
	.pool
_081A0BC0:
	cmp r0, 0xE
	bne _081A0BE4
	ldr r2, =gUnknown_08611070
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 2
	adds r2, 0x8
_081A0BD6:
	adds r0, r2
	ldr r1, [r0]
	b _081A0C7A
	.pool
_081A0BE4:
	cmp r0, 0xF
	bne _081A0C00
	ldr r1, =gUnknown_086112B0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	b _081A0C66
	.pool
_081A0C00:
	cmp r0, 0
	bne _081A0C1C
	ldr r1, =gUnknown_08610EF0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 4
	b _081A0C66
	.pool
_081A0C1C:
	cmp r0, 0x1
	bne _081A0C38
	ldr r1, =gUnknown_08610EF0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 4
	adds r1, 0x4
	b _081A0C66
	.pool
_081A0C38:
	cmp r0, 0x2
	bne _081A0C54
	ldr r1, =gUnknown_08610EF0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 4
	adds r1, 0x8
	b _081A0C66
	.pool
_081A0C54:
	cmp r0, 0x3
	bne _081A0C74
	ldr r1, =gUnknown_08610EF0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	lsls r0, 4
	adds r1, 0xC
_081A0C66:
	adds r0, r1
	ldr r1, [r0]
	b _081A0C7A
	.pool
_081A0C74:
	bl script_env_2_enable_and_set_ctx_running
	b _081A0C8E
_081A0C7A:
	ldr r0, =gStringVar4
	bl StringExpandPlaceholders
	movs r0, 0x1
	bl AddTextPrinterForMessage
	ldr r0, =sub_81A0A34
	movs r1, 0x1
	bl CreateTask
_081A0C8E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0A70

	thumb_func_start sub_81A0C9C
sub_81A0C9C: @ 81A0C9C
	push {lr}
	bl script_env_2_enable
	bl player_bitmagic
	bl sub_808B864
	bl sub_808BCF4
	movs r0, 0
	movs r1, 0x1
	bl sub_81973C4
	bl sub_81A0A70
	pop {r0}
	bx r0
	thumb_func_end sub_81A0C9C

	thumb_func_start sub_81A0CC0
sub_81A0CC0: @ 81A0CC0
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	adds r0, r2, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r1, r0, 26
	lsrs r0, r1, 28
	cmp r0, 0x2
	bhi _081A0CE4
	ldr r1, =gScriptResult
	movs r0, 0x2
	b _081A0D34
	.pool
_081A0CE4:
	lsrs r0, r1, 28
	cmp r0, 0xB
	bhi _081A0D30
	lsrs r0, r1, 28
	subs r0, 0x3
	lsls r0, 2
	adds r0, r2, r0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	cmp r0, 0x2
	beq _081A0D18
	cmp r0, 0x2
	bgt _081A0D08
	cmp r0, 0x1
	beq _081A0D0E
	b _081A0D30
_081A0D08:
	cmp r0, 0x3
	beq _081A0D24
	b _081A0D30
_081A0D0E:
	ldr r1, =gScriptResult
	movs r0, 0x4
	b _081A0D34
	.pool
_081A0D18:
	ldr r1, =gScriptResult
	movs r0, 0x3
	b _081A0D34
	.pool
_081A0D24:
	ldr r1, =gScriptResult
	movs r0, 0x1
	b _081A0D34
	.pool
_081A0D30:
	ldr r1, =gScriptResult
	movs r0, 0x5
_081A0D34:
	strh r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0CC0

	thumb_func_start sub_81A0D40
sub_81A0D40: @ 81A0D40
	push {r4,lr}
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A0D6E
	ldr r4, =gSpecialVar_0x8006
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	adds r2, 0xB2
	ldrb r3, [r2]
	lsls r0, r3, 29
	lsrs r0, 29
	movs r1, 0x1
	ldrb r4, [r4]
	lsls r1, r4
	orrs r1, r0
	movs r0, 0x7
	ands r1, r0
	movs r0, 0x8
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_081A0D6E:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0D40

	thumb_func_start sub_81A0D80
sub_81A0D80: @ 81A0D80
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	adds r0, r3, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r1, r0, 26
	lsrs r0, r1, 28
	cmp r0, 0x2
	bls _081A0DCE
	subs r0, 0x3
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A0DC0
	lsls r2, 2
	adds r2, r3, r2
	adds r2, 0xB8
	ldrb r1, [r2]
	movs r0, 0x3F
	ands r0, r1
	movs r1, 0x40
	orrs r0, r1
	strb r0, [r2]
	b _081A0DCE
	.pool
_081A0DC0:
	lsls r0, r2, 2
	adds r0, r3, r0
	adds r0, 0xB8
	ldrb r2, [r0]
	movs r1, 0x3F
	ands r1, r2
	strb r1, [r0]
_081A0DCE:
	pop {r0}
	bx r0
	thumb_func_end sub_81A0D80

	thumb_func_start sub_81A0DD4
sub_81A0DD4: @ 81A0DD4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r6, 0
	movs r2, 0
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	ldr r3, =gUnknown_030062F0
	mov r9, r3
	cmp r0, 0
	beq _081A0E14
	adds r3, r1, 0
_081A0DF4:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x8
	bhi _081A0E14
	ldr r0, [r3]
	lsls r1, r2, 2
	adds r0, r1
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bne _081A0DF4
_081A0E14:
	mov r4, r9
	movs r0, 0x8
	bl AllocZeroed
	adds r7, r0, 0
	str r7, [r4]
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x2
	bne _081A0E88
	ldr r0, =gSaveBlock2Ptr
	ldr r5, [r0]
	adds r6, r5, 0
	adds r6, 0xB1
	ldrb r0, [r6]
	lsls r1, r0, 26
	lsrs r0, r1, 28
	cmp r0, 0x2
	bls _081A0E3C
	b _081A0FCE
_081A0E3C:
	adds r2, r5, 0
	adds r2, 0xB4
	adds r0, r2, r0
	ldrb r0, [r0]
	lsrs r4, r0, 4
	ldr r3, =gUnknown_08610970
	lsls r1, r4, 1
	adds r5, 0xB0
	ldrb r0, [r5]
	movs r4, 0x58
	muls r0, r4
	adds r1, r0
	adds r3, 0x34
	adds r1, r3
	ldrh r0, [r1]
	strh r0, [r7, 0x2]
	ldrb r0, [r6]
	lsls r0, 26
	lsrs r0, 28
	adds r2, r0
	ldrb r1, [r2]
	movs r0, 0xF
	ands r0, r1
	lsls r0, 1
	ldrb r1, [r5]
	muls r1, r4
	adds r0, r1
	adds r0, r3
	b _081A0FCA
	.pool
_081A0E88:
	cmp r0, 0x3
	bne _081A0F54
	ldr r0, =gSaveBlock2Ptr
	mov r8, r0
	ldr r5, [r0]
	movs r1, 0xB1
	adds r1, r5
	mov r12, r1
	ldrb r0, [r1]
	lsls r2, r0, 26
	lsrs r0, r2, 28
	cmp r0, 0x2
	bhi _081A0EA4
	b _081A0FCE
_081A0EA4:
	adds r1, r0, 0
	adds r0, r6, 0x3
	cmp r1, r0
	blt _081A0EAE
	b _081A0FCE
_081A0EAE:
	adds r0, r1, 0
	subs r0, 0x3
	lsls r0, 2
	adds r0, r5, r0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	cmp r0, 0x2
	beq _081A0EC4
	b _081A0FCE
_081A0EC4:
	adds r0, r1, 0
	subs r0, 0x3
	lsls r0, 2
	adds r0, r5, r0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r6, r0, 30
	adds r0, r5, 0
	adds r0, 0xB2
	ldrb r1, [r0]
	lsls r1, 29
	lsrs r1, 29
	asrs r1, r6
	movs r0, 0x1
	ands r1, r0
	adds r0, r5, 0
	adds r0, 0xB4
	adds r0, r6
	ldrb r4, [r0]
	lsls r1, 2
	asrs r4, r1
	movs r0, 0xF
	ands r4, r0
	ldr r2, =gUnknown_08610970
	lsls r1, r4, 1
	adds r0, r5, 0
	adds r0, 0xB0
	ldrb r3, [r0]
	movs r0, 0x58
	muls r0, r3
	adds r1, r0
	adds r2, 0x34
	adds r1, r2
	ldrh r0, [r1]
	strh r0, [r7]
	mov r3, r12
	ldrb r0, [r3]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r0, r5, r0
	adds r0, 0xB8
	ldrb r2, [r0]
	lsls r2, 26
	lsrs r2, 30
	adds r0, r6, 0
	adds r1, r4, 0
	bl sub_81A0284
	mov r1, r9
	ldr r2, [r1]
	strh r0, [r2, 0x4]
	mov r3, r8
	ldr r1, [r3]
	adds r0, r1, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r1, r0
	adds r1, 0xBA
	ldrh r0, [r1]
	strh r0, [r2, 0x6]
	b _081A0FCE
	.pool
_081A0F54:
	cmp r0, 0x4
	bne _081A0FCE
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	adds r0, r3, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r2, r0, 26
	lsrs r0, r2, 28
	cmp r0, 0x2
	bls _081A0FCE
	adds r1, r0, 0
	adds r0, r6, 0x3
	cmp r1, r0
	bge _081A0FCE
	adds r0, r1, 0
	subs r0, 0x3
	lsls r0, 2
	adds r0, r3, r0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	cmp r0, 0x1
	bne _081A0FCE
	adds r0, r1, 0
	subs r0, 0x3
	lsls r0, 2
	adds r0, r3, r0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r6, r0, 30
	adds r0, r3, 0
	adds r0, 0xB2
	ldrb r1, [r0]
	lsls r1, 29
	lsrs r1, 29
	asrs r1, r6
	movs r0, 0x1
	ands r1, r0
	adds r0, r3, 0
	adds r0, 0xB4
	adds r0, r6
	ldrb r0, [r0]
	lsls r1, 2
	asrs r0, r1
	movs r1, 0xF
	ands r0, r1
	ldr r2, =gUnknown_08610970
	lsls r0, 1
	adds r1, r3, 0
	adds r1, 0xB0
	ldrb r3, [r1]
	movs r1, 0x58
	muls r1, r3
	adds r0, r1
	adds r2, 0x34
	adds r0, r2
_081A0FCA:
	ldrh r0, [r0]
	strh r0, [r7]
_081A0FCE:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0DD4

	thumb_func_start sub_81A0FE4
sub_81A0FE4: @ 81A0FE4
	push {r4,lr}
	ldr r4, =gUnknown_030062F0
	ldr r0, [r4]
	bl Free
	movs r0, 0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0FE4

	thumb_func_start sub_81A0FFC
sub_81A0FFC: @ 81A0FFC
	push {r4-r6,lr}
	sub sp, 0x10
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _081A1028
	cmp r0, 0x1
	bgt _081A1018
	cmp r0, 0
	beq _081A101E
	b _081A11E6
	.pool
_081A1018:
	cmp r0, 0x2
	beq _081A1030
	b _081A11E6
_081A101E:
	ldr r5, =gStringVar1
	b _081A1032
	.pool
_081A1028:
	ldr r5, =gStringVar2
	b _081A1032
	.pool
_081A1030:
	ldr r5, =gStringVar3
_081A1032:
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0x9
	bls _081A103C
	b _081A11E6
_081A103C:
	lsls r0, 2
	ldr r1, =_081A1054
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A1054:
	.4byte _081A107C
	.4byte _081A1094
	.4byte _081A10AC
	.4byte _081A10C4
	.4byte _081A10DC
	.4byte _081A10F4
	.4byte _081A1118
	.4byte _081A1164
	.4byte _081A1140
	.4byte _081A1184
_081A107C:
	ldr r0, =gUnknown_030062F0
	ldr r0, [r0]
	ldrh r1, [r0]
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	b _081A1174
	.pool
_081A1094:
	ldr r0, =gUnknown_030062F0
	ldr r0, [r0]
	ldrh r1, [r0, 0x2]
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	b _081A1174
	.pool
_081A10AC:
	ldr r0, =gUnknown_030062F0
	ldr r0, [r0]
	ldrh r1, [r0]
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	b _081A1174
	.pool
_081A10C4:
	ldr r0, =gUnknown_030062F0
	ldr r0, [r0]
	ldrh r1, [r0, 0x4]
	movs r0, 0xD
	muls r1, r0
	ldr r0, =gMoveNames
	adds r1, r0
	b _081A1174
	.pool
_081A10DC:
	ldr r0, =gUnknown_030062F0
	ldr r0, [r0]
	ldrh r1, [r0, 0x6]
	movs r0, 0xD
	muls r1, r0
	ldr r0, =gMoveNames
	adds r1, r0
	b _081A1174
	.pool
_081A10F4:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	adds r0, r1, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r1, r0
	adds r1, 0xBA
	ldrh r0, [r1]
	bl ItemId_GetItem
	adds r1, r0, 0
	b _081A1174
	.pool
_081A1118:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r0, [r0]
	movs r1, 0x2
	bl sub_81A1650
	adds r1, r0, 0
	mov r0, sp
	movs r2, 0x2
	bl sub_81DB5E8
	adds r0, r5, 0
	mov r1, sp
	bl StringCopy
	b _081A11E6
	.pool
_081A1140:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB1
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x1
	bne _081A115C
	ldr r1, =gUnknown_085EAEB1
	b _081A1174
	.pool
_081A115C:
	ldr r1, =gUnknown_085EAEB8
	b _081A1174
	.pool
_081A1164:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0x82
	lsls r1, 1
	adds r0, r1
	bl ConvertBattleFrontierTrainerSpeechToString
	ldr r1, =gStringVar4
_081A1174:
	adds r0, r5, 0
	bl StringCopy
	b _081A11E6
	.pool
_081A1184:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	adds r1, r3, 0
	adds r1, 0xB1
	ldrb r1, [r1]
	lsls r4, r1, 24
	lsrs r1, r4, 30
	adds r6, r0, 0
	cmp r1, 0x2
	bhi _081A11C0
	adds r0, r3, 0
	adds r0, 0xB4
	adds r0, r1
	ldrb r2, [r0]
	adds r0, r3, 0
	adds r0, 0xB2
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r0, 29
	asrs r0, r1
	movs r1, 0x1
	ands r0, r1
	lsls r0, 2
	asrs r2, r0
	movs r0, 0xF
	ands r2, r0
	b _081A11C2
	.pool
_081A11C0:
	movs r2, 0
_081A11C2:
	ldr r3, =gUnknown_08610970
	lsls r1, r2, 1
	ldr r0, [r6]
	adds r0, 0xB0
	ldrb r2, [r0]
	movs r0, 0x58
	muls r0, r2
	adds r1, r0
	adds r3, 0x34
	adds r1, r3
	ldrh r1, [r1]
	movs r0, 0xB
	muls r1, r0
	ldr r0, =gSpeciesNames
	adds r1, r0
	adds r0, r5, 0
	bl StringCopy
_081A11E6:
	add sp, 0x10
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A0FFC

	thumb_func_start sub_81A11F8
sub_81A11F8: @ 81A11F8
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gSpecialVar_0x8005
	ldrb r1, [r0]
	adds r2, 0xB1
	lsls r1, 6
	ldrb r3, [r2]
	movs r0, 0x3F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.pool
	thumb_func_end sub_81A11F8

	thumb_func_start sub_81A1218
sub_81A1218: @ 81A1218
	push {lr}
	bl sub_81AAC28
	pop {r0}
	bx r0
	thumb_func_end sub_81A1218

	thumb_func_start sub_81A1224
sub_81A1224: @ 81A1224
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r1, =gSaveBlock2Ptr
	ldr r3, [r1]
	adds r0, r3, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	adds r7, r1, 0
	cmp r0, 0x2
	bhi _081A1242
	b _081A1362
_081A1242:
	movs r5, 0
	movs r2, 0
	adds r0, r3, 0
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	ldr r1, =gSpecialVar_0x8005
	mov r12, r1
	ldr r1, =gScriptResult
	mov r8, r1
	cmp r0, 0
	beq _081A127C
	adds r3, r7, 0
_081A125C:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x8
	bhi _081A127C
	ldr r0, [r3]
	lsls r1, r2, 2
	adds r0, r1
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bne _081A125C
_081A127C:
	movs r4, 0
	cmp r4, r5
	bcs _081A1322
	ldr r0, [r7]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	cmp r4, r0
	bge _081A1322
	adds r6, r7, 0
	mov r9, r4
_081A1296:
	ldr r3, [r6]
	lsls r0, r4, 2
	adds r2, r3, r0
	adds r0, r2, 0
	adds r0, 0xB8
	ldrb r1, [r0]
	lsls r0, r1, 30
	lsrs r0, 30
	cmp r0, 0x1
	bne _081A1308
	lsrs r0, r1, 6
	cmp r0, 0
	beq _081A1308
	adds r0, r2, 0
	adds r0, 0xBA
	ldrh r0, [r0]
	mov r2, r12
	ldrh r2, [r2]
	cmp r0, r2
	bne _081A1308
	adds r0, r3, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r0, r3, r0
	adds r0, 0xB8
	ldrb r2, [r0]
	movs r1, 0x3F
	ands r1, r2
	strb r1, [r0]
	ldr r1, [r6]
	adds r0, r1, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r1, r0
	mov r2, r12
	ldrh r0, [r2]
	adds r1, 0xBA
	strh r0, [r1]
	mov r1, r9
	mov r0, r8
	strh r1, [r0]
	b _081A1362
	.pool
_081A1308:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, r5
	bcs _081A1322
	ldr r0, [r6]
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	cmp r4, r0
	blt _081A1296
_081A1322:
	ldr r2, [r7]
	adds r0, r2, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r2, r0
	adds r2, 0xB8
	ldrb r1, [r2]
	movs r0, 0x3F
	ands r0, r1
	movs r1, 0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r7]
	adds r0, r1, 0
	adds r0, 0xB1
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 28
	subs r0, 0x3
	lsls r0, 2
	adds r1, r0
	mov r2, r12
	ldrh r0, [r2]
	adds r1, 0xBA
	strh r0, [r1]
	movs r0, 0x1
	mov r1, r8
	strh r0, [r1]
_081A1362:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81A1224

	thumb_func_start sub_81A1370
sub_81A1370: @ 81A1370
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	movs r2, 0x8A
	lsls r2, 1
	adds r1, r2
	ldrb r1, [r1]
	adds r4, r0, 0
	cmp r1, 0xFF
	beq _081A1422
	movs r5, 0
_081A138E:
	ldr r1, [r4]
	adds r2, r5, 0x1
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r3, r1, r0
	movs r5, 0x8A
	lsls r5, 1
	adds r0, r3, r5
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _081A13B8
	adds r0, r3, 0
	adds r0, 0xDC
	adds r1, 0xDC
	movs r2, 0x44
	bl memcpy
	b _081A1422
	.pool
_081A13B8:
	adds r5, r2, 0
	cmp r5, 0x2
	ble _081A138E
	ldr r0, =0x0000ffff
	mov r10, r0
	movs r2, 0x1
	negs r2, r2
	mov r9, r2
	movs r5, 0x1
	ldr r7, =gSaveBlock2Ptr
	movs r0, 0x90
	lsls r0, 1
	mov r8, r0
	movs r6, 0x44
_081A13D4:
	ldr r0, [r7]
	add r0, r8
	adds r0, 0x34
	bl ReadUnalignedWord
	adds r4, r0, 0
	ldr r0, [r7]
	adds r0, 0xA
	bl ReadUnalignedWord
	cmp r4, r0
	bne _081A13FC
	ldr r0, [r7]
	adds r0, r6
	adds r0, 0xDE
	ldrb r0, [r0]
	cmp r0, r10
	bge _081A13FC
	mov r10, r0
	mov r9, r5
_081A13FC:
	movs r2, 0x44
	add r8, r2
	adds r6, 0x44
	adds r5, 0x1
	cmp r5, 0x3
	ble _081A13D4
	mov r5, r9
	cmp r5, 0
	ble _081A1422
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	lsls r0, r5, 4
	add r0, r9
	lsls r0, 2
	adds r0, r1, r0
	adds r0, 0xDC
	adds r1, 0xDC
	bl memcpy
_081A1422:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1370

	thumb_func_start sub_81A1438
sub_81A1438: @ 81A1438
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	adds r0, r2, 0
	adds r0, 0xB0
	ldrb r0, [r0]
	adds r2, 0xDC
	movs r1, 0x1F
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x20
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r2, [r4]
	adds r0, r2, 0
	adds r0, 0xB1
	ldrb r1, [r0]
	lsls r1, 30
	adds r2, 0xDC
	lsrs r1, 25
	ldrb r3, [r2]
	movs r0, 0x61
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r2, 0
	ldr r0, [r4]
	b _081A148C
	.pool
_081A147C:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x8
	bhi _081A1496
	ldr r0, [r4]
	lsls r1, r2, 2
	adds r0, r1
_081A148C:
	adds r0, 0xB8
	ldrb r0, [r0]
	lsls r0, 30
	cmp r0, 0
	bne _081A147C
_081A1496:
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	adds r0, 0xDD
	strb r2, [r0]
	ldr r0, [r4]
	adds r1, r0, 0
	adds r1, 0xDE
	ldrb r0, [r1]
	cmp r0, 0xFE
	bhi _081A14AE
	adds r0, 0x1
	strb r0, [r1]
_081A14AE:
	ldr r0, [r4]
	adds r0, 0xDD
	ldrb r0, [r0]
	bl sub_81A0390
	movs r2, 0
	adds r3, r4, 0
	movs r4, 0x88
	lsls r4, 1
	adds r5, r3, 0
_081A14C2:
	ldr r0, [r3]
	adds r1, r0, r4
	adds r1, r2
	adds r0, 0xA
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x3
	bls _081A14C2
	ldr r1, [r5]
	movs r2, 0x8A
	lsls r2, 1
	adds r0, r1, r2
	bl StringCopy
	ldr r1, [r5]
	ldr r0, =gGameLanguage
	ldrb r0, [r0]
	ldr r2, =0x0000011b
	adds r1, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, 0xDC
	bl sub_8165AE8
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1438

	thumb_func_start sub_81A150C
sub_81A150C: @ 81A150C
	push {lr}
	ldr r2, =gUnknown_08610970
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xDC
	ldrb r0, [r0]
	lsls r0, 27
	lsrs r0, 27
	movs r1, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x32
	ldrb r2, [r0]
	movs r1, 0
	ldr r3, =gUnknown_085DCEDC
	ldrb r0, [r3]
	cmp r0, r2
	beq _081A1542
_081A1530:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x1D
	bhi _081A1542
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _081A1530
_081A1542:
	cmp r1, 0x1E
	beq _081A1568
	ldr r0, =gUnknown_085DCF0E
	adds r0, r1, r0
	ldrb r1, [r0]
	ldr r0, =0x00004010
	bl VarSet
	b _081A1594
	.pool
_081A1568:
	movs r1, 0
	ldr r3, =gUnknown_085DCEFA
	ldrb r0, [r3]
	cmp r0, r2
	beq _081A1584
_081A1572:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x13
	bhi _081A1584
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _081A1572
_081A1584:
	cmp r1, 0x14
	beq _081A1594
	ldr r0, =gUnknown_085DCF2C
	adds r0, r1, r0
	ldrb r1, [r0]
	ldr r0, =0x00004010
	bl VarSet
_081A1594:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A150C

	thumb_func_start sub_81A15A4
sub_81A15A4: @ 81A15A4
	push {lr}
	ldr r2, =gUnknown_08610970
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	adds r0, 0xB0
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x32
	ldrb r2, [r0]
	movs r1, 0
	ldr r3, =gUnknown_085DCEDC
	ldrb r0, [r3]
	cmp r0, r2
	beq _081A15D6
_081A15C4:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x1D
	bhi _081A15D6
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _081A15C4
_081A15D6:
	cmp r1, 0x1E
	beq _081A15FC
	ldr r0, =gUnknown_085DCF0E
	adds r0, r1, r0
	ldrb r1, [r0]
	ldr r0, =0x00004010
	bl VarSet
	b _081A1628
	.pool
_081A15FC:
	movs r1, 0
	ldr r3, =gUnknown_085DCEFA
	ldrb r0, [r3]
	cmp r0, r2
	beq _081A1618
_081A1606:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x13
	bhi _081A1618
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _081A1606
_081A1618:
	cmp r1, 0x14
	beq _081A1628
	ldr r0, =gUnknown_085DCF2C
	adds r0, r1, r0
	ldrb r1, [r0]
	ldr r0, =0x00004010
	bl VarSet
_081A1628:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A15A4

	thumb_func_start sub_81A1638
sub_81A1638: @ 81A1638
	ldr r1, =gSpecialVar_0x8004
	movs r0, 0x1
	strh r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A1638

	thumb_func_start sub_81A1644
sub_81A1644: @ 81A1644
	ldr r1, =gSpecialVar_0x8004
	movs r0, 0x1
	strh r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A1644

	thumb_func_start sub_81A1650
sub_81A1650: @ 81A1650
	push {lr}
	movs r2, 0x58
	muls r2, r0
	ldr r0, =gUnknown_08610970
	adds r2, r0
	subs r0, r1, 0x1
	cmp r0, 0x6
	bhi _081A16AC
	lsls r0, 2
	ldr r1, =_081A1674
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A1674:
	.4byte _081A1690
	.4byte _081A1694
	.4byte _081A169A
	.4byte _081A16A0
	.4byte _081A16A6
	.4byte _081A16AC
	.4byte _081A16AC
_081A1690:
	adds r0, r2, 0
	b _081A16B0
_081A1694:
	adds r0, r2, 0
	adds r0, 0x8
	b _081A16B0
_081A169A:
	adds r0, r2, 0
	adds r0, 0x10
	b _081A16B0
_081A16A0:
	adds r0, r2, 0
	adds r0, 0x18
	b _081A16B0
_081A16A6:
	adds r0, r2, 0
	adds r0, 0x20
	b _081A16B0
_081A16AC:
	adds r0, r2, 0
	adds r0, 0x28
_081A16B0:
	pop {r1}
	bx r1
	thumb_func_end sub_81A1650

	thumb_func_start sub_81A16B4
sub_81A16B4: @ 81A16B4
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _081A16CE
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081A16D4
_081A16CE:
	adds r0, r2, 0
	bl SwitchTaskToFollowupFunc
_081A16D4:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A16B4

	thumb_func_start sub_81A16DC
sub_81A16DC: @ 81A16DC
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _081A16F6
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081A1718
_081A16F6:
	ldr r2, =gUnknown_030062F4
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x8]
	movs r3, 0xA
	ldrsh r0, [r0, r3]
	lsls r0, 16
	orrs r1, r0
	str r1, [r2]
	bl _call_via_r1
	adds r0, r4, 0
	bl DestroyTask
_081A1718:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A16DC

	thumb_func_start sub_81A172C
sub_81A172C: @ 81A172C
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, =sub_81A16DC
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0x8]
	lsrs r4, 16
	strh r4, [r1, 0xA]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A172C

	thumb_func_start sub_81A175C
sub_81A175C: @ 81A175C
	push {r4,r5,lr}
	adds r5, r0, 0
	ldr r4, =sub_81A16B4
	adds r0, r4, 0
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	adds r2, r5, 0
	bl SetTaskFuncWithFollowupFunc
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A175C

	thumb_func_start sub_81A1780
sub_81A1780: @ 81A1780
	push {lr}
	ldr r1, =gUnknown_08611C18
	ldr r0, =gSpecialVar_0x8004
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1780

	thumb_func_start sub_81A17A0
sub_81A17A0: @ 81A17A0
	push {lr}
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0xFF
	bl VarSet
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca8
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x4
	bhi _081A1822
	lsls r0, 2
	ldr r1, =_081A17D0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A17D0:
	.4byte _081A1822
	.4byte _081A17E4
	.4byte _081A1810
	.4byte _081A17EC
	.4byte _081A17E8
_081A17E4:
	movs r0, 0
	b _081A17EE
_081A17E8:
	movs r0, 0
	b _081A17EE
_081A17EC:
	movs r0, 0x1
_081A17EE:
	bl sub_813A878
	movs r0, 0x80
	lsls r0, 7
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	ldr r2, =0x00000ca8
	adds r1, r2
	ldrb r1, [r1]
	bl VarSet
	b _081A1822
	.pool
_081A1810:
	movs r0, 0x80
	lsls r0, 7
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	ldr r2, =0x00000ca8
	adds r1, r2
	ldrb r1, [r1]
	bl VarSet
_081A1822:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A17A0

	thumb_func_start sub_81A1830
sub_81A1830: @ 81A1830
	push {r4-r6,lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r6, 0
	bl sub_81A3B30
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bne _081A184C
	movs r5, 0x1
_081A184C:
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x7
	bls _081A1856
	b _081A1956
_081A1856:
	lsls r0, 2
	ldr r1, =_081A186C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A186C:
	.4byte _081A188C
	.4byte _081A18A8
	.4byte _081A18C8
	.4byte _081A18E4
	.4byte _081A1956
	.4byte _081A1900
	.4byte _081A1918
	.4byte _081A1938
_081A188C:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000ca8
	adds r0, r2
	ldrb r0, [r0]
	strh r0, [r1]
	b _081A1956
	.pool
_081A18A8:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	strh r0, [r1]
	b _081A1956
	.pool
_081A18C8:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000cb2
	adds r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	b _081A1956
	.pool
_081A18E4:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 29
	b _081A1926
	.pool
_081A1900:
	ldr r2, =gScriptResult
	ldr r1, =gBattleOutcome
	ldrb r0, [r1]
	strh r0, [r2]
	movs r0, 0
	strb r0, [r1]
	b _081A1956
	.pool
_081A1918:
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 28
_081A1926:
	lsrs r0, 31
	strh r0, [r1]
	b _081A1956
	.pool
_081A1938:
	ldr r4, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	movs r0, 0xD0
	lsls r0, 4
	adds r2, r0
	ldr r3, =gUnknown_08611BFC
	lsls r0, r5, 1
	lsls r1, r6, 2
	adds r0, r1
	adds r0, r3
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r4]
_081A1956:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1830

	thumb_func_start sub_81A1968
sub_81A1968: @ 81A1968
	push {r4,r5,lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r5, 0
	bl sub_81A3B30
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bne _081A1984
	movs r4, 0x1
_081A1984:
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x7
	bls _081A198E
	b _081A1AC4
_081A198E:
	lsls r0, 2
	ldr r1, =_081A19A4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A19A4:
	.4byte _081A19C4
	.4byte _081A19E0
	.4byte _081A1A0C
	.4byte _081A1A28
	.4byte _081A1A50
	.4byte _081A1AC4
	.4byte _081A1A7C
	.4byte _081A1AA8
_081A19C4:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =gSpecialVar_0x8006
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	b _081A1AC4
	.pool
_081A19E0:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r1, =0x00000ca9
	adds r2, r1
	movs r1, 0x3
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	b _081A1AC4
	.pool
_081A1A0C:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =gSpecialVar_0x8006
	ldrh r1, [r1]
	ldr r2, =0x00000cb2
	adds r0, r2
	strh r1, [r0]
	b _081A1AC4
	.pool
_081A1A28:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r1, =0x00000ca9
	adds r3, r1
	movs r1, 0x1
	ands r1, r0
	lsls r1, 2
	ldrb r2, [r3]
	movs r0, 0x5
	negs r0, r0
	b _081A1A94
	.pool
_081A1A50:
	movs r2, 0
	ldr r5, =gSaveBlock2Ptr
	ldr r4, =0x00000caa
	ldr r3, =gUnknown_0203CEF8
_081A1A58:
	ldr r1, [r5]
	lsls r0, r2, 1
	adds r1, r4
	adds r1, r0
	adds r0, r2, r3
	ldrb r0, [r0]
	strh r0, [r1]
	adds r2, 0x1
	cmp r2, 0x3
	ble _081A1A58
	b _081A1AC4
	.pool
_081A1A7C:
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r0, =gSpecialVar_0x8006
	ldrb r0, [r0]
	ldr r2, =0x00000ca9
	adds r3, r2
	movs r1, 0x1
	ands r1, r0
	lsls r1, 3
	ldrb r2, [r3]
	movs r0, 0x9
	negs r0, r0
_081A1A94:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _081A1AC4
	.pool
_081A1AA8:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	movs r0, 0xD0
	lsls r0, 4
	adds r2, r0
	ldr r3, =gUnknown_08611BFC
	lsls r1, r4, 1
	lsls r0, r5, 2
	adds r1, r0
	adds r1, r3
	ldrh r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
	strh r0, [r2]
_081A1AC4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1968

	thumb_func_start sub_81A1AD4
sub_81A1AD4: @ 81A1AD4
	push {r4-r7,lr}
	bl sub_81B8558
	movs r3, 0
	ldr r4, =gSpecialVar_0x8005
	ldrh r0, [r4]
	cmp r3, r0
	bge _081A1B00
	ldr r7, =gUnknown_0203CEF8
	ldr r6, =gSaveBlock2Ptr
	ldr r5, =0x00000caa
_081A1AEA:
	adds r2, r3, r7
	ldr r0, [r6]
	lsls r1, r3, 1
	adds r0, r5
	adds r0, r1
	ldrh r0, [r0]
	strb r0, [r2]
	adds r3, 0x1
	ldrh r0, [r4]
	cmp r3, r0
	blt _081A1AEA
_081A1B00:
	bl sub_80F94E8
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1AD4

	thumb_func_start sub_81A1B1C
sub_81A1B1C: @ 81A1B1C
	push {lr}
	bl DoSoftReset
	pop {r0}
	bx r0
	thumb_func_end sub_81A1B1C

	thumb_func_start sub_81A1B28
sub_81A1B28: @ 81A1B28
	ldr r1, =gUnknown_0203BC88
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A1B28

	thumb_func_start sub_81A1B38
sub_81A1B38: @ 81A1B38
	push {r4,r5,lr}
	movs r4, 0
	movs r5, 0x64
_081A1B3E:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000caa
	adds r0, r2
	adds r1, r0, r1
	ldrh r0, [r1]
	subs r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x5
	bhi _081A1B76
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldrh r1, [r1]
	subs r1, 0x1
	muls r1, r5
	adds r0, r1
	movs r1, 0x8E
	lsls r1, 2
	adds r0, r1
	ldr r2, =gPlayerParty
	adds r1, r4, 0
	muls r1, r5
	adds r1, r2
	movs r2, 0x64
	bl memcpy
_081A1B76:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _081A1B3E
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1B38

	thumb_func_start sub_81A1B98
sub_81A1B98: @ 81A1B98
	push {lr}
	ldr r0, =gSpecialVar_0x8006
	ldrh r1, [r0]
	adds r2, r0, 0
	cmp r1, 0x3
	bls _081A1BA8
	movs r0, 0
	strh r0, [r2]
_081A1BA8:
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x7
	bhi _081A1C1E
	lsls r0, 2
	ldr r1, =_081A1BC8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A1BC8:
	.4byte _081A1BE8
	.4byte _081A1BF0
	.4byte _081A1BF8
	.4byte _081A1C0E
	.4byte _081A1C06
	.4byte _081A1C00
	.4byte _081A1C14
	.4byte _081A1C1A
_081A1BE8:
	ldrb r0, [r2]
	bl sub_81A1EA8
	b _081A1C1E
_081A1BF0:
	ldrb r0, [r2]
	bl sub_81A2134
	b _081A1C1E
_081A1BF8:
	ldrb r0, [r2]
	bl sub_81A2460
	b _081A1C1E
_081A1C00:
	bl sub_81A2698
	b _081A1C1E
_081A1C06:
	ldrb r0, [r2]
	bl sub_81A2C94
	b _081A1C1E
_081A1C0E:
	bl sub_81A2968
	b _081A1C1E
_081A1C14:
	bl sub_81A2F38
	b _081A1C1E
_081A1C1A:
	bl sub_81A2FF8
_081A1C1E:
	pop {r0}
	bx r0
	thumb_func_end sub_81A1B98

	thumb_func_start sub_81A1C24
sub_81A1C24: @ 81A1C24
	push {lr}
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	ldr r2, =0x00000cdc
	adds r1, r2
	ldr r1, [r1]
	ands r1, r0
	cmp r1, 0
	bne _081A1C44
	movs r0, 0
	b _081A1C46
	.pool
_081A1C44:
	movs r0, 0x1
_081A1C46:
	pop {r1}
	bx r1
	thumb_func_end sub_81A1C24

	thumb_func_start sub_81A1C4C
sub_81A1C4C: @ 81A1C4C
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r0, 0
	adds r5, r1, 0
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0xE0
	bl GetStringCenterAlignXOffset
	adds r3, r0, 0
	lsls r0, r5, 3
	adds r5, r0, 0x1
	ldr r0, =gUnknown_0203AB74
	ldrb r0, [r0]
	lsls r3, 24
	lsrs r3, 24
	lsls r1, r5, 24
	lsrs r1, 24
	str r1, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	movs r1, 0
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	bl PrintTextOnWindow
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1C4C

	thumb_func_start sub_81A1C90
sub_81A1C90: @ 81A1C90
	push {r4,lr}
	sub sp, 0x34
	adds r2, r0, 0
	ldr r3, =gUnknown_0203AB74
	movs r1, 0xAE
	mov r0, sp
	adds r0, 0x2F
_081A1C9E:
	strb r1, [r0]
	subs r0, 0x1
	add r4, sp, 0xC
	cmp r0, r4
	bge _081A1C9E
	add r1, sp, 0x30
	movs r0, 0xFF
	strb r0, [r1]
	lsls r0, r2, 3
	adds r2, r0, 0x1
	ldrb r0, [r3]
	lsls r1, r2, 24
	lsrs r1, 24
	str r1, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	movs r1, 0
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	movs r3, 0x4
	bl PrintTextOnWindow
	add sp, 0x34
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1C90

	thumb_func_start sub_81A1CD8
sub_81A1CD8: @ 81A1CD8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	adds r5, r0, 0
	adds r4, r2, 0
	ldr r0, [sp, 0x30]
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r4, 24
	lsrs r4, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0xC]
	lsls r0, 24
	lsrs r0, 24
	adds r7, r0, 0
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r7, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r5, 0
	adds r3, r4, 0
	bl PrintTextOnWindow
	ldr r0, =0x0000270f
	cmp r6, r0
	bls _081A1D24
	adds r6, r0, 0
_081A1D24:
	ldr r0, =gStringVar1
	adds r1, r6, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE302
	adds r0, r4, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r7, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	ldr r3, [sp, 0xC]
	bl PrintTextOnWindow
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1CD8

	thumb_func_start sub_81A1D78
sub_81A1D78: @ 81A1D78
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r5, [sp, 0x10]
	lsls r0, 24
	lsls r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r4, =gSaveBlock2Ptr
	ldr r4, [r4]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	movs r0, 0xCF
	lsls r0, 4
	adds r4, r0
	adds r4, r1
	ldrh r1, [r4]
	ldr r0, =gUnknown_085EE319
	str r5, [sp]
	bl sub_81A1CD8
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1D78

	thumb_func_start sub_81A1DBC
sub_81A1DBC: @ 81A1DBC
	push {lr}
	lsls r0, 24
	lsls r1, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	movs r0, 0xCE
	lsls r0, 4
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A1DDE
	adds r0, r1, 0
_081A1DDE:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A1DBC

	thumb_func_start sub_81A1DEC
sub_81A1DEC: @ 81A1DEC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	ldr r4, [sp, 0x20]
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r3, 24
	mov r9, r3
	lsls r4, 24
	lsrs r7, r4, 24
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_81A1DBC
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r5, 0x1
	beq _081A1E38
	cmp r5, 0x1
	ble _081A1E2C
	cmp r5, 0x2
	beq _081A1E48
	cmp r5, 0x3
	beq _081A1E58
_081A1E2C:
	cmp r6, 0
	beq _081A1E34
	movs r0, 0x2
	b _081A1E66
_081A1E34:
	movs r0, 0x1
	b _081A1E66
_081A1E38:
	cmp r6, 0
	beq _081A1E42
	movs r0, 0x80
	lsls r0, 8
	b _081A1E66
_081A1E42:
	movs r0, 0x80
	lsls r0, 7
	b _081A1E66
_081A1E48:
	cmp r6, 0
	beq _081A1E52
	movs r0, 0x80
	lsls r0, 10
	b _081A1E66
_081A1E52:
	movs r0, 0x80
	lsls r0, 9
	b _081A1E66
_081A1E58:
	cmp r6, 0
	beq _081A1E62
	movs r0, 0x80
	lsls r0, 12
	b _081A1E66
_081A1E62:
	movs r0, 0x80
	lsls r0, 11
_081A1E66:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A1E88
	ldr r0, =gUnknown_085EE311
	str r7, [sp]
	adds r1, r4, 0
	mov r2, r8
	mov r3, r9
	bl sub_81A1CD8
	b _081A1E96
	.pool
_081A1E88:
	ldr r0, =gUnknown_085EE320
	str r7, [sp]
	adds r1, r4, 0
	mov r2, r8
	mov r3, r9
	bl sub_81A1CD8
_081A1E96:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1DEC

	thumb_func_start sub_81A1EA8
sub_81A1EA8: @ 81A1EA8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r4, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	cmp r7, 0
	bne _081A1EF0
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE158
	bl StringExpandPlaceholders
	b _081A1F28
	.pool
_081A1EF0:
	cmp r7, 0x1
	bne _081A1F08
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE178
	bl StringExpandPlaceholders
	b _081A1F28
	.pool
_081A1F08:
	cmp r7, 0x2
	bne _081A1F20
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE198
	bl StringExpandPlaceholders
	b _081A1F28
	.pool
_081A1F20:
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE1B7
	bl StringExpandPlaceholders
_081A1F28:
	ldr r0, =gStringVar4
	movs r1, 0x2
	bl sub_81A1C4C
	ldr r6, =gUnknown_0203AB74
	ldrb r0, [r6]
	ldr r2, =gUnknown_085EE2F2
	movs r1, 0x31
	mov r8, r1
	str r1, [sp]
	movs r5, 0xFF
	str r5, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x10
	bl PrintTextOnWindow
	ldrb r0, [r6]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	mov r9, r1
	str r1, [sp]
	str r5, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x10
	bl PrintTextOnWindow
	movs r0, 0xA
	bl sub_81A1C90
	mov r0, r8
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x48
	movs r3, 0x84
	bl sub_81A1DEC
	movs r0, 0x41
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x48
	movs r3, 0x84
	bl sub_81A1D78
	mov r1, r9
	str r1, [sp]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x48
	movs r3, 0x84
	bl sub_81A1DEC
	movs r0, 0x71
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x48
	movs r3, 0x84
	bl sub_81A1D78
	ldrb r0, [r6]
	bl PutWindowTilemap
	ldrb r0, [r6]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A1EA8

	thumb_func_start sub_81A1FD8
sub_81A1FD8: @ 81A1FD8
	push {lr}
	lsls r0, 24
	lsls r1, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	ldr r0, =0x00000d0c
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A1FF8
	adds r0, r1, 0
_081A1FF8:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A1FD8

	thumb_func_start sub_81A2008
sub_81A2008: @ 81A2008
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	mov r12, r0
	adds r7, r1, 0
	adds r4, r2, 0
	ldr r6, [sp, 0x2C]
	ldr r5, [sp, 0x30]
	lsls r4, 16
	lsrs r4, 16
	lsls r3, 24
	lsrs r3, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r5, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	mov r2, r12
	bl PrintTextOnWindow
	ldr r0, =gStringVar1
	adds r1, r4, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	adds r0, r4, 0
	adds r1, r7, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r5, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	adds r3, r6, 0
	bl PrintTextOnWindow
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2008

	thumb_func_start sub_81A2094
sub_81A2094: @ 81A2094
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	ldr r4, [sp, 0x24]
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	lsls r3, 24
	lsrs r7, r3, 24
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_81A1FD8
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	cmp r5, 0
	beq _081A20CC
	cmp r5, 0x1
	beq _081A20D8
_081A20CC:
	cmp r6, 0
	beq _081A20D4
	movs r0, 0x8
	b _081A20E6
_081A20D4:
	movs r0, 0x4
	b _081A20E6
_081A20D8:
	cmp r6, 0
	beq _081A20E2
	movs r0, 0x80
	lsls r0, 14
	b _081A20E6
_081A20E2:
	movs r0, 0x80
	lsls r0, 13
_081A20E6:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A210C
	ldr r0, =gUnknown_085EE311
	ldr r1, =gUnknown_085EE338
	str r7, [sp]
	str r4, [sp, 0x4]
	mov r2, r8
	mov r3, r9
	bl sub_81A2008
	b _081A211C
	.pool
_081A210C:
	ldr r0, =gUnknown_085EE320
	ldr r1, =gUnknown_085EE338
	str r7, [sp]
	str r4, [sp, 0x4]
	mov r2, r8
	mov r3, r9
	bl sub_81A2008
_081A211C:
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2094

	thumb_func_start sub_81A2134
sub_81A2134: @ 81A2134
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r4, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	cmp r7, 0
	bne _081A217C
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE1DB
	bl StringExpandPlaceholders
	b _081A2184
	.pool
_081A217C:
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE1FE
	bl StringExpandPlaceholders
_081A2184:
	ldr r0, =gStringVar4
	movs r1, 0
	bl sub_81A1C4C
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	ldr r2, =gUnknown_085EE2F2
	movs r6, 0x21
	str r6, [sp]
	movs r5, 0xFF
	str r5, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl PrintTextOnWindow
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	str r1, [sp]
	str r5, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl PrintTextOnWindow
	movs r0, 0xA
	bl sub_81A1C90
	str r6, [sp]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x40
	movs r3, 0x79
	bl sub_81A2094
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	lsls r5, r7, 2
	ldr r1, =0x00000d14
	adds r0, r1
	adds r0, r5
	ldrh r2, [r0]
	movs r0, 0x79
	mov r9, r0
	str r0, [sp]
	movs r0, 0x31
	str r0, [sp, 0x4]
	ldr r0, =gUnknown_085EE319
	ldr r1, =gUnknown_085EE338
	movs r3, 0x40
	bl sub_81A2008
	ldr r1, =gUnknown_085EE332
	mov r10, r1
	ldr r0, =gUnknown_085EE349
	mov r8, r0
	ldr r0, [r4]
	ldr r1, =0x00000d1c
	adds r0, r1
	adds r0, r5
	ldrh r2, [r0]
	movs r6, 0x70
	str r6, [sp]
	movs r0, 0x41
	str r0, [sp, 0x4]
	mov r0, r10
	mov r1, r8
	movs r3, 0x40
	bl sub_81A2008
	movs r0, 0x61
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x40
	movs r3, 0x79
	bl sub_81A2094
	ldr r0, [r4]
	ldr r1, =0x00000d16
	adds r0, r1
	adds r0, r5
	ldrh r2, [r0]
	mov r0, r9
	str r0, [sp]
	movs r0, 0x71
	str r0, [sp, 0x4]
	ldr r0, =gUnknown_085EE319
	ldr r1, =gUnknown_085EE338
	movs r3, 0x40
	bl sub_81A2008
	ldr r0, [r4]
	ldr r1, =0x00000d1e
	adds r0, r1
	adds r0, r5
	ldrh r2, [r0]
	str r6, [sp]
	movs r0, 0x81
	str r0, [sp, 0x4]
	mov r0, r10
	mov r1, r8
	movs r3, 0x40
	bl sub_81A2008
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	bl PutWindowTilemap
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2134

	thumb_func_start sub_81A22B8
sub_81A22B8: @ 81A22B8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	adds r5, r0, 0
	adds r4, r2, 0
	ldr r0, [sp, 0x30]
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r4, 24
	lsrs r4, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0xC]
	lsls r0, 24
	lsrs r0, 24
	adds r7, r0, 0
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r7, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r5, 0
	adds r3, r4, 0
	bl PrintTextOnWindow
	ldr r0, =0x0000270f
	cmp r6, r0
	bls _081A2304
	adds r6, r0, 0
_081A2304:
	ldr r0, =gStringVar1
	adds r1, r6, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE302
	adds r0, r4, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r7, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	ldr r3, [sp, 0xC]
	bl PrintTextOnWindow
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A22B8

	thumb_func_start sub_81A2358
sub_81A2358: @ 81A2358
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r5, [sp, 0x10]
	lsls r0, 24
	lsls r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r4, =gSaveBlock2Ptr
	ldr r4, [r4]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	movs r0, 0xDD
	lsls r0, 4
	adds r4, r0
	adds r4, r1
	ldrh r1, [r4]
	ldr r0, =gUnknown_085EE319
	str r5, [sp]
	bl sub_81A22B8
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2358

	thumb_func_start sub_81A239C
sub_81A239C: @ 81A239C
	push {lr}
	lsls r0, 24
	lsls r1, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	ldr r0, =0x00000dc8
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A23BC
	adds r0, r1, 0
_081A23BC:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A239C

	thumb_func_start sub_81A23CC
sub_81A23CC: @ 81A23CC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	ldr r4, [sp, 0x20]
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r3, 24
	mov r9, r3
	lsls r4, 24
	lsrs r7, r4, 24
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_81A239C
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r5, 0
	beq _081A2404
	cmp r5, 0x1
	beq _081A2410
_081A2404:
	cmp r6, 0
	beq _081A240C
	movs r0, 0x20
	b _081A241E
_081A240C:
	movs r0, 0x10
	b _081A241E
_081A2410:
	cmp r6, 0
	beq _081A241A
	movs r0, 0x80
	lsls r0, 16
	b _081A241E
_081A241A:
	movs r0, 0x80
	lsls r0, 15
_081A241E:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A2440
	ldr r0, =gUnknown_085EE311
	str r7, [sp]
	adds r1, r4, 0
	mov r2, r8
	mov r3, r9
	bl sub_81A22B8
	b _081A244E
	.pool
_081A2440:
	ldr r0, =gUnknown_085EE320
	str r7, [sp]
	adds r1, r4, 0
	mov r2, r8
	mov r3, r9
	bl sub_81A22B8
_081A244E:
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A23CC

	thumb_func_start sub_81A2460
sub_81A2460: @ 81A2460
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r4, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	cmp r7, 0
	bne _081A24A8
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE221
	bl StringExpandPlaceholders
	b _081A24B0
	.pool
_081A24A8:
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE241
	bl StringExpandPlaceholders
_081A24B0:
	ldr r0, =gStringVar4
	movs r1, 0x2
	bl sub_81A1C4C
	ldr r6, =gUnknown_0203AB74
	ldrb r0, [r6]
	ldr r2, =gUnknown_085EE2F2
	movs r1, 0x31
	mov r8, r1
	str r1, [sp]
	movs r5, 0xFF
	str r5, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x10
	bl PrintTextOnWindow
	ldrb r0, [r6]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	mov r9, r1
	str r1, [sp]
	str r5, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x10
	bl PrintTextOnWindow
	movs r0, 0xA
	bl sub_81A1C90
	mov r0, r8
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x48
	movs r3, 0x83
	bl sub_81A23CC
	movs r0, 0x41
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x48
	movs r3, 0x83
	bl sub_81A2358
	mov r1, r9
	str r1, [sp]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x48
	movs r3, 0x83
	bl sub_81A23CC
	movs r0, 0x71
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x48
	movs r3, 0x83
	bl sub_81A2358
	ldrb r0, [r6]
	bl PutWindowTilemap
	ldrb r0, [r6]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2460

	thumb_func_start sub_81A2560
sub_81A2560: @ 81A2560
	push {lr}
	lsls r0, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsrs r0, 23
	ldr r2, =0x00000e04
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A257A
	adds r0, r1, 0
_081A257A:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A2560

	thumb_func_start sub_81A258C
sub_81A258C: @ 81A258C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	mov r12, r0
	adds r7, r1, 0
	adds r4, r2, 0
	ldr r6, [sp, 0x2C]
	ldr r5, [sp, 0x30]
	lsls r4, 16
	lsrs r4, 16
	lsls r3, 24
	lsrs r3, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r5, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	mov r2, r12
	bl PrintTextOnWindow
	ldr r0, =gStringVar1
	adds r1, r4, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	adds r0, r4, 0
	adds r1, r7, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r5, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	adds r3, r6, 0
	bl PrintTextOnWindow
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A258C

	thumb_func_start sub_81A2618
sub_81A2618: @ 81A2618
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	lsls r2, 24
	lsrs r5, r2, 24
	lsls r3, 24
	lsrs r6, r3, 24
	adds r0, r4, 0
	bl sub_81A2560
	lsls r0, 16
	lsrs r7, r0, 16
	cmp r4, 0
	beq _081A2648
	movs r0, 0x80
	lsls r0, 4
	b _081A264C
_081A2648:
	movs r0, 0x80
	lsls r0, 3
_081A264C:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A2674
	ldr r0, =gUnknown_085EE311
	ldr r1, =gUnknown_085EE35B
	str r5, [sp]
	str r6, [sp, 0x4]
	adds r2, r7, 0
	mov r3, r8
	bl sub_81A2008
	b _081A2684
	.pool
_081A2674:
	ldr r0, =gUnknown_085EE320
	ldr r1, =gUnknown_085EE35B
	str r5, [sp]
	str r6, [sp, 0x4]
	adds r2, r7, 0
	mov r3, r8
	bl sub_81A2008
_081A2684:
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2618

	thumb_func_start sub_81A2698
sub_81A2698: @ 81A2698
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	ldr r6, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r6]
	ldrb r0, [r6]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r6]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE261
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_81A1C4C
	ldrb r0, [r6]
	ldr r2, =gUnknown_085EE2F2
	movs r1, 0x21
	str r1, [sp]
	movs r5, 0xFF
	str r5, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl PrintTextOnWindow
	ldrb r0, [r6]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	str r1, [sp]
	str r5, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl PrintTextOnWindow
	movs r0, 0xA
	bl sub_81A1C90
	movs r0, 0
	movs r1, 0x40
	movs r2, 0x72
	movs r3, 0x21
	bl sub_81A2618
	ldr r0, =gUnknown_085EE319
	mov r10, r0
	ldr r7, =gUnknown_085EE35B
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	ldr r1, =0x00000e08
	adds r0, r1
	ldrh r2, [r0]
	movs r4, 0x72
	str r4, [sp]
	movs r0, 0x31
	str r0, [sp, 0x4]
	mov r0, r10
	adds r1, r7, 0
	movs r3, 0x40
	bl sub_81A258C
	ldr r0, =gUnknown_085EE332
	mov r8, r0
	ldr r1, =gUnknown_085EE36D
	mov r9, r1
	ldr r0, [r5]
	ldr r1, =0x00000e0c
	adds r0, r1
	ldrh r2, [r0]
	str r4, [sp]
	movs r0, 0x41
	str r0, [sp, 0x4]
	mov r0, r8
	mov r1, r9
	movs r3, 0x40
	bl sub_81A258C
	movs r0, 0x1
	movs r1, 0x40
	movs r2, 0x72
	movs r3, 0x61
	bl sub_81A2618
	ldr r0, [r5]
	ldr r1, =0x00000e0a
	adds r0, r1
	ldrh r2, [r0]
	str r4, [sp]
	movs r0, 0x71
	str r0, [sp, 0x4]
	mov r0, r10
	adds r1, r7, 0
	movs r3, 0x40
	bl sub_81A258C
	ldr r0, [r5]
	ldr r1, =0x00000e0e
	adds r0, r1
	ldrh r2, [r0]
	str r4, [sp]
	movs r0, 0x81
	str r0, [sp, 0x4]
	mov r0, r8
	mov r1, r9
	movs r3, 0x40
	bl sub_81A258C
	ldrb r0, [r6]
	bl PutWindowTilemap
	ldrb r0, [r6]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2698

	thumb_func_start sub_81A27E8
sub_81A27E8: @ 81A27E8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	adds r5, r0, 0
	adds r4, r2, 0
	ldr r0, [sp, 0x30]
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r4, 24
	lsrs r4, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0xC]
	lsls r0, 24
	lsrs r0, 24
	adds r7, r0, 0
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r7, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r5, 0
	adds r3, r4, 0
	bl PrintTextOnWindow
	ldr r0, =0x0000270f
	cmp r6, r0
	bls _081A2834
	adds r6, r0, 0
_081A2834:
	ldr r0, =gStringVar1
	adds r1, r6, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE381
	adds r0, r4, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r7, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	ldr r3, [sp, 0xC]
	bl PrintTextOnWindow
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A27E8

	thumb_func_start sub_81A2888
sub_81A2888: @ 81A2888
	push {r4,r5,lr}
	sub sp, 0x4
	adds r4, r1, 0
	adds r5, r2, 0
	lsls r0, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r3, 24
	lsrs r3, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsrs r0, 23
	ldr r2, =0x00000dde
	adds r1, r2
	adds r1, r0
	ldrh r1, [r1]
	ldr r0, =gUnknown_085EE319
	str r3, [sp]
	adds r2, r4, 0
	adds r3, r5, 0
	bl sub_81A27E8
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2888

	thumb_func_start sub_81A28CC
sub_81A28CC: @ 81A28CC
	push {lr}
	lsls r0, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsrs r0, 23
	ldr r2, =0x00000dda
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A28E6
	adds r0, r1, 0
_081A28E6:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A28CC

	thumb_func_start sub_81A28F8
sub_81A28F8: @ 81A28F8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r6, r3, 24
	adds r0, r4, 0
	bl sub_81A28CC
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r4, 0
	beq _081A2926
	movs r0, 0x80
	b _081A2928
_081A2926:
	movs r0, 0x40
_081A2928:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A2948
	ldr r0, =gUnknown_085EE311
	str r6, [sp]
	adds r1, r5, 0
	adds r2, r7, 0
	mov r3, r8
	bl sub_81A27E8
	b _081A2956
	.pool
_081A2948:
	ldr r0, =gUnknown_085EE320
	str r6, [sp]
	adds r1, r5, 0
	adds r2, r7, 0
	mov r3, r8
	bl sub_81A27E8
_081A2956:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A28F8

	thumb_func_start sub_81A2968
sub_81A2968: @ 81A2968
	push {r4-r6,lr}
	sub sp, 0xC
	ldr r5, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r5]
	ldrb r0, [r5]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r5]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	movs r0, 0xA
	bl sub_81A1C90
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE27C
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0x2
	bl sub_81A1C4C
	ldrb r0, [r5]
	ldr r2, =gUnknown_085EE2F2
	movs r1, 0x31
	str r1, [sp]
	movs r6, 0xFF
	str r6, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x10
	bl PrintTextOnWindow
	ldrb r0, [r5]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	str r1, [sp]
	str r6, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x10
	bl PrintTextOnWindow
	movs r0, 0
	movs r1, 0x48
	movs r2, 0x7E
	movs r3, 0x31
	bl sub_81A28F8
	movs r0, 0
	movs r1, 0x48
	movs r2, 0x7E
	movs r3, 0x41
	bl sub_81A2888
	movs r0, 0x1
	movs r1, 0x48
	movs r2, 0x7E
	movs r3, 0x61
	bl sub_81A28F8
	movs r0, 0x1
	movs r1, 0x48
	movs r2, 0x7E
	movs r3, 0x71
	bl sub_81A2888
	ldrb r0, [r5]
	bl PutWindowTilemap
	ldrb r0, [r5]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2968

	thumb_func_start sub_81A2A28
sub_81A2A28: @ 81A2A28
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	mov r12, r0
	ldr r4, [sp, 0x38]
	ldr r5, [sp, 0x3C]
	ldr r0, [sp, 0x40]
	lsls r1, 16
	lsrs r7, r1, 16
	lsls r2, 16
	lsrs r2, 16
	str r2, [sp, 0xC]
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp, 0x10]
	lsls r5, 24
	lsrs r5, 24
	str r5, [sp, 0x14]
	lsls r0, 24
	lsrs r0, 24
	adds r6, r0, 0
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r6, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	mov r2, r12
	bl PrintTextOnWindow
	ldr r0, =0x0000270f
	cmp r7, r0
	bls _081A2A80
	adds r7, r0, 0
_081A2A80:
	ldr r5, =gStringVar1
	adds r0, r5, 0
	adds r1, r7, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE302
	adds r0, r4, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r6, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	ldr r3, [sp, 0x10]
	bl PrintTextOnWindow
	adds r0, r5, 0
	ldr r1, [sp, 0xC]
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r1, =gUnknown_085EE392
	adds r0, r4, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r6, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	ldr r3, [sp, 0x14]
	bl PrintTextOnWindow
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2A28

	thumb_func_start sub_81A2B04
sub_81A2B04: @ 81A2B04
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	adds r6, r2, 0
	ldr r4, [sp, 0x24]
	ldr r5, [sp, 0x28]
	lsls r0, 24
	lsls r1, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	ldr r7, =0x00000dea
	adds r0, r2, r7
	adds r0, r1
	ldrh r0, [r0]
	mov r8, r0
	ldr r0, =0x00000dfa
	adds r2, r0
	adds r2, r1
	ldrh r2, [r2]
	ldr r0, =gUnknown_085EE319
	str r3, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	mov r1, r8
	adds r3, r6, 0
	bl sub_81A2A28
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2B04

	thumb_func_start sub_81A2B70
sub_81A2B70: @ 81A2B70
	push {lr}
	lsls r0, 24
	lsls r1, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	ldr r0, =0x00000de2
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A2B90
	adds r0, r1, 0
_081A2B90:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A2B70

	thumb_func_start sub_81A2BA0
sub_81A2BA0: @ 81A2BA0
	push {lr}
	lsls r0, 24
	lsls r1, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	ldr r0, =0x00000df2
	adds r2, r0
	adds r2, r1
	ldrh r0, [r2]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A2BC0
	adds r0, r1, 0
_081A2BC0:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A2BA0

	thumb_func_start sub_81A2BD0
sub_81A2BD0: @ 81A2BD0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	ldr r4, [sp, 0x30]
	ldr r5, [sp, 0x34]
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0xC]
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	lsls r4, 24
	lsrs r4, 24
	mov r9, r4
	lsls r5, 24
	lsrs r5, 24
	mov r10, r5
	adds r0, r6, 0
	adds r1, r7, 0
	bl sub_81A2B70
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r6, 0
	adds r1, r7, 0
	bl sub_81A2BA0
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r6, 0
	beq _081A2C20
	cmp r6, 0x1
	beq _081A2C30
_081A2C20:
	cmp r7, 0
	beq _081A2C2A
	movs r0, 0x80
	lsls r0, 2
	b _081A2C3E
_081A2C2A:
	movs r0, 0x80
	lsls r0, 1
	b _081A2C3E
_081A2C30:
	cmp r7, 0
	beq _081A2C3A
	movs r0, 0x80
	lsls r0, 18
	b _081A2C3E
_081A2C3A:
	movs r0, 0x80
	lsls r0, 17
_081A2C3E:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A2C68
	ldr r0, =gUnknown_085EE311
	mov r1, r8
	str r1, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r10
	str r1, [sp, 0x8]
	adds r1, r5, 0
	adds r2, r4, 0
	ldr r3, [sp, 0xC]
	bl sub_81A2A28
	b _081A2C80
	.pool
_081A2C68:
	ldr r0, =gUnknown_085EE320
	mov r1, r8
	str r1, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r10
	str r1, [sp, 0x8]
	adds r1, r5, 0
	adds r2, r4, 0
	ldr r3, [sp, 0xC]
	bl sub_81A2A28
_081A2C80:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2BD0

	thumb_func_start sub_81A2C94
sub_81A2C94: @ 81A2C94
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r4, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	cmp r7, 0
	bne _081A2CD8
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE298
	bl StringExpandPlaceholders
	b _081A2CE0
	.pool
_081A2CD8:
	ldr r0, =gStringVar4
	ldr r1, =gUnknown_085EE2B8
	bl StringExpandPlaceholders
_081A2CE0:
	ldr r0, =gStringVar4
	movs r1, 0
	bl sub_81A1C4C
	ldr r0, =gUnknown_0203AB74
	mov r8, r0
	ldrb r0, [r0]
	ldr r2, =gUnknown_085EE2F2
	movs r6, 0x21
	str r6, [sp]
	movs r5, 0xFF
	str r5, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl PrintTextOnWindow
	mov r1, r8
	ldrb r0, [r1]
	ldr r2, =gUnknown_085EE326
	str r6, [sp]
	str r5, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x98
	bl PrintTextOnWindow
	mov r1, r8
	ldrb r0, [r1]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	str r1, [sp]
	str r5, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl PrintTextOnWindow
	movs r0, 0xA
	bl sub_81A1C90
	movs r4, 0x9E
	str r4, [sp]
	movs r0, 0x31
	str r0, [sp, 0x4]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x8
	movs r3, 0x40
	bl sub_81A2BD0
	str r4, [sp]
	movs r0, 0x41
	str r0, [sp, 0x4]
	adds r0, r7, 0
	movs r1, 0
	movs r2, 0x8
	movs r3, 0x40
	bl sub_81A2B04
	str r4, [sp]
	movs r0, 0x71
	str r0, [sp, 0x4]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x8
	movs r3, 0x40
	bl sub_81A2BD0
	str r4, [sp]
	movs r0, 0x81
	str r0, [sp, 0x4]
	adds r0, r7, 0
	movs r1, 0x1
	movs r2, 0x8
	movs r3, 0x40
	bl sub_81A2B04
	mov r1, r8
	ldrb r0, [r1]
	bl PutWindowTilemap
	mov r1, r8
	ldrb r0, [r1]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2C94

	thumb_func_start sub_81A2DB4
sub_81A2DB4: @ 81A2DB4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	adds r5, r0, 0
	adds r4, r2, 0
	ldr r0, [sp, 0x30]
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r4, 24
	lsrs r4, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0xC]
	lsls r0, 24
	lsrs r0, 24
	adds r7, r0, 0
	ldr r0, =gUnknown_0203AB74
	mov r10, r0
	ldrb r0, [r0]
	str r7, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r1, 0
	mov r8, r1
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r5, 0
	adds r3, r4, 0
	bl PrintTextOnWindow
	ldr r0, =0x0000270f
	cmp r6, r0
	bls _081A2E00
	adds r6, r0, 0
_081A2E00:
	ldr r0, =gStringVar1
	adds r1, r6, 0
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE39C
	adds r0, r4, 0
	bl StringExpandPlaceholders
	mov r1, r10
	ldrb r0, [r1]
	str r7, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	ldr r3, [sp, 0xC]
	bl PrintTextOnWindow
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2DB4

	thumb_func_start sub_81A2E54
sub_81A2E54: @ 81A2E54
	push {r4,r5,lr}
	sub sp, 0x4
	adds r4, r1, 0
	adds r5, r2, 0
	lsls r0, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r3, 24
	lsrs r3, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsrs r0, 23
	ldr r2, =0x00000e1e
	adds r1, r2
	adds r1, r0
	ldrh r1, [r1]
	ldr r0, =gUnknown_085EE319
	str r3, [sp]
	adds r2, r4, 0
	adds r3, r5, 0
	bl sub_81A2DB4
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2E54

	thumb_func_start sub_81A2E98
sub_81A2E98: @ 81A2E98
	push {lr}
	lsls r0, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsrs r0, 23
	ldr r2, =0x00000e1a
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A2EB2
	adds r0, r1, 0
_081A2EB2:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A2E98

	thumb_func_start sub_81A2EC4
sub_81A2EC4: @ 81A2EC4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r6, r3, 24
	adds r0, r4, 0
	bl sub_81A2E98
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r4, 0
	beq _081A2EF4
	movs r0, 0x80
	lsls r0, 6
	b _081A2EF8
_081A2EF4:
	movs r0, 0x80
	lsls r0, 5
_081A2EF8:
	bl sub_81A1C24
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081A2F18
	ldr r0, =gUnknown_085EE311
	str r6, [sp]
	adds r1, r5, 0
	adds r2, r7, 0
	mov r3, r8
	bl sub_81A2DB4
	b _081A2F26
	.pool
_081A2F18:
	ldr r0, =gUnknown_085EE320
	str r6, [sp]
	adds r1, r5, 0
	adds r2, r7, 0
	mov r3, r8
	bl sub_81A2DB4
_081A2F26:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2EC4

	thumb_func_start sub_81A2F38
sub_81A2F38: @ 81A2F38
	push {r4-r6,lr}
	sub sp, 0xC
	ldr r5, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C74
	bl AddWindow
	strb r0, [r5]
	ldrb r0, [r5]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r5]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085EE2D8
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0x2
	bl sub_81A1C4C
	ldrb r0, [r5]
	ldr r2, =gUnknown_085EE2F2
	movs r1, 0x31
	str r1, [sp]
	movs r6, 0xFF
	str r6, [sp, 0x4]
	movs r4, 0
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl PrintTextOnWindow
	ldrb r0, [r5]
	ldr r2, =gUnknown_085EE2F9
	movs r1, 0x61
	str r1, [sp]
	str r6, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x8
	bl PrintTextOnWindow
	movs r0, 0xA
	bl sub_81A1C90
	movs r0, 0
	movs r1, 0x40
	movs r2, 0x6F
	movs r3, 0x31
	bl sub_81A2EC4
	movs r0, 0
	movs r1, 0x40
	movs r2, 0x6F
	movs r3, 0x41
	bl sub_81A2E54
	movs r0, 0x1
	movs r1, 0x40
	movs r2, 0x6F
	movs r3, 0x61
	bl sub_81A2EC4
	movs r0, 0x1
	movs r1, 0x40
	movs r2, 0x6F
	movs r3, 0x71
	bl sub_81A2E54
	ldrb r0, [r5]
	bl PutWindowTilemap
	ldrb r0, [r5]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2F38

	thumb_func_start sub_81A2FF8
sub_81A2FF8: @ 81A2FF8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0xC
	ldr r4, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C7C
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r0, =gStringVar4
	mov r9, r0
	ldr r1, =gUnknown_085EDF86
	bl StringExpandPlaceholders
	movs r0, 0x1
	mov r1, r9
	movs r2, 0xD0
	bl GetStringCenterAlignXOffset
	adds r3, r0, 0
	ldrb r0, [r4]
	lsls r3, 24
	lsrs r3, 24
	movs r1, 0x1
	str r1, [sp]
	movs r6, 0xFF
	str r6, [sp, 0x4]
	movs r5, 0
	str r5, [sp, 0x8]
	mov r2, r9
	bl PrintTextOnWindow
	ldr r7, =gUnknown_085EDFA0
	movs r0, 0x1
	adds r1, r7, 0
	movs r2, 0x26
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	adds r3, 0x32
	ldrb r0, [r4]
	lsls r3, 24
	lsrs r3, 24
	movs r1, 0x19
	mov r8, r1
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	adds r2, r7, 0
	bl PrintTextOnWindow
	ldr r7, =gUnknown_085EDFA4
	movs r0, 0x1
	adds r1, r7, 0
	movs r2, 0x26
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	adds r3, 0x58
	ldrb r0, [r4]
	lsls r3, 24
	lsrs r3, 24
	mov r2, r8
	str r2, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	adds r2, r7, 0
	bl PrintTextOnWindow
	ldr r7, =gUnknown_085EDFA8
	movs r0, 0x1
	adds r1, r7, 0
	movs r2, 0x26
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	adds r3, 0x7E
	ldrb r0, [r4]
	lsls r3, 24
	lsrs r3, 24
	mov r1, r8
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	adds r2, r7, 0
	bl PrintTextOnWindow
	ldr r7, =gUnknown_085EDFAC
	movs r0, 0x1
	adds r1, r7, 0
	movs r2, 0x26
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	adds r3, 0xA4
	ldrb r0, [r4]
	lsls r3, 24
	lsrs r3, 24
	mov r2, r8
	str r2, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	adds r2, r7, 0
	bl PrintTextOnWindow
	ldrb r0, [r4]
	ldr r2, =gUnknown_085EB0E8
	movs r1, 0x29
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x6
	bl PrintTextOnWindow
	ldrb r0, [r4]
	ldr r2, =gUnknown_085EB0ED
	movs r1, 0x39
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x6
	bl PrintTextOnWindow
	ldrb r0, [r4]
	ldr r2, =gUnknown_085EB0F4
	movs r1, 0x49
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x6
	bl PrintTextOnWindow
	ldrb r0, [r4]
	ldr r2, =gUnknown_085EB0F9
	movs r1, 0x59
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x6
	bl PrintTextOnWindow
	ldrb r0, [r4]
	ldr r2, =gUnknown_085EB0FF
	movs r1, 0x69
	str r1, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0x6
	bl PrintTextOnWindow
	movs r1, 0
_081A314A:
	movs r5, 0
	adds r0, r1, 0x1
	mov r8, r0
	lsls r0, r1, 28
	movs r2, 0xA4
	lsls r2, 22
	adds r0, r2
	lsrs r7, r0, 24
	lsls r4, r1, 3
_081A315C:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000624
	adds r0, r1
	adds r0, r4
	ldrh r1, [r0]
	mov r0, r9
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r6, =gUnknown_0203AB74
	ldrb r0, [r6]
	movs r1, 0x26
	adds r3, r5, 0
	muls r3, r1
	adds r3, 0x40
	lsls r3, 24
	lsrs r3, 24
	str r7, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	movs r1, 0
	str r1, [sp, 0x8]
	movs r1, 0x1
	mov r2, r9
	bl PrintTextOnWindow
	adds r4, 0x2
	adds r5, 0x1
	cmp r5, 0x3
	ble _081A315C
	mov r1, r8
	cmp r1, 0x4
	ble _081A314A
	ldrb r0, [r6]
	bl PutWindowTilemap
	ldrb r0, [r6]
	movs r1, 0x3
	bl CopyWindowToVram
	add sp, 0xC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A2FF8

	thumb_func_start sub_81A31FC
sub_81A31FC: @ 81A31FC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r7, r0, 30
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	cmp r4, 0x6
	bls _081A3232
	b _081A35CE
_081A3232:
	lsls r0, r4, 2
	ldr r1, =_081A3250
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A3250:
	.4byte _081A326C
	.4byte _081A33A8
	.4byte _081A3414
	.4byte _081A347C
	.4byte _081A34CC
	.4byte _081A354C
	.4byte _081A3594
_081A326C:
	ldr r2, =gSaveBlock2Ptr
	mov r9, r2
	ldr r0, [r2]
	lsls r3, r7, 1
	mov r10, r3
	mov r2, r8
	lsls r1, r2, 2
	add r1, r10
	str r1, [sp, 0x20]
	movs r3, 0xCE
	lsls r3, 4
	adds r1, r0, r3
	ldr r2, [sp, 0x20]
	adds r1, r2
	adds r3, 0x10
	adds r0, r3
	adds r0, r2
	ldrh r1, [r1]
	ldrh r2, [r0]
	cmp r1, r2
	bhi _081A3298
	b _081A35CE
_081A3298:
	strh r1, [r0]
	mov r3, r8
	cmp r3, 0x3
	bne _081A32F2
	ldr r6, =gBattleScripting
	adds r6, 0x25
	ldrb r0, [r6]
	movs r4, 0x1
	eors r0, r4
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	ldr r5, =gLinkPlayers + 8
	adds r1, r5
	mov r0, sp
	bl StringCopy
	mov r0, sp
	bl StripExtCtrlCodes
	lsls r1, r7, 3
	ldr r0, =0x00000ee1
	adds r1, r0
	mov r2, r9
	ldr r0, [r2]
	adds r0, r1
	mov r1, sp
	bl StringCopy
	ldrb r0, [r6]
	eors r4, r0
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	subs r5, 0x4
	adds r0, r5
	ldr r0, [r0]
	lsls r2, r7, 2
	ldr r1, =0x00000ef1
	adds r2, r1
	mov r3, r9
	ldr r1, [r3]
	adds r1, r2
	bl WriteUnalignedWord
_081A32F2:
	mov r7, r9
	ldr r0, [r7]
	movs r1, 0xCE
	lsls r1, 4
	adds r0, r1
	ldr r2, [sp, 0x20]
	adds r0, r2
	ldrh r0, [r0]
	cmp r0, 0x1
	bhi _081A3308
	b _081A35CE
_081A3308:
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	bne _081A3314
	b _081A35CE
_081A3314:
	mov r3, r8
	cmp r3, 0x1
	beq _081A335A
	cmp r3, 0x1
	bgt _081A3338
	cmp r3, 0
	beq _081A3344
	b _081A35CE
	.pool
_081A3338:
	mov r7, r8
	cmp r7, 0x2
	beq _081A3374
	cmp r7, 0x3
	beq _081A338E
	b _081A35CE
_081A3344:
	mov r1, r9
	ldr r0, [r1]
	movs r2, 0xCE
	lsls r2, 4
	adds r0, r2
	add r0, r10
	ldrh r0, [r0]
	movs r1, 0x1
	bl sub_80EE8C8
	b _081A35CE
_081A335A:
	mov r3, r9
	ldr r0, [r3]
	mov r1, r10
	adds r1, 0x4
	movs r7, 0xCE
	lsls r7, 4
	adds r0, r7
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x2
	bl sub_80EE8C8
	b _081A35CE
_081A3374:
	mov r1, r9
	ldr r0, [r1]
	mov r1, r10
	adds r1, 0x8
	movs r2, 0xCE
	lsls r2, 4
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x3
	bl sub_80EE8C8
	b _081A35CE
_081A338E:
	mov r3, r9
	ldr r0, [r3]
	mov r1, r10
	adds r1, 0xC
	movs r7, 0xCE
	lsls r7, 4
	adds r0, r7
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x4
	bl sub_80EE8C8
	b _081A35CE
_081A33A8:
	ldr r6, =gSaveBlock2Ptr
	ldr r0, [r6]
	lsls r7, 1
	mov r2, r8
	lsls r1, r2, 2
	adds r4, r7, r1
	ldr r5, =0x00000d0c
	adds r1, r0, r5
	adds r1, r4
	ldr r3, =0x00000d14
	adds r0, r3
	adds r0, r4
	ldrh r2, [r1]
	ldrh r3, [r0]
	cmp r2, r3
	bhi _081A33CA
	b _081A35CE
_081A33CA:
	strh r2, [r0]
	ldrh r0, [r1]
	cmp r0, 0x1
	bhi _081A33D4
	b _081A35CE
_081A33D4:
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	bne _081A33E0
	b _081A35CE
_081A33E0:
	mov r0, r8
	cmp r0, 0
	bne _081A3404
	ldr r0, [r6]
	adds r0, r5
	adds r0, r7
	ldrh r0, [r0]
	movs r1, 0x5
	bl sub_80EE8C8
	b _081A35CE
	.pool
_081A3404:
	ldr r0, [r6]
	adds r0, r5
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0x6
	bl sub_80EE8C8
	b _081A35CE
_081A3414:
	ldr r6, =gSaveBlock2Ptr
	ldr r0, [r6]
	lsls r7, 1
	mov r2, r8
	lsls r1, r2, 2
	adds r4, r7, r1
	ldr r5, =0x00000dc8
	adds r1, r0, r5
	adds r1, r4
	movs r3, 0xDD
	lsls r3, 4
	adds r0, r3
	adds r0, r4
	ldrh r2, [r1]
	ldrh r3, [r0]
	cmp r2, r3
	bhi _081A3438
	b _081A35CE
_081A3438:
	strh r2, [r0]
	ldrh r0, [r1]
	cmp r0, 0x1
	bhi _081A3442
	b _081A35CE
_081A3442:
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	bne _081A344E
	b _081A35CE
_081A344E:
	mov r0, r8
	cmp r0, 0
	bne _081A346C
	ldr r0, [r6]
	adds r0, r5
	adds r0, r7
	ldrh r0, [r0]
	movs r1, 0xB
	bl sub_80EE8C8
	b _081A35CE
	.pool
_081A346C:
	ldr r0, [r6]
	adds r0, r5
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0xC
	bl sub_80EE8C8
	b _081A35CE
_081A347C:
	ldr r6, =gSaveBlock2Ptr
	ldr r1, [r6]
	lsls r4, r7, 1
	ldr r5, =0x00000dda
	adds r0, r1, r5
	adds r0, r4
	ldr r2, =0x00000dde
	adds r1, r2
	adds r1, r4
	ldrh r2, [r0]
	ldrh r3, [r1]
	cmp r2, r3
	bhi _081A3498
	b _081A35CE
_081A3498:
	strh r2, [r1]
	ldrh r0, [r0]
	cmp r0, 0x1
	bhi _081A34A2
	b _081A35CE
_081A34A2:
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	bne _081A34AE
	b _081A35CE
_081A34AE:
	ldr r0, [r6]
	adds r0, r5
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0xA
	bl sub_80EE8C8
	b _081A35CE
	.pool
_081A34CC:
	ldr r6, =gSaveBlock2Ptr
	ldr r2, [r6]
	lsls r7, 1
	mov r9, r7
	mov r7, r8
	lsls r0, r7, 2
	mov r1, r9
	adds r4, r1, r0
	ldr r5, =0x00000de2
	adds r0, r2, r5
	adds r3, r0, r4
	ldr r7, =0x00000dea
	adds r0, r2, r7
	adds r0, r4
	ldrh r1, [r3]
	ldrh r7, [r0]
	cmp r1, r7
	bls _081A35CE
	strh r1, [r0]
	ldr r0, =0x00000dfa
	adds r1, r2, r0
	adds r1, r4
	ldr r7, =0x00000df2
	adds r0, r2, r7
	adds r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	ldrh r0, [r3]
	cmp r0, 0x1
	bls _081A35CE
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	beq _081A35CE
	mov r0, r8
	cmp r0, 0
	bne _081A353C
	ldr r0, [r6]
	adds r0, r5
	add r0, r9
	ldrh r0, [r0]
	movs r1, 0x7
	bl sub_80EE8C8
	b _081A35CE
	.pool
_081A353C:
	ldr r0, [r6]
	adds r0, r5
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0x8
	bl sub_80EE8C8
	b _081A35CE
_081A354C:
	ldr r6, =gSaveBlock2Ptr
	ldr r1, [r6]
	lsls r4, r7, 1
	ldr r5, =0x00000e04
	adds r0, r1, r5
	adds r0, r4
	ldr r2, =0x00000e08
	adds r1, r2
	adds r1, r4
	ldrh r2, [r0]
	ldrh r3, [r1]
	cmp r2, r3
	bls _081A35CE
	strh r2, [r1]
	ldrh r0, [r0]
	cmp r0, 0x1
	bls _081A35CE
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	beq _081A35CE
	ldr r0, [r6]
	adds r0, r5
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0x9
	bl sub_80EE8C8
	b _081A35CE
	.pool
_081A3594:
	ldr r6, =gSaveBlock2Ptr
	ldr r1, [r6]
	lsls r4, r7, 1
	ldr r5, =0x00000e1a
	adds r0, r1, r5
	adds r0, r4
	ldr r7, =0x00000e1e
	adds r1, r7
	adds r1, r4
	ldrh r2, [r0]
	ldrh r3, [r1]
	cmp r2, r3
	bls _081A35CE
	strh r2, [r1]
	ldrh r0, [r0]
	cmp r0, 0x1
	bls _081A35CE
	bl sub_80EE818
	lsls r0, 24
	cmp r0, 0
	beq _081A35CE
	ldr r0, [r6]
	adds r0, r5
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0xD
	bl sub_80EE8C8
_081A35CE:
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A31FC

	thumb_func_start sub_81A35EC
sub_81A35EC: @ 81A35EC
	push {r4,lr}
	ldr r0, =0x000040cf
	bl VarGet
	ldr r4, =gScriptResult
	bl sub_81A3610
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A35EC

	thumb_func_start sub_81A3610
sub_81A3610: @ 81A3610
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r0, 0
	mov r8, r0
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, =0x000040ce
	bl VarGet
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	bl sub_81A39C4
	lsls r0, 16
	ldr r1, =gUnknown_08611550
	mov r9, r1
	lsls r7, r6, 2
	adds r1, 0x3
	adds r1, r7, r1
	lsrs r0, 16
	ldrb r1, [r1]
	adds r5, r0, r1
	cmp r4, 0
	beq _081A365C
	movs r0, 0
	b _081A36C2
	.pool
_081A365C:
	lsls r0, r6, 24
	lsrs r0, 24
	bl sub_81A3B30
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	blt _081A3680
	cmp r1, 0x1
	bgt _081A3680
	adds r0, r1, r7
	add r0, r9
	ldrb r0, [r0]
	cmp r5, r0
	bne _081A36BC
	adds r1, 0x1
	mov r8, r1
	b _081A36BC
_081A3680:
	ldr r1, =gUnknown_08611550
	lsls r2, r6, 2
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r5, r0
	bne _081A3694
	movs r0, 0x3
	b _081A36BA
	.pool
_081A3694:
	adds r0, r1, 0x1
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r5, r0
	bne _081A36A4
	movs r1, 0x4
	mov r8, r1
	b _081A36BC
_081A36A4:
	cmp r5, r0
	ble _081A36BC
	subs r0, r5, r0
	adds r1, 0x2
	adds r1, r2, r1
	ldrb r1, [r1]
	bl __modsi3
	cmp r0, 0
	bne _081A36BC
	movs r0, 0x4
_081A36BA:
	mov r8, r0
_081A36BC:
	mov r1, r8
	lsls r0, r1, 24
	lsrs r0, 24
_081A36C2:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81A3610

	thumb_func_start sub_81A36D0
sub_81A36D0: @ 81A36D0
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	adds r2, r0, 0
	lsls r1, 16
	lsrs r3, r1, 16
	cmp r0, 0x1
	beq _081A3766
	cmp r0, 0x1
	bgt _081A36EA
	cmp r0, 0
	beq _081A36F2
	b _081A38F8
_081A36EA:
	cmp r2, 0x2
	bne _081A36F0
	b _081A3818
_081A36F0:
	b _081A38F8
_081A36F2:
	movs r0, 0xFA
	lsls r0, 1
	cmp r3, r0
	bne _081A370C
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000bfc
	b _081A38C4
	.pool
_081A370C:
	ldr r0, =0x000003fe
	cmp r3, r0
	beq _081A3786
	ldr r0, =0x0000012b
	cmp r3, r0
	bhi _081A3738
	ldr r2, =gUnknown_0203BC88
	movs r0, 0x34
	adds r1, r3, 0
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0xC
	bl ConvertBattleFrontierTrainerSpeechToString
	b _081A38F8
	.pool
_081A3738:
	ldr r0, =0x0000018f
	cmp r3, r0
	bhi _081A3758
	ldr r1, =gSaveBlock2Ptr
	movs r0, 0xEC
	muls r0, r3
	ldr r1, [r1]
	adds r0, r1
	ldr r1, =0xfffef2b8
	b _081A38C4
	.pool
_081A3758:
	adds r0, r3, 0
	adds r0, 0x70
	lsls r0, 24
	lsrs r0, 24
	bl sub_819F99C
	b _081A38F8
_081A3766:
	movs r0, 0xFA
	lsls r0, 1
	cmp r3, r0
	bne _081A3780
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000c08
	b _081A38C4
	.pool
_081A3780:
	ldr r0, =0x000003fe
	cmp r3, r0
	bne _081A3794
_081A3786:
	movs r0, 0
	bl sub_81A51A8
	b _081A38F8
	.pool
_081A3794:
	ldr r0, =0x0000012b
	cmp r3, r0
	bhi _081A37B8
	ldr r2, =gUnknown_0203BC88
	movs r0, 0x34
	adds r1, r3, 0
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0x18
	bl ConvertBattleFrontierTrainerSpeechToString
	b _081A38F8
	.pool
_081A37B8:
	ldr r0, =0x0000018f
	cmp r3, r0
	bhi _081A37EC
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	bne _081A387C
	ldr r1, =gSaveBlock2Ptr
	movs r0, 0xEC
	muls r0, r3
	ldr r1, [r1]
	adds r0, r1
	ldr r1, =0xfffef2c4
	b _081A38C4
	.pool
_081A37EC:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	bne _081A387C
	ldr r1, =gSaveBlock2Ptr
	lsls r0, r3, 4
	adds r0, r3
	lsls r0, 2
	ldr r1, [r1]
	adds r0, r1
	ldr r1, =0xffff96c4
	b _081A38C4
	.pool
_081A3818:
	movs r0, 0xFA
	lsls r0, 1
	cmp r3, r0
	bne _081A3830
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000c14
	b _081A38C4
	.pool
_081A3830:
	ldr r0, =0x000003fe
	cmp r3, r0
	bne _081A3844
	movs r0, 0x1
	bl sub_81A51A8
	b _081A38F8
	.pool
_081A3844:
	ldr r0, =0x0000012b
	cmp r3, r0
	bhi _081A3868
	ldr r2, =gUnknown_0203BC88
	movs r0, 0x34
	adds r1, r3, 0
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0x24
	bl ConvertBattleFrontierTrainerSpeechToString
	b _081A38F8
	.pool
_081A3868:
	ldr r0, =0x0000018f
	cmp r3, r0
	bhi _081A38A8
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _081A3890
_081A387C:
	bl sub_81864E0
	bl ConvertBattleFrontierTrainerSpeechToString
	b _081A38F8
	.pool
_081A3890:
	ldr r1, =gSaveBlock2Ptr
	movs r0, 0xEC
	muls r0, r3
	ldr r1, [r1]
	adds r0, r1
	ldr r1, =0xfffef2d0
	b _081A38C4
	.pool
_081A38A8:
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _081A38D4
	bl sub_81864A8
	lsls r0, 24
	lsrs r3, r0, 24
	movs r0, 0x58
	muls r0, r3
	ldr r1, =gUnknown_086109BA
_081A38C4:
	adds r0, r1
	bl ConvertBattleFrontierTrainerSpeechToString
	b _081A38F8
	.pool
_081A38D4:
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0xfffffe70
	adds r2, r3, r0
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r1, r0
	adds r1, 0xDC
	ldrb r0, [r1]
	lsls r0, 27
	lsrs r3, r0, 27
	movs r0, 0x58
	muls r0, r3
	ldr r1, =gUnknown_086109BA
	adds r0, r1
	bl ConvertBattleFrontierTrainerSpeechToString
_081A38F8:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A36D0

	thumb_func_start sub_81A3908
sub_81A3908: @ 81A3908
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, =0x00000cdc
	adds r1, r2
	movs r2, 0
	str r2, [r1]
	movs r4, 0
	mov r9, r0
	mov r8, r9
	movs r6, 0
_081A3926:
	movs r5, 0
	lsls r7, r4, 2
	mov r10, r7
	adds r0, r4, 0x1
	mov r12, r0
_081A3930:
	mov r1, r8
	ldr r2, [r1]
	lsls r3, r5, 1
	mov r7, r10
	adds r1, r3, r7
	movs r7, 0xCE
	lsls r7, 4
	adds r0, r2, r7
	adds r0, r1
	strh r6, [r0]
	cmp r4, 0x1
	bgt _081A3960
	adds r7, 0x2C
	adds r0, r2, r7
	adds r0, r1
	strh r6, [r0]
	adds r7, 0xBC
	adds r0, r2, r7
	adds r0, r1
	strh r6, [r0]
	adds r7, 0x1A
	adds r0, r2, r7
	adds r0, r1
	strh r6, [r0]
_081A3960:
	cmp r4, 0
	bne _081A3980
	mov r1, r8
	ldr r0, [r1]
	ldr r2, =0x00000dda
	adds r1, r0, r2
	adds r1, r3
	strh r4, [r1]
	ldr r7, =0x00000e04
	adds r1, r0, r7
	adds r1, r3
	strh r4, [r1]
	ldr r1, =0x00000e1a
	adds r0, r1
	adds r0, r3
	strh r4, [r0]
_081A3980:
	adds r5, 0x1
	cmp r5, 0x1
	ble _081A3930
	mov r4, r12
	cmp r4, 0x3
	ble _081A3926
	mov r2, r9
	ldr r0, [r2]
	ldr r7, =0x00000ca8
	adds r1, r0, r7
	ldrb r0, [r1]
	cmp r0, 0
	beq _081A399E
	movs r0, 0x1
	strb r0, [r1]
_081A399E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3908

	thumb_func_start sub_81A39C4
sub_81A39C4: @ 81A39C4
	push {r4,r5,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r4, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x6
	bhi _081A3AC4
	lsls r0, 2
	ldr r1, =_081A3A0C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A3A0C:
	.4byte _081A3A28
	.4byte _081A3A3C
	.4byte _081A3A54
	.4byte _081A3A6C
	.4byte _081A3A80
	.4byte _081A3A98
	.4byte _081A3AAC
_081A3A28:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r5, 2
	adds r1, r2
	movs r2, 0xCE
	lsls r2, 4
	b _081A3AB4
	.pool
_081A3A3C:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r5, 2
	adds r1, r2
	ldr r2, =0x00000d0c
	b _081A3AB4
	.pool
_081A3A54:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r5, 2
	adds r1, r2
	ldr r2, =0x00000dc8
	b _081A3AB4
	.pool
_081A3A6C:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000dda
	b _081A3AB4
	.pool
_081A3A80:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r5, 2
	adds r1, r2
	ldr r2, =0x00000de2
	b _081A3AB4
	.pool
_081A3A98:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000e04
	b _081A3AB4
	.pool
_081A3AAC:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000e1a
_081A3AB4:
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	b _081A3AC6
	.pool
_081A3AC4:
	movs r0, 0
_081A3AC6:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81A39C4

	thumb_func_start sub_81A3ACC
sub_81A3ACC: @ 81A3ACC
	push {r4,r5,lr}
	movs r2, 0
	ldr r5, =gSaveBlock2Ptr
	ldr r4, =0x00000cb4
	ldr r0, =0x0000ffff
	adds r3, r0, 0
_081A3AD8:
	ldr r0, [r5]
	lsls r1, r2, 1
	adds r0, r4
	adds r0, r1
	ldrh r1, [r0]
	orrs r1, r3
	strh r1, [r0]
	adds r2, 0x1
	cmp r2, 0x13
	ble _081A3AD8
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3ACC

	thumb_func_start sub_81A3B00
sub_81A3B00: @ 81A3B00
	push {lr}
	ldr r0, =gTrainerBattleOpponent_A
	ldrh r1, [r0]
	ldr r0, =0x000003fe
	cmp r1, r0
	bne _081A3B20
	ldr r1, =gScriptResult
	movs r0, 0x1
	b _081A3B24
	.pool
_081A3B20:
	ldr r1, =gScriptResult
	movs r0, 0
_081A3B24:
	strh r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3B00

	thumb_func_start sub_81A3B30
sub_81A3B30: @ 81A3B30
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 23
	ldr r1, =0x000008c4
	adds r0, r4, r1
	bl FlagGet
	adds r5, r0, 0
	ldr r0, =0x000008c5
	adds r4, r0
	adds r0, r4, 0
	bl FlagGet
	adds r5, r0
	lsls r5, 24
	lsrs r5, 24
	adds r0, r5, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A3B30

	thumb_func_start sub_81A3B64
sub_81A3B64: @ 81A3B64
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	movs r5, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r4, r0, 30
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r6, r0, 16
	cmp r7, 0x6
	bhi _081A3C78
	lsls r0, r7, 2
	ldr r1, =_081A3BB4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A3BB4:
	.4byte _081A3BD0
	.4byte _081A3BE4
	.4byte _081A3C00
	.4byte _081A3C18
	.4byte _081A3C2C
	.4byte _081A3C44
	.4byte _081A3C60
_081A3BD0:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r6, 2
	adds r1, r2
	movs r2, 0xCE
	lsls r2, 4
	b _081A3C68
	.pool
_081A3BE4:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r6, 2
	adds r1, r2
	ldr r2, =0x00000d0c
	adds r0, r2
	adds r0, r1
	ldrh r5, [r0]
	b _081A3C78
	.pool
_081A3C00:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r6, 2
	adds r1, r2
	ldr r2, =0x00000dc8
	b _081A3C68
	.pool
_081A3C18:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000dda
	b _081A3C68
	.pool
_081A3C2C:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	lsls r2, r6, 2
	adds r1, r2
	ldr r2, =0x00000de2
	b _081A3C68
	.pool
_081A3C44:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000e04
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0xE
	b _081A3C70
	.pool
_081A3C60:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000e1a
_081A3C68:
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x7
_081A3C70:
	bl __udivsi3
	lsls r0, 16
	lsrs r5, r0, 16
_081A3C78:
	cmp r5, 0
	beq _081A3C7E
	subs r5, 0x1
_081A3C7E:
	cmp r5, 0x1D
	bls _081A3C84
	movs r5, 0x1D
_081A3C84:
	ldr r2, =gUnknown_086118B4
	lsls r1, r7, 2
	adds r1, r6, r1
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	adds r1, r0
	adds r7, r1, r2
	ldrb r5, [r7]
	ldr r0, =gTrainerBattleOpponent_A
	mov r9, r0
	ldrh r0, [r0]
	ldr r1, =0x000003fe
	mov r8, r1
	cmp r0, r8
	bne _081A3CA6
	adds r5, 0xA
_081A3CA6:
	ldr r6, =gSaveBlock2Ptr
	ldr r1, [r6]
	ldr r4, =0x00000eb8
	adds r1, r4
	ldrh r0, [r1]
	adds r0, r5
	strh r0, [r1]
	ldr r0, =gStringVar1
	adds r1, r5, 0
	movs r2, 0
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	ldr r0, [r6]
	adds r2, r0, r4
	ldrh r0, [r2]
	ldr r1, =0x0000270f
	cmp r0, r1
	bls _081A3CCE
	strh r1, [r2]
_081A3CCE:
	ldr r0, [r6]
	ldr r4, =0x00000eba
	adds r0, r4
	ldrh r5, [r0]
	ldrb r0, [r7]
	adds r5, r0
	bl sub_80EED60
	mov r2, r9
	ldrh r0, [r2]
	cmp r0, r8
	bne _081A3CEE
	adds r5, 0xA
	movs r0, 0xA
	bl sub_80EED60
_081A3CEE:
	ldr r0, =0x0000ffff
	cmp r5, r0
	ble _081A3CF6
	adds r5, r0, 0
_081A3CF6:
	ldr r0, [r6]
	adds r0, r4
	strh r5, [r0]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3B64

	thumb_func_start sub_81A3D30
sub_81A3D30: @ 81A3D30
	push {r4,lr}
	ldr r0, =0x000040cf
	bl VarGet
	ldr r4, =gScriptResult
	lsls r0, 24
	lsrs r0, 24
	bl sub_81A3B30
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3D30

	thumb_func_start sub_81A3D58
sub_81A3D58: @ 81A3D58
	push {r4,lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r4, r0, 16
	lsls r0, r4, 24
	lsrs r0, 24
	bl sub_81A3B30
	lsls r0, 24
	cmp r0, 0
	bne _081A3D88
	lsls r0, r4, 17
	ldr r1, =0x8C4 << 16
	adds r0, r1
	lsrs r0, 16
	bl FlagSet
	b _081A3D94
	.pool
_081A3D88:
	lsls r0, r4, 17
	ldr r1, =0x8C5 << 16
	adds r0, r1
	lsrs r0, 16
	bl FlagSet
_081A3D94:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3D58

	thumb_func_start sub_81A3DA0
sub_81A3DA0: @ 81A3DA0
	push {lr}
	ldr r0, =gBattleTypeFlags
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, [r0]
	ands r2, r1
	cmp r2, 0
	beq _081A3DC4
	ldr r1, =gScriptResult
	movs r0, 0x1
	strh r0, [r1]
	b _081A3DC8
	.pool
_081A3DC4:
	ldr r0, =gScriptResult
	strh r2, [r0]
_081A3DC8:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3DA0

	thumb_func_start sub_81A3DD0
sub_81A3DD0: @ 81A3DD0
	push {r4-r6,lr}
	adds r5, r2, 0
	lsls r0, 16
	lsrs r6, r0, 16
	lsls r1, 24
	lsrs r4, r1, 24
	adds r0, r6, 0
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	bl pokedex_flag_operation
	lsls r0, 24
	cmp r0, 0
	beq _081A3ED6
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	subs r0, r4, 0x1
	cmp r0, 0xA
	bhi _081A3EA0
	lsls r0, 2
	ldr r1, =_081A3E0C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A3E0C:
	.4byte _081A3E38
	.4byte _081A3E68
	.4byte _081A3E38
	.4byte _081A3EA0
	.4byte _081A3E38
	.4byte _081A3EA0
	.4byte _081A3E38
	.4byte _081A3EA0
	.4byte _081A3E38
	.4byte _081A3EA0
	.4byte _081A3E38
_081A3E38:
	cmp r5, r4
	bne _081A3E50
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB79
	bl StringAppend
	b _081A3EC8
	.pool
_081A3E50:
	cmp r5, r4
	ble _081A3EC8
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB7F
	bl StringAppend
	b _081A3EC8
	.pool
_081A3E68:
	cmp r4, r5
	bne _081A3E80
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB79
	bl StringAppend
	b _081A3E88
	.pool
_081A3E80:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB7F
	bl StringAppend
_081A3E88:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB86
	bl StringAppend
	b _081A3EC8
	.pool
_081A3EA0:
	cmp r4, r5
	bne _081A3EB8
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB79
	bl StringAppend
	b _081A3EC0
	.pool
_081A3EB8:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB7F
	bl StringAppend
_081A3EC0:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB84
	bl StringAppend
_081A3EC8:
	ldr r0, =gStringVar1
	movs r1, 0xB
	muls r1, r6
	ldr r2, =gSpeciesNames
	adds r1, r2
	bl StringAppend
_081A3ED6:
	adds r0, r4, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A3DD0

	thumb_func_start sub_81A3EF0
sub_81A3EF0: @ 81A3EF0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, [sp, 0x20]
	ldr r4, [sp, 0x24]
	mov r9, r4
	ldr r4, [sp, 0x28]
	mov r10, r4
	ldr r7, [sp, 0x2C]
	lsls r0, 16
	lsrs r4, r0, 16
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r3, 24
	lsrs r3, 24
	mov r12, r3
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	movs r2, 0
	movs r0, 0xCE
	lsls r0, 1
	cmp r4, r0
	beq _081A3FBE
	cmp r4, 0
	beq _081A3FBE
	ldr r0, =gUnknown_08611C9A
	ldrh r1, [r0]
	ldr r5, =0x0000ffff
	adds r3, r0, 0
	cmp r1, r5
	beq _081A3F54
	cmp r1, r4
	beq _081A3F48
	adds r1, r3, 0
_081A3F3A:
	adds r1, 0x2
	adds r2, 0x1
	ldrh r0, [r1]
	cmp r0, r5
	beq _081A3F54
	cmp r0, r4
	bne _081A3F3A
_081A3F48:
	lsls r0, r2, 1
	adds r0, r3
	ldrh r1, [r0]
	ldr r0, =0x0000ffff
	cmp r1, r0
	bne _081A3FBE
_081A3F54:
	mov r0, r12
	cmp r0, 0
	bne _081A3F60
	mov r1, r8
	cmp r1, 0x32
	bhi _081A3FBE
_081A3F60:
	movs r2, 0
	ldrb r3, [r7]
	cmp r2, r3
	bge _081A3F80
	mov r1, r9
	ldrh r0, [r1]
	cmp r0, r4
	beq _081A3F80
	adds r5, r3, 0
_081A3F72:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, r5
	bge _081A3F80
	ldrh r0, [r1]
	cmp r0, r4
	bne _081A3F72
_081A3F80:
	cmp r2, r3
	bne _081A3FBE
	cmp r6, 0
	beq _081A3FAA
	movs r2, 0
	cmp r2, r3
	bge _081A3FA6
	mov r1, r10
	ldrh r0, [r1]
	cmp r0, r6
	beq _081A3FA6
	adds r5, r3, 0
_081A3F98:
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, r5
	bge _081A3FA6
	ldrh r0, [r1]
	cmp r0, r6
	bne _081A3F98
_081A3FA6:
	cmp r2, r3
	bne _081A3FBE
_081A3FAA:
	lsls r0, r3, 1
	add r0, r9
	strh r4, [r0]
	ldrb r0, [r7]
	lsls r0, 1
	add r0, r10
	strh r6, [r0]
	ldrb r0, [r7]
	adds r0, 0x1
	strb r0, [r7]
_081A3FBE:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3EF0

	thumb_func_start sub_81A3FD4
sub_81A3FD4: @ 81A3FD4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x34
	movs r0, 0
	str r0, [sp, 0x2C]
	add r4, sp, 0x28
	strb r0, [r4]
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	mov r10, r4
	cmp r0, 0x1
	beq _081A4016
	cmp r0, 0x1
	bgt _081A4008
	cmp r0, 0
	beq _081A4010
	b _081A402A
	.pool
_081A4008:
	cmp r0, 0x3
	bgt _081A402A
	movs r0, 0x2
	b _081A4028
_081A4010:
	movs r1, 0x3
	str r1, [sp, 0x2C]
	b _081A402A
_081A4016:
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	movs r1, 0x3
	str r1, [sp, 0x2C]
	cmp r0, 0
	bne _081A402A
	movs r0, 0x4
_081A4028:
	str r0, [sp, 0x2C]
_081A402A:
	movs r1, 0
	mov r9, r1
	b _081A4040
	.pool
_081A4034:
	mov r1, r10
	ldrb r0, [r1]
	ldr r1, [sp, 0x2C]
	cmp r0, r1
	blt _081A4040
	b _081A41E0
_081A4040:
	mov r5, r9
	movs r0, 0
	mov r1, r10
	strb r0, [r1]
	mov r0, r9
	adds r0, 0x1
	str r0, [sp, 0x30]
_081A404E:
	movs r0, 0x64
	adds r4, r5, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	adds r0, r4, 0
	movs r1, 0xC
	bl GetMonData
	lsls r0, 16
	lsrs r7, r0, 16
	adds r0, r4, 0
	movs r1, 0x38
	bl GetMonData
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x6
	bne _081A40C8
	cmp r7, 0
	bne _081A40E4
	ldr r0, =gScriptResult
	ldrb r3, [r0]
	str r6, [sp]
	add r1, sp, 0x10
	str r1, [sp, 0x4]
	add r0, sp, 0x1C
	str r0, [sp, 0x8]
	mov r0, r10
	str r0, [sp, 0xC]
	mov r0, r8
	movs r1, 0
	adds r2, r4, 0
	bl sub_81A3EF0
	b _081A40E4
	.pool
_081A40C8:
	ldr r0, =gScriptResult
	ldrb r3, [r0]
	str r6, [sp]
	add r1, sp, 0x10
	str r1, [sp, 0x4]
	add r0, sp, 0x1C
	str r0, [sp, 0x8]
	mov r0, r10
	str r0, [sp, 0xC]
	mov r0, r8
	adds r1, r7, 0
	adds r2, r4, 0
	bl sub_81A3EF0
_081A40E4:
	adds r5, 0x1
	cmp r5, 0x5
	ble _081A40EC
	movs r5, 0
_081A40EC:
	cmp r5, r9
	bne _081A404E
	ldr r1, [sp, 0x30]
	mov r9, r1
	cmp r1, 0x5
	ble _081A4034
	mov r1, r10
	ldrb r0, [r1]
	ldr r1, [sp, 0x2C]
	cmp r0, r1
	bge _081A41E0
	movs r6, 0
	ldr r0, =gUnknown_08611C9A
	ldrh r2, [r0]
	ldr r1, =0x0000ffff
	mov r8, r0
	cmp r2, r1
	beq _081A4134
	mov r4, r8
_081A4112:
	adds r0, r2, 0
	bl SpeciesToNationalPokedexNum
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	bl pokedex_flag_operation
	lsls r0, 24
	cmp r0, 0
	beq _081A412A
	adds r6, 0x1
_081A412A:
	adds r4, 0x2
	ldrh r2, [r4]
	ldr r0, =0x0000ffff
	cmp r2, r0
	bne _081A4112
_081A4134:
	ldr r1, =gStringVar1
	movs r0, 0xFF
	strb r0, [r1]
	ldr r1, =gSpecialVar_0x8004
	movs r0, 0x1
	strh r0, [r1]
	movs r0, 0
	mov r1, r10
	strb r0, [r1]
	mov r1, r8
	ldrh r0, [r1]
	ldr r1, =0x0000ffff
	cmp r0, r1
	beq _081A416A
	mov r5, r10
	adds r7, r1, 0
	mov r4, r8
_081A4156:
	ldrh r0, [r4]
	ldrb r1, [r5]
	adds r2, r6, 0
	bl sub_81A3DD0
	strb r0, [r5]
	adds r4, 0x2
	ldrh r0, [r4]
	cmp r0, r7
	bne _081A4156
_081A416A:
	mov r0, r10
	ldrb r4, [r0]
	cmp r4, 0
	bne _081A41A4
	ldr r4, =gStringVar1
	ldr r1, =gUnknown_085CCB82
	adds r0, r4, 0
	bl StringAppend
	ldr r1, =gUnknown_085CCB88
	adds r0, r4, 0
	bl StringAppend
	b _081A4202
	.pool
_081A41A4:
	movs r0, 0x1
	ands r0, r4
	cmp r0, 0
	beq _081A41C0
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB84
	bl StringAppend
	b _081A41C8
	.pool
_081A41C0:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB82
	bl StringAppend
_081A41C8:
	ldr r0, =gStringVar1
	ldr r1, =gUnknown_085CCB8C
	bl StringAppend
	b _081A4202
	.pool
_081A41E0:
	ldr r1, =gSpecialVar_0x8004
	movs r0, 0
	strh r0, [r1]
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gScriptResult
	ldrb r0, [r0]
	ldr r1, =0x00000ca9
	adds r2, r1
	movs r1, 0x3
	ands r1, r0
	ldrb r3, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_081A4202:
	add sp, 0x34
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A3FD4

	thumb_func_start sub_81A4224
sub_81A4224: @ 81A4224
	push {lr}
	bl sub_81652B4
	pop {r0}
	bx r0
	thumb_func_end sub_81A4224

	thumb_func_start sub_81A4230
sub_81A4230: @ 81A4230
	push {r4-r7,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r4, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x6
	bls _081A425A
	b _081A4394
_081A425A:
	lsls r0, 2
	ldr r1, =_081A4278
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A4278:
	.4byte _081A4294
	.4byte _081A42DC
	.4byte _081A431C
	.4byte _081A4338
	.4byte _081A434C
	.4byte _081A4368
	.4byte _081A437C
_081A4294:
	ldr r7, =gSaveBlock2Ptr
	ldr r0, [r7]
	lsls r4, 1
	lsls r1, r5, 2
	adds r1, r4, r1
	movs r6, 0xCE
	lsls r6, 4
	adds r3, r0, r6
	adds r2, r3, r1
	ldrh r1, [r2]
	ldr r0, =0x0000270e
	cmp r1, r0
	bhi _081A4394
	adds r0, r1, 0x1
	strh r0, [r2]
	cmp r5, 0
	bne _081A4394
	adds r0, r3, r4
	ldrh r1, [r0]
	movs r0, 0x20
	bl sav12_xor_set
	ldr r1, [r7]
	adds r0, r1, r6
	adds r0, r4
	ldrh r0, [r0]
	ldr r2, =0x00000d02
	adds r1, r2
	b _081A4392
	.pool
_081A42DC:
	ldr r6, =gSaveBlock2Ptr
	ldr r0, [r6]
	lsls r2, r4, 1
	lsls r1, r5, 2
	adds r1, r2, r1
	ldr r3, =0x00000d0c
	adds r0, r3
	adds r3, r0, r1
	ldrh r0, [r3]
	ldr r2, =0x0000270e
	cmp r0, r2
	bhi _081A42F8
	adds r0, 0x1
	strh r0, [r3]
_081A42F8:
	ldr r0, [r6]
	ldr r3, =0x00000d1c
	adds r0, r3
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, r2
	bhi _081A4394
	adds r0, 0x1
	b _081A4392
	.pool
_081A431C:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	lsls r0, r4, 1
	lsls r1, r5, 2
	adds r0, r1
	ldr r1, =0x00000dc8
	adds r2, r1
	adds r1, r2, r0
	b _081A4388
	.pool
_081A4338:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000dda
	adds r0, r2
	b _081A4386
	.pool
_081A434C:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	lsls r0, r4, 1
	lsls r1, r5, 2
	adds r0, r1
	ldr r3, =0x00000de2
	adds r2, r3
	adds r1, r2, r0
	b _081A4388
	.pool
_081A4368:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000e04
	adds r0, r2
	b _081A4386
	.pool
_081A437C:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r3, =0x00000e1a
	adds r0, r3
_081A4386:
	adds r1, r0, r1
_081A4388:
	ldrh r3, [r1]
	ldr r0, =0x0000270e
	cmp r3, r0
	bhi _081A4394
	adds r0, r3, 0x1
_081A4392:
	strh r0, [r1]
_081A4394:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4230

	thumb_func_start sub_81A43A8
sub_81A43A8: @ 81A43A8
	push {r4-r6,lr}
	sub sp, 0x4
	movs r4, 0
	ldr r6, =gSaveBlock1Ptr
	movs r5, 0x64
_081A43B2:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000caa
	adds r0, r2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, 0
	beq _081A43EE
	adds r1, r0, 0
	muls r1, r5
	movs r0, 0xEA
	lsls r0, 1
	adds r1, r0
	ldr r0, [r6]
	adds r0, r1
	movs r1, 0xC
	movs r2, 0
	bl GetMonData
	mov r1, sp
	strh r0, [r1]
	adds r0, r4, 0
	muls r0, r5
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xC
	mov r2, sp
	bl SetMonData
_081A43EE:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _081A43B2
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A43A8

	thumb_func_start sub_81A4410
sub_81A4410: @ 81A4410
	push {r4,lr}
	ldr r4, =gScriptResult
	bl sub_8185338
	strh r0, [r4]
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x8
	orrs r0, r2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4410

	thumb_func_start sub_81A443C
sub_81A443C: @ 81A443C
	push {lr}
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A4450
	cmp r0, 0x1
	beq _081A4464
	b _081A446E
	.pool
_081A4450:
	ldr r0, =gStringVar1
	ldr r1, =gTrainerBattleOpponent_A
	ldrh r1, [r1]
	bl sub_8162E20
	b _081A446E
	.pool
_081A4464:
	ldr r0, =gStringVar2
	ldr r1, =gTrainerBattleOpponent_A
	ldrh r1, [r1]
	bl sub_8162E20
_081A446E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A443C

	thumb_func_start sub_81A447C
sub_81A447C: @ 81A447C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r0, 0
	str r0, [sp]
_081A448C:
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, [sp]
	lsls r1, r2, 1
	ldr r4, =0x00000caa
	adds r0, r4
	adds r0, r1
	ldrh r0, [r0]
	subs r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	mov r9, r1
	adds r2, 0x1
	str r2, [sp, 0x4]
	cmp r0, 0x5
	bhi _081A454E
	movs r6, 0
	ldr r0, [sp]
	movs r2, 0x64
	adds r1, r0, 0
	muls r1, r2
	ldr r0, =gPlayerParty
	adds r7, r1, r0
_081A44BA:
	movs r5, 0
	movs r4, 0xD
	adds r4, r6
	mov r8, r4
	adds r0, r6, 0x1
	mov r10, r0
_081A44C6:
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000caa
	adds r0, r2
	add r0, r9
	ldrh r0, [r0]
	movs r4, 0x64
	adds r1, r0, 0
	muls r1, r4
	movs r0, 0xEA
	lsls r0, 1
	adds r1, r0
	ldr r2, =gSaveBlock1Ptr
	ldr r0, [r2]
	adds r0, r1
	adds r1, r5, 0
	adds r1, 0xD
	movs r2, 0
	bl GetMonData
	adds r4, r0, 0
	adds r0, r7, 0
	mov r1, r8
	movs r2, 0
	bl GetMonData
	cmp r4, r0
	beq _081A4508
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x3
	bls _081A44C6
_081A4508:
	cmp r5, 0x4
	bne _081A4516
	adds r0, r7, 0
	movs r1, 0xA6
	adds r2, r6, 0
	bl SetMonMoveSlot
_081A4516:
	mov r4, r10
	lsls r0, r4, 24
	lsrs r6, r0, 24
	cmp r6, 0x3
	bls _081A44BA
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =gSaveBlock2Ptr
	ldr r1, [r2]
	ldr r4, =0x00000caa
	adds r1, r4
	add r1, r9
	ldrh r1, [r1]
	subs r1, 0x1
	movs r3, 0x64
	muls r1, r3
	adds r0, r1
	movs r1, 0x8E
	lsls r1, 2
	adds r0, r1
	ldr r2, =gPlayerParty
	ldr r4, [sp]
	adds r1, r4, 0
	muls r1, r3
	adds r1, r2
	movs r2, 0x64
	bl memcpy
_081A454E:
	ldr r1, [sp, 0x4]
	lsls r0, r1, 24
	lsrs r0, 24
	str r0, [sp]
	cmp r0, 0x3
	bls _081A448C
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A447C

	thumb_func_start sub_81A457C
sub_81A457C: @ 81A457C
	push {lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 24
	lsrs r0, 24
	bl sub_81A5030
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A457C

	thumb_func_start sub_81A4594
sub_81A4594: @ 81A4594
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x2C
	mov r8, r1
	adds r6, r3, 0
	ldr r1, =gUnknown_0203AB74
	ldrb r5, [r1]
	lsls r4, r0, 1
	adds r4, r0
	ldr r1, =gUnknown_085EE424
	adds r4, r1
	mov r1, r8
	lsls r3, r1, 27
	lsrs r3, 24
	lsls r1, r0, 2
	adds r1, r0
	adds r2, r1
	lsls r2, 3
	adds r2, 0x1
	lsls r2, 24
	lsrs r7, r2, 24
	str r7, [sp]
	movs r0, 0xFF
	mov r10, r0
	str r0, [sp, 0x4]
	movs r1, 0
	mov r9, r1
	str r1, [sp, 0x8]
	adds r0, r5, 0
	movs r1, 0x1
	adds r2, r4, 0
	bl PrintTextOnWindow
	movs r0, 0xFF
	strb r0, [r6, 0xD]
	ldrh r0, [r6, 0x4]
	cmp r0, 0
	beq _081A465C
	adds r1, r6, 0x6
	ldrb r2, [r6, 0xE]
	add r0, sp, 0xC
	bl sub_81DB5E8
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	mov r3, r8
	adds r3, 0x2
	lsls r3, 27
	lsrs r3, 24
	str r7, [sp]
	mov r1, r10
	str r1, [sp, 0x4]
	mov r1, r9
	str r1, [sp, 0x8]
	movs r1, 0x1
	add r2, sp, 0xC
	bl PrintTextOnWindow
	ldrh r1, [r6, 0x4]
	ldr r0, =0x0000270f
	cmp r1, r0
	bls _081A4618
	adds r1, r0, 0
_081A4618:
	ldr r0, =gStringVar2
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r5, =gStringVar4
	ldr r1, =gUnknown_08611D08
	ldr r0, [sp, 0x4C]
	lsls r0, 2
	adds r0, r1
	ldr r4, [r0]
	adds r0, r5, 0
	adds r1, r4, 0
	bl StringExpandPlaceholders
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0xC8
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	str r7, [sp]
	mov r1, r10
	str r1, [sp, 0x4]
	mov r1, r9
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r5, 0
	bl PrintTextOnWindow
_081A465C:
	add sp, 0x2C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4594

	thumb_func_start sub_81A4684
sub_81A4684: @ 81A4684
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x2C
	adds r6, r0, 0
	adds r7, r1, 0
	mov r10, r2
	adds r5, r3, 0
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	lsls r2, r6, 1
	adds r2, r6
	ldr r1, =gUnknown_085EE424
	adds r2, r1
	lsls r3, r7, 27
	lsrs r3, 24
	mov r12, r3
	lsls r1, r6, 2
	adds r1, r6
	mov r3, r10
	adds r4, r3, r1
	lsls r1, r4, 3
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp]
	movs r1, 0xFF
	mov r9, r1
	str r1, [sp, 0x4]
	movs r3, 0
	mov r8, r3
	str r3, [sp, 0x8]
	movs r1, 0x1
	mov r3, r12
	bl PrintTextOnWindow
	ldrh r0, [r5, 0x8]
	cmp r0, 0
	beq _081A47BC
	movs r0, 0xFF
	strb r0, [r5, 0x11]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r5, 0x19]
	adds r1, r5, 0
	adds r1, 0xA
	ldrb r2, [r5, 0x1A]
	add r0, sp, 0xC
	bl sub_81DB5E8
	ldr r1, =gUnknown_0203AB74
	ldrb r0, [r1]
	adds r3, r7, 0x2
	lsls r3, 27
	lsrs r3, 24
	subs r1, r4, 0x1
	lsls r1, 3
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp]
	mov r2, r9
	str r2, [sp, 0x4]
	mov r1, r8
	str r1, [sp, 0x8]
	movs r1, 0x1
	add r2, sp, 0xC
	bl PrintTextOnWindow
	adds r4, r5, 0
	adds r4, 0x12
	adds r0, r4, 0
	bl sub_8009228
	cmp r0, 0
	beq _081A4734
	add r0, sp, 0xC
	adds r1, r4, 0
	movs r2, 0x1
	bl sub_81DB5E8
	b _081A473C
	.pool
_081A4734:
	add r0, sp, 0xC
	adds r1, r4, 0
	bl StringCopy
_081A473C:
	ldr r2, =gUnknown_0203AB74
	mov r9, r2
	ldrb r0, [r2]
	adds r3, r7, 0x4
	lsls r3, 27
	lsrs r3, 24
	lsls r1, r6, 2
	adds r1, r6
	mov r2, r10
	adds r6, r2, r1
	adds r1, r6, 0x1
	lsls r1, 3
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp]
	movs r1, 0xFF
	mov r8, r1
	str r1, [sp, 0x4]
	movs r7, 0
	str r7, [sp, 0x8]
	movs r1, 0x1
	add r2, sp, 0xC
	bl PrintTextOnWindow
	ldrh r1, [r5, 0x8]
	ldr r0, =0x0000270f
	cmp r1, r0
	bls _081A4778
	adds r1, r0, 0
_081A4778:
	ldr r0, =gStringVar2
	movs r2, 0x1
	movs r3, 0x4
	bl ConvertIntToDecimalStringN
	ldr r5, =gStringVar4
	ldr r0, =gUnknown_08611D08
	ldr r4, [r0, 0x24]
	adds r0, r5, 0
	adds r1, r4, 0
	bl StringExpandPlaceholders
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0xC8
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	mov r2, r9
	ldrb r0, [r2]
	lsls r1, r6, 3
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp]
	mov r1, r8
	str r1, [sp, 0x4]
	str r7, [sp, 0x8]
	movs r1, 0x1
	adds r2, r5, 0
	bl PrintTextOnWindow
_081A47BC:
	add sp, 0x2C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4684

	thumb_func_start sub_81A47E0
sub_81A47E0: @ 81A47E0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x44
	mov r9, r0
	mov r10, r1
	str r2, [sp, 0x40]
	movs r0, 0xAC
	lsls r0, 1
	bl AllocZeroed
	mov r8, r0
	bl sub_80E8260
	add r0, sp, 0x30
	mov r12, r0
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r3, [sp, 0x40]
	lsls r1, r3, 1
	adds r1, r3
	lsls r1, 4
	mov r4, r10
	lsls r0, r4, 1
	add r0, r10
	lsls r0, 5
	adds r1, r0
	adds r4, r1, r2
	mov r3, sp
	movs r2, 0x2
_081A4820:
	adds r0, r3, 0
	movs r5, 0x87
	lsls r5, 2
	adds r1, r4, r5
	ldm r1!, {r5-r7}
	stm r0!, {r5-r7}
	ldr r1, [r1]
	str r1, [r0]
	adds r4, 0x10
	adds r3, 0x10
	subs r2, 0x1
	cmp r2, 0
	bge _081A4820
	ldr r6, [sp, 0x40]
	lsls r0, r6, 4
	mov r7, r10
	lsls r1, r7, 5
	adds r0, r1
	mov r1, r12
	add r0, r8
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldr r0, [r0]
	str r0, [r1]
	movs r2, 0
_081A4852:
	movs r1, 0
	movs r4, 0
	movs r3, 0
	lsls r5, r2, 4
	adds r6, r2, 0x1
	mov r2, sp
_081A485E:
	ldrh r0, [r2, 0x4]
	cmp r0, r1
	ble _081A4868
	adds r4, r3, 0
	adds r1, r0, 0
_081A4868:
	adds r2, 0x10
	adds r3, 0x1
	cmp r3, 0x3
	ble _081A485E
	mov r0, sp
	ldrh r0, [r0, 0x34]
	cmp r0, r1
	blt _081A487A
	movs r4, 0x3
_081A487A:
	lsls r0, r4, 4
	mov r7, sp
	adds r2, r7, r0
	mov r0, r9
	adds r1, r5, r0
	adds r0, r2, 0
	ldm r0!, {r3-r5}
	stm r1!, {r3-r5}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, 0
	strh r0, [r2, 0x4]
	adds r2, r6, 0
	cmp r2, 0x2
	ble _081A4852
	mov r0, r8
	bl Free
	add sp, 0x44
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A47E0

	thumb_func_start sub_81A48B4
sub_81A48B4: @ 81A48B4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x74
	mov r9, r0
	mov r10, r1
	movs r0, 0xAC
	lsls r0, 1
	bl AllocZeroed
	mov r8, r0
	bl sub_80E8260
	mov r0, sp
	adds r0, 0x54
	str r0, [sp, 0x70]
	add r1, sp, 0x5C
	mov r12, r1
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	movs r0, 0x54
	mov r2, r10
	muls r2, r0
	adds r0, r2, 0
	adds r3, r0, r1
	mov r2, sp
	movs r4, 0x2
_081A48EE:
	adds r0, r2, 0
	ldr r5, =0x0000057c
	adds r1, r3, r5
	ldm r1!, {r5-r7}
	stm r0!, {r5-r7}
	ldm r1!, {r5-r7}
	stm r0!, {r5-r7}
	ldr r1, [r1]
	str r1, [r0]
	adds r3, 0x1C
	adds r2, 0x1C
	subs r4, 0x1
	cmp r4, 0
	bge _081A48EE
	mov r6, r10
	lsls r0, r6, 3
	subs r0, r6
	lsls r0, 2
	add r0, r8
	ldr r1, [sp, 0x70]
	movs r7, 0x90
	lsls r7, 1
	adds r0, r7
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r5-r7}
	stm r1!, {r5-r7}
	ldr r0, [r0]
	str r0, [r1]
	movs r4, 0
_081A492A:
	movs r1, 0
	movs r5, 0
	movs r3, 0
	lsls r6, r4, 3
	adds r7, r4, 0x1
	mov r2, sp
_081A4936:
	ldrh r0, [r2, 0x8]
	cmp r0, r1
	ble _081A4940
	adds r5, r3, 0
	adds r1, r0, 0
_081A4940:
	adds r2, 0x1C
	adds r3, 0x1
	cmp r3, 0x2
	ble _081A4936
	mov r2, r12
	ldrh r0, [r2]
	cmp r0, r1
	blt _081A4952
	movs r5, 0x3
_081A4952:
	subs r1, r6, r4
	lsls r1, 2
	lsls r0, r5, 3
	subs r0, r5
	lsls r0, 2
	mov r3, sp
	adds r2, r3, r0
	add r1, r9
	adds r0, r2, 0
	ldm r0!, {r4-r6}
	stm r1!, {r4-r6}
	ldm r0!, {r3-r5}
	stm r1!, {r3-r5}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, 0
	strh r0, [r2, 0x8]
	adds r4, r7, 0
	cmp r4, 0x2
	ble _081A492A
	mov r0, r8
	bl Free
	add sp, 0x74
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A48B4

	thumb_func_start sub_81A4998
sub_81A4998: @ 81A4998
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x94
	adds r7, r0, 0
	str r1, [sp, 0x90]
	ldr r0, =gStringVar1
	ldr r4, =gUnknown_08611CB0
	lsls r5, r7, 3
	adds r1, r5, r4
	ldr r1, [r1]
	bl StringCopy
	ldr r6, =gStringVar4
	adds r4, 0x4
	adds r5, r4
	ldr r1, [r5]
	adds r0, r6, 0
	bl StringExpandPlaceholders
	ldr r0, =gUnknown_0203AB74
	mov r8, r0
	ldrb r0, [r0]
	movs r1, 0x1
	mov r10, r1
	str r1, [sp]
	movs r2, 0xFF
	mov r9, r2
	str r2, [sp, 0x4]
	movs r5, 0
	str r5, [sp, 0x8]
	adds r2, r6, 0
	movs r3, 0
	bl PrintTextOnWindow
	ldr r1, =gUnknown_08611D00
	ldr r2, [sp, 0x90]
	lsls r0, r2, 2
	adds r0, r1
	ldr r4, [r0]
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0xD0
	bl GetStringRightAlignXOffset
	adds r3, r0, 0
	mov r1, r8
	ldrb r0, [r1]
	lsls r3, 24
	lsrs r3, 24
	mov r2, r10
	str r2, [sp]
	mov r1, r9
	str r1, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	bl PrintTextOnWindow
	cmp r7, 0x9
	bne _081A4A6C
	ldr r2, =gSaveBlock2Ptr
	ldr r0, [r2]
	ldr r1, =0x00000ee8
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldr r0, [r2]
	movs r2, 0xEF
	lsls r2, 4
	adds r0, r2
	movs r1, 0x1
	negs r1, r1
	strb r1, [r0]
	add r4, sp, 0x3C
	adds r0, r4, 0
	ldr r1, [sp, 0x90]
	bl sub_81A48B4
_081A4A3A:
	adds r0, r5, 0
	movs r1, 0x1
	movs r2, 0x4
	adds r3, r4, 0
	bl sub_81A4684
	adds r4, 0x1C
	adds r5, 0x1
	cmp r5, 0x2
	ble _081A4A3A
	b _081A4A90
	.pool
_081A4A6C:
	add r0, sp, 0xC
	adds r1, r7, 0
	ldr r2, [sp, 0x90]
	bl sub_81A47E0
	movs r5, 0
	add r4, sp, 0xC
_081A4A7A:
	str r7, [sp]
	adds r0, r5, 0
	movs r1, 0x1
	movs r2, 0x4
	adds r3, r4, 0
	bl sub_81A4594
	adds r4, 0x10
	adds r5, 0x1
	cmp r5, 0x2
	ble _081A4A7A
_081A4A90:
	add sp, 0x94
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81A4998

	thumb_func_start sub_81A4AA0
sub_81A4AA0: @ 81A4AA0
	push {r4,lr}
	ldr r4, =gUnknown_0203AB74
	ldr r0, =gUnknown_08611C84
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	bl sub_81973FC
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	movs r1, 0
	bl sub_81A4998
	ldrb r0, [r4]
	bl PutWindowTilemap
	ldrb r0, [r4]
	movs r1, 0x3
	bl CopyWindowToVram
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4AA0

	thumb_func_start sub_81A4AE8
sub_81A4AE8: @ 81A4AE8
	push {r4,lr}
	ldr r4, =gUnknown_0203AB74
	ldrb r0, [r4]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	movs r1, 0x1
	bl sub_81A4998
	ldrb r0, [r4]
	movs r1, 0x2
	bl CopyWindowToVram
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4AE8

	thumb_func_start sub_81A4B14
sub_81A4B14: @ 81A4B14
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r1, 0
	ldr r3, =gSaveBlock2Ptr
_081A4B24:
	movs r6, 0
	lsls r0, r1, 1
	adds r2, r1, 0x1
	mov r10, r2
	adds r0, r1
	lsls r0, 5
	mov r8, r0
	movs r7, 0
	movs r0, 0x87
	lsls r0, 2
	add r0, r8
	mov r9, r0
_081A4B3C:
	movs r5, 0
	adds r2, r7, 0
	mov r1, r8
	adds r4, r7, r1
_081A4B44:
	ldr r0, [r3]
	add r0, r9
	adds r0, r2
	lsls r1, r5, 4
	adds r0, r1
	movs r1, 0
	str r2, [sp]
	str r3, [sp, 0x4]
	bl CopyUnalignedWord
	ldr r3, [sp, 0x4]
	ldr r0, [r3]
	adds r0, r4
	ldr r1, =0x00000222
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldr r0, [r3]
	adds r0, r4
	movs r1, 0x88
	lsls r1, 2
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	adds r4, 0x10
	adds r5, 0x1
	ldr r2, [sp]
	cmp r5, 0x2
	ble _081A4B44
	adds r7, 0x30
	adds r6, 0x1
	cmp r6, 0x1
	ble _081A4B3C
	mov r1, r10
	cmp r1, 0x8
	ble _081A4B24
	movs r6, 0
	ldr r7, =gSaveBlock2Ptr
	movs r2, 0x54
	mov r10, r2
	movs r3, 0xFF
	mov r9, r3
_081A4B98:
	adds r0, r6, 0x1
	mov r8, r0
	mov r1, r10
	muls r1, r6
	movs r0, 0x54
	adds r4, r6, 0
	muls r4, r0
	movs r2, 0
	ldr r3, =0x0000057c
	adds r6, r1, r3
	movs r5, 0x2
_081A4BAE:
	ldr r0, [r7]
	adds r0, r6
	adds r0, r2
	movs r1, 0
	str r2, [sp]
	bl CopyUnalignedWord
	ldr r0, [r7]
	adds r0, r6
	ldr r2, [sp]
	adds r0, r2
	adds r0, 0x4
	movs r1, 0
	bl CopyUnalignedWord
	ldr r1, [r7]
	adds r1, r4
	ldr r0, =0x00000586
	adds r1, r0
	ldrb r0, [r1]
	mov r3, r9
	orrs r0, r3
	strb r0, [r1]
	ldr r1, [r7]
	adds r1, r4
	ldr r0, =0x0000058e
	adds r1, r0
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	ldr r0, [r7]
	adds r0, r4
	ldr r1, =0x00000584
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	adds r4, 0x1C
	ldr r2, [sp]
	adds r2, 0x1C
	subs r5, 0x1
	cmp r5, 0
	bge _081A4BAE
	mov r6, r8
	cmp r6, 0x1
	ble _081A4B98
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4B14

	thumb_func_start sub_81A4C30
sub_81A4C30: @ 81A4C30
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r0, 0x96
	lsls r0, 2
	bl AllocZeroed
	adds r7, r0, 0
	adds r4, r7, 0
	movs r5, 0
	movs r0, 0xFA
	lsls r0, 1
	adds r6, r7, r0
	ldr r0, =gPlayerParty
	mov r8, r0
_081A4C4E:
	mov r0, r8
	adds r1, r5, r0
	adds r0, r4, 0
	movs r2, 0x64
	bl memcpy
	adds r4, 0x64
	adds r5, 0x64
	cmp r4, r6
	ble _081A4C4E
	ldr r4, =gPlayerPartyCount
	ldrb r5, [r4]
	bl copy_player_party_from_sav1
	bl sub_8076D5C
	movs r0, 0x1
	bl TrySavingData
	bl sav2_gender2_inplace_and_xFE
	strb r5, [r4]
	adds r4, r7, 0
	ldr r5, =gPlayerParty
	movs r0, 0xFA
	lsls r0, 1
	adds r6, r7, r0
_081A4C84:
	adds r0, r5, 0
	adds r1, r4, 0
	movs r2, 0x64
	bl memcpy
	adds r4, 0x64
	adds r5, 0x64
	cmp r4, r6
	ble _081A4C84
	adds r0, r7, 0
	bl Free
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4C30

	thumb_func_start sub_81A4CB0
sub_81A4CB0: @ 81A4CB0
	push {lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _081A4CD0
	bl sub_8185EA0
	lsls r0, 24
	lsrs r0, 24
	b _081A4CDA
	.pool
_081A4CD0:
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
_081A4CDA:
	ldr r2, =gTrainers
	ldr r1, =gUnknown_08611D30
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x3]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A4CB0

	thumb_func_start sub_81A4D00
sub_81A4D00: @ 81A4D00
	push {lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _081A4D20
	bl sub_8185EA0
	lsls r0, 24
	lsrs r0, 24
	b _081A4D2A
	.pool
_081A4D20:
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
_081A4D2A:
	ldr r2, =gTrainers
	ldr r1, =gUnknown_08611D30
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r0, [r0, 0x1]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A4D00

	thumb_func_start sub_81A4D50
sub_81A4D50: @ 81A4D50
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _081A4D70
	bl sub_8185EA0
	lsls r0, 24
	lsrs r0, 24
	b _081A4D7A
	.pool
_081A4D70:
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
_081A4D7A:
	movs r3, 0
	lsls r0, 1
	ldr r2, =gTrainers
	ldr r1, =gUnknown_08611D30
	adds r0, r1
	ldrh r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r2, 0x4
	adds r2, r0, r2
_081A4D90:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, 0x1
	adds r3, 0x1
	cmp r3, 0x6
	ble _081A4D90
	adds r1, r4, r3
	movs r0, 0xFF
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4D50

	thumb_func_start sub_81A4DB8
sub_81A4DB8: @ 81A4DB8
	push {lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	ldr r1, =gUnknown_08611C8C
	lsrs r0, 15
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A4DB8

	thumb_func_start sub_81A4DD8
sub_81A4DD8: @ 81A4DD8
	push {lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	ldr r2, =0x00004010
	ldr r1, =gUnknown_08611C8C
	lsrs r0, 15
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r2, 0
	bl VarSet
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4DD8

	thumb_func_start sub_81A4E04
sub_81A4E04: @ 81A4E04
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x44
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x20]
	bl sub_81A513C
	str r0, [sp, 0x24]
	ldr r0, [sp, 0x20]
	cmp r0, 0x1
	bne _081A4E44
	ldr r0, =0x000003fe
	bl sub_81953A0
	lsls r0, 16
	lsrs r0, 16
	bl sub_818FC78
	adds r4, r0, 0
	b _081A4E46
	.pool
_081A4E44:
	movs r4, 0x7
_081A4E46:
	bl ZeroEnemyPartyMons
	movs r1, 0
	str r1, [sp, 0x18]
	bl sub_8165C40
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x1C]
	movs r2, 0
	str r2, [sp, 0x14]
_081A4E5C:
	movs r0, 0x1
	ands r0, r4
	asrs r4, 1
	str r4, [sp, 0x30]
	ldr r3, [sp, 0x14]
	adds r3, 0x1
	str r3, [sp, 0x28]
	cmp r0, 0
	bne _081A4E70
	b _081A4FC4
_081A4E70:
	ldr r4, [sp, 0x14]
	lsls r4, 2
	mov r9, r4
	ldr r0, [sp, 0x24]
	lsls r0, 4
	str r0, [sp, 0x38]
	ldr r1, [sp, 0x20]
	lsls r1, 4
	str r1, [sp, 0x34]
	ldr r2, [sp, 0x1C]
	lsls r2, 24
	str r2, [sp, 0x3C]
	ldr r3, [sp, 0x18]
	adds r3, 0x1
	str r3, [sp, 0x2C]
	ldr r0, [sp, 0x14]
	add r0, r9
	lsls r0, 2
	mov r8, r0
_081A4E96:
	bl Random
	adds r4, r0, 0
	bl Random
	lsls r4, 16
	lsrs r7, r4, 16
	lsls r0, 16
	orrs r7, r0
	ldr r0, =0x0000ef2a
	adds r1, r7, 0
	bl IsShinyOtIdPersonality
	lsls r0, 24
	cmp r0, 0
	bne _081A4E96
	ldr r4, [sp, 0x38]
	ldr r1, [sp, 0x24]
	subs r0, r4, r1
	lsls r5, r0, 2
	mov r2, r8
	adds r4, r2, r5
	ldr r3, [sp, 0x34]
	ldr r1, [sp, 0x20]
	subs r0, r3, r1
	lsls r6, r0, 3
	adds r4, r6
	ldr r2, =gUnknown_0861156C
	adds r4, r2
	adds r0, r7, 0
	bl GetNatureFromPersonality
	ldrb r1, [r4, 0x5]
	lsls r0, 24
	lsrs r0, 24
	cmp r1, r0
	bne _081A4E96
	ldr r4, [sp, 0x18]
	movs r0, 0x64
	adds r3, r4, 0
	muls r3, r0
	mov r8, r3
	ldr r1, =gEnemyParty
	add r1, r8
	mov r10, r1
	ldr r4, [sp, 0x14]
	add r4, r9
	lsls r4, 2
	adds r0, r4, r5
	adds r0, r6
	ldr r2, =gUnknown_0861156C
	adds r0, r2
	ldrh r1, [r0]
	ldr r3, [sp, 0x3C]
	lsrs r2, r3, 24
	ldrb r3, [r0, 0x4]
	movs r0, 0x1
	str r0, [sp]
	str r7, [sp, 0x4]
	str r0, [sp, 0x8]
	ldr r0, =0x0000ef2a
	str r0, [sp, 0xC]
	mov r0, r10
	bl CreateMon
	ldr r0, =gUnknown_0861156C
	adds r5, r0
	adds r5, r6, r5
	adds r4, r5, r4
	adds r4, 0x2
	mov r0, r10
	movs r1, 0xC
	adds r2, r4, 0
	bl SetMonData
	movs r7, 0
	mov r6, r8
	ldr r3, =gEnemyParty
_081A4F32:
	adds r1, r7, 0
	adds r1, 0x1A
	ldr r0, [sp, 0x14]
	add r0, r9
	lsls r4, r0, 2
	adds r2, r5, r4
	adds r0, r7, 0x6
	adds r2, r0
	adds r0, r6, r3
	str r3, [sp, 0x40]
	bl SetMonData
	adds r7, 0x1
	ldr r3, [sp, 0x40]
	cmp r7, 0x5
	ble _081A4F32
	movs r1, 0xFF
	add r0, sp, 0x10
	strb r1, [r0]
	movs r7, 0
	ldr r1, [sp, 0x18]
	movs r2, 0x64
	adds r6, r1, 0
	muls r6, r2
	ldr r3, =gUnknown_08611578
	mov r8, r3
	ldr r3, =gEnemyParty
	adds r5, r4, 0
_081A4F6A:
	ldr r4, [sp, 0x38]
	ldr r0, [sp, 0x24]
	subs r1, r4, r0
	lsls r1, 2
	adds r1, r5, r1
	ldr r2, [sp, 0x34]
	ldr r4, [sp, 0x20]
	subs r0, r2, r4
	lsls r0, 3
	adds r1, r0
	add r1, r8
	ldrh r4, [r1]
	lsls r2, r7, 24
	lsrs r2, 24
	adds r0, r6, r3
	adds r1, r4, 0
	str r3, [sp, 0x40]
	bl SetMonMoveSlot
	ldr r3, [sp, 0x40]
	cmp r4, 0xDA
	bne _081A4F9C
	movs r1, 0
	add r0, sp, 0x10
	strb r1, [r0]
_081A4F9C:
	adds r5, 0x2
	adds r7, 0x1
	cmp r7, 0x3
	ble _081A4F6A
	ldr r0, [sp, 0x18]
	movs r1, 0x64
	adds r4, r0, 0
	muls r4, r1
	ldr r0, =gEnemyParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x20
	add r2, sp, 0x10
	bl SetMonData
	adds r0, r4, 0
	bl CalculateMonStats
	ldr r2, [sp, 0x2C]
	str r2, [sp, 0x18]
_081A4FC4:
	ldr r4, [sp, 0x30]
	ldr r3, [sp, 0x28]
	str r3, [sp, 0x14]
	cmp r3, 0x2
	bgt _081A4FD0
	b _081A4E5C
_081A4FD0:
	add sp, 0x44
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A4E04

	thumb_func_start sub_81A4FF0
sub_81A4FF0: @ 81A4FF0
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =0x000040cf
	bl VarGet
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	bl sub_81A513C
	ldr r3, =gUnknown_0861156C
	lsls r2, r4, 2
	adds r2, r4
	lsls r1, r0, 4
	subs r1, r0
	adds r1, r2
	lsls r1, 2
	lsls r0, r5, 4
	subs r0, r5
	lsls r0, 3
	adds r1, r0
	adds r1, r3
	ldrh r0, [r1]
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A4FF0

	thumb_func_start sub_81A5030
sub_81A5030: @ 81A5030
	push {lr}
	lsls r0, 24
	ldr r2, =gTrainerBattleOpponent_A
	ldr r3, =0x000003fe
	adds r1, r3, 0
	strh r1, [r2]
	ldr r2, =0x00004010
	ldr r1, =gUnknown_08611C8C
	lsrs r0, 23
	adds r0, r1
	ldrb r1, [r0]
	adds r0, r2, 0
	bl VarSet
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5030

	thumb_func_start sub_81A5060
sub_81A5060: @ 81A5060
	push {r4-r6,lr}
	adds r6, r0, 0
	adds r4, r1, 0
	lsls r6, 24
	lsrs r6, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =0x000040cf
	bl VarGet
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	bl sub_81A513C
	ldr r2, =gUnknown_0861156C
	lsls r4, 1
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 2
	adds r4, r1
	lsls r1, r0, 4
	subs r1, r0
	lsls r1, 2
	adds r4, r1
	lsls r0, r5, 4
	subs r0, r5
	lsls r0, 3
	adds r4, r0
	adds r2, 0xC
	adds r4, r2
	ldrh r0, [r4]
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A5060

	thumb_func_start sub_81A50B0
sub_81A50B0: @ 81A50B0
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =0x000040cf
	bl VarGet
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	bl sub_81A513C
	ldr r3, =gUnknown_0861156C
	lsls r2, r4, 2
	adds r2, r4
	lsls r1, r0, 4
	subs r1, r0
	adds r1, r2
	lsls r1, 2
	lsls r0, r5, 4
	subs r0, r5
	lsls r0, 3
	adds r1, r0
	adds r1, r3
	ldrb r0, [r1, 0x5]
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A50B0

	thumb_func_start sub_81A50F0
sub_81A50F0: @ 81A50F0
	push {r4-r6,lr}
	adds r6, r0, 0
	adds r4, r1, 0
	lsls r6, 24
	lsrs r6, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =0x000040cf
	bl VarGet
	adds r5, r0, 0
	lsls r5, 16
	lsrs r5, 16
	bl sub_81A513C
	ldr r2, =gUnknown_0861156C
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 2
	adds r4, r1
	lsls r1, r0, 4
	subs r1, r0
	lsls r1, 2
	adds r4, r1
	lsls r0, r5, 4
	subs r0, r5
	lsls r0, 3
	adds r4, r0
	adds r2, 0x6
	adds r4, r2
	ldrb r0, [r4]
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A50F0

	thumb_func_start sub_81A513C
sub_81A513C: @ 81A513C
	push {r4,r5,lr}
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r5, r0, 16
	lsls r0, r5, 24
	lsrs r0, 24
	bl sub_81A3B30
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bne _081A51A0
	bl sub_81A39C4
	lsls r0, 16
	ldr r3, =gUnknown_08611550
	lsls r2, r5, 2
	adds r1, r3, 0x3
	adds r1, r2, r1
	lsrs r0, 16
	ldrb r1, [r1]
	adds r1, r0, r1
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r1, r0
	bne _081A5180
	movs r4, 0
	b _081A51A0
	.pool
_081A5180:
	adds r0, r3, 0x1
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r1, r0
	beq _081A519E
	cmp r1, r0
	ble _081A51A0
	subs r0, r1, r0
	adds r1, r3, 0x2
	adds r1, r2, r1
	ldrb r1, [r1]
	bl __modsi3
	cmp r0, 0
	bne _081A51A0
_081A519E:
	movs r4, 0x1
_081A51A0:
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81A513C

	thumb_func_start sub_81A51A8
sub_81A51A8: @ 81A51A8
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 17
	ands r0, r1
	cmp r0, 0
	beq _081A51D4
	bl sub_8185EA0
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_8185EAC
	lsls r0, 24
	lsrs r1, r0, 24
	b _081A51E4
	.pool
_081A51D4:
	ldr r0, =0x000040cf
	bl VarGet
	lsls r0, 16
	lsrs r4, r0, 16
	bl sub_81A513C
	adds r1, r0, 0
_081A51E4:
	cmp r5, 0
	beq _081A51F4
	cmp r5, 0x1
	beq _081A5214
	b _081A5228
	.pool
_081A51F4:
	ldr r0, =gStringVar4
	ldr r2, =gUnknown_08611DB0
	lsls r1, 2
	adds r1, r2
	ldr r2, [r1]
	lsls r1, r4, 2
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
	b _081A5228
	.pool
_081A5214:
	ldr r0, =gStringVar4
	ldr r2, =gUnknown_08611DB8
	lsls r1, 2
	adds r1, r2
	ldr r2, [r1]
	lsls r1, r4, 2
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
_081A5228:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A51A8

	thumb_func_start sub_81A5238
sub_81A5238: @ 81A5238
	push {lr}
	ldr r1, =gUnknown_08611F84
	ldr r0, =gSpecialVar_0x8004
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5238

	thumb_func_start sub_81A5258
sub_81A5258: @ 81A5258
	push {r4-r6,lr}
	sub sp, 0x4
	adds r5, r0, 0
	movs r6, 0
	ldrb r0, [r5]
	cmp r0, 0xA
	bls _081A5268
	b _081A5544
_081A5268:
	lsls r0, 2
	ldr r1, =_081A5278
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A5278:
	.4byte _081A52A4
	.4byte _081A52F4
	.4byte _081A531C
	.4byte _081A53B4
	.4byte _081A540C
	.4byte _081A542C
	.4byte _081A544C
	.4byte _081A5490
	.4byte _081A553E
	.4byte _081A54D4
	.4byte _081A5520
_081A52A4:
	ldr r0, =0x7fffff1c
	movs r1, 0
	str r1, [sp]
	movs r1, 0x4
	movs r2, 0
	movs r3, 0x8
	bl BeginNormalPaletteFade
	ldr r1, =0x00003f3e
	movs r0, 0x48
	bl SetGpuReg
	ldr r0, =gUnknown_08611F74
	bl LoadCompressedObjectPic
	ldr r0, =gUnknown_08D855E8
	movs r1, 0xF8
	lsls r1, 1
	movs r2, 0x20
	bl LoadCompressedPalette
	ldr r1, =gUnknown_02022E24
	movs r0, 0xFF
	strh r0, [r1]
	ldr r1, =gUnknown_02022E26
	movs r0, 0x70
	strh r0, [r1]
	b _081A553E
	.pool
_081A52F4:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _081A5306
	b _081A5544
_081A5306:
	str r0, [sp]
	movs r0, 0x5
	movs r1, 0
	movs r2, 0x18
	movs r3, 0xD
	bl sub_8056A3C
	b _081A553E
	.pool
_081A531C:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	beq _081A5328
	b _081A5544
_081A5328:
	ldr r1, =gBattleTextBuff1
	movs r2, 0xA1
	strb r2, [r1]
	movs r0, 0xFF
	strb r0, [r1, 0x1]
	ldr r1, =gBattleTextBuff2
	strb r2, [r1]
	movs r0, 0x1
	negs r0, r0
	strb r0, [r1, 0x1]
	ldr r0, =gUnknown_085CCDB2
	bl StrCpyDecodeToDisplayedStringBattle
	ldr r4, =gDisplayedStringBattle
	adds r0, r4, 0
	movs r1, 0xF
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCDB5
	movs r1, 0x10
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCDB8
	bl StrCpyDecodeToDisplayedStringBattle
	adds r0, r4, 0
	movs r1, 0x11
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCDBB
	movs r1, 0x12
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCDC0
	movs r1, 0x13
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCDC6
	movs r1, 0x14
	bl battle_show_message_maybe
	ldr r0, =gUnknown_085CCDCB
	bl StrCpyDecodeToDisplayedStringBattle
	adds r0, r4, 0
	movs r1, 0x15
	bl battle_show_message_maybe
	b _081A553E
	.pool
_081A53B4:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	beq _081A53C0
	b _081A5544
_081A53C0:
	ldr r1, =0x00003f3f
	movs r0, 0x48
	bl SetGpuReg
	movs r6, 0x80
	lsls r6, 15
	movs r4, 0x7
_081A53CE:
	asrs r1, r6, 16
	ldr r0, =gUnknown_08611F5C
	movs r2, 0x54
	movs r3, 0
	bl CreateSprite
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	movs r1, 0x3
	bl StartSpriteAnim
	movs r0, 0x80
	lsls r0, 13
	adds r6, r0
	subs r4, 0x1
	cmp r4, 0
	bge _081A53CE
	b _081A553C
	.pool
_081A540C:
	ldr r0, =0x00000109
	bl PlaySE
	movs r0, 0x50
	movs r1, 0x28
	movs r2, 0
	movs r3, 0
	bl sub_81A5558
	movs r0, 0xA0
	movs r1, 0x28
	movs r2, 0
	b _081A5464
	.pool
_081A542C:
	ldr r0, =0x00000109
	bl PlaySE
	movs r0, 0x50
	movs r1, 0x38
	movs r2, 0x1
	movs r3, 0
	bl sub_81A5558
	movs r0, 0xA0
	movs r1, 0x38
	movs r2, 0x1
	b _081A5464
	.pool
_081A544C:
	ldr r0, =0x00000109
	bl PlaySE
	movs r0, 0x50
	movs r1, 0x48
	movs r2, 0x2
	movs r3, 0
	bl sub_81A5558
	movs r0, 0xA0
	movs r1, 0x48
	movs r2, 0x2
_081A5464:
	movs r3, 0x1
	bl sub_81A5558
	ldr r0, =gUnknown_085CCDCB
	bl StrCpyDecodeToDisplayedStringBattle
	ldr r0, =gDisplayedStringBattle
	movs r1, 0x15
	bl battle_show_message_maybe
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	movs r6, 0x1
	b _081A5544
	.pool
_081A5490:
	movs r0, 0x85
	lsls r0, 1
	bl PlaySE
	ldr r0, =gBattleTextBuff1
	ldr r1, =gBattleTextBuff2
	ldrb r2, [r0]
	ldrb r0, [r1]
	cmp r2, r0
	bls _081A54BC
	movs r6, 0x2
	ldr r1, =gBattleScripting
	movs r0, 0
	strb r0, [r1, 0x17]
	b _081A553E
	.pool
_081A54BC:
	cmp r2, r0
	bcs _081A54D0
	movs r6, 0x3
	ldr r1, =gBattleScripting
	movs r0, 0x1
	strb r0, [r1, 0x17]
	b _081A553E
	.pool
_081A54D0:
	movs r6, 0x4
	b _081A553E
_081A54D4:
	ldr r1, =0x00003f3e
	movs r0, 0x48
	bl SetGpuReg
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0x5
	movs r1, 0
	movs r2, 0x18
	movs r3, 0xD
	bl sub_8056A3C
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	ldr r0, =gMPlay_BGM
	ldr r1, =0x0000ffff
	movs r2, 0x80
	lsls r2, 1
	bl m4aMPlayVolumeControl
	ldr r0, =0x7fffff1c
	movs r1, 0
	str r1, [sp]
	movs r1, 0x4
	movs r2, 0x8
	movs r3, 0
	bl BeginNormalPaletteFade
	b _081A553E
	.pool
_081A5520:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _081A5544
	ldr r1, =0x00003f3f
	movs r0, 0x48
	bl SetGpuReg
	movs r0, 0xFA
	lsls r0, 2
	bl FreeSpriteTilesByTag
_081A553C:
	movs r6, 0x1
_081A553E:
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
_081A5544:
	adds r0, r6, 0
	add sp, 0x4
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A5258

	thumb_func_start sub_81A5558
sub_81A5558: @ 81A5558
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	lsls r3, 24
	lsrs r7, r3, 24
	movs r6, 0
	movs r1, 0
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	movs r3, 0xA6
	lsls r3, 2
	adds r4, r0, r3
	ldr r5, =0x0000029a
	adds r3, r0, r5
	adds r5, 0x2
	adds r5, r0
	mov r8, r5
	cmp r2, 0x1
	beq _081A55C4
	cmp r2, 0x1
	bgt _081A55A8
	cmp r2, 0
	beq _081A55B0
	b _081A5612
	.pool
_081A55A8:
	mov r0, r9
	cmp r0, 0x2
	beq _081A55D8
	b _081A5612
_081A55B0:
	adds r0, r4, r7
	movs r6, 0
	ldrsb r6, [r0, r6]
	movs r1, 0x1
	adds r0, r7, 0
	eors r0, r1
	adds r0, r4, r0
	movs r1, 0
	ldrsb r1, [r0, r1]
	b _081A5612
_081A55C4:
	adds r0, r3, r7
	movs r6, 0
	ldrsb r6, [r0, r6]
	movs r1, 0x1
	adds r0, r7, 0
	eors r0, r1
	adds r0, r3, r0
	movs r1, 0
	ldrsb r1, [r0, r1]
	b _081A5612
_081A55D8:
	ldr r3, =gBattleMons
	mov r9, r3
	movs r5, 0x58
	adds r0, r7, 0
	muls r0, r5
	add r0, r9
	ldrh r0, [r0, 0x28]
	movs r4, 0x64
	muls r0, r4
	lsls r1, r7, 1
	add r1, r8
	ldrh r1, [r1]
	bl __divsi3
	adds r6, r0, 0
	movs r0, 0x1
	adds r1, r7, 0
	eors r1, r0
	adds r0, r1, 0
	muls r0, r5
	add r0, r9
	ldrh r0, [r0, 0x28]
	muls r0, r4
	lsls r1, 1
	add r1, r8
	ldrh r1, [r1]
	bl __divsi3
	adds r1, r0, 0
_081A5612:
	cmp r6, r1
	ble _081A5638
	movs r4, 0x2
	cmp r7, 0
	beq _081A5628
	ldr r1, =gBattleTextBuff2
	b _081A562A
	.pool
_081A5628:
	ldr r1, =gBattleTextBuff1
_081A562A:
	ldrb r0, [r1]
	adds r0, 0x2
	strb r0, [r1]
	b _081A565E
	.pool
_081A5638:
	cmp r6, r1
	bne _081A565C
	movs r4, 0x1
	cmp r7, 0
	beq _081A564C
	ldr r1, =gBattleTextBuff2
	b _081A564E
	.pool
_081A564C:
	ldr r1, =gBattleTextBuff1
_081A564E:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _081A565E
	.pool
_081A565C:
	movs r4, 0
_081A565E:
	ldr r0, =gUnknown_08611F5C
	ldr r1, [sp]
	mov r2, r10
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r0, r6, 4
	adds r0, r6
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	adds r1, r4, 0
	bl StartSpriteAnim
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5558

	thumb_func_start sub_81A5698
sub_81A5698: @ 81A5698
	push {lr}
	adds r1, r0, 0
	ldr r0, =gBattleCommunication
	ldrb r0, [r0]
	cmp r0, 0x8
	bls _081A56AA
	adds r0, r1, 0
	bl DestroySprite
_081A56AA:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5698

	thumb_func_start sub_81A56B4
sub_81A56B4: @ 81A56B4
	ldr r0, =gBattleStruct
	ldr r2, [r0]
	movs r0, 0xA6
	lsls r0, 2
	adds r1, r2, r0
	adds r0, 0x2
	adds r3, r2, r0
	adds r0, 0x2
	adds r2, r0
	movs r0, 0
	strb r0, [r1]
	strb r0, [r1, 0x1]
	strb r0, [r3]
	strb r0, [r3, 0x1]
	ldr r0, =gBattleMons
	ldrh r1, [r0, 0x28]
	strh r1, [r2]
	adds r0, 0x80
	ldrh r0, [r0]
	strh r0, [r2, 0x2]
	bx lr
	.pool
	thumb_func_end sub_81A56B4

	thumb_func_start sub_81A56E8
sub_81A56E8: @ 81A56E8
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gBattleStruct
	ldr r1, [r1]
	movs r2, 0xA6
	lsls r2, 2
	adds r1, r2
	adds r1, r0
	ldr r2, =gBattleArenaMoveMindRatings
	ldr r0, =gCurrentMove
	ldrh r0, [r0]
	adds r0, r2
	ldrb r0, [r0]
	ldrb r2, [r1]
	adds r0, r2
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A56E8

	thumb_func_start sub_81A5718
sub_81A5718: @ 81A5718
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r3, r0, 24
	adds r6, r3, 0
	ldr r0, =gBattleStruct
	ldr r2, [r0]
	ldr r0, =0x0000029a
	adds r5, r2, r0
	ldr r0, =gHitMarker
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 18
	ands r0, r1
	cmp r0, 0
	beq _081A57DA
	ldr r0, =0x000002a2
	adds r4, r2, r0
	ldrb r2, [r4]
	ldr r0, =gBitTable
	lsls r1, r3, 2
	adds r1, r0
	ldr r1, [r1]
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _081A576C
	bics r2, r1
	strb r2, [r4]
	adds r1, r5, r3
	ldrb r0, [r1]
	subs r0, 0x2
	b _081A57D8
	.pool
_081A576C:
	ldr r0, =gBattleMoveFlags
	ldrb r1, [r0]
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	beq _081A5798
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081A5788
	ldr r0, =gBattleCommunication
	ldrb r0, [r0, 0x6]
	cmp r0, 0x1
	beq _081A57DA
_081A5788:
	adds r1, r5, r3
	ldrb r0, [r1]
	subs r0, 0x2
	b _081A57D8
	.pool
_081A5798:
	movs r0, 0x6
	ands r0, r1
	cmp r0, 0x6
	bne _081A57A4
	adds r1, r5, r3
	b _081A57D4
_081A57A4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081A57B4
	adds r1, r5, r3
	ldrb r0, [r1]
	adds r0, 0x2
	b _081A57D8
_081A57B4:
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _081A57C4
	adds r1, r5, r3
	ldrb r0, [r1]
	subs r0, 0x1
	b _081A57D8
_081A57C4:
	ldr r0, =gProtectStructs
	lsls r1, r6, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 31
	cmp r0, 0
	bne _081A57DA
	adds r1, r5, r6
_081A57D4:
	ldrb r0, [r1]
	adds r0, 0x1
_081A57D8:
	strb r0, [r1]
_081A57DA:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5718

	thumb_func_start sub_81A57E4
sub_81A57E4: @ 81A57E4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 16
	lsrs r1, 16
	adds r2, r1, 0
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	ldr r5, =0x0000029a
	adds r3, r0, r5
	movs r0, 0x99
	lsls r0, 1
	cmp r1, r0
	bgt _081A582A
	subs r0, 0x1
	cmp r1, r0
	bge _081A585C
	cmp r1, 0xC5
	bgt _081A581C
	cmp r1, 0xC3
	bge _081A585C
	cmp r1, 0x77
	beq _081A585C
	b _081A5864
	.pool
_081A581C:
	cmp r1, 0xC7
	blt _081A5864
	cmp r1, 0xCC
	ble _081A585C
	cmp r1, 0xCE
	beq _081A585C
	b _081A5864
_081A582A:
	ldr r0, =0x00000147
	cmp r1, r0
	beq _081A585C
	cmp r1, r0
	bgt _081A5848
	subs r0, 0x12
	cmp r1, r0
	beq _081A585C
	adds r0, 0x2
	cmp r1, r0
	beq _081A585C
	b _081A5864
	.pool
_081A5848:
	movs r0, 0xAD
	lsls r0, 1
	cmp r2, r0
	blt _081A5864
	adds r0, 0x1
	cmp r2, r0
	ble _081A585C
	adds r0, 0x3
	cmp r2, r0
	bne _081A5864
_081A585C:
	adds r1, r3, r4
	ldrb r0, [r1]
	subs r0, 0x3
	strb r0, [r1]
_081A5864:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_81A57E4

	thumb_func_start sub_81A586C
sub_81A586C: @ 81A586C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gBattleStruct
	ldr r3, [r1]
	movs r1, 0xA7
	lsls r1, 2
	adds r3, r1
	lsls r2, r0, 1
	adds r2, r3
	ldr r5, =gBattleMons
	movs r4, 0x58
	adds r1, r0, 0
	muls r1, r4
	adds r1, r5
	ldrh r1, [r1, 0x28]
	strh r1, [r2]
	movs r1, 0x1
	eors r0, r1
	lsls r1, r0, 1
	adds r1, r3
	muls r0, r4
	adds r0, r5
	ldrh r2, [r0, 0x28]
	ldrh r0, [r1]
	cmp r0, r2
	bls _081A58A4
	strh r2, [r1]
_081A58A4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A586C

	thumb_func_start sub_81A58B4
sub_81A58B4: @ 81A58B4
	push {r4-r6,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r3, =0x00000ca9
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x00000ca8
	adds r1, r0
	movs r2, 0
	strb r2, [r1]
	ldr r1, [r4]
	ldr r6, =0x00000cb2
	adds r0, r1, r6
	strh r2, [r0]
	adds r1, r3
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, r3
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	cmp r5, 0
	beq _081A5914
	ldr r0, [r4]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r2, [r0]
	movs r0, 0x80
	b _081A591E
	.pool
_081A5914:
	ldr r0, [r4]
	ldr r3, =0x00000cdc
	adds r0, r3
	ldr r2, [r0]
	movs r0, 0x40
_081A591E:
	ands r2, r0
	cmp r2, 0
	bne _081A5930
	ldr r0, [r4]
	lsls r1, r5, 1
	ldr r6, =0x00000dda
	adds r0, r6
	adds r0, r1
	strh r2, [r0]
_081A5930:
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0x4
	ldrsb r1, [r0, r1]
	movs r2, 0x5
	ldrsb r2, [r0, r2]
	movs r3, 0x1
	negs r3, r3
	movs r0, 0
	bl saved_warp2_set
	ldr r1, =gTrainerBattleOpponent_A
	movs r0, 0
	strh r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A58B4

	thumb_func_start sub_81A5964
sub_81A5964: @ 81A5964
	push {r4,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r3, [r0]
	ldr r1, =0x00000ca9
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r1, r0, 30
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _081A59B0
	cmp r0, 0x1
	bgt _081A5994
	cmp r0, 0
	beq _081A599A
	b _081A59EE
	.pool
_081A5994:
	cmp r0, 0x2
	beq _081A59C8
	b _081A59EE
_081A599A:
	ldr r0, =gScriptResult
	ldr r2, =0x00000dd8
	adds r1, r3, r2
	ldrh r1, [r1]
	strh r1, [r0]
	b _081A59EE
	.pool
_081A59B0:
	ldr r2, =gScriptResult
	lsls r1, 1
	ldr r4, =0x00000dda
	adds r0, r3, r4
	adds r0, r1
	ldrh r0, [r0]
	b _081A59EC
	.pool
_081A59C8:
	cmp r1, 0
	beq _081A59E0
	ldr r2, =gScriptResult
	ldr r1, =0x00000cdc
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, 0x80
	b _081A59EA
	.pool
_081A59E0:
	ldr r2, =gScriptResult
	ldr r4, =0x00000cdc
	adds r0, r3, r4
	ldr r0, [r0]
	movs r1, 0x40
_081A59EA:
	ands r0, r1
_081A59EC:
	strh r0, [r2]
_081A59EE:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5964

	thumb_func_start sub_81A59FC
sub_81A59FC: @ 81A59FC
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, =0x00000ca9
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r1, r0, 30
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _081A5A48
	cmp r0, 0x1
	bgt _081A5A2C
	cmp r0, 0
	beq _081A5A32
	b _081A5ABA
	.pool
_081A5A2C:
	cmp r0, 0x2
	beq _081A5A60
	b _081A5ABA
_081A5A32:
	ldr r0, =gSpecialVar_0x8006
	ldrh r1, [r0]
	ldr r3, =0x00000dd8
	adds r0, r2, r3
	strh r1, [r0]
	b _081A5ABA
	.pool
_081A5A48:
	lsls r1, 1
	ldr r3, =0x00000dda
	adds r0, r2, r3
	adds r0, r1
	ldr r1, =gSpecialVar_0x8006
	ldrh r1, [r1]
	strh r1, [r0]
	b _081A5ABA
	.pool
_081A5A60:
	cmp r1, 0
	beq _081A5A90
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A5A80
	ldr r1, =0x00000cdc
	adds r0, r2, r1
	ldr r1, [r0]
	movs r2, 0x80
	orrs r1, r2
	b _081A5AB8
	.pool
_081A5A80:
	ldr r3, =0x00000cdc
	adds r0, r2, r3
	ldr r1, [r0]
	movs r2, 0x81
	negs r2, r2
	b _081A5AB6
	.pool
_081A5A90:
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A5AAC
	ldr r1, =0x00000cdc
	adds r0, r2, r1
	ldr r1, [r0]
	movs r2, 0x40
	orrs r1, r2
	b _081A5AB8
	.pool
_081A5AAC:
	ldr r3, =0x00000cdc
	adds r0, r2, r3
	ldr r1, [r0]
	movs r2, 0x41
	negs r2, r2
_081A5AB6:
	ands r1, r2
_081A5AB8:
	str r1, [r0]
_081A5ABA:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A59FC

	thumb_func_start sub_81A5AC4
sub_81A5AC4: @ 81A5AC4
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl sub_81A4C30
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5AC4

	thumb_func_start sub_81A5B08
sub_81A5B08: @ 81A5B08
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r2, =0x00000dda
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, 0x29
	bls _081A5B58
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_08611FAC
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x9
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r1, =0x00000dd8
	adds r4, r1
	b _081A5B76
	.pool
_081A5B58:
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_08611FA0
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x6
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r2, =0x00000dd8
	adds r4, r2
_081A5B76:
	strh r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5B08

	thumb_func_start sub_81A5B88
sub_81A5B88: @ 81A5B88
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000dd8
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x1
	bl AddBagItem
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bne _081A5BD0
	ldr r0, [r4]
	ldr r1, =0x00000dd8
	adds r0, r1
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r0, [r4]
	ldr r1, =0x00000dd8
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gScriptResult
	strh r5, [r0]
	b _081A5BD6
	.pool
_081A5BD0:
	ldr r1, =gScriptResult
	movs r0, 0
	strh r0, [r1]
_081A5BD6:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5B88

	thumb_func_start sub_81A5BE0
sub_81A5BE0: @ 81A5BE0
	push {lr}
	ldr r0, =gStringVar1
	ldr r1, =gTrainerBattleOpponent_A
	ldrh r1, [r1]
	bl sub_8162E20
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5BE0

	thumb_func_start sub_81A5BF8
sub_81A5BF8: @ 81A5BF8
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0xC
	movs r0, 0x1B
	mov r8, r0
	movs r5, 0x7
	movs r4, 0x1
	str r4, [sp]
	movs r6, 0x6
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0
	movs r2, 0xFE
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0
	movs r2, 0x20
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x31
	movs r2, 0
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x33
	movs r2, 0x1
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	mov r0, r8
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x34
	movs r2, 0x2
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	movs r0, 0x1C
	mov r8, r0
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x35
	movs r2, 0x1C
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x36
	movs r2, 0x1D
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	movs r6, 0x5
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x37
	movs r2, 0
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	mov r0, r8
	str r0, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x39
	movs r2, 0x1
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x3A
	movs r2, 0x1D
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000831
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000833
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0x1
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000834
	movs r0, 0x1A
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0x2
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000835
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0x1C
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	ldr r1, =0x00000836
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r2, 0x1D
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5BF8

	thumb_func_start sub_81A5D44
sub_81A5D44: @ 81A5D44
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0xC
	movs r5, 0
	movs r4, 0x1
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x3
	movs r2, 0
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	movs r6, 0x4
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x4
	movs r2, 0x1
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	movs r0, 0x1B
	mov r8, r0
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x5
	movs r2, 0x2
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x6
	movs r2, 0x1C
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x7
	movs r2, 0x1D
	movs r3, 0xE
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x8
	movs r2, 0
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x9
	movs r2, 0x1
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	mov r0, r8
	str r0, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xA
	movs r2, 0x2
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xB
	movs r2, 0x1C
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r6, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xC
	movs r2, 0x1D
	movs r3, 0xF
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xD
	movs r2, 0
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x1
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	mov r0, r8
	str r0, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0xF
	movs r2, 0x2
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x10
	movs r2, 0x1C
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	str r4, [sp]
	str r4, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0
	movs r1, 0x11
	movs r2, 0x1D
	movs r3, 0x13
	bl FillBgTilemapBufferRect
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_81A5D44

	thumb_func_start sub_81A5E74
sub_81A5E74: @ 81A5E74
	push {lr}
	ldr r1, =gUnknown_08612120
	ldr r0, =gSpecialVar_0x8004
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5E74

	thumb_func_start sub_81A5E94
sub_81A5E94: @ 81A5E94
	push {r4-r7,lr}
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	ldr r4, =0x00000ca9
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r7, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, [r5]
	ldr r1, =0x00000ca8
	adds r0, r1
	movs r2, 0
	strb r2, [r0]
	ldr r1, [r5]
	ldr r3, =0x00000cb2
	adds r0, r1, r3
	strh r2, [r0]
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x9
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r4, [r5]
	ldr r0, =0x00000cdc
	adds r3, r4, r0
	ldr r2, =gUnknown_08612164
	lsls r0, r7, 2
	lsls r1, r6, 3
	adds r0, r1
	adds r0, r2
	ldr r3, [r3]
	ldr r0, [r0]
	ands r3, r0
	cmp r3, 0
	bne _081A5F0A
	lsls r1, r7, 1
	lsls r0, r6, 2
	adds r1, r0
	ldr r2, =0x00000de2
	adds r0, r4, r2
	adds r0, r1
	strh r3, [r0]
	adds r2, 0x10
	adds r0, r4, r2
	adds r0, r1
	strh r3, [r0]
_081A5F0A:
	ldr r1, =gUnknown_03001288
	movs r0, 0
	strb r0, [r1]
	movs r2, 0
	ldr r6, =gSaveBlock1Ptr
	movs r4, 0xE7
	lsls r4, 4
	ldr r0, =0x0000ffff
	adds r3, r0, 0
_081A5F1C:
	ldr r1, [r5]
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r1, r0
	adds r1, r4
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x5
	bls _081A5F1C
	movs r2, 0
	ldr r4, =gUnknown_03006298
	ldr r1, =0x0000ffff
	adds r3, r1, 0
_081A5F40:
	lsls r0, r2, 1
	adds r0, r4
	ldrh r1, [r0]
	orrs r1, r3
	strh r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x2
	bls _081A5F40
	ldr r0, [r6]
	movs r1, 0x4
	ldrsb r1, [r0, r1]
	movs r2, 0x5
	ldrsb r2, [r0, r2]
	movs r3, 0x1
	negs r3, r3
	movs r0, 0
	bl saved_warp2_set
	ldr r1, =gTrainerBattleOpponent_A
	movs r0, 0
	strh r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5E94

	thumb_func_start sub_81A5FA8
sub_81A5FA8: @ 81A5FA8
	push {r4-r7,lr}
	ldr r7, =gSaveBlock2Ptr
	ldr r0, [r7]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r6, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x2
	beq _081A6000
	cmp r0, 0x2
	bgt _081A5FE4
	cmp r0, 0x1
	beq _081A5FEA
	b _081A6044
	.pool
_081A5FE4:
	cmp r0, 0x3
	beq _081A6030
	b _081A6044
_081A5FEA:
	ldr r3, =gScriptResult
	ldr r0, [r7]
	lsls r1, r6, 1
	lsls r2, r5, 2
	adds r1, r2
	ldr r2, =0x00000de2
	b _081A603C
	.pool
_081A6000:
	ldr r4, =gScriptResult
	ldr r2, [r7]
	ldr r0, =0x00000cdc
	adds r2, r0
	ldr r3, =gUnknown_08612164
	lsls r0, r6, 2
	lsls r1, r5, 3
	adds r0, r1
	adds r0, r3
	ldr r1, [r2]
	ldr r0, [r0]
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	strh r0, [r4]
	b _081A6044
	.pool
_081A6030:
	ldr r3, =gScriptResult
	ldr r0, [r7]
	lsls r1, r6, 1
	lsls r2, r5, 2
	adds r1, r2
	ldr r2, =0x00000df2
_081A603C:
	adds r0, r2
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
_081A6044:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A5FA8

	thumb_func_start sub_81A6054
sub_81A6054: @ 81A6054
	push {r4-r6,lr}
	ldr r6, =gSaveBlock2Ptr
	ldr r0, [r6]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x2
	beq _081A60B4
	cmp r0, 0x2
	bgt _081A6090
	cmp r0, 0x1
	beq _081A6096
	b _081A6128
	.pool
_081A6090:
	cmp r0, 0x3
	beq _081A6108
	b _081A6128
_081A6096:
	ldr r2, [r6]
	lsls r0, r5, 1
	lsls r1, r4, 2
	adds r0, r1
	ldr r1, =0x00000de2
	adds r2, r1
	adds r2, r0
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	strh r0, [r2]
	b _081A6128
	.pool
_081A60B4:
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A60E4
	ldr r2, [r6]
	ldr r0, =0x00000cdc
	adds r2, r0
	ldr r3, =gUnknown_08612164
	lsls r1, r5, 2
	lsls r0, r4, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	orrs r0, r1
	str r0, [r2]
	b _081A6128
	.pool
_081A60E4:
	ldr r2, [r6]
	ldr r1, =0x00000cdc
	adds r2, r1
	ldr r3, =gUnknown_08612174
	lsls r1, r5, 2
	lsls r0, r4, 3
	adds r1, r0
	adds r1, r3
	ldr r0, [r2]
	ldr r1, [r1]
	ands r0, r1
	str r0, [r2]
	b _081A6128
	.pool
_081A6108:
	ldr r3, =gUnknown_03001288
	ldrb r0, [r3]
	cmp r0, 0x1
	bne _081A6128
	ldr r2, [r6]
	lsls r0, r5, 1
	lsls r1, r4, 2
	adds r0, r1
	ldr r1, =0x00000df2
	adds r2, r1
	adds r2, r0
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	movs r1, 0
	strh r0, [r2]
	strb r1, [r3]
_081A6128:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A6054

	thumb_func_start sub_81A613C
sub_81A613C: @ 81A613C
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl sub_81A4C30
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A613C

	thumb_func_start nullsub_75
nullsub_75: @ 81A6180
	bx lr
	thumb_func_end nullsub_75

	thumb_func_start nullsub_123
nullsub_123: @ 81A6184
	bx lr
	thumb_func_end nullsub_123

	thumb_func_start sub_81A6188
sub_81A6188: @ 81A6188
	push {lr}
	bl ZeroPlayerPartyMons
	bl sub_819A4F8
	pop {r0}
	bx r0
	thumb_func_end sub_81A6188

	thumb_func_start sub_81A6198
sub_81A6198: @ 81A6198
	push {lr}
	bl sub_819DC00
	pop {r0}
	bx r0
	thumb_func_end sub_81A6198

	thumb_func_start sub_81A61A4
sub_81A61A4: @ 81A61A4
	ldr r1, =gUnknown_03001288
	movs r0, 0x1
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A61A4

	thumb_func_start sub_81A61B0
sub_81A61B0: @ 81A61B0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	str r0, [sp, 0x10]
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	ldr r1, [r4]
	ldr r3, [sp, 0x10]
	lsls r2, r3, 1
	lsrs r0, 14
	adds r2, r0
	ldr r6, =0x00000de2
	adds r1, r6
	adds r1, r2
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	ldr r2, =gUnknown_0203BC88
	ldr r1, =gBattleFrontierTrainers
	str r1, [r2]
	ldr r5, =0x00000cb2
	lsls r0, 24
	str r0, [sp, 0x20]
	mov r8, r0
_081A61FA:
	ldr r0, [r4]
	adds r0, r5
	ldrb r1, [r0]
	mov r2, r8
	lsrs r0, r2, 24
	bl sub_8162548
	lsls r0, 16
	lsrs r3, r0, 16
	movs r7, 0
	ldr r1, [r4]
	adds r0, r1, r5
	ldr r6, [sp, 0x10]
	lsls r6, 24
	str r6, [sp, 0x1C]
	ldrh r0, [r0]
	cmp r7, r0
	bge _081A6244
	ldr r2, =0x00000cb4
	adds r0, r1, r2
	ldrh r0, [r0]
	ldr r6, =gSaveBlock2Ptr
	cmp r0, r3
	beq _081A6244
	ldr r1, [r6]
	ldr r6, =0x00000cb2
	adds r0, r1, r6
	ldrh r2, [r0]
	ldr r0, =0x00000cb4
	adds r1, r0
_081A6236:
	adds r1, 0x2
	adds r7, 0x1
	cmp r7, r2
	bge _081A6244
	ldrh r0, [r1]
	cmp r0, r3
	bne _081A6236
_081A6244:
	ldr r0, [r4]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldr r6, =gSaveBlock2Ptr
	ldrh r0, [r0]
	cmp r7, r0
	bne _081A61FA
	ldr r0, =gTrainerBattleOpponent_A
	strh r3, [r0]
	ldr r2, [r6]
	adds r1, r2, r1
	ldrh r0, [r1]
	cmp r0, 0x5
	bhi _081A626C
	adds r1, r0, 0
	lsls r1, 1
	ldr r4, =0x00000cb4
	adds r0, r2, r4
	adds r0, r1
	strh r3, [r0]
_081A626C:
	movs r7, 0
	mov r10, sp
	movs r6, 0
	lsls r6, 1
	str r6, [sp, 0x14]
	add r6, sp
	str r6, [sp, 0x18]
_081A627A:
	ldr r1, [sp, 0x1C]
	lsrs r0, r1, 24
	ldr r2, [sp, 0x20]
	lsrs r1, r2, 24
	movs r2, 0
	bl sub_81A6EF0
	lsls r0, 16
	lsrs r0, 16
	mov r9, r0
	ldr r4, =gUnknown_0203BC8C
	ldr r2, [r4]
	lsls r1, r0, 4
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, 0xC9
	beq _081A636E
	movs r3, 0
	ldr r6, =gSaveBlock2Ptr
	mov r8, r1
	adds r5, r0, 0
	ldr r1, [r6]
_081A62A6:
	movs r4, 0xE7
	lsls r4, 4
	adds r0, r1, r4
	ldrh r0, [r0]
	lsls r0, 4
	adds r0, r2
	ldrh r0, [r0]
	cmp r5, r0
	beq _081A62C0
	adds r1, 0xC
	adds r3, 0x1
	cmp r3, 0x5
	ble _081A62A6
_081A62C0:
	cmp r3, 0x6
	bne _081A636E
	ldr r6, [sp, 0x10]
	cmp r6, 0
	bne _081A62D0
	ldr r0, =0x00000351
	cmp r9, r0
	bhi _081A636E
_081A62D0:
	movs r2, 0
	adds r4, r2, r7
	cmp r2, r4
	bge _081A6302
	ldr r1, [sp, 0x18]
	ldrh r0, [r1]
	cmp r0, r5
	beq _081A6302
	adds r6, r4, 0
	ldr r3, =gUnknown_0203BC8C
	mov r12, r3
	mov r5, r8
	ldr r3, [sp, 0x14]
	add r3, sp
_081A62EC:
	adds r3, 0x2
	adds r2, 0x1
	cmp r2, r6
	bge _081A6302
	mov r1, r12
	ldr r0, [r1]
	adds r0, r5, r0
	ldrh r1, [r3]
	ldrh r0, [r0]
	cmp r1, r0
	bne _081A62EC
_081A6302:
	cmp r2, r4
	bne _081A636E
	movs r2, 0
	cmp r2, r4
	bge _081A633E
	ldr r3, =gBattleFrontierHeldItems
	mov r12, r3
	add r0, sp, 0x8
	ldr r6, [sp, 0x14]
	adds r3, r0, r6
	mov r0, r8
	str r0, [sp, 0x24]
	adds r5, r4, 0
_081A631C:
	ldrh r1, [r3]
	cmp r1, 0
	beq _081A6336
	ldr r6, =gUnknown_0203BC8C
	ldr r0, [r6]
	ldr r6, [sp, 0x24]
	adds r0, r6, r0
	ldrb r0, [r0, 0xA]
	lsls r0, 1
	add r0, r12
	ldrh r0, [r0]
	cmp r1, r0
	beq _081A633E
_081A6336:
	adds r3, 0x2
	adds r2, 0x1
	cmp r2, r5
	blt _081A631C
_081A633E:
	cmp r2, r4
	bne _081A636E
	lsls r4, r7, 1
	ldr r0, =gUnknown_0203BC8C
	ldr r1, [r0]
	add r1, r8
	ldrh r0, [r1]
	mov r2, r10
	strh r0, [r2]
	add r2, sp, 0x8
	adds r2, r4
	ldr r3, =gBattleFrontierHeldItems
	ldrb r0, [r1, 0xA]
	lsls r0, 1
	adds r0, r3
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, =gUnknown_03006298
	adds r4, r0
	mov r3, r9
	strh r3, [r4]
	movs r4, 0x2
	add r10, r4
	adds r7, 0x1
_081A636E:
	cmp r7, 0x3
	bne _081A627A
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A61B0

	thumb_func_start sub_81A63B8
sub_81A63B8: @ 81A63B8
	push {lr}
	ldr r0, =gTrainerBattleOpponent_A
	ldrh r0, [r0]
	movs r1, 0
	bl sub_8162614
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A63B8

	thumb_func_start sub_81A63CC
sub_81A63CC: @ 81A63CC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x2
	beq _081A63FC
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	b _081A6400
	.pool
_081A63FC:
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gSlateportBattleTentMons
_081A6400:
	str r0, [r1]
	movs r7, 0
	ldr r2, =gSaveBlock2Ptr
	mov r8, r2
_081A6408:
	mov r0, r8
	ldr r1, [r0]
	adds r0, r7, 0x3
	lsls r4, r0, 1
	adds r4, r0
	lsls r4, 2
	adds r1, r4
	ldr r0, =gUnknown_03006298
	lsls r6, r7, 1
	adds r6, r0
	ldrh r0, [r6]
	movs r2, 0xE7
	lsls r2, 4
	adds r1, r2
	strh r0, [r1]
	movs r0, 0x64
	adds r5, r7, 0
	muls r5, r0
	ldr r0, =gEnemyParty
	adds r5, r0
	adds r0, r5, 0
	movs r1, 0x28
	movs r2, 0
	bl GetBoxMonData
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4
	ldr r2, =0x00000e78
	adds r1, r2
	strb r0, [r1]
	adds r0, r5, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	mov r2, r8
	ldr r1, [r2]
	ldr r2, =0x00000e74
	adds r1, r2
	adds r1, r4
	str r0, [r1]
	adds r0, r5, 0
	movs r1, 0x2E
	movs r2, 0
	bl GetBoxMonData
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4
	ldr r2, =0x00000e79
	adds r1, r2
	strb r0, [r1]
	ldrh r1, [r6]
	ldr r0, =gUnknown_0203BC8C
	ldr r0, [r0]
	lsls r1, 4
	adds r1, r0
	ldrb r2, [r1, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r5, 0
	movs r1, 0xC
	bl SetMonData
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0x2
	bls _081A6408
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A63CC

	thumb_func_start sub_81A64C4
sub_81A64C4: @ 81A64C4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r3, 0x3
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0x2
	bne _081A6500
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gSlateportBattleTentMons
	str r0, [r1]
	movs r2, 0x1E
	str r2, [sp, 0x14]
	b _081A6518
	.pool
_081A6500:
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	ldrb r1, [r2]
	adds r0, r3, 0
	ands r0, r1
	movs r4, 0x32
	str r4, [sp, 0x14]
	cmp r0, 0
	beq _081A6518
	movs r5, 0x64
	str r5, [sp, 0x14]
_081A6518:
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x1
	bls _081A6522
	b _081A666C
_081A6522:
	bl ZeroPlayerPartyMons
	movs r0, 0
	mov r8, r0
	mov r1, sp
	adds r1, 0x12
	str r1, [sp, 0x1C]
	ldr r2, =gUnknown_0203BC8C
	mov r9, r2
_081A6534:
	ldr r4, =gSaveBlock2Ptr
	ldr r2, [r4]
	mov r5, r8
	lsls r5, 1
	mov r10, r5
	mov r3, r10
	add r3, r8
	lsls r3, 2
	adds r1, r2, r3
	movs r4, 0xE7
	lsls r4, 4
	adds r0, r1, r4
	ldrh r7, [r0]
	ldr r5, =0x00000e78
	adds r1, r5
	ldrb r6, [r1]
	movs r1, 0x64
	mov r0, r8
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	mov r4, r9
	ldr r1, [r4]
	lsls r4, r7, 4
	adds r1, r4, r1
	ldrh r1, [r1]
	movs r5, 0x1
	str r5, [sp]
	ldr r5, =0x00000e74
	adds r2, r5
	adds r2, r3
	ldr r2, [r2]
	str r2, [sp, 0x4]
	movs r2, 0
	str r2, [sp, 0x8]
	str r2, [sp, 0xC]
	ldr r2, [sp, 0x14]
	adds r3, r6, 0
	bl CreateMon
	movs r1, 0
	mov r2, r9
	ldr r0, [r2]
	adds r4, r0
	ldrb r4, [r4, 0xB]
	mov r5, r8
	adds r5, 0x1
	str r5, [sp, 0x18]
	movs r5, 0x5
_081A6596:
	adds r0, r4, 0
	movs r2, 0x1
	ands r0, r2
	cmp r0, 0
	beq _081A65A2
	adds r1, 0x1
_081A65A2:
	lsrs r4, 1
	subs r5, 0x1
	cmp r5, 0
	bge _081A6596
	movs r0, 0xFF
	lsls r0, 1
	bl __divsi3
	add r1, sp, 0x10
	strh r0, [r1]
	movs r4, 0x1
	movs r5, 0
	lsls r7, 4
	movs r0, 0x64
	mov r6, r8
	muls r6, r0
	ldr r3, =gPlayerParty
_081A65C4:
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0, 0xB]
	ands r0, r4
	cmp r0, 0
	beq _081A65E2
	adds r1, r5, 0
	adds r1, 0x1A
	adds r0, r6, r3
	add r2, sp, 0x10
	str r3, [sp, 0x20]
	bl SetMonData
	ldr r3, [sp, 0x20]
_081A65E2:
	lsls r0, r4, 25
	lsrs r4, r0, 24
	adds r5, 0x1
	cmp r5, 0x5
	ble _081A65C4
	movs r2, 0x64
	mov r4, r8
	muls r4, r2
	ldr r5, =gPlayerParty
	adds r0, r4, r5
	bl CalculateMonStats
	movs r0, 0
	ldr r1, [sp, 0x1C]
	strb r0, [r1]
	movs r6, 0
_081A6602:
	mov r2, r9
	ldr r0, [r2]
	adds r0, r7, r0
	lsls r1, r6, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r1, [r0]
	lsls r2, r6, 24
	lsrs r2, 24
	adds r0, r4, r5
	bl sub_81A7024
	adds r6, 0x1
	cmp r6, 0x3
	ble _081A6602
	movs r5, 0x64
	mov r4, r8
	muls r4, r5
	ldr r0, =gPlayerParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x20
	ldr r2, [sp, 0x1C]
	bl SetMonData
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r2, [r0, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0xC
	bl SetMonData
	mov r2, r10
	add r2, r8
	lsls r2, 2
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	adds r2, r0
	ldr r0, =0x00000e79
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x2E
	bl SetMonData
	ldr r1, [sp, 0x18]
	mov r8, r1
	cmp r1, 0x2
	bgt _081A666C
	b _081A6534
_081A666C:
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A667A
	cmp r0, 0x2
	beq _081A667A
	b _081A67AE
_081A667A:
	movs r2, 0
	mov r8, r2
	ldr r4, =gUnknown_0203BC8C
	mov r9, r4
_081A6682:
	ldr r5, =gSaveBlock2Ptr
	ldr r3, [r5]
	mov r0, r8
	adds r0, 0x3
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	adds r1, r3, r2
	movs r4, 0xE7
	lsls r4, 4
	adds r0, r1, r4
	ldrh r7, [r0]
	ldr r5, =0x00000e78
	adds r1, r5
	ldrb r6, [r1]
	movs r1, 0x64
	mov r0, r8
	muls r0, r1
	ldr r1, =gEnemyParty
	adds r0, r1
	mov r4, r9
	ldr r1, [r4]
	lsls r4, r7, 4
	adds r1, r4, r1
	ldrh r1, [r1]
	movs r5, 0x1
	str r5, [sp]
	ldr r5, =0x00000e74
	adds r3, r5
	adds r3, r2
	ldr r2, [r3]
	str r2, [sp, 0x4]
	movs r2, 0
	str r2, [sp, 0x8]
	str r2, [sp, 0xC]
	ldr r2, [sp, 0x14]
	adds r3, r6, 0
	bl CreateMon
	movs r1, 0
	mov r2, r9
	ldr r0, [r2]
	adds r4, r0
	ldrb r4, [r4, 0xB]
	mov r5, r8
	lsls r5, 1
	mov r10, r5
	mov r0, r8
	adds r0, 0x1
	str r0, [sp, 0x18]
	movs r5, 0x5
_081A66E8:
	adds r0, r4, 0
	movs r2, 0x1
	ands r0, r2
	cmp r0, 0
	beq _081A66F4
	adds r1, 0x1
_081A66F4:
	lsrs r4, 1
	subs r5, 0x1
	cmp r5, 0
	bge _081A66E8
	add r4, sp, 0x10
	movs r0, 0xFF
	lsls r0, 1
	bl __divsi3
	strh r0, [r4]
	movs r4, 0x1
	movs r5, 0
	lsls r7, 4
	movs r0, 0x64
	mov r6, r8
	muls r6, r0
	ldr r3, =gEnemyParty
_081A6716:
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0, 0xB]
	ands r0, r4
	cmp r0, 0
	beq _081A6734
	adds r1, r5, 0
	adds r1, 0x1A
	adds r0, r6, r3
	add r2, sp, 0x10
	str r3, [sp, 0x20]
	bl SetMonData
	ldr r3, [sp, 0x20]
_081A6734:
	lsls r0, r4, 25
	lsrs r4, r0, 24
	adds r5, 0x1
	cmp r5, 0x5
	ble _081A6716
	movs r2, 0x64
	mov r4, r8
	muls r4, r2
	ldr r5, =gEnemyParty
	adds r0, r4, r5
	bl CalculateMonStats
	movs r6, 0
_081A674E:
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7, r0
	lsls r1, r6, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r1, [r0]
	lsls r2, r6, 24
	lsrs r2, 24
	adds r0, r4, r5
	bl sub_81A7024
	adds r6, 0x1
	cmp r6, 0x3
	ble _081A674E
	movs r2, 0x64
	mov r4, r8
	muls r4, r2
	ldr r0, =gEnemyParty
	adds r4, r0
	mov r5, r9
	ldr r0, [r5]
	adds r0, r7, r0
	ldrb r2, [r0, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0xC
	bl SetMonData
	mov r2, r10
	add r2, r8
	lsls r2, 2
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	adds r2, r0
	ldr r5, =0x00000e9d
	adds r2, r5
	adds r0, r4, 0
	movs r1, 0x2E
	bl SetMonData
	ldr r0, [sp, 0x18]
	mov r8, r0
	cmp r0, 0x2
	bgt _081A67AE
	b _081A6682
_081A67AE:
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A64C4

	thumb_func_start sub_81A67EC
sub_81A67EC: @ 81A67EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4C
	ldr r1, =gUnknown_0203BC88
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	mov r0, sp
	adds r0, 0xC
	str r0, [sp, 0x38]
	mov r1, sp
	adds r1, 0x18
	str r1, [sp, 0x3C]
	ldr r2, =gSaveBlock2Ptr
	mov r9, r2
	movs r2, 0
	adds r3, r1, 0
	adds r1, r0, 0
	mov r0, sp
	movs r4, 0x5
	mov r8, r4
_081A681A:
	strh r2, [r0]
	strh r2, [r1]
	strh r2, [r3]
	adds r3, 0x2
	adds r1, 0x2
	adds r0, 0x2
	movs r5, 0x1
	negs r5, r5
	add r8, r5
	mov r4, r8
	cmp r4, 0
	bge _081A681A
	mov r5, r9
	ldr r0, [r5]
	ldr r7, =0x00000ca9
	adds r0, r7
	ldrb r4, [r0]
	lsls r4, 30
	lsrs r4, 30
	ldr r6, =0x000040ce
	adds r0, r6, 0
	bl VarGet
	lsls r0, 24
	ldr r1, [r5]
	lsls r4, 1
	lsrs r0, 22
	adds r4, r0
	ldr r5, =0x00000de2
	adds r1, r5
	adds r1, r4
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x24]
	adds r0, r6, 0
	bl VarGet
	lsls r0, 16
	lsrs r0, 16
	movs r2, 0
	cmp r0, 0x1
	bne _081A6878
	movs r2, 0x1
_081A6878:
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	mov r1, r9
	ldr r0, [r1]
	adds r0, r7
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _081A68B4
	movs r4, 0x1
	str r4, [sp, 0x28]
	b _081A68B8
	.pool
_081A68B4:
	movs r5, 0
	str r5, [sp, 0x28]
_081A68B8:
	adds r0, r2, 0
	ldr r1, [sp, 0x28]
	bl sub_81A6F70
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x2C]
	movs r0, 0
	mov r10, r0
	mov r8, r0
	ldr r1, [sp, 0x3C]
	str r1, [sp, 0x40]
	mov r2, sp
	str r2, [sp, 0x44]
	lsls r4, r0, 1
	str r4, [sp, 0x30]
	ldr r5, [sp, 0x38]
	adds r5, r4
	str r5, [sp, 0x34]
_081A68DE:
	ldr r0, [sp, 0x2C]
	cmp r8, r0
	bge _081A68EC
	ldr r0, [sp, 0x28]
	ldr r1, [sp, 0x24]
	movs r2, 0x1
	b _081A68F2
_081A68EC:
	ldr r0, [sp, 0x28]
	ldr r1, [sp, 0x24]
	movs r2, 0
_081A68F2:
	bl sub_81A6EF0
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r0, =gUnknown_0203BC8C
	ldr r1, [r0]
	lsls r2, r7, 4
	adds r4, r2, r1
	ldrh r1, [r4]
	mov r9, r2
	cmp r1, 0xC9
	beq _081A69E2
	movs r3, 0
	mov r2, r8
	adds r6, r3, r2
	cmp r3, r6
	bge _081A6950
	ldr r5, [sp, 0x34]
	ldrh r0, [r5]
	cmp r0, r7
	beq _081A6950
	mov r12, r4
	adds r2, r1, 0
	lsls r4, r3, 1
	ldr r1, [sp, 0x30]
	add r1, sp
	str r6, [sp, 0x48]
_081A6928:
	ldrh r0, [r1]
	cmp r0, r2
	bne _081A693A
	mov r0, r10
	cmp r0, 0
	bne _081A6950
	mov r5, r12
	ldrh r5, [r5]
	mov r10, r5
_081A693A:
	adds r4, 0x2
	adds r1, 0x2
	adds r3, 0x1
	ldr r0, [sp, 0x48]
	cmp r3, r0
	bge _081A6950
	ldr r5, [sp, 0x38]
	adds r0, r5, r4
	ldrh r0, [r0]
	cmp r0, r7
	bne _081A6928
_081A6950:
	cmp r3, r6
	bne _081A69E2
	movs r3, 0
	cmp r3, r6
	bge _081A699C
	ldr r0, =gBattleFrontierHeldItems
	mov r12, r0
	ldr r1, [sp, 0x30]
	ldr r2, [sp, 0x3C]
	adds r5, r1, r2
_081A6964:
	ldrh r4, [r5]
	cmp r4, 0
	beq _081A6994
	ldr r1, =gUnknown_0203BC8C
	ldr r0, [r1]
	mov r2, r9
	adds r1, r2, r0
	ldrb r0, [r1, 0xA]
	lsls r0, 1
	add r0, r12
	ldrh r0, [r0]
	cmp r4, r0
	bne _081A6994
	ldrh r0, [r1]
	cmp r0, r10
	bne _081A699C
	movs r4, 0
	mov r10, r4
	b _081A699C
	.pool
_081A6994:
	adds r5, 0x2
	adds r3, 0x1
	cmp r3, r6
	blt _081A6964
_081A699C:
	cmp r3, r6
	bne _081A69E2
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	mov r5, r8
	lsls r3, r5, 1
	adds r0, r3, r5
	lsls r0, 2
	adds r1, r0
	movs r0, 0xE7
	lsls r0, 4
	adds r1, r0
	strh r7, [r1]
	ldr r2, =gUnknown_0203BC8C
	ldr r1, [r2]
	add r1, r9
	ldrh r0, [r1]
	ldr r4, [sp, 0x44]
	strh r0, [r4]
	ldr r2, =gBattleFrontierHeldItems
	ldrb r0, [r1, 0xA]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	ldr r5, [sp, 0x40]
	strh r0, [r5]
	ldr r0, [sp, 0x38]
	adds r3, r0, r3
	strh r7, [r3]
	adds r5, 0x2
	str r5, [sp, 0x40]
	adds r4, 0x2
	str r4, [sp, 0x44]
	movs r1, 0x1
	add r8, r1
_081A69E2:
	mov r2, r8
	cmp r2, 0x6
	beq _081A69EA
	b _081A68DE
_081A69EA:
	add sp, 0x4C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A67EC

	thumb_func_start sub_81A6A08
sub_81A6A08: @ 81A6A08
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x18
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	movs r4, 0
	add r5, sp, 0x14
	ldr r7, =gScriptResult
	movs r1, 0
_081A6A1E:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x11
	bls _081A6A1E
	movs r4, 0
	ldr r0, =gUnknown_03006298
	mov r8, r0
	ldr r0, =gUnknown_0203BC8C
	ldr r6, [r0]
	ldr r1, =gBaseStats
	mov r12, r1
_081A6A3C:
	lsls r0, r4, 1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, 4
	adds r0, r6
	ldrh r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	mov r2, r12
	adds r3, r0, r2
	ldrb r2, [r3, 0x6]
	mov r0, sp
	adds r1, r0, r2
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldrb r1, [r3, 0x7]
	cmp r2, r1
	beq _081A6A70
	ldrb r0, [r3, 0x7]
	mov r2, sp
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_081A6A70:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A6A3C
	movs r0, 0
	strb r0, [r5]
	strb r0, [r5, 0x1]
	movs r4, 0x1
	adds r3, r5, 0
_081A6A84:
	ldrb r0, [r3]
	add r0, sp
	mov r2, sp
	adds r1, r2, r4
	ldrb r2, [r0]
	ldrb r0, [r1]
	cmp r2, r0
	bcs _081A6AAC
	strb r4, [r5]
	b _081A6AB2
	.pool
_081A6AAC:
	cmp r2, r0
	bne _081A6AB2
	strb r4, [r3, 0x1]
_081A6AB2:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x11
	bls _081A6A84
	ldrb r1, [r5]
	mov r4, sp
	adds r0, r4, r1
	ldrb r2, [r0]
	cmp r2, 0
	beq _081A6ADA
	ldrb r3, [r5, 0x1]
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r2, r0
	bhi _081A6AD6
	cmp r1, r3
	bne _081A6ADA
_081A6AD6:
	strh r1, [r7]
	b _081A6ADE
_081A6ADA:
	movs r0, 0x12
	strh r0, [r7]
_081A6ADE:
	add sp, 0x18
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81A6A08

	thumb_func_start sub_81A6AEC
sub_81A6AEC: @ 81A6AEC
	push {r4-r7,lr}
	sub sp, 0x8
	movs r7, 0
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	str r0, [r1]
	movs r4, 0
	movs r1, 0
_081A6AFC:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x7
	bls _081A6AFC
	movs r4, 0
_081A6B0E:
	ldr r1, =gUnknown_03006298
	lsls r0, r4, 1
	adds r0, r1
	ldrh r6, [r0]
	movs r5, 0
_081A6B18:
	ldr r0, =gUnknown_0203BC8C
	ldr r1, [r0]
	lsls r0, r6, 4
	adds r0, r1
	lsls r1, r5, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r0, [r0]
	bl sub_81A6BA4
	lsls r0, 24
	lsrs r0, 24
	mov r2, sp
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x3
	bls _081A6B18
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A6B0E
	ldr r1, =gScriptResult
	movs r0, 0
	strh r0, [r1]
	movs r4, 0x1
	adds r5, r1, 0
	ldr r3, =gBattleFactoryStyleRequiredMoveCounts
	adds r2, r5, 0
_081A6B5C:
	mov r1, sp
	adds r0, r1, r4
	subs r1, r4, 0x1
	adds r1, r3
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _081A6B74
	strh r4, [r2]
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_081A6B74:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x7
	bls _081A6B5C
	cmp r7, 0x2
	bls _081A6B86
	movs r0, 0x8
	strh r0, [r5]
_081A6B86:
	add sp, 0x8
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A6AEC

	thumb_func_start sub_81A6BA4
sub_81A6BA4: @ 81A6BA4
	push {r4-r6,lr}
	lsls r0, 16
	lsrs r5, r0, 16
	movs r2, 0
	ldr r6, =gBattleFactoryStyleMoveListPointers
_081A6BAE:
	movs r3, 0
	lsls r0, r2, 2
	adds r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	adds r4, r2, 0x1
	cmp r0, 0
	beq _081A6BE4
	lsls r0, r4, 24
	lsrs r2, r0, 24
_081A6BC2:
	lsls r0, r3, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r5
	bne _081A6BD4
	adds r0, r2, 0
	b _081A6BEE
	.pool
_081A6BD4:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	lsls r0, r3, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0
	bne _081A6BC2
_081A6BE4:
	lsls r0, r4, 24
	lsrs r2, r0, 24
	cmp r2, 0x6
	bls _081A6BAE
	movs r0, 0
_081A6BEE:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_81A6BA4

	thumb_func_start sub_81A6BF4
sub_81A6BF4: @ 81A6BF4
	push {lr}
	movs r2, 0
	ldr r1, =gMapHeader
	ldr r3, =0xfffffea5
	adds r0, r3, 0
	ldrh r1, [r1, 0x12]
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bhi _081A6C0C
	movs r2, 0x1
_081A6C0C:
	adds r0, r2, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A6BF4

	thumb_func_start sub_81A6C1C
sub_81A6C1C: @ 81A6C1C
	push {r4,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x2
	beq _081A6C48
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gBattleFrontierMons
	b _081A6C4C
	.pool
_081A6C48:
	ldr r1, =gUnknown_0203BC8C
	ldr r0, =gSlateportBattleTentMons
_081A6C4C:
	str r0, [r1]
	movs r4, 0
_081A6C50:
	movs r0, 0x64
	muls r0, r4
	ldr r1, =gPlayerParty
	adds r0, r1
	ldr r1, =gSaveBlock2Ptr
	ldr r2, [r1]
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r2, r1
	movs r1, 0xE7
	lsls r1, 4
	adds r2, r1
	ldrh r2, [r2]
	ldr r1, =gUnknown_0203BC8C
	ldr r1, [r1]
	lsls r2, 4
	adds r2, r1
	ldrb r2, [r2, 0xA]
	lsls r2, 1
	ldr r1, =gBattleFrontierHeldItems
	adds r2, r1
	movs r1, 0xC
	bl SetMonData
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A6C50
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A6C1C

	thumb_func_start sub_81A6CA8
sub_81A6CA8: @ 81A6CA8
	push {lr}
	lsls r0, 24
	lsls r1, 24
	lsrs r1, 24
	negs r2, r1
	orrs r2, r1
	lsrs r2, 31
	lsrs r1, r0, 24
	cmp r1, 0x8
	bls _081A6CBE
	movs r1, 0x7
_081A6CBE:
	ldr r0, =gUnknown_08612184
	lsls r1, 1
	adds r1, r2, r1
	adds r1, r0
	ldrb r0, [r1]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A6CA8

	thumb_func_start sub_81A6CD0
sub_81A6CD0: @ 81A6CD0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x34
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	str r0, [sp, 0x2C]
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 24
	ldr r1, [r4]
	ldr r3, [sp, 0x2C]
	lsls r2, r3, 1
	lsrs r0, 22
	adds r2, r0
	ldr r7, =0x00000de2
	adds r1, r7
	adds r1, r2
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 24
	lsrs r1, r0, 24
	str r1, [sp, 0x30]
	movs r2, 0x80
	lsls r2, 18
	adds r0, r2
	lsrs r0, 24
	movs r1, 0
	bl sub_81A6CA8
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x24]
	bl sub_8165C40
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x20]
	movs r3, 0
	mov r9, r3
	ldr r1, [r4]
	ldrb r4, [r1, 0xA]
	ldrb r0, [r1, 0xB]
	lsls r0, 8
	orrs r4, r0
	ldrb r0, [r1, 0xC]
	lsls r0, 16
	orrs r4, r0
	ldrb r0, [r1, 0xD]
	lsls r0, 24
	orrs r4, r0
	str r4, [sp, 0x28]
_081A6D4C:
	ldr r0, [sp, 0x2C]
	ldr r1, [sp, 0x30]
	movs r2, 0
	bl sub_81A6EF0
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r7, =gUnknown_0203BC8C
	ldr r1, [r7]
	lsls r0, r5, 4
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0xC9
	bne _081A6D6A
	b _081A6EB8
_081A6D6A:
	ldr r0, [sp, 0x20]
	cmp r0, 0x32
	bne _081A6D78
	ldr r0, =0x00000351
	cmp r5, r0
	bls _081A6D78
	b _081A6EB8
_081A6D78:
	movs r2, 0
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	movs r3, 0xE7
	lsls r3, 4
	adds r0, r3
	ldrh r0, [r0]
	cmp r5, r0
	beq _081A6DA2
	adds r4, r1, 0
	movs r1, 0
_081A6D8E:
	adds r1, 0xC
	adds r2, 0x1
	cmp r2, 0x5
	bgt _081A6DA2
	ldr r0, [r4]
	adds r0, r1
	adds r0, r3
	ldrh r0, [r0]
	cmp r5, r0
	bne _081A6D8E
_081A6DA2:
	cmp r2, 0x6
	beq _081A6DA8
	b _081A6EB8
_081A6DA8:
	movs r4, 0
	cmp r4, r9
	bge _081A6DDC
	add r2, sp, 0xC
	ldr r7, =gUnknown_0203BC8C
	ldr r0, [r7]
	lsls r1, r5, 4
	adds r0, r1, r0
	ldrh r2, [r2]
	adds r7, r1, 0
	ldrh r0, [r0]
	cmp r2, r0
	beq _081A6DDC
	ldr r6, =gUnknown_0203BC8C
	adds r3, r7, 0
	add r2, sp, 0xC
_081A6DC8:
	adds r2, 0x2
	adds r4, 0x1
	cmp r4, r9
	bge _081A6DDC
	ldr r0, [r6]
	adds r0, r3, r0
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	bne _081A6DC8
_081A6DDC:
	cmp r4, r9
	bne _081A6EB8
	movs r4, 0
	cmp r4, r9
	bge _081A6E0C
	ldr r7, =gBattleFrontierHeldItems
	ldr r6, =gUnknown_0203BC8C
	add r2, sp, 0x14
	lsls r3, r5, 4
_081A6DEE:
	ldrh r1, [r2]
	cmp r1, 0
	beq _081A6E04
	ldr r0, [r6]
	adds r0, r3, r0
	ldrb r0, [r0, 0xA]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	cmp r1, r0
	beq _081A6E0C
_081A6E04:
	adds r2, 0x2
	adds r4, 0x1
	cmp r4, r9
	blt _081A6DEE
_081A6E0C:
	cmp r4, r9
	bne _081A6EB8
	mov r0, r9
	lsls r2, r0, 1
	mov r1, sp
	adds r1, r2
	adds r1, 0xC
	ldr r3, =gUnknown_0203BC8C
	ldr r4, [r3]
	lsls r5, 4
	mov r8, r5
	add r4, r8
	ldrh r0, [r4]
	strh r0, [r1]
	add r1, sp, 0x14
	adds r1, r2
	ldr r2, =gBattleFrontierHeldItems
	ldrb r0, [r4, 0xA]
	lsls r0, 1
	adds r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, 0x64
	mov r5, r9
	muls r5, r0
	ldr r6, =gEnemyParty
	adds r0, r5, r6
	ldrh r1, [r4]
	ldr r7, [sp, 0x20]
	lsls r2, r7, 24
	ldrb r3, [r4, 0xC]
	ldr r7, [sp, 0x24]
	str r7, [sp]
	ldrb r4, [r4, 0xB]
	str r4, [sp, 0x4]
	ldr r4, [sp, 0x28]
	str r4, [sp, 0x8]
	lsrs r2, 24
	bl sub_8068634
	add r0, sp, 0x1C
	movs r7, 0
	strb r7, [r0]
	movs r4, 0
	mov r7, r8
	mov r10, r0
	movs r0, 0x1
	add r0, r9
	mov r8, r0
_081A6E6E:
	ldr r1, =gUnknown_0203BC8C
	ldr r0, [r1]
	adds r0, r7, r0
	lsls r1, r4, 1
	adds r0, 0x2
	adds r0, r1
	ldrh r1, [r0]
	lsls r2, r4, 24
	lsrs r2, 24
	adds r0, r5, r6
	bl sub_81A7024
	adds r4, 0x1
	cmp r4, 0x3
	ble _081A6E6E
	movs r0, 0x64
	mov r4, r9
	muls r4, r0
	ldr r0, =gEnemyParty
	adds r4, r0
	adds r0, r4, 0
	movs r1, 0x20
	mov r2, r10
	bl SetMonData
	ldr r2, =gUnknown_0203BC8C
	ldr r0, [r2]
	adds r0, r7, r0
	ldrb r2, [r0, 0xA]
	lsls r2, 1
	ldr r0, =gBattleFrontierHeldItems
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0xC
	bl SetMonData
	mov r9, r8
_081A6EB8:
	mov r3, r9
	cmp r3, 0x3
	beq _081A6EC0
	b _081A6D4C
_081A6EC0:
	add sp, 0x34
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A6CD0

	thumb_func_start sub_81A6EF0
sub_81A6EF0: @ 81A6EF0
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r3, r1, 24
	lsls r2, 24
	lsrs r2, 24
	movs r4, 0x8
	negs r1, r0
	orrs r1, r0
	asrs r1, 31
	ands r1, r4
	adds r4, r1, 0
	cmp r3, 0x6
	bhi _081A6F2C
	cmp r2, 0
	beq _081A6F20
	ldr r2, =gUnknown_08612194
	adds r1, r3
	adds r1, 0x1
	b _081A6F38
	.pool
_081A6F20:
	ldr r2, =gUnknown_08612194
	adds r1, r3
	b _081A6F38
	.pool
_081A6F2C:
	adds r1, r3, 0
	cmp r1, 0x7
	beq _081A6F34
	movs r1, 0x7
_081A6F34:
	ldr r2, =gUnknown_08612194
	adds r1, r4, r1
_081A6F38:
	lsls r1, 2
	adds r0, r2, 0x2
	adds r0, r1, r0
	adds r1, r2
	ldrh r0, [r0]
	ldrh r4, [r1]
	subs r0, r4
	adds r0, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r5, 0
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r4, r0, r4
	lsls r4, 16
	lsrs r0, r4, 16
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A6EF0

	thumb_func_start sub_81A6F70
sub_81A6F70: @ 81A6F70
	push {lr}
	lsls r0, 24
	lsls r1, 24
	ldr r2, =gSaveBlock2Ptr
	ldr r2, [r2]
	lsrs r1, 23
	lsrs r0, 22
	adds r1, r0
	ldr r0, =0x00000df2
	adds r2, r0
	adds r2, r1
	ldrb r1, [r2]
	movs r0, 0
	cmp r1, 0xE
	bls _081A6FA8
	movs r0, 0x1
	cmp r1, 0x15
	bls _081A6FA8
	movs r0, 0x2
	cmp r1, 0x1C
	bls _081A6FA8
	movs r0, 0x3
	cmp r1, 0x23
	bls _081A6FA8
	movs r0, 0x5
	cmp r1, 0x2A
	bhi _081A6FA8
	movs r0, 0x4
_081A6FA8:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A6F70

	thumb_func_start GetAiScriptsInBattleFactory
GetAiScriptsInBattleFactory: @ 81A6FB4
	push {r4,r5,lr}
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	ldr r1, =0x00000ca9
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r4, r0, 30
	cmp r4, 0x2
	beq _081A6FF8
	ldr r0, =0x000040ce
	bl VarGet
	lsls r0, 16
	ldr r1, [r5]
	lsls r2, r4, 1
	lsrs r0, 14
	adds r2, r0
	ldr r0, =0x00000de2
	adds r1, r0
	adds r1, r2
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r0, =gTrainerBattleOpponent_A
	ldrh r1, [r0]
	ldr r0, =0x000003fe
	cmp r1, r0
	beq _081A7018
	cmp r2, 0x1
	bgt _081A7014
_081A6FF8:
	movs r0, 0
	b _081A701E
	.pool
_081A7014:
	cmp r2, 0x3
	ble _081A701C
_081A7018:
	movs r0, 0x7
	b _081A701E
_081A701C:
	movs r0, 0x1
_081A701E:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end GetAiScriptsInBattleFactory

	thumb_func_start sub_81A7024
sub_81A7024: @ 81A7024
	push {lr}
	lsls r1, 16
	lsls r2, 24
	lsrs r2, 24
	lsrs r1, 16
	cmp r1, 0xD8
	bne _081A7034
	movs r1, 0xDA
_081A7034:
	bl SetMonMoveSlot
	pop {r0}
	bx r0
	thumb_func_end sub_81A7024

	thumb_func_start sub_81A703C
sub_81A703C: @ 81A703C
	push {lr}
	ldr r1, =gUnknown_086125F8
	ldr r0, =gSpecialVar_0x8004
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A703C

	thumb_func_start sub_81A705C
sub_81A705C: @ 81A705C
	push {lr}
	bl sub_81A79EC
	ldr r1, =gUnknown_0300128C
	strb r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A705C

	thumb_func_start sub_81A7070
sub_81A7070: @ 81A7070
	push {r4-r7,lr}
	ldr r0, =0x00004010
	movs r1, 0x1C
	bl VarSet
	ldr r0, =0x00004011
	movs r1, 0xE2
	bl VarSet
	movs r4, 0x1
	movs r6, 0
	movs r5, 0
	movs r7, 0
	ldr r0, =gUnknown_0300128C
	ldrb r0, [r0]
	cmp r0, 0x8
	bhi _081A7132
	lsls r0, 2
	ldr r1, =_081A70AC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A70AC:
	.4byte _081A70D0
	.4byte _081A70DA
	.4byte _081A70DE
	.4byte _081A70E8
	.4byte _081A70FC
	.4byte _081A70D6
	.4byte _081A7100
	.4byte _081A7108
	.4byte _081A710E
_081A70D0:
	movs r0, 0
	bl sub_81A82A4
_081A70D6:
	movs r4, 0
	b _081A711A
_081A70DA:
	movs r5, 0x1C
	b _081A711A
_081A70DE:
	bl sub_81A7B58
	lsls r0, 24
	lsrs r5, r0, 24
	b _081A711A
_081A70E8:
	movs r5, 0x30
	ldr r0, =gUnknown_0300128D
	ldrb r0, [r0]
	movs r7, 0xE1
	cmp r0, 0x1
	bne _081A7118
	movs r7, 0xE2
	b _081A7118
	.pool
_081A70FC:
	movs r5, 0x30
	b _081A711A
_081A7100:
	movs r0, 0x1
	bl sub_81A82A4
	b _081A7114
_081A7108:
	bl sub_81A8374
	b _081A70D6
_081A710E:
	movs r0, 0x5
	bl sub_81A5030
_081A7114:
	movs r7, 0x1C
	movs r4, 0
_081A7118:
	movs r6, 0x1
_081A711A:
	cmp r4, 0x1
	bne _081A7126
	ldr r0, =0x00004010
	adds r1, r5, 0
	bl VarSet
_081A7126:
	cmp r6, 0x1
	bne _081A7132
	ldr r0, =0x00004011
	adds r1, r7, 0
	bl VarSet
_081A7132:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7070

	thumb_func_start sub_81A7140
sub_81A7140: @ 81A7140
	push {lr}
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r2, r0, 30
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x4
	bhi _081A723A
	lsls r0, 2
	ldr r1, =_081A7174
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A7174:
	.4byte _081A7188
	.4byte _081A71A0
	.4byte _081A71C4
	.4byte _081A71E8
	.4byte _081A720C
_081A7188:
	ldr r0, =gScriptResult
	ldr r1, [r3]
	ldr r3, =0x00000e02
	adds r1, r3
	ldrh r1, [r1]
	strh r1, [r0]
	b _081A723A
	.pool
_081A71A0:
	ldr r2, =gScriptResult
	ldr r1, [r3]
	ldr r3, =0x00000ca9
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r3, =0x00000e04
	adds r1, r3
	adds r1, r0
	ldrh r0, [r1]
	b _081A7238
	.pool
_081A71C4:
	ldr r2, =gScriptResult
	ldr r1, [r3]
	ldr r3, =0x00000ca9
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r3, =0x00000e08
	adds r1, r3
	adds r1, r0
	ldrh r0, [r1]
	b _081A7238
	.pool
_081A71E8:
	ldr r2, =gScriptResult
	ldr r1, [r3]
	ldr r3, =0x00000ca9
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r3, =0x00000e0c
	adds r1, r3
	adds r1, r0
	ldrh r0, [r1]
	b _081A7238
	.pool
_081A720C:
	cmp r2, 0
	beq _081A7228
	ldr r2, =gScriptResult
	ldr r0, [r3]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 4
	b _081A7236
	.pool
_081A7228:
	ldr r2, =gScriptResult
	ldr r0, [r3]
	ldr r3, =0x00000cdc
	adds r0, r3
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 3
_081A7236:
	ands r0, r1
_081A7238:
	strh r0, [r2]
_081A723A:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7140

	thumb_func_start sub_81A7248
sub_81A7248: @ 81A7248
	push {r4,r5,lr}
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r3, r0, 30
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	adds r2, r1, 0
	cmp r0, 0x4
	bls _081A7264
	b _081A73AA
_081A7264:
	lsls r0, 2
	ldr r1, =_081A7280
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A7280:
	.4byte _081A7294
	.4byte _081A72AC
	.4byte _081A72D8
	.4byte _081A7314
	.4byte _081A7344
_081A7294:
	ldr r0, [r2]
	ldr r1, =gSpecialVar_0x8006
	ldrh r1, [r1]
	ldr r5, =0x00000e02
	adds r0, r5
	strh r1, [r0]
	b _081A73AA
	.pool
_081A72AC:
	ldr r0, =gSpecialVar_0x8006
	ldrh r3, [r0]
	ldr r0, =0x0000270f
	cmp r3, r0
	bls _081A72B8
	b _081A73AA
_081A72B8:
	ldr r0, [r2]
	ldr r2, =0x00000ca9
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, 30
	lsrs r1, 29
	ldr r5, =0x00000e04
	b _081A732C
	.pool
_081A72D8:
	ldr r0, =gSpecialVar_0x8006
	ldrh r4, [r0]
	adds r3, r4, 0
	ldr r0, =0x0000270f
	cmp r3, r0
	bhi _081A73AA
	ldr r1, [r2]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r2, r0, 30
	lsrs r0, r2, 29
	ldr r5, =0x00000e08
	adds r1, r5
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r3
	bcs _081A73AA
	lsrs r0, r2, 29
	adds r0, r1, r0
	strh r4, [r0]
	b _081A73AA
	.pool
_081A7314:
	ldr r0, =gSpecialVar_0x8006
	ldrh r3, [r0]
	ldr r0, =0x0000270f
	cmp r3, r0
	bhi _081A73AA
	ldr r0, [r2]
	ldr r2, =0x00000ca9
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, 30
	lsrs r1, 29
	ldr r5, =0x00000e0c
_081A732C:
	adds r0, r5
	adds r0, r1
	strh r3, [r0]
	b _081A73AA
	.pool
_081A7344:
	cmp r3, 0
	beq _081A737C
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A7368
	ldr r0, [r2]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 4
	orrs r1, r2
	b _081A73A8
	.pool
_081A7368:
	ldr r0, [r2]
	ldr r2, =0x00000cdc
	adds r0, r2
	ldr r1, [r0]
	ldr r2, =0xfffff7ff
	b _081A73A6
	.pool
_081A737C:
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A739C
	ldr r0, [r2]
	ldr r5, =0x00000cdc
	adds r0, r5
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 3
	orrs r1, r2
	b _081A73A8
	.pool
_081A739C:
	ldr r0, [r2]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r1, [r0]
	ldr r2, =0xfffffbff
_081A73A6:
	ands r1, r2
_081A73A8:
	str r1, [r0]
_081A73AA:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7248

	thumb_func_start sub_81A73B8
sub_81A73B8: @ 81A73B8
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0xE
	bls _081A73DC
	ldr r1, =gScriptResult
	movs r0, 0x1
	b _081A73E0
	.pool
_081A73DC:
	ldr r1, =gScriptResult
	movs r0, 0
_081A73E0:
	strh r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A73B8

	thumb_func_start sub_81A73EC
sub_81A73EC: @ 81A73EC
	ldr r0, =gScriptResult
	ldr r1, =gUnknown_0300128C
	ldrb r1, [r1]
	strh r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_81A73EC

	thumb_func_start sub_81A7400
sub_81A7400: @ 81A7400
	ldr r1, =gUnknown_0300128E
	movs r0, 0x1
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A7400

	thumb_func_start sub_81A740C
sub_81A740C: @ 81A740C
	ldr r1, =gUnknown_0300128E
	movs r0, 0
	strb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A740C

	thumb_func_start sub_81A7418
sub_81A7418: @ 81A7418
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl save_serialize_map
	movs r0, 0x1
	bl TrySavingData
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7418

	thumb_func_start nullsub_76
nullsub_76: @ 81A7460
	bx lr
	thumb_func_end nullsub_76

	thumb_func_start nullsub_124
nullsub_124: @ 81A7464
	bx lr
	thumb_func_end nullsub_124

	thumb_func_start sub_81A7468
sub_81A7468: @ 81A7468
	push {lr}
	ldr r0, =gUnknown_03001290
	ldr r0, [r0]
	cmp r0, 0x20
	beq _081A748E
	cmp r0, 0x20
	bhi _081A7484
	cmp r0, 0x7
	beq _081A74BC
	cmp r0, 0x10
	beq _081A7498
	b _081A74C2
	.pool
_081A7484:
	cmp r0, 0x40
	beq _081A74B0
	cmp r0, 0x80
	beq _081A74A4
	b _081A74C2
_081A748E:
	ldr r1, =gScriptResult
	movs r0, 0
	b _081A74C0
	.pool
_081A7498:
	ldr r1, =gScriptResult
	movs r0, 0x1
	b _081A74C0
	.pool
_081A74A4:
	ldr r1, =gScriptResult
	movs r0, 0x2
	b _081A74C0
	.pool
_081A74B0:
	ldr r1, =gScriptResult
	movs r0, 0x3
	b _081A74C0
	.pool
_081A74BC:
	ldr r1, =gScriptResult
	movs r0, 0x4
_081A74C0:
	strh r0, [r1]
_081A74C2:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7468

	thumb_func_start sub_81A74CC
sub_81A74CC: @ 81A74CC
	ldr r0, =gScriptResult
	ldr r1, =gUnknown_0300128D
	ldrb r1, [r1]
	strh r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_81A74CC

	thumb_func_start sub_81A74E0
sub_81A74E0: @ 81A74E0
	push {r4,lr}
	bl Random
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	movs r0, 0x1
	ands r4, r0
	adds r4, 0x1
	adds r0, r4, 0
	bl sub_81A7F38
	ldr r0, =gScriptResult
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A74E0

	thumb_func_start sub_81A7508
sub_81A7508: @ 81A7508
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0x4
	bhi _081A7538
	ldr r1, =gUnknown_0861231C
	ldr r0, =gUnknown_03001294
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0x2]
	b _081A7560
	.pool
_081A7538:
	cmp r0, 0xA
	bhi _081A7554
	ldr r1, =gUnknown_0861231C
	ldr r0, =gUnknown_03001294
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0x3]
	b _081A7560
	.pool
_081A7554:
	ldr r1, =gUnknown_0861231C
	ldr r0, =gUnknown_03001294
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	ldrb r1, [r0, 0x4]
_081A7560:
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_086123E4
	adds r0, r1
	bl ConvertBattleFrontierTrainerSpeechToString
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7508

	thumb_func_start sub_81A7580
sub_81A7580: @ 81A7580
	push {lr}
	ldr r0, =sub_81A7EE4
	movs r1, 0x2
	bl CreateTask
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7580

	thumb_func_start sub_81A7594
sub_81A7594: @ 81A7594
	push {r4-r6,lr}
	sub sp, 0x4
	adds r5, r0, 0
	movs r4, 0
	movs r1, 0
_081A759E:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _081A759E
	adds r0, r5, 0
	movs r1, 0x3A
	bl GetMonData
	lsls r2, r0, 16
	mov r1, sp
	strb r0, [r1]
	mov r0, sp
	lsrs r2, 24
	strb r2, [r0, 0x1]
	adds r0, r5, 0
	movs r1, 0x39
	mov r2, sp
	bl SetMonData
	adds r0, r5, 0
	movs r1, 0x15
	bl GetMonData
	lsls r0, 24
	lsrs r6, r0, 24
	movs r4, 0
_081A75DA:
	adds r1, r4, 0
	adds r1, 0xD
	adds r0, r5, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	adds r1, r6, 0
	adds r2, r4, 0
	bl CalculatePPWithBonus
	mov r1, sp
	strb r0, [r1]
	adds r1, r4, 0
	adds r1, 0x11
	adds r0, r5, 0
	mov r2, sp
	bl SetMonData
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _081A75DA
	mov r0, sp
	movs r1, 0
	strb r1, [r0]
	strb r1, [r0, 0x1]
	strb r1, [r0, 0x2]
	strb r1, [r0, 0x3]
	adds r0, r5, 0
	movs r1, 0x37
	mov r2, sp
	bl SetMonData
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_81A7594

	thumb_func_start sub_81A7628
sub_81A7628: @ 81A7628
	push {r4,lr}
	adds r4, r1, 0
	bl GetMonAbility
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0
	cmp r4, 0x20
	beq _081A7652
	cmp r4, 0x20
	bhi _081A7648
	cmp r4, 0x7
	beq _081A7664
	cmp r4, 0x10
	beq _081A7658
	b _081A7674
_081A7648:
	cmp r4, 0x40
	beq _081A765E
	cmp r4, 0x80
	beq _081A766E
	b _081A7674
_081A7652:
	cmp r0, 0x28
	bne _081A7674
	b _081A7672
_081A7658:
	cmp r0, 0x29
	bne _081A7674
	b _081A7672
_081A765E:
	cmp r0, 0x7
	bne _081A7674
	b _081A7672
_081A7664:
	cmp r0, 0xF
	beq _081A7672
	cmp r0, 0x48
	bne _081A7674
	b _081A7672
_081A766E:
	cmp r0, 0x11
	bne _081A7674
_081A7672:
	movs r1, 0x1
_081A7674:
	adds r0, r1, 0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81A7628

	thumb_func_start sub_81A767C
sub_81A767C: @ 81A767C
	push {lr}
	lsls r0, 16
	lsrs r2, r0, 16
	movs r3, 0
	cmp r1, 0x20
	beq _081A76C4
	cmp r1, 0x20
	bhi _081A7696
	cmp r1, 0x7
	beq _081A771C
	cmp r1, 0x10
	beq _081A7704
	b _081A771C
_081A7696:
	cmp r1, 0x40
	beq _081A76E0
	cmp r1, 0x80
	bne _081A771C
	ldr r1, =gBaseStats
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0, 0x6]
	cmp r2, 0x8
	beq _081A771A
	cmp r2, 0x3
	beq _081A771A
	ldrb r0, [r0, 0x7]
	cmp r0, 0x8
	beq _081A771A
	cmp r0, 0x3
	bne _081A771C
	b _081A771A
	.pool
_081A76C4:
	ldr r0, =gBaseStats
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x6]
	cmp r0, 0xF
	beq _081A771A
	ldrb r0, [r1, 0x7]
	cmp r0, 0xF
	bne _081A771C
	b _081A771A
	.pool
_081A76E0:
	ldr r1, =gBaseStats
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0, 0x6]
	cmp r2, 0x4
	beq _081A771A
	cmp r2, 0xD
	beq _081A771A
	ldrb r0, [r0, 0x7]
	cmp r0, 0x4
	beq _081A771A
	cmp r0, 0xD
	bne _081A771C
	b _081A771A
	.pool
_081A7704:
	ldr r0, =gBaseStats
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x6]
	cmp r0, 0xA
	beq _081A771A
	ldrb r0, [r1, 0x7]
	cmp r0, 0xA
	bne _081A771C
_081A771A:
	movs r3, 0x1
_081A771C:
	adds r0, r3, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A767C

	thumb_func_start sub_81A7728
sub_81A7728: @ 81A7728
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r6, 0
_081A7736:
	mov r1, sp
	adds r0, r1, r6
	strb r6, [r0]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x2
	bls _081A7736
	movs r4, 0
	mov r8, r4
_081A774A:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r6, r0, 24
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	mov r1, sp
	adds r2, r1, r6
	ldrb r3, [r2]
	adds r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	cmp r0, 0x9
	bls _081A774A
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r4, =0x00000cb2
	adds r0, r4
	ldrh r0, [r0]
	movs r1, 0x1
	mov r10, r1
	cmp r0, 0x4
	bls _081A77A8
	movs r4, 0x3
	mov r10, r4
	cmp r0, 0x9
	bhi _081A77A8
	movs r0, 0x2
	mov r10, r0
_081A77A8:
	movs r1, 0
	str r1, [sp, 0x4]
	ldr r7, =gUnknown_03001290
_081A77AE:
	movs r4, 0
	mov r9, r4
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	adds r1, r0, 0
	cmp r0, 0x22
	bhi _081A77DC
	movs r0, 0x80
	b _081A77FC
	.pool
_081A77DC:
	cmp r0, 0x3B
	bhi _081A77E4
	movs r0, 0x20
	b _081A77FC
_081A77E4:
	cmp r0, 0x4F
	bhi _081A77EC
	movs r0, 0x40
	b _081A77FC
_081A77EC:
	cmp r1, 0x59
	bhi _081A77FA
	movs r0, 0x7
	b _081A77FC
_081A77F4:
	movs r0, 0x1
	mov r9, r0
	b _081A786E
_081A77FA:
	movs r0, 0x10
_081A77FC:
	str r0, [r7]
	ldr r0, =gUnknown_03001290
	ldr r0, [r0]
	ldr r1, [sp, 0x4]
	cmp r1, r0
	beq _081A7874
	str r0, [sp, 0x4]
	movs r4, 0
	mov r8, r4
	movs r6, 0
_081A7810:
	mov r1, sp
	adds r0, r1, r6
	ldrb r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0x37
	bl GetMonData
	bl pokemon_ailments_get_primary
	lsls r0, 24
	cmp r0, 0
	bne _081A7860
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _081A7860
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r1, [r7]
	adds r0, r4, 0
	bl sub_81A767C
	lsls r0, 24
	cmp r0, 0
	beq _081A77F4
_081A7860:
	cmp r8, r10
	beq _081A786E
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x2
	bls _081A7810
_081A786E:
	mov r4, r8
	cmp r4, 0
	beq _081A78CC
_081A7874:
	mov r0, r9
	cmp r0, 0
	beq _081A77AE
	ldr r0, =gUnknown_03001290
	ldr r0, [r0]
	cmp r0, 0x20
	beq _081A7898
	cmp r0, 0x20
	bhi _081A78D0
	cmp r0, 0x7
	beq _081A78D0
	cmp r0, 0x10
	beq _081A78A4
	b _081A78D0
	.pool
_081A7898:
	ldr r1, =gUnknown_0300128D
	movs r0, 0x1
	b _081A78D4
	.pool
_081A78A4:
	bl Random
	lsls r0, 16
	lsrs r1, r0, 16
	movs r2, 0x1
	ands r1, r2
	cmp r1, 0
	beq _081A78C0
	ldr r0, =gUnknown_0300128D
	strb r2, [r0]
	b _081A78D6
	.pool
_081A78C0:
	ldr r0, =gUnknown_0300128D
	strb r1, [r0]
	b _081A78D6
	.pool
_081A78CC:
	movs r0, 0
	b _081A7956
_081A78D0:
	ldr r1, =gUnknown_0300128D
	movs r0, 0
_081A78D4:
	strb r0, [r1]
_081A78D6:
	movs r1, 0
	mov r8, r1
	movs r6, 0
_081A78DC:
	mov r4, sp
	adds r0, r4, r6
	ldrb r1, [r0]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r5, r1, r0
	adds r0, r5, 0
	movs r1, 0x37
	bl GetMonData
	bl pokemon_ailments_get_primary
	lsls r0, 24
	cmp r0, 0
	bne _081A7946
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _081A7946
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r7, =gUnknown_03001290
	ldr r1, [r7]
	adds r0, r5, 0
	bl sub_81A7628
	lsls r0, 24
	cmp r0, 0
	bne _081A7946
	ldr r1, [r7]
	adds r0, r4, 0
	bl sub_81A767C
	lsls r0, 24
	cmp r0, 0
	bne _081A7946
	adds r0, r5, 0
	movs r1, 0x37
	adds r2, r7, 0
	bl SetMonData
_081A7946:
	cmp r8, r10
	beq _081A7954
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x2
	bls _081A78DC
_081A7954:
	movs r0, 0x1
_081A7956:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A7728

	thumb_func_start sub_81A7974
sub_81A7974: @ 81A7974
	push {r4-r7,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	movs r7, 0x1
	cmp r0, 0x4
	bls _081A798E
	movs r7, 0x3
	cmp r0, 0x9
	bhi _081A798E
	movs r7, 0x2
_081A798E:
	movs r6, 0
	movs r5, 0
	b _081A79A2
	.pool
_081A799C:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
_081A79A2:
	cmp r5, 0x2
	bhi _081A79D8
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	bl pokemon_ailments_get_primary
	lsls r0, 24
	cmp r0, 0
	bne _081A79D4
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _081A79D4
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_081A79D4:
	cmp r6, r7
	bne _081A799C
_081A79D8:
	cmp r6, 0
	beq _081A79E4
	movs r0, 0x1
	b _081A79E6
	.pool
_081A79E4:
	movs r0, 0
_081A79E6:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81A7974

	thumb_func_start sub_81A79EC
sub_81A79EC: @ 81A79EC
	push {r4-r6,lr}
	sub sp, 0x8
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	movs r4, 0xE1
	lsls r4, 4
	adds r0, r4
	ldrb r2, [r0]
	movs r3, 0x78
	ands r3, r2
	adds r5, r1, 0
	cmp r3, 0x40
	bne _081A7A10
	lsls r0, r2, 25
	lsrs r0, 28
	b _081A7B48
	.pool
_081A7A10:
	ldr r0, =gSpecialVar_0x8007
	lsls r1, r2, 29
	ldrh r0, [r0]
	lsrs r1, 29
	cmp r0, r1
	bne _081A7A34
	cmp r3, 0x18
	bne _081A7A24
	bl sub_81A7728
_081A7A24:
	ldr r0, [r5]
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 25
	lsrs r0, 28
	b _081A7B48
	.pool
_081A7A34:
	movs r2, 0
	ldr r3, =gUnknown_0861266C
	movs r1, 0
_081A7A3A:
	mov r4, sp
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x7
	bls _081A7A3A
	movs r4, 0x8
	ldr r0, [r5]
	movs r6, 0xE1
	lsls r6, 4
	adds r0, r6
	ldrb r0, [r0]
	lsls r0, 25
	lsrs r0, 28
	adds r0, r3
	ldrb r1, [r0]
	movs r2, 0
	adds r5, r3, 0
	movs r3, 0x1
_081A7A64:
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, r1
	bne _081A7A78
	mov r6, sp
	adds r0, r6, r2
	strb r3, [r0]
	subs r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_081A7A78:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x7
	bls _081A7A64
	mov r0, sp
	ldrb r0, [r0, 0x7]
	cmp r0, 0x1
	beq _081A7AA0
	bl sub_81A8554
	lsls r0, 24
	cmp r0, 0
	bne _081A7AA0
	mov r1, sp
	movs r0, 0x1
	strb r0, [r1, 0x7]
	subs r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_081A7AA0:
	mov r0, sp
	ldrb r0, [r0, 0x3]
	cmp r0, 0x1
	beq _081A7ABE
	bl sub_81A7974
	lsls r0, 24
	cmp r0, 0
	bne _081A7ABE
	mov r1, sp
	movs r0, 0x1
	strb r0, [r1, 0x3]
	subs r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_081A7ABE:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0xE1
	lsls r1, 4
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081A7AFA
	mov r0, sp
	ldrb r0, [r0, 0x1]
	cmp r0, 0x1
	beq _081A7AE6
	mov r1, sp
	movs r0, 0x1
	strb r0, [r1, 0x1]
	subs r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_081A7AE6:
	mov r0, sp
	ldrb r0, [r0, 0x4]
	cmp r0, 0x1
	beq _081A7AFA
	mov r1, sp
	movs r0, 0x1
	strb r0, [r1, 0x4]
	subs r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_081A7AFA:
	adds r0, r4, 0
	bl AllocZeroed
	adds r5, r0, 0
	movs r3, 0
	movs r2, 0
_081A7B06:
	mov r6, sp
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _081A7B1C
	adds r1, r3, 0
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	adds r1, r5, r1
	strb r2, [r1]
_081A7B1C:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x7
	bls _081A7B06
	bl Random
	lsls r0, 16
	lsrs r0, 16
	adds r1, r4, 0
	bl __modsi3
	adds r0, r5, r0
	ldrb r4, [r0]
	adds r0, r5, 0
	bl Free
	cmp r4, 0x3
	bne _081A7B46
	bl sub_81A7728
_081A7B46:
	adds r0, r4, 0
_081A7B48:
	add sp, 0x8
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A79EC

	thumb_func_start sub_81A7B58
sub_81A7B58: @ 81A7B58
	push {r4,lr}
	ldr r4, =gUnknown_03001294
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x19
	bl __umodsi3
	strb r0, [r4]
	ldr r1, =gUnknown_0861231C
	ldrb r0, [r4]
	lsls r0, 3
	adds r0, r1
	ldrh r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A7B58

	thumb_func_start sub_81A7B84
sub_81A7B84: @ 81A7B84
	ldr r0, =gUnknown_0300128E
	ldrb r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_81A7B84

	thumb_func_start sub_81A7B90
sub_81A7B90: @ 81A7B90
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	bl sub_81A7D00
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r7, =gSaveBlock2Ptr
	ldr r0, [r7]
	ldr r4, =0x00000ca9
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 30
	ldr r1, =gUnknown_08612314
	lsrs r0, 28
	adds r0, r1
	ldr r0, [r0]
	str r0, [sp, 0x4]
	ldr r0, =gEnemyParty
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r5, r0, 0
	lsls r0, r5, 16
	lsrs r0, 16
	bl sub_81A890C
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, [r7]
	adds r0, r4
	ldrb r1, [r0]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _081A7C1C
	bl sub_8165CB4
	adds r7, r0, 0
	cmp r7, 0x3B
	ble _081A7C08
	lsls r0, r6, 2
	ldr r1, [sp, 0x4]
	adds r0, r1
	ldr r1, [r0]
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x2]
	subs r7, r0
	cmp r7, 0x3B
	bgt _081A7C32
_081A7C08:
	movs r7, 0x3C
	b _081A7C32
	.pool
_081A7C1C:
	lsls r0, r6, 2
	ldr r2, [sp, 0x4]
	adds r0, r2
	ldr r1, [r0]
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x2]
	movs r0, 0x32
	subs r7, r0, r1
_081A7C32:
	mov r0, r8
	cmp r0, 0x1
	bne _081A7C4A
	lsls r0, r7, 24
	lsrs r0, 24
	bl sub_81A88B0
	lsls r0, 24
	cmp r0, 0
	bne _081A7C4A
	movs r0, 0
	b _081A7CE2
_081A7C4A:
	ldr r0, =gEnemyParty
	ldr r1, =gBaseStats
	mov r8, r1
	lsls r6, 2
	mov r9, r6
	ldr r2, [sp, 0x4]
	add r2, r9
	mov r10, r2
	ldr r1, [r2]
	lsls r6, r5, 1
	adds r4, r6, r5
	lsls r4, 2
	adds r1, r4, r1
	ldrh r2, [r1]
	lsls r1, r2, 3
	subs r1, r2
	lsls r1, 2
	add r1, r8
	ldrb r2, [r1, 0x13]
	movs r1, 0xCA
	lsls r1, 1
	muls r2, r1
	lsls r1, r7, 2
	ldr r3, =gExperienceTables
	adds r1, r3
	adds r2, r1
	movs r1, 0x19
	bl SetMonData
	mov r1, r10
	ldr r0, [r1]
	adds r4, r0
	ldrh r1, [r4]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0, 0x17]
	mov r7, r9
	cmp r0, 0
	beq _081A7CA8
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	ands r0, r1
_081A7CA8:
	str r0, [sp]
	ldr r0, =gEnemyParty
	movs r1, 0x2E
	mov r2, sp
	bl SetMonData
	movs r4, 0
	adds r0, r6, r5
	lsls r6, r0, 2
_081A7CBA:
	ldr r2, [sp, 0x4]
	adds r0, r7, r2
	ldr r0, [r0]
	adds r0, r6, r0
	lsls r1, r4, 1
	adds r0, 0x4
	adds r0, r1
	ldrh r1, [r0]
	lsls r2, r4, 24
	lsrs r2, 24
	ldr r0, =gEnemyParty
	bl SetMonMoveSlot
	adds r4, 0x1
	cmp r4, 0x3
	ble _081A7CBA
	ldr r0, =gEnemyParty
	bl CalculateMonStats
	movs r0, 0x1
_081A7CE2:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A7B90

	thumb_func_start sub_81A7D00
sub_81A7D00: @ 81A7D00
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r2, =0x00000e04
	adds r1, r2
	adds r1, r0
	ldrh r1, [r1]
	adds r2, r1, 0
	movs r0, 0x8C
	lsls r0, 1
	cmp r1, r0
	bhi _081A7D34
	movs r1, 0
	b _081A7D4C
	.pool
_081A7D34:
	movs r0, 0x8C
	lsls r0, 2
	cmp r1, r0
	bhi _081A7D40
	movs r1, 0x1
	b _081A7D4C
_081A7D40:
	movs r0, 0xD2
	lsls r0, 2
	movs r1, 0x3
	cmp r2, r0
	bhi _081A7D4C
	movs r1, 0x2
_081A7D4C:
	adds r0, r1, 0
	pop {r1}
	bx r1
	thumb_func_end sub_81A7D00

	thumb_func_start sub_81A7D54
sub_81A7D54: @ 81A7D54
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r5, =gUnknown_08612688
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r4, r1, r2
_081A7D66:
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	lsls r0, 2
	adds r0, r5
	ldr r1, [r0]
	adds r0, r4, 0
	bl _call_via_r1
	lsls r0, 24
	cmp r0, 0
	bne _081A7D66
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7D54

	thumb_func_start sub_81A7D8C
sub_81A7D8C: @ 81A7D8C
	push {r4,lr}
	adds r4, r0, 0
	ldrh r1, [r4, 0x14]
	movs r2, 0x14
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _081A7DA4
	subs r0, r1, 0x1
	strh r0, [r4, 0x14]
	lsls r0, 16
	cmp r0, 0
	bne _081A7DC8
_081A7DA4:
	ldrh r0, [r4, 0xA]
	strh r0, [r4, 0x14]
	ldrh r0, [r4, 0x10]
	ldrh r1, [r4, 0x16]
	adds r0, r1
	strh r0, [r4, 0x16]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x10
	ble _081A7DBC
	movs r0, 0x10
	strh r0, [r4, 0x16]
_081A7DBC:
	movs r0, 0x1
	negs r0, r0
	ldrb r1, [r4, 0x16]
	ldr r2, =0x00002d6b
	bl BlendPalettes
_081A7DC8:
	movs r2, 0x16
	ldrsh r0, [r4, r2]
	cmp r0, 0xF
	ble _081A7DDA
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	ldrh r0, [r4, 0xC]
	strh r0, [r4, 0x14]
_081A7DDA:
	movs r0, 0
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A7D8C

	thumb_func_start sub_81A7DE8
sub_81A7DE8: @ 81A7DE8
	push {r4,lr}
	adds r4, r0, 0
	ldrh r1, [r4, 0x14]
	movs r2, 0x14
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _081A7E00
	subs r0, r1, 0x1
	strh r0, [r4, 0x14]
	lsls r0, 16
	cmp r0, 0
	bne _081A7E22
_081A7E00:
	ldrh r0, [r4, 0xC]
	strh r0, [r4, 0x14]
	ldrh r0, [r4, 0x16]
	ldrh r1, [r4, 0x12]
	subs r0, r1
	strh r0, [r4, 0x16]
	lsls r0, 16
	cmp r0, 0
	bge _081A7E16
	movs r0, 0
	strh r0, [r4, 0x16]
_081A7E16:
	movs r0, 0x1
	negs r0, r0
	ldrb r1, [r4, 0x16]
	ldr r2, =0x00002d6b
	bl BlendPalettes
_081A7E22:
	movs r0, 0x16
	ldrsh r1, [r4, r0]
	cmp r1, 0
	bne _081A7E56
	ldrh r0, [r4, 0xE]
	subs r0, 0x1
	strh r0, [r4, 0xE]
	lsls r0, 16
	cmp r0, 0
	bne _081A7E50
	ldr r0, =sub_81A7D54
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	bl DestroyTask
	b _081A7E56
	.pool
_081A7E50:
	ldrh r0, [r4, 0xA]
	strh r0, [r4, 0x14]
	strh r1, [r4, 0x8]
_081A7E56:
	movs r0, 0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81A7DE8

	thumb_func_start sub_81A7E60
sub_81A7E60: @ 81A7E60
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x4
	mov r8, r0
	adds r4, r1, 0
	adds r5, r2, 0
	adds r6, r3, 0
	ldr r3, [sp, 0x18]
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 16
	lsrs r5, 16
	lsls r6, 16
	lsrs r6, 16
	lsls r3, 16
	lsrs r3, 16
	ldr r0, =sub_81A7D54
	movs r1, 0x3
	str r3, [sp]
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	mov r0, r8
	strh r0, [r1, 0xA]
	strh r4, [r1, 0xC]
	strh r5, [r1, 0xE]
	strh r6, [r1, 0x10]
	ldr r3, [sp]
	strh r3, [r1, 0x12]
	strh r0, [r1, 0x14]
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7E60

	thumb_func_start sub_81A7EC4
sub_81A7EC4: @ 81A7EC4
	push {lr}
	ldr r0, =sub_81A7D54
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	beq _081A7EDC
	movs r0, 0
	b _081A7EDE
	.pool
_081A7EDC:
	movs r0, 0x1
_081A7EDE:
	pop {r1}
	bx r1
	thumb_func_end sub_81A7EC4

	thumb_func_start sub_81A7EE4
sub_81A7EE4: @ 81A7EE4
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	adds r4, r0, 0
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r1, r0, r1
	ldrh r2, [r1, 0x8]
	movs r3, 0x8
	ldrsh r0, [r1, r3]
	cmp r0, 0
	bne _081A7F1C
	adds r0, r2, 0x1
	strh r0, [r1, 0x8]
	movs r0, 0x2
	str r0, [sp]
	movs r0, 0
	movs r1, 0
	movs r2, 0x3
	movs r3, 0x2
	bl sub_81A7E60
	b _081A7F30
	.pool
_081A7F1C:
	bl sub_81A7EC4
	lsls r0, 24
	cmp r0, 0
	beq _081A7F30
	bl script_env_2_enable_and_set_ctx_running
	adds r0, r4, 0
	bl DestroyTask
_081A7F30:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_81A7EE4

	thumb_func_start sub_81A7F38
sub_81A7F38: @ 81A7F38
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	cmp r0, 0
	bne _081A7F50
	b _081A807A
_081A7F50:
	movs r0, 0
	mov r8, r0
_081A7F54:
	mov r0, sp
	add r0, r8
	mov r1, r8
	strb r1, [r0]
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	cmp r0, 0x2
	bls _081A7F54
	movs r5, 0
_081A7F6C:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	lsls r0, 24
	lsrs r4, r0, 24
	mov r2, sp
	add r2, r8
	ldrb r3, [r2]
	mov r0, sp
	adds r1, r0, r4
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x9
	bls _081A7F6C
	movs r1, 0
	mov r8, r1
_081A7FB0:
	movs r0, 0
	mov r10, r0
	mov r4, sp
	add r4, r8
	ldrb r1, [r4]
	movs r0, 0x64
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r7, r1, r0
	adds r0, r7, 0
	movs r1, 0x39
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r7, 0
	movs r1, 0x3A
	bl GetMonData
	lsls r0, 16
	lsrs r6, r0, 16
	str r4, [sp, 0x8]
	cmp r5, r6
	bcc _081A8044
	adds r0, r7, 0
	movs r1, 0x37
	bl GetMonData
	bl pokemon_ailments_get_primary
	lsls r0, 24
	cmp r0, 0
	beq _081A7FFC
	movs r0, 0x1
	mov r10, r0
	b _081A8048
	.pool
_081A7FFC:
	adds r0, r7, 0
	movs r1, 0x15
	bl GetMonData
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	movs r4, 0
	b _081A8014
_081A800E:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
_081A8014:
	cmp r4, 0x3
	bhi _081A8048
	adds r1, r4, 0
	adds r1, 0xD
	adds r0, r7, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	mov r1, r9
	adds r2, r4, 0
	bl CalculatePPWithBonus
	lsls r0, 24
	lsrs r6, r0, 24
	adds r1, r4, 0
	adds r1, 0x11
	adds r0, r7, 0
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, r6
	bcs _081A800E
_081A8044:
	movs r1, 0x1
	mov r10, r1
_081A8048:
	mov r0, r10
	cmp r0, 0x1
	bne _081A806C
	ldr r0, [sp, 0x8]
	ldrb r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gPlayerParty
	adds r0, r1
	bl sub_81A7594
	ldr r0, [sp, 0x4]
	subs r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	cmp r0, 0
	beq _081A807A
_081A806C:
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	cmp r0, 0x2
	bls _081A7FB0
_081A807A:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A7F38

	thumb_func_start sub_81A8090
sub_81A8090: @ 81A8090
	push {r4,lr}
	ldr r4, =gScriptResult
	bl InBattlePike
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8090

	thumb_func_start InBattlePike
InBattlePike: @ 81A80A8
	push {lr}
	movs r2, 0
	ldr r0, =gMapHeader
	ldrh r1, [r0, 0x12]
	ldr r3, =0xfffffea1
	adds r0, r1, r3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	bls _081A80CA
	movs r0, 0xB3
	lsls r0, 1
	cmp r1, r0
	beq _081A80CA
	adds r0, 0x1
	cmp r1, r0
	bne _081A80CC
_081A80CA:
	movs r2, 0x1
_081A80CC:
	adds r0, r2, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end InBattlePike

	thumb_func_start sub_81A80DC
sub_81A80DC: @ 81A80DC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r4, =gScriptResult
	movs r0, 0
	strh r0, [r4]
	movs r0, 0x1
	bl sub_81A8590
	lsls r0, 24
	cmp r0, 0
	beq _081A8138
	movs r0, 0x1
	strh r0, [r4]
	bl Random
	ldr r5, =gSaveBlock2Ptr
	ldr r4, [r5]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x6
	bl __umodsi3
	movs r3, 0xE1
	lsls r3, 4
	adds r4, r3
	movs r1, 0x7
	ands r1, r0
	ldrb r2, [r4]
	movs r0, 0x8
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r2, [r5]
	adds r2, r3
	ldrb r1, [r2]
	movs r0, 0x79
	negs r0, r0
	ands r0, r1
	movs r1, 0x40
	b _081A8248
	.pool
_081A8138:
	bl Random
	ldr r7, =gSaveBlock2Ptr
	ldr r4, [r7]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x3
	bl __umodsi3
	movs r3, 0xE1
	lsls r3, 4
	adds r4, r3
	movs r1, 0x7
	ands r1, r0
	ldrb r2, [r4]
	movs r0, 0x8
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r0, [r7]
	adds r0, r3
	ldrb r1, [r0]
	movs r0, 0x80
	ands r0, r1
	movs r6, 0x8
	cmp r0, 0
	beq _081A8172
	movs r6, 0x6
_081A8172:
	adds r0, r6, 0
	bl AllocZeroed
	adds r5, r0, 0
	movs r2, 0
	movs r3, 0
	cmp r2, r6
	bcs _081A81BE
	adds r4, r7, 0
_081A8184:
	ldr r0, [r4]
	movs r1, 0xE1
	lsls r1, 4
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081A81B0
	cmp r2, 0x1
	beq _081A81B4
	cmp r2, 0x4
	beq _081A81B4
	adds r1, r3, 0
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	adds r1, r5, r1
	strb r2, [r1]
	b _081A81B4
	.pool
_081A81B0:
	adds r0, r5, r2
	strb r2, [r0]
_081A81B4:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, r6
	bcc _081A8184
_081A81BE:
	bl Random
	ldr r7, =gSaveBlock2Ptr
	ldr r4, [r7]
	lsls r0, 16
	lsrs r0, 16
	adds r1, r6, 0
	bl __modsi3
	adds r0, r5, r0
	ldrb r0, [r0]
	movs r6, 0xE1
	lsls r6, 4
	adds r4, r6
	movs r1, 0xF
	ands r1, r0
	lsls r1, 3
	ldrb r2, [r4]
	movs r0, 0x79
	negs r0, r0
	mov r8, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r5, 0
	bl Free
	ldr r0, [r7]
	adds r0, r6
	ldrb r1, [r0]
	movs r0, 0x78
	ands r0, r1
	cmp r0, 0x18
	bne _081A821C
	bl sub_81A7974
	lsls r0, 24
	cmp r0, 0
	bne _081A821C
	ldr r2, [r7]
	adds r2, r6
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r2]
_081A821C:
	ldr r5, =gSaveBlock2Ptr
	ldr r0, [r5]
	movs r4, 0xE1
	lsls r4, 4
	adds r0, r4
	ldrb r1, [r0]
	movs r0, 0x78
	ands r0, r1
	cmp r0, 0x38
	bne _081A824C
	bl sub_81A8554
	lsls r0, 24
	cmp r0, 0
	bne _081A824C
	ldr r2, [r5]
	adds r2, r4
	ldrb r1, [r2]
	movs r0, 0x79
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
_081A8248:
	orrs r0, r1
	strb r0, [r2]
_081A824C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A80DC

	thumb_func_start sub_81A825C
sub_81A825C: @ 81A825C
	ldr r1, =gScriptResult
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r2, 0xE1
	lsls r2, 4
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r0, 29
	strh r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A825C

	thumb_func_start sub_81A827C
sub_81A827C: @ 81A827C
	ldr r2, =gScriptResult
	ldr r1, =gUnknown_0861266C
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r3, 0xE1
	lsls r3, 4
	adds r0, r3
	ldrb r0, [r0]
	lsls r0, 25
	lsrs r0, 28
	adds r0, r1
	ldrb r0, [r0]
	strh r0, [r2]
	bx lr
	.pool
	thumb_func_end sub_81A827C

	thumb_func_start sub_81A82A4
sub_81A82A4: @ 81A82A4
	push {r4-r7,lr}
	lsls r0, 24
	movs r7, 0x6
	cmp r0, 0
	bne _081A82B0
	movs r7, 0x1
_081A82B0:
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r2, =0x00000e04
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	movs r1, 0xE
	bl __udivsi3
	lsls r0, 16
	lsrs r6, r0, 16
	adds r5, r4, 0
_081A82D2:
	lsls r0, r6, 24
	lsrs r0, 24
	adds r1, r7, 0
	bl sub_8162548
	lsls r0, 16
	lsrs r4, r0, 16
	movs r3, 0
	ldr r1, [r5]
	ldr r2, =0x00000cb2
	adds r0, r1, r2
	ldrh r0, [r0]
	subs r2, r0, 0x1
	cmp r3, r2
	bge _081A831A
	ldr r0, =0x00000cb4
	adds r1, r0
	b _081A8314
	.pool
_081A830C:
	adds r1, 0x2
	adds r3, 0x1
	cmp r3, r2
	bge _081A831A
_081A8314:
	ldrh r0, [r1]
	cmp r0, r4
	bne _081A830C
_081A831A:
	ldr r0, [r5]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	subs r0, 0x1
	cmp r3, r0
	bne _081A82D2
	ldr r5, =gTrainerBattleOpponent_A
	strh r4, [r5]
	ldr r1, =gUnknown_0203BC88
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	ldrh r0, [r5]
	movs r1, 0
	bl sub_8162614
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0x00000cb2
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, 0xD
	bhi _081A8356
	subs r0, 0x1
	lsls r0, 1
	ldr r2, =0x00000cb4
	adds r1, r2
	adds r1, r0
	ldrh r0, [r5]
	strh r0, [r1]
_081A8356:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A82A4

	thumb_func_start sub_81A8374
sub_81A8374: @ 81A8374
	push {r4-r7,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r2, =0x00000e04
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	movs r1, 0xE
	bl __udivsi3
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r1, =gUnknown_0203BC88
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	lsls r7, r5, 24
	adds r6, r4, 0
_081A83A0:
	lsls r0, r5, 24
	lsrs r0, 24
	movs r1, 0x1
	bl sub_8162548
	lsls r0, 16
	lsrs r4, r0, 16
	movs r3, 0
	ldr r1, [r6]
	ldr r2, =0x00000cb2
	adds r0, r1, r2
	ldrh r0, [r0]
	subs r2, r0, 0x1
	cmp r3, r2
	bge _081A83EE
	ldr r0, =0x00000cb4
	adds r1, r0
	b _081A83E8
	.pool
_081A83E0:
	adds r1, 0x2
	adds r3, 0x1
	cmp r3, r2
	bge _081A83EE
_081A83E8:
	ldrh r0, [r1]
	cmp r0, r4
	bne _081A83E0
_081A83EE:
	ldr r0, [r6]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	subs r0, 0x1
	cmp r3, r0
	bne _081A83A0
	ldr r5, =gTrainerBattleOpponent_A
	strh r4, [r5]
	ldrh r0, [r5]
	movs r1, 0
	bl sub_8162614
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	ldr r0, =0x00000cb2
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, 0xE
	bhi _081A8424
	subs r0, 0x1
	lsls r0, 1
	ldr r2, =0x00000cb4
	adds r1, r2
	adds r1, r0
	ldrh r0, [r5]
	strh r0, [r1]
_081A8424:
	adds r5, r3, 0
_081A8426:
	lsrs r0, r7, 24
	movs r1, 0x1
	bl sub_8162548
	lsls r0, 16
	lsrs r4, r0, 16
	movs r3, 0
	ldr r1, [r5]
	ldr r2, =0x00000cb2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r3, r0
	bge _081A8466
	adds r2, 0x2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, r4
	beq _081A8466
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	subs r2, 0x2
	adds r0, r1, r2
	ldrh r2, [r0]
	ldr r0, =0x00000cb4
	adds r1, r0
_081A8458:
	adds r1, 0x2
	adds r3, 0x1
	cmp r3, r2
	bge _081A8466
	ldrh r0, [r1]
	cmp r0, r4
	bne _081A8458
_081A8466:
	ldr r0, [r5]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	cmp r3, r0
	bne _081A8426
	ldr r5, =gTrainerBattleOpponent_B
	strh r4, [r5]
	ldrh r0, [r5]
	movs r1, 0x1
	bl sub_8162614
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r0, =0x00000cb2
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, 0xD
	bhi _081A849A
	subs r0, 0x2
	lsls r0, 1
	ldr r2, =0x00000cb4
	adds r1, r2
	adds r1, r0
	ldrh r0, [r5]
	strh r0, [r1]
_081A849A:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8374

	thumb_func_start sub_81A84B4
sub_81A84B4: @ 81A84B4
	push {r4,r5,lr}
	movs r2, 0
	ldr r5, =gSaveBlock2Ptr
	ldr r4, =0x00000cb4
	ldr r0, =0x0000ffff
	adds r3, r0, 0
_081A84C0:
	ldr r1, [r5]
	lsls r0, r2, 1
	adds r1, r4
	adds r1, r0
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0xD
	bls _081A84C0
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A84B4

	thumb_func_start sub_81A84EC
sub_81A84EC: @ 81A84EC
	push {lr}
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0
	bne _081A8524
	ldr r3, =gTrainerBattleOpponent_A
	ldrh r1, [r3]
	ldr r0, =0x0000012b
	cmp r1, r0
	bhi _081A8542
	ldr r2, =gUnknown_0203BC88
	movs r0, 0x34
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0xC
	bl ConvertBattleFrontierTrainerSpeechToString
	b _081A8542
	.pool
_081A8524:
	cmp r0, 0x1
	bne _081A8542
	ldr r3, =gTrainerBattleOpponent_B
	ldrh r1, [r3]
	ldr r0, =0x0000012b
	cmp r1, r0
	bhi _081A8542
	ldr r2, =gUnknown_0203BC88
	movs r0, 0x34
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0xC
	bl ConvertBattleFrontierTrainerSpeechToString
_081A8542:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A84EC

	thumb_func_start sub_81A8554
sub_81A8554: @ 81A8554
	push {r4-r6,lr}
	ldr r5, =gPlayerParty
	movs r6, 0
	movs r4, 0
_081A855C:
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	bne _081A856E
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_081A856E:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, 0x64
	cmp r4, 0x2
	bls _081A855C
	cmp r6, 0x1
	bhi _081A8588
	movs r0, 0x1
	b _081A858A
	.pool
_081A8588:
	movs r0, 0
_081A858A:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_81A8554

	thumb_func_start sub_81A8590
sub_81A8590: @ 81A8590
	push {r4-r6,lr}
	lsls r0, 24
	movs r6, 0
	ldr r1, =gSaveBlock2Ptr
	ldr r2, [r1]
	ldr r3, =0x00000ca9
	adds r1, r2, r3
	ldrb r1, [r1]
	lsls r1, 30
	lsrs r1, 29
	ldr r3, =0x00000e04
	adds r2, r3
	adds r2, r1
	lsrs r4, r0, 24
	ldrh r2, [r2]
	adds r0, r4, r2
	lsls r0, 16
	lsrs r4, r0, 16
	movs r0, 0x5
	bl sub_81A3B30
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	blt _081A85F0
	cmp r2, 0x1
	bgt _081A85F0
	ldr r1, =gUnknown_086125DC
	adds r0, r2, 0
	adds r0, 0x14
	adds r0, r1
	ldrb r0, [r0]
	ldrb r1, [r1, 0x17]
	subs r0, r1
	cmp r4, r0
	bne _081A8634
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	b _081A8634
	.pool
_081A85F0:
	ldr r5, =gUnknown_086125DC
	movs r0, 0x5
	lsls r3, r0, 2
	adds r0, r3, r5
	ldrb r1, [r0]
	adds r0, r5, 0x3
	adds r0, r3, r0
	ldrb r2, [r0]
	subs r1, r2
	cmp r4, r1
	bne _081A8610
	movs r6, 0x3
	b _081A8634
	.pool
_081A8610:
	adds r0, r5, 0x1
	adds r0, r3, r0
	ldrb r1, [r0]
	subs r0, r1, r2
	cmp r4, r0
	beq _081A8632
	cmp r4, r1
	bls _081A8634
	subs r0, r4, r1
	adds r0, r2
	adds r1, r5, 0x2
	adds r1, r3, r1
	ldrb r1, [r1]
	bl __modsi3
	cmp r0, 0
	bne _081A8634
_081A8632:
	movs r6, 0x4
_081A8634:
	adds r0, r6, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_81A8590

	thumb_func_start sub_81A863C
sub_81A863C: @ 81A863C
	push {r4,lr}
	ldr r4, =gScriptResult
	movs r0, 0
	bl sub_81A8590
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A863C

	thumb_func_start sub_81A8658
sub_81A8658: @ 81A8658
	push {r4,lr}
	ldr r3, =gUnknown_08612675
	ldr r2, =gSpecialVar_0x8007
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0xE1
	lsls r1, 4
	adds r0, r1
	ldrb r1, [r0]
	lsls r1, 29
	lsrs r1, 29
	lsls r0, r1, 1
	adds r0, r1
	ldrh r2, [r2]
	adds r0, r2
	adds r0, r3
	ldrb r4, [r0]
	adds r0, r4, 0
	bl sub_81A7F38
	ldr r0, =gScriptResult
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8658

	thumb_func_start sub_81A869C
sub_81A869C: @ 81A869C
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r0, =gSpecialVar_0x8005
	ldrb r1, [r0]
	movs r0, 0xE1
	lsls r0, 4
	adds r2, r0
	lsls r1, 7
	ldrb r3, [r2]
	movs r0, 0x7F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.pool
	thumb_func_end sub_81A869C

	thumb_func_start sub_81A86C0
sub_81A86C0: @ 81A86C0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, =gScriptResult
	movs r0, 0x1
	strh r0, [r1]
	movs r0, 0
	mov r10, r0
_081A86D4:
	movs r0, 0
	mov r9, r0
	movs r0, 0x64
	mov r1, r10
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r7, r1, r0
	adds r0, r7, 0
	movs r1, 0x39
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	adds r0, r7, 0
	movs r1, 0x3A
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r4, r5
	bcc _081A8762
	adds r0, r7, 0
	movs r1, 0x37
	bl GetMonData
	bl pokemon_ailments_get_primary
	lsls r0, 24
	cmp r0, 0
	bne _081A8762
	adds r0, r7, 0
	movs r1, 0x15
	bl GetMonData
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r6, 0
	b _081A8732
	.pool
_081A872C:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_081A8732:
	cmp r6, 0x3
	bhi _081A8766
	adds r1, r6, 0
	adds r1, 0xD
	adds r0, r7, 0
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	mov r1, r8
	adds r2, r6, 0
	bl CalculatePPWithBonus
	lsls r0, 24
	lsrs r5, r0, 24
	adds r1, r6, 0
	adds r1, 0x11
	adds r0, r7, 0
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, r5
	bcs _081A872C
_081A8762:
	movs r0, 0x1
	mov r9, r0
_081A8766:
	mov r0, r9
	cmp r0, 0x1
	bne _081A8778
	ldr r1, =gScriptResult
	movs r0, 0
	strh r0, [r1]
	b _081A8786
	.pool
_081A8778:
	mov r0, r10
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	cmp r0, 0x2
	bls _081A86D4
_081A8786:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81A86C0

	thumb_func_start sub_81A8794
sub_81A8794: @ 81A8794
	push {r4-r7,lr}
	movs r5, 0
	ldr r7, =gSaveBlock1Ptr
	ldr r6, =gSaveBlock2Ptr
_081A879C:
	ldr r0, [r6]
	lsls r4, r5, 1
	ldr r1, =0x00000caa
	adds r0, r1
	adds r0, r4
	ldrh r1, [r0]
	movs r0, 0x64
	muls r1, r0
	movs r2, 0xEA
	lsls r2, 1
	adds r1, r2
	ldr r0, [r7]
	adds r0, r1
	movs r1, 0xC
	bl GetMonData
	ldr r1, [r6]
	ldr r2, =0x00000e12
	adds r1, r2
	adds r1, r4
	strh r0, [r1]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bls _081A879C
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8794

	thumb_func_start sub_81A87E8
sub_81A87E8: @ 81A87E8
	push {r4,lr}
	movs r4, 0
_081A87EC:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	lsls r3, r4, 1
	ldr r1, =0x00000caa
	adds r0, r2, r1
	adds r0, r3
	ldrh r1, [r0]
	movs r0, 0x64
	muls r0, r1
	ldr r1, =gBattleScripting + 0x14
	adds r0, r1
	ldr r1, =0x00000e12
	adds r3, r1
	adds r2, r3
	movs r1, 0xC
	bl SetMonData
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081A87EC
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A87E8

	thumb_func_start sub_81A8830
sub_81A8830: @ 81A8830
	push {r4-r6,lr}
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x00000ca8
	adds r1, r0
	movs r4, 0
	strb r4, [r1]
	ldr r1, [r3]
	ldr r6, =0x00000cb2
	adds r0, r1, r6
	strh r4, [r0]
	adds r1, r2
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r3, [r3]
	ldr r0, =0x00000cdc
	adds r2, r3, r0
	ldr r1, =gUnknown_08612690
	lsls r0, r5, 2
	adds r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	ands r1, r0
	cmp r1, 0
	bne _081A887C
	lsls r1, r5, 1
	ldr r2, =0x00000e04
	adds r0, r3, r2
	adds r0, r1
	strh r4, [r0]
_081A887C:
	ldr r0, =gTrainerBattleOpponent_A
	strh r4, [r0]
	ldr r1, =gBattleOutcome
	movs r0, 0
	strb r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8830

	thumb_func_start sub_81A88B0
sub_81A88B0: @ 81A88B0
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, =gPlayerParty
	adds r0, r4, 0
	movs r1, 0x6
	bl GetMonData
	cmp r0, 0
	bne _081A8904
	adds r0, r4, 0
	bl GetMonAbility
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x33
	beq _081A88D6
	cmp r0, 0x16
	bne _081A8904
_081A88D6:
	adds r0, r4, 0
	movs r1, 0x38
	bl GetMonData
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x5
	bls _081A8904
	subs r0, 0x5
	cmp r5, r0
	bgt _081A8904
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	bne _081A8904
	movs r0, 0
	b _081A8906
	.pool
_081A8904:
	movs r0, 0x1
_081A8906:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81A88B0

	thumb_func_start sub_81A890C
sub_81A890C: @ 81A890C
	push {lr}
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r0, =0x0000017b
	cmp r2, r0
	bne _081A8920
	movs r1, 0
	b _081A892A
	.pool
_081A8920:
	ldr r0, =0x00000149
	movs r1, 0x2
	cmp r2, r0
	bne _081A892A
	movs r1, 0x1
_081A892A:
	adds r0, r1, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A890C

	thumb_func_start sub_81A8934
@ void sub_81A8934(u8)
sub_81A8934: @ 81A8934
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, =gUnknown_0203CE50
	ldr r0, [r4]
	cmp r0, 0
	bne _081A894A
	movs r0, 0x44
	bl AllocZeroed
	str r0, [r4]
_081A894A:
	ldr r0, [r4]
	adds r0, 0x41
	strb r5, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8934

	thumb_func_start sub_81A895C
sub_81A895C: @ 81A895C
	push {r4,lr}
	ldr r4, =gUnknown_0203CE50
	ldr r0, [r4]
	cmp r0, 0
	beq _081A896E
	bl Free
	movs r0, 0
	str r0, [r4]
_081A896E:
	movs r0, 0xFF
	movs r1, 0
	movs r2, 0
	bl GetFieldObjectIdByLocalIdAndMap
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	ldr r1, =gUnknown_02037350
	adds r0, r1
	bl FieldObjectClearAnimIfSpecialAnimFinished
	bl sub_80D338C
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A895C

	thumb_func_start sub_81A89A0
sub_81A89A0: @ 81A89A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 4
	adds r1, r0
	mov r9, r1
	movs r3, 0
	mov r10, r3
	mov r8, r3
_081A89C4:
	mov r0, r8
	lsls r4, r0, 1
	adds r1, r4, r0
	lsls r1, 3
	add r1, r9
	ldrh r0, [r1, 0x4]
	adds r0, 0x7
	ldrh r1, [r1, 0x6]
	adds r1, 0x7
	lsls r0, 16
	asrs r0, 16
	lsls r1, 16
	asrs r1, 16
	bl MapGridGetMetatileIdAt
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r0, =gUnknown_0203CE50
	ldr r0, [r0]
	adds r0, 0x41
	ldrb r0, [r0]
	movs r2, 0xA6
	lsls r2, 2
	cmp r0, 0
	bne _081A89F8
	subs r2, 0x48
_081A89F8:
	ldr r0, =0x0000024f
	cmp r1, r0
	bls _081A8AD4
	subs r1, r2
	adds r0, r1, 0
	cmp r1, 0
	bge _081A8A08
	adds r0, r1, 0x7
_081A8A08:
	asrs r2, r0, 3
	lsls r0, r2, 24
	lsrs r0, 24
	cmp r0, 0x4
	bhi _081A8AD4
	ldr r3, [sp]
	cmp r0, r3
	bne _081A8AD4
	lsls r0, r2, 3
	subs r0, r1, r0
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x3
	bhi _081A8AD4
	movs r1, 0
	movs r2, 0
	cmp r5, 0x1
	beq _081A8A58
	cmp r5, 0x1
	bgt _081A8A44
	cmp r5, 0
	beq _081A8A4E
	b _081A8AD4
	.pool
_081A8A44:
	cmp r5, 0x2
	beq _081A8A64
	cmp r5, 0x3
	beq _081A8A70
	b _081A8AD4
_081A8A4E:
	ldr r7, =gUnknown_08612698
	movs r1, 0x1
	b _081A8A74
	.pool
_081A8A58:
	ldr r7, =gUnknown_0861269C
	movs r2, 0x1
	b _081A8A74
	.pool
_081A8A64:
	ldr r7, =gUnknown_086126A0
	movs r1, 0xFF
	b _081A8A74
	.pool
_081A8A70:
	ldr r7, =gUnknown_086126A4
	movs r2, 0xFF
_081A8A74:
	mov r3, r8
	adds r0, r4, r3
	lsls r0, 3
	mov r3, r9
	adds r4, r0, r3
	lsls r0, r1, 24
	asrs r0, 24
	ldrh r1, [r4, 0x4]
	adds r0, r1
	strh r0, [r4, 0x4]
	lsls r0, r2, 24
	asrs r0, 24
	ldrh r3, [r4, 0x6]
	adds r0, r3
	strh r0, [r4, 0x6]
	ldrb r0, [r4]
	ldr r6, =gSaveBlock1Ptr
	ldr r2, [r6]
	ldrb r1, [r2, 0x5]
	ldrb r2, [r2, 0x4]
	bl GetFieldObjectIdByLocalIdAndMap
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x10
	beq _081A8ACC
	mov r0, r8
	adds r1, r5, 0
	bl sub_81A8D60
	ldrb r4, [r4]
	mov r10, r4
	mov r0, r10
	ldr r2, [r6]
	ldrb r1, [r2, 0x5]
	ldrb r2, [r2, 0x4]
	adds r3, r7, 0
	bl exec_movement
	b _081A8AD4
	.pool
_081A8ACC:
	mov r0, r8
	adds r1, r5, 0
	bl sub_81A8D94
_081A8AD4:
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	cmp r0, 0x3F
	bhi _081A8AE4
	b _081A89C4
_081A8AE4:
	mov r0, r10
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81A89A0

	thumb_func_start sub_81A8AF8
sub_81A8AF8: @ 81A8AF8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, =gUnknown_0203CE50
	ldr r2, [r1]
	cmp r2, 0
	bne _081A8B0C
	b _081A8D4A
_081A8B0C:
	adds r0, r2, 0
	adds r0, 0x41
	ldrb r0, [r0]
	movs r3, 0xA6
	lsls r3, 2
	mov r10, r3
	cmp r0, 0
	bne _081A8B22
	movs r0, 0x94
	lsls r0, 2
	mov r10, r0
_081A8B22:
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r3, 0xC7
	lsls r3, 4
	adds r7, r0, r3
	movs r0, 0
	mov r9, r0
	adds r0, r2, 0
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r9, r0
	bcc _081A8B3C
	b _081A8D4A
_081A8B3C:
	mov r8, r1
_081A8B3E:
	mov r1, r8
	ldr r0, [r1]
	mov r2, r9
	lsls r4, r2, 2
	adds r0, r4
	ldrb r0, [r0, 0x1]
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 3
	adds r1, r7
	ldrh r0, [r1, 0x4]
	adds r0, 0x7
	ldrh r1, [r1, 0x6]
	adds r1, 0x7
	lsls r0, 16
	asrs r0, 16
	lsls r1, 16
	asrs r1, 16
	bl MapGridGetMetatileIdAt
	lsls r0, 16
	lsrs r0, 16
	mov r3, r10
	subs r1, r0, r3
	adds r0, r1, 0
	cmp r1, 0
	bge _081A8B76
	adds r0, r1, 0x7
_081A8B76:
	asrs r0, 3
	lsls r0, 3
	subs r0, r1, r0
	lsls r0, 24
	lsrs r0, 24
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4
	ldrb r1, [r1]
	subs r0, r1
	lsls r0, 24
	asrs r1, r0, 24
	cmp r1, 0
	blt _081A8B96
	cmp r1, 0x3
	bne _081A8BAC
_081A8B96:
	movs r0, 0x3
	negs r0, r0
	movs r6, 0
	cmp r1, r0
	bne _081A8BB4
	b _081A8BB2
	.pool
_081A8BAC:
	movs r6, 0x2
	cmp r1, 0
	ble _081A8BB4
_081A8BB2:
	movs r6, 0x1
_081A8BB4:
	ldr r5, =gUnknown_0203CE50
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	ldrb r0, [r0]
	ldr r1, =gSaveBlock1Ptr
	ldr r2, [r1]
	ldrb r1, [r2, 0x5]
	ldrb r2, [r2, 0x4]
	bl GetFieldObjectIdByLocalIdAndMap
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x10
	bne _081A8BDC
	b _081A8D32
_081A8BDC:
	ldr r0, =gUnknown_02037350
	lsls r1, r2, 3
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x18]
	lsls r0, 28
	lsrs r0, 28
	adds r1, r0, 0
	cmp r6, 0
	bne _081A8C9C
	cmp r0, 0x2
	beq _081A8C60
	cmp r0, 0x2
	bgt _081A8C0C
	cmp r0, 0x1
	beq _081A8C30
	b _081A8D32
	.pool
_081A8C0C:
	cmp r0, 0x3
	beq _081A8C48
	cmp r0, 0x4
	beq _081A8C16
	b _081A8D32
_081A8C16:
	ldr r3, =gUnknown_086126AE
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0x7
	b _081A8C72
	.pool
_081A8C30:
	ldr r3, =gUnknown_086126A8
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0xA
	b _081A8C72
	.pool
_081A8C48:
	ldr r3, =gUnknown_086126AA
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0x8
	b _081A8C72
	.pool
_081A8C60:
	ldr r3, =gUnknown_086126AC
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0x9
_081A8C72:
	strb r1, [r0, 0x9]
	mov r1, r8
	ldr r0, [r1]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	ldrb r0, [r0]
	ldr r1, =gSaveBlock1Ptr
	ldr r2, [r1]
	ldrb r1, [r2, 0x5]
	ldrb r2, [r2, 0x4]
	bl exec_movement
	b _081A8D32
	.pool
_081A8C9C:
	cmp r6, 0x1
	bne _081A8D32
	cmp r0, 0x2
	beq _081A8D00
	cmp r0, 0x2
	bgt _081A8CAE
	cmp r0, 0x1
	beq _081A8CD0
	b _081A8D32
_081A8CAE:
	cmp r1, 0x3
	beq _081A8CE8
	cmp r1, 0x4
	bne _081A8D32
	ldr r3, =gUnknown_086126AA
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0x8
	b _081A8D12
	.pool
_081A8CD0:
	ldr r3, =gUnknown_086126AC
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0x9
	b _081A8D12
	.pool
_081A8CE8:
	ldr r3, =gUnknown_086126AE
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0x7
	b _081A8D12
	.pool
_081A8D00:
	ldr r3, =gUnknown_086126A8
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	movs r1, 0xA
_081A8D12:
	strb r1, [r0, 0x9]
	mov r2, r8
	ldr r0, [r2]
	adds r0, r4
	ldrb r1, [r0, 0x1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r7
	ldrb r0, [r0]
	ldr r1, =gSaveBlock1Ptr
	ldr r2, [r1]
	ldrb r1, [r2, 0x5]
	ldrb r2, [r2, 0x4]
	bl exec_movement
_081A8D32:
	mov r0, r9
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	mov r3, r8
	ldr r0, [r3]
	adds r0, 0x40
	ldrb r0, [r0]
	cmp r9, r0
	bcs _081A8D4A
	b _081A8B3E
_081A8D4A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8AF8

	thumb_func_start sub_81A8D60
sub_81A8D60: @ 81A8D60
	push {r4,lr}
	ldr r4, =gUnknown_0203CE50
	ldr r3, [r4]
	adds r2, r3, 0
	adds r2, 0x40
	ldrb r2, [r2]
	lsls r2, 2
	adds r3, r2
	strb r0, [r3, 0x1]
	ldr r2, [r4]
	adds r0, r2, 0
	adds r0, 0x40
	ldrb r0, [r0]
	lsls r0, 2
	adds r2, r0
	strb r1, [r2]
	ldr r1, [r4]
	adds r1, 0x40
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8D60

	thumb_func_start sub_81A8D94
sub_81A8D94: @ 81A8D94
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 4
	adds r5, r0, r1
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 3
	adds r1, r5
	ldrh r0, [r1, 0x4]
	adds r0, 0x7
	ldrh r1, [r1, 0x6]
	adds r1, 0x7
	lsls r0, 16
	asrs r0, 16
	lsls r1, 16
	asrs r1, 16
	bl MapGridGetMetatileIdAt
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r0, =gUnknown_0203CE50
	ldr r0, [r0]
	adds r0, 0x41
	ldrb r0, [r0]
	movs r1, 0xA6
	lsls r1, 2
	cmp r0, 0
	bne _081A8DDA
	subs r1, 0x48
_081A8DDA:
	subs r1, r2, r1
	adds r0, r1, 0
	cmp r1, 0
	bge _081A8DE4
	adds r0, r1, 0x7
_081A8DE4:
	asrs r0, 3
	lsls r0, 3
	subs r0, r1, r0
	lsls r0, 24
	lsrs r0, 24
	subs r0, r6
	lsls r0, 24
	asrs r1, r0, 24
	cmp r1, 0
	blt _081A8DFC
	cmp r1, 0x3
	bne _081A8E08
_081A8DFC:
	movs r2, 0
	b _081A8E1A
	.pool
_081A8E08:
	cmp r1, 0
	bgt _081A8E14
	movs r0, 0x3
	negs r0, r0
	cmp r1, r0
	bne _081A8E18
_081A8E14:
	movs r2, 0x1
	b _081A8E1A
_081A8E18:
	movs r2, 0x2
_081A8E1A:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 3
	adds r1, r0, r5
	ldrb r0, [r1, 0x9]
	adds r3, r0, 0
	cmp r2, 0
	bne _081A8E4C
	cmp r0, 0x8
	beq _081A8E72
	cmp r0, 0x8
	bgt _081A8E38
	cmp r0, 0x7
	beq _081A8E48
	b _081A8E76
_081A8E38:
	cmp r0, 0x9
	beq _081A8E44
	cmp r0, 0xA
	bne _081A8E76
	movs r0, 0x7
	b _081A8E74
_081A8E44:
	movs r0, 0x8
	b _081A8E74
_081A8E48:
	movs r0, 0x9
	b _081A8E74
_081A8E4C:
	cmp r2, 0x1
	bne _081A8E76
	cmp r0, 0x8
	beq _081A8E6A
	cmp r0, 0x8
	bgt _081A8E5E
	cmp r0, 0x7
	beq _081A8E72
	b _081A8E76
_081A8E5E:
	cmp r3, 0x9
	beq _081A8E6E
	cmp r3, 0xA
	bne _081A8E76
	movs r0, 0x8
	b _081A8E74
_081A8E6A:
	movs r0, 0x9
	b _081A8E74
_081A8E6E:
	movs r0, 0x7
	b _081A8E74
_081A8E72:
	movs r0, 0xA
_081A8E74:
	strb r0, [r1, 0x9]
_081A8E76:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_81A8D94

	thumb_func_start sub_81A8E7C
sub_81A8E7C: @ 81A8E7C
	push {lr}
	ldr r1, =gUnknown_08613EE0
	ldr r0, =gSpecialVar_0x8004
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8E7C

	thumb_func_start sub_81A8E9C
sub_81A8E9C: @ 81A8E9C
	push {r4-r6,lr}
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	ldr r4, =0x00000ca9
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	ldr r0, =0x00000ca8
	adds r1, r0
	movs r2, 0
	strb r2, [r1]
	ldr r1, [r3]
	ldr r6, =0x00000cb2
	adds r0, r1, r6
	strh r2, [r0]
	adds r1, r4
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	cmp r5, 0
	beq _081A8EF0
	ldr r0, [r3]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r2, [r0]
	movs r0, 0x80
	lsls r0, 6
	b _081A8EFC
	.pool
_081A8EF0:
	ldr r0, [r3]
	ldr r6, =0x00000cdc
	adds r0, r6
	ldr r2, [r0]
	movs r0, 0x80
	lsls r0, 5
_081A8EFC:
	ands r2, r0
	cmp r2, 0
	bne _081A8F14
	ldr r0, [r3]
	lsls r1, r5, 1
	ldr r3, =0x00000e1a
	adds r0, r3
	adds r0, r1
	strh r2, [r0]
	adds r0, r5, 0
	bl sub_81AAA7C
_081A8F14:
	bl sub_81C4EEC
	ldr r0, =gTrainerBattleOpponent_A
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gBattleOutcome
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8E9C

	thumb_func_start sub_81A8F38
sub_81A8F38: @ 81A8F38
	push {r4,lr}
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r2, =0x00000ca9
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r4, r0, 30
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x6
	bls _081A8F54
	b _081A903A
_081A8F54:
	lsls r0, 2
	ldr r1, =_081A8F70
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A8F70:
	.4byte _081A8F8C
	.4byte _081A8F9C
	.4byte _081A8FB4
	.4byte _081A8FE4
	.4byte _081A8FF8
	.4byte _081A9010
	.4byte _081A9028
_081A8F8C:
	ldr r0, =gScriptResult
	ldr r1, [r3]
	ldr r3, =0x00000e18
	b _081A8FFE
	.pool
_081A8F9C:
	ldr r2, =gScriptResult
	ldr r0, [r3]
	lsls r1, r4, 1
	ldr r3, =0x00000e1a
	adds r0, r3
	adds r0, r1
	ldrh r0, [r0]
	b _081A9038
	.pool
_081A8FB4:
	cmp r4, 0
	beq _081A8FCC
	ldr r2, =gScriptResult
	ldr r0, [r3]
	ldr r1, =0x00000cdc
	adds r0, r1
	b _081A9030
	.pool
_081A8FCC:
	ldr r2, =gScriptResult
	ldr r0, [r3]
	ldr r3, =0x00000cdc
	adds r0, r3
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	b _081A9036
	.pool
_081A8FE4:
	ldr r0, =gScriptResult
	ldr r1, [r3]
	ldr r2, =0x00000e1a
	adds r1, r2
	b _081A9000
	.pool
_081A8FF8:
	ldr r0, =gScriptResult
	ldr r1, [r3]
	ldr r3, =0x00000e1c
_081A8FFE:
	adds r1, r3
_081A9000:
	ldrh r1, [r1]
	strh r1, [r0]
	b _081A903A
	.pool
_081A9010:
	ldr r2, =gScriptResult
	ldr r0, [r3]
	ldr r1, =0x00000cdc
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 5
	b _081A9036
	.pool
_081A9028:
	ldr r2, =gScriptResult
	ldr r0, [r3]
	ldr r3, =0x00000cdc
	adds r0, r3
_081A9030:
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 6
_081A9036:
	ands r0, r1
_081A9038:
	strh r0, [r2]
_081A903A:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A8F38

	thumb_func_start sub_81A9048
sub_81A9048: @ 81A9048
	push {lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldr r1, =0x00000ca9
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r1, r0, 30
	ldr r0, =gSpecialVar_0x8005
	ldrh r0, [r0]
	cmp r0, 0x1
	beq _081A9098
	cmp r0, 0x1
	bgt _081A9078
	cmp r0, 0
	beq _081A9082
	b _081A9126
	.pool
_081A9078:
	cmp r0, 0x2
	beq _081A90B0
	cmp r0, 0x7
	beq _081A911C
	b _081A9126
_081A9082:
	ldr r0, =gSpecialVar_0x8006
	ldrh r1, [r0]
	ldr r3, =0x00000e18
	adds r0, r2, r3
	strh r1, [r0]
	b _081A9126
	.pool
_081A9098:
	lsls r1, 1
	ldr r3, =0x00000e1a
	adds r0, r2, r3
	adds r0, r1
	ldr r1, =gSpecialVar_0x8006
	ldrh r1, [r1]
	strh r1, [r0]
	b _081A9126
	.pool
_081A90B0:
	cmp r1, 0
	beq _081A90E4
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A90D0
	ldr r1, =0x00000cdc
	adds r0, r2, r1
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 6
	b _081A90F6
	.pool
_081A90D0:
	ldr r3, =0x00000cdc
	adds r0, r2, r3
	ldr r1, [r0]
	ldr r2, =0xffffdfff
	b _081A910C
	.pool
_081A90E4:
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A9104
	ldr r1, =0x00000cdc
	adds r0, r2, r1
	ldr r1, [r0]
	movs r2, 0x80
	lsls r2, 5
_081A90F6:
	orrs r1, r2
	str r1, [r0]
	b _081A9126
	.pool
_081A9104:
	ldr r3, =0x00000cdc
	adds r0, r2, r3
	ldr r1, [r0]
	ldr r2, =0xffffefff
_081A910C:
	ands r1, r2
	str r1, [r0]
	b _081A9126
	.pool
_081A911C:
	ldr r0, =gSpecialVar_0x8006
	ldrh r1, [r0]
	ldr r3, =0x00000e2a
	adds r0, r2, r3
	strb r1, [r0]
_081A9126:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9048

	thumb_func_start sub_81A9134
sub_81A9134: @ 81A9134
	push {r4,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, =0x00000ca8
	adds r0, r2
	strb r1, [r0]
	movs r0, 0x80
	lsls r0, 7
	movs r1, 0
	bl VarSet
	ldr r1, [r4]
	ldr r0, =0x00000ca9
	adds r1, r0
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	bl save_serialize_map
	movs r0, 0x1
	bl TrySavingData
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9134

	thumb_func_start sub_81A917C
sub_81A917C: @ 81A917C
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r1, [r4]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 29
	ldr r2, =0x00000e1a
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, 0x29
	bls _081A91CC
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_08613F34
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x9
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r1, =0x00000e18
	adds r4, r1
	b _081A91EA
	.pool
_081A91CC:
	bl Random
	ldr r4, [r4]
	ldr r5, =gUnknown_08613F28
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x6
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 15
	adds r0, r5
	ldrh r0, [r0]
	ldr r2, =0x00000e18
	adds r4, r2
_081A91EA:
	strh r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A917C

	thumb_func_start sub_81A91FC
sub_81A91FC: @ 81A91FC
	push {r4,r5,lr}
	ldr r4, =gSaveBlock2Ptr
	ldr r0, [r4]
	ldr r1, =0x00000e18
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x1
	bl AddBagItem
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bne _081A9244
	ldr r0, [r4]
	ldr r1, =0x00000e18
	adds r0, r1
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r0, [r4]
	ldr r1, =0x00000e18
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gScriptResult
	strh r5, [r0]
	b _081A924A
	.pool
_081A9244:
	ldr r1, =gScriptResult
	movs r0, 0
	strh r0, [r1]
_081A924A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A91FC

	thumb_func_start sub_81A9254
sub_81A9254: @ 81A9254
	push {r4,r5,lr}
	movs r4, 0
	ldr r5, =gSaveBlock2Ptr
_081A925A:
	bl Random
	ldr r1, [r5]
	lsls r2, r4, 1
	ldr r3, =0x00000e22
	adds r1, r3
	adds r1, r2
	strh r0, [r1]
	adds r4, 0x1
	cmp r4, 0x3
	ble _081A925A
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e2a
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9254

	thumb_func_start CalculateBattlePyramidItemBallItemId
CalculateBattlePyramidItemBallItemId: @ 81A9290
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r0, 30
	mov r10, r0
	adds r2, 0x9
	adds r0, r1, r2
	ldrh r0, [r0]
	str r0, [sp]
	mov r2, r10
	lsls r0, r2, 1
	ldr r2, =0x00000e1a
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x14
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	cmp r0, 0x13
	bls _081A92DE
	movs r0, 0x13
	mov r8, r0
_081A92DE:
	bl sub_81AA9E4
	lsls r0, 24
	ldr r1, =gScriptLastTalked
	ldrh r4, [r1]
	ldr r1, =gUnknown_08613650
	lsrs r0, 20
	adds r0, r1
	ldrb r0, [r0, 0x1]
	subs r4, r0
	subs r7, r4, 0x1
	ldr r1, [r5]
	lsrs r0, r7, 31
	adds r0, r7, r0
	asrs r0, 1
	lsls r0, 1
	ldr r2, =0x00000e22
	adds r1, r2
	adds r1, r0
	ldrh r6, [r1]
	adds r0, r6, 0
	bl SeedRng2
	movs r5, 0
	mov r0, r8
	lsls r0, 2
	mov r9, r0
	cmp r5, r4
	bge _081A9332
_081A9318:
	bl Random2
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r6, r0, 16
	adds r5, 0x1
	adds r0, r7, 0x1
	cmp r5, r0
	blt _081A9318
_081A9332:
	ldr r0, =gUnknown_08613B3A
	ldr r1, [sp]
	adds r0, r1, r0
	ldrb r5, [r0]
	ldr r1, =gUnknown_08613ABC
	ldr r3, =gSpecialVar_0x8000
	ldr r4, =gSpecialVar_0x8001
	cmp r5, 0x3E
	bhi _081A935E
	lsls r2, r5, 1
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r6, r0
	blt _081A935E
	adds r0, r2, r1
_081A9350:
	adds r0, 0x2
	adds r5, 0x1
	cmp r5, 0x3E
	bhi _081A935E
	ldrb r2, [r0]
	cmp r6, r2
	bge _081A9350
_081A935E:
	mov r0, r10
	cmp r0, 0
	beq _081A9394
	ldr r2, =gUnknown_0861392C
	b _081A9396
	.pool
_081A9394:
	ldr r2, =gUnknown_0861379C
_081A9396:
	lsls r0, r5, 1
	adds r1, 0x1
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 1
	mov r1, r9
	add r1, r8
	lsls r1, 2
	adds r0, r1
	adds r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	movs r0, 0x1
	strh r0, [r4]
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end CalculateBattlePyramidItemBallItemId

	thumb_func_start sub_81A93C8
sub_81A93C8: @ 81A93C8
	push {r4,r5,lr}
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 4
	adds r3, r0, r1
	movs r2, 0
	ldr r4, =gScriptLastTalked
	b _081A93F4
	.pool
_081A93E4:
	adds r2, 0x1
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 3
	adds r0, r3
	ldrb r0, [r0]
	cmp r0, 0
	beq _081A940A
_081A93F4:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 3
	adds r1, r0, r3
	ldrb r0, [r1]
	ldrh r5, [r4]
	cmp r0, r5
	bne _081A93E4
	ldr r0, =0x00007fff
	strh r0, [r1, 0x4]
	strh r0, [r1, 0x6]
_081A940A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A93C8

	thumb_func_start sub_81A9414
sub_81A9414: @ 81A9414
	ldr r1, =gUnknown_0203BC88
	ldr r0, =gBattleFrontierTrainers
	str r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A9414

	thumb_func_start sub_81A9424
sub_81A9424: @ 81A9424
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	movs r0, 0
	mov r9, r0
	movs r7, 0
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 4
	adds r1, r0
	mov r8, r1
	ldr r2, =gUnknown_02037350
	ldr r0, =gUnknown_03005DF0
	ldrb r1, [r0]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x8]
	bl sub_81A9AA8
	lsls r0, 16
	lsrs r5, r0, 16
	movs r6, 0
	ldr r2, =gUnknown_08613C1C
	ldr r0, =gUnknown_0203BC88
	ldr r1, [r0]
	movs r0, 0x34
	muls r0, r5
	adds r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _081A9488
	ldrb r2, [r2, 0x1]
	mov r9, r2
	b _081A94AE
	.pool
_081A9488:
	adds r6, 0x1
	cmp r6, 0x31
	bhi _081A94AE
	ldr r4, =gUnknown_08613C1C
	lsls r3, r6, 1
	adds r2, r3, r4
	ldr r0, =gUnknown_0203BC88
	ldr r1, [r0]
	movs r0, 0x34
	muls r0, r5
	adds r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _081A9488
	adds r0, r4, 0x1
	adds r0, r3, r0
	ldrb r0, [r0]
	mov r9, r0
_081A94AE:
	ldr r3, =gUnknown_08613ED8
	ldr r2, =gUnknown_02037350
	ldr r0, =gUnknown_03005DF0
	ldrb r1, [r0]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x8]
	subs r0, 0x1
	adds r0, r3
	ldrb r0, [r0]
	str r0, [sp]
	movs r6, 0
	mov r3, r9
	lsls r3, 2
	mov r9, r3
_081A94D0:
	ldr r0, [sp]
	cmp r0, 0x8
	bls _081A94D8
	b _081A95E8
_081A94D8:
	lsls r0, 2
	ldr r1, =_081A94FC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081A94FC:
	.4byte _081A9520
	.4byte _081A9530
	.4byte _081A9572
	.4byte _081A95B4
	.4byte _081A95BA
	.4byte _081A95C0
	.4byte _081A95C6
	.4byte _081A95D2
	.4byte _081A95DE
_081A9520:
	mov r0, sp
	movs r1, 0x8
	movs r2, 0
	bl sub_81A9998
	lsls r0, 24
	lsrs r7, r0, 24
	b _081A95EE
_081A9530:
	movs r6, 0
	ldr r2, =0x7fff0000
	mov r4, r8
	adds r4, 0x4
	mov r5, r8
	b _081A9560
	.pool
_081A9540:
	ldrb r0, [r5, 0x1]
	cmp r0, 0x3B
	bne _081A955A
	movs r1, 0
	ldrsh r0, [r4, r1]
	asrs r1, r2, 16
	cmp r0, r1
	beq _081A955A
	movs r3, 0x2
	ldrsh r0, [r4, r3]
	cmp r0, r1
	beq _081A955A
	adds r7, 0x1
_081A955A:
	adds r4, 0x18
	adds r5, 0x18
	adds r6, 0x1
_081A9560:
	str r2, [sp, 0x4]
	bl sub_81AAA40
	lsls r0, 24
	lsrs r0, 24
	ldr r2, [sp, 0x4]
	cmp r6, r0
	blt _081A9540
	b _081A95EE
_081A9572:
	bl sub_81AA9E4
	lsls r0, 24
	ldr r1, =gUnknown_08613650
	lsrs r0, 20
	adds r0, r1
	ldrb r7, [r0, 0x1]
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e2a
	adds r0, r1
	ldrb r2, [r0]
	ldr r1, =gBitTable
	movs r6, 0x7
_081A958E:
	ldr r0, [r1]
	ands r0, r2
	cmp r0, 0
	beq _081A9598
	subs r7, 0x1
_081A9598:
	adds r1, 0x4
	subs r6, 0x1
	cmp r6, 0
	bge _081A958E
	b _081A95EE
	.pool
_081A95B4:
	mov r0, sp
	movs r1, 0x8
	b _081A95D6
_081A95BA:
	mov r0, sp
	movs r1, 0x8
	b _081A95CA
_081A95C0:
	mov r0, sp
	movs r1, 0x10
	b _081A95D6
_081A95C6:
	mov r0, sp
	movs r1, 0x10
_081A95CA:
	movs r2, 0x1
	bl sub_81A9998
	b _081A95E8
_081A95D2:
	mov r0, sp
	movs r1, 0x18
_081A95D6:
	movs r2, 0x2
	bl sub_81A9998
	b _081A95E8
_081A95DE:
	mov r0, sp
	movs r1, 0x18
	movs r2, 0x1
	bl sub_81A9998
_081A95E8:
	cmp r6, 0
	bne _081A95EE
	b _081A94D0
_081A95EE:
	ldr r1, =gUnknown_08613EC0
	add r1, r9
	ldr r0, [sp]
	ldr r1, [r1]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	lsls r0, r7, 2
	adds r0, r1
	ldr r0, [r0]
	bl box_related_two__2
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9424

	thumb_func_start sub_81A9618
sub_81A9618: @ 81A9618
	push {r4,r5,lr}
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r2, r0, 29
	ldr r4, =0x00000e1a
	adds r1, r4
	adds r1, r2
	ldrh r3, [r1]
	ldr r0, =0x000003e6
	cmp r3, r0
	bhi _081A963A
	adds r0, r3, 0x1
	strh r0, [r1]
_081A963A:
	ldr r0, [r5]
	adds r1, r0, r4
	adds r1, r2
	ldr r3, =0x00000e1e
	adds r0, r3
	adds r0, r2
	ldrh r1, [r1]
	ldrh r2, [r0]
	cmp r1, r2
	bls _081A9650
	strh r1, [r0]
_081A9650:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9618

	thumb_func_start sub_81A966C
sub_81A966C: @ 81A966C
	push {r4,lr}
	ldr r4, =gScriptResult
	bl InBattlePyramid
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A966C

	thumb_func_start sub_81A9684
sub_81A9684: @ 81A9684
	push {r4,lr}
	ldr r0, =gSpecialVar_0x8006
	ldrh r0, [r0]
	cmp r0, 0
	beq _081A9698
	cmp r0, 0x1
	beq _081A96B4
	b _081A9754
	.pool
_081A9698:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =gSpecialVar_0x8005
	ldrh r1, [r1]
	ldr r2, =0x00000e68
	adds r0, r2
	strb r1, [r0]
	b _081A9754
	.pool
_081A96B4:
	ldr r4, =gScriptResult
	ldrh r0, [r4]
	cmp r0, 0x1
	beq _081A9710
	cmp r0, 0x1
	bgt _081A9754
	cmp r0, 0
	bne _081A9754
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _081A9754
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000e68
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0x77
	bls _081A96F4
	movs r0, 0x78
	strb r0, [r1]
	b _081A96FC
	.pool
_081A96F4:
	ldr r0, =gSpecialVar_0x8007
	ldrh r0, [r0]
	bl PlaySE
_081A96FC:
	ldr r1, =gScriptResult
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	b _081A9754
	.pool
_081A9710:
	ldr r1, =gSpecialVar_0x8005
	ldrh r0, [r1]
	cmp r0, 0
	beq _081A9750
	subs r0, 0x1
	strh r0, [r1]
	ldr r3, =gSaveBlock2Ptr
	ldr r1, [r3]
	ldr r2, =0x00000e68
	adds r1, r2
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, [r3]
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0x78
	bls _081A973E
	movs r0, 0x78
	strb r0, [r1]
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
_081A973E:
	bl door_upload_tiles
	b _081A9754
	.pool
_081A9750:
	movs r0, 0x2
	strh r0, [r4]
_081A9754:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_81A9684

	thumb_func_start sub_81A975C
sub_81A975C: @ 81A975C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	movs r1, 0
	mov r0, sp
	strh r1, [r0]
	movs r5, 0
	movs r0, 0x64
	mov r9, r0
	ldr r1, =gPlayerParty
	mov r8, r1
_081A9776:
	movs r4, 0
	adds r7, r5, 0x1
	mov r6, r9
	muls r6, r5
_081A977E:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	lsls r1, r4, 1
	ldr r2, =0x00000caa
	adds r0, r2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, 0
	beq _081A97A2
	subs r0, 0x1
	cmp r0, r5
	bne _081A97A2
	mov r1, r8
	adds r0, r6, r1
	movs r1, 0xC
	mov r2, sp
	bl SetMonData
_081A97A2:
	adds r4, 0x1
	cmp r4, 0x3
	ble _081A977E
	adds r5, r7, 0
	cmp r5, 0x5
	ble _081A9776
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A975C

	thumb_func_start sub_81A97C8
sub_81A97C8: @ 81A97C8
	push {lr}
	ldr r0, =sub_81A97DC
	movs r1, 0
	bl CreateTask
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A97C8

	thumb_func_start sub_81A97DC
sub_81A97DC: @ 81A97DC
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081A980C
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb2
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 5
	ldr r1, =gUnknown_08D856C8
	adds r0, r1
	ldr r1, =gPlttBufferUnfaded + 0xC0
	movs r2, 0x10
	bl CpuSet
	adds r0, r4, 0
	bl DestroyTask
_081A980C:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A97DC

	thumb_func_start sub_81A9828
sub_81A9828: @ 81A9828
	push {lr}
	bl sub_809FDD4
	pop {r0}
	bx r0
	thumb_func_end sub_81A9828

	thumb_func_start sub_81A9834
sub_81A9834: @ 81A9834
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	movs r0, 0
	str r0, [sp]
_081A9844:
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, [sp]
	lsls r1, r2, 1
	ldr r5, =0x00000caa
	adds r0, r5
	adds r0, r1
	ldrh r0, [r0]
	subs r5, r0, 0x1
	movs r0, 0
	str r0, [sp, 0x4]
	movs r2, 0x64
	adds r1, r5, 0
	muls r1, r2
	str r1, [sp, 0x8]
	movs r0, 0x8E
	lsls r0, 2
	adds r6, r1, r0
	movs r1, 0
	str r1, [sp, 0x10]
_081A986C:
	ldr r2, =gSaveBlock1Ptr
	ldr r0, [r2]
	adds r0, r6
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r4, r0, 0
	ldr r3, =gPlayerParty
	ldr r1, [sp, 0x10]
	adds r0, r1, r3
	movs r1, 0xB
	movs r2, 0
	str r3, [sp, 0x14]
	bl GetMonData
	ldr r3, [sp, 0x14]
	cmp r4, r0
	bne _081A993C
	movs r6, 0
	adds r2, r5, 0x1
	str r2, [sp, 0xC]
	movs r1, 0x64
	adds r0, r5, 0
	muls r0, r1
	movs r5, 0x8E
	lsls r5, 2
	adds r5, r0
	mov r9, r5
	ldr r7, [sp, 0x4]
	muls r7, r1
	mov r10, r3
_081A98AC:
	movs r5, 0
	adds r0, r6, 0x1
	mov r8, r0
	b _081A98C6
	.pool
_081A98C4:
	adds r5, 0x1
_081A98C6:
	cmp r5, 0x3
	bgt _081A98EE
	ldr r1, =gSaveBlock1Ptr
	ldr r0, [r1]
	add r0, r9
	adds r1, r5, 0
	adds r1, 0xD
	movs r2, 0
	bl GetMonData
	adds r4, r0, 0
	adds r1, r6, 0
	adds r1, 0xD
	mov r2, r10
	adds r0, r7, r2
	movs r2, 0
	bl GetMonData
	cmp r4, r0
	bne _081A98C4
_081A98EE:
	cmp r5, 0x4
	bne _081A9900
	lsls r2, r6, 24
	lsrs r2, 24
	mov r5, r10
	adds r0, r7, r5
	movs r1, 0xA6
	bl SetMonMoveSlot
_081A9900:
	mov r6, r8
	cmp r6, 0x3
	ble _081A98AC
	ldr r1, =gSaveBlock1Ptr
	ldr r0, [r1]
	ldr r2, [sp, 0x8]
	adds r0, r2
	movs r5, 0x8E
	lsls r5, 2
	adds r0, r5
	ldr r1, =gPlayerParty
	ldr r2, [sp, 0x10]
	adds r1, r2, r1
	movs r2, 0x64
	bl memcpy
	ldr r0, =gUnknown_0203CEF8
	ldr r5, [sp, 0x4]
	adds r0, r5, r0
	mov r1, sp
	ldrb r1, [r1, 0xC]
	strb r1, [r0]
	b _081A994C
	.pool
_081A993C:
	ldr r2, [sp, 0x10]
	adds r2, 0x64
	str r2, [sp, 0x10]
	ldr r0, [sp, 0x4]
	adds r0, 0x1
	str r0, [sp, 0x4]
	cmp r0, 0x2
	ble _081A986C
_081A994C:
	ldr r1, [sp]
	adds r1, 0x1
	str r1, [sp]
	cmp r1, 0x2
	bgt _081A9958
	b _081A9844
_081A9958:
	movs r2, 0
	str r2, [sp]
	ldr r4, =gSaveBlock2Ptr
	ldr r3, =0x00000caa
	ldr r2, =gUnknown_0203CEF8
_081A9962:
	ldr r1, [r4]
	ldr r5, [sp]
	lsls r0, r5, 1
	adds r1, r3
	adds r1, r0
	adds r0, r5, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r5, 0x1
	str r5, [sp]
	cmp r5, 0x2
	ble _081A9962
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9834

	thumb_func_start sub_81A9998
sub_81A9998: @ 81A9998
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r10, r0
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r7, r2, 24
	movs r4, 0
	ldr r0, =gUnknown_03005DC0
	ldr r5, [r0, 0x8]
	ldr r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 1
	adds r0, 0xE
	adds r5, r0
	movs r3, 0
	ldr r0, =0x000003ff
	mov r8, r0
	ldr r1, =0x0000028e
	mov r12, r1
	ldr r0, =gUnknown_02037350
	mov r9, r0
_081A99CC:
	movs r2, 0
_081A99CE:
	lsls r0, r2, 1
	adds r0, r5
	ldrh r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, r12
	bne _081A9A8A
	adds r2, 0x7
	ldr r0, =gUnknown_03005DF0
	ldrb r1, [r0]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	add r0, r9
	movs r5, 0xC
	ldrsh r1, [r0, r5]
	subs r2, r1
	adds r1, r3, 0x7
	movs r3, 0xE
	ldrsh r0, [r0, r3]
	subs r3, r1, r0
	cmp r2, r6
	bge _081A9A0E
	negs r0, r6
	cmp r2, r0
	ble _081A9A0E
	cmp r3, r6
	bge _081A9A0E
	cmp r3, r0
	ble _081A9A0E
	cmp r7, 0
	bne _081A9A84
_081A9A0E:
	cmp r2, 0
	ble _081A9A34
	cmp r3, 0
	ble _081A9A34
	movs r4, 0x3
	cmp r2, r3
	blt _081A9A7C
	movs r4, 0x2
	b _081A9A7C
	.pool
_081A9A34:
	cmp r2, 0
	bge _081A9A46
	cmp r3, 0
	bge _081A9A46
	movs r4, 0x1
	cmp r2, r3
	ble _081A9A7C
	movs r4, 0
	b _081A9A7C
_081A9A46:
	cmp r2, 0
	bne _081A9A54
	movs r4, 0
	cmp r3, 0
	ble _081A9A7C
	movs r4, 0x3
	b _081A9A7C
_081A9A54:
	cmp r3, 0
	bne _081A9A62
	movs r4, 0x1
	cmp r2, 0
	ble _081A9A7C
	movs r4, 0x2
	b _081A9A7C
_081A9A62:
	cmp r2, 0
	bge _081A9A72
	adds r0, r2, r3
	movs r4, 0x1
	cmp r0, 0
	ble _081A9A7C
	movs r4, 0x3
	b _081A9A7C
_081A9A72:
	adds r0, r2, r3
	mvns r0, r0
	asrs r4, r0, 31
	movs r0, 0x2
	ands r4, r0
_081A9A7C:
	movs r0, 0
	mov r5, r10
	str r0, [r5]
	b _081A9A98
_081A9A84:
	mov r0, r10
	str r7, [r0]
	b _081A9A98
_081A9A8A:
	adds r2, 0x1
	cmp r2, 0x1F
	ble _081A99CE
	adds r5, 0x5E
	adds r3, 0x1
	cmp r3, 0x1F
	ble _081A99CC
_081A9A98:
	adds r0, r4, 0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81A9998

	thumb_func_start sub_81A9AA8
sub_81A9AA8: @ 81A9AA8
	lsls r0, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r1, [r1]
	lsrs r0, 23
	adds r1, r0
	ldr r0, =0x00000cb2
	adds r1, r0
	ldrh r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81A9AA8

	thumb_func_start GetBattlePyramidTrainerFlag
GetBattlePyramidTrainerFlag: @ 81A9AC4
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gSaveBlock2Ptr
	ldr r2, [r1]
	ldr r1, =0x00000e2a
	adds r2, r1
	ldr r4, =gBitTable
	ldr r3, =gUnknown_02037350
	lsls r1, r0, 3
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r0, [r1, 0x8]
	subs r0, 0x1
	lsls r0, 2
	adds r0, r4
	ldr r0, [r0]
	ldrb r1, [r2]
	ands r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end GetBattlePyramidTrainerFlag

	thumb_func_start sub_81A9B04
sub_81A9B04: @ 81A9B04
	push {lr}
	ldr r0, =gTrainerBattleOpponent_A
	ldrh r0, [r0]
	bl sub_81A9B44
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 8
	ands r0, r1
	cmp r0, 0
	beq _081A9B2E
	movs r0, 0x1
	bl sub_80B47E0
	ldr r1, =gUnknown_03005DF0
	strb r0, [r1]
	ldr r0, =gTrainerBattleOpponent_B
	ldrh r0, [r0]
	bl sub_81A9B44
_081A9B2E:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9B04

	thumb_func_start sub_81A9B44
sub_81A9B44: @ 81A9B44
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 16
	lsrs r5, r0, 16
	movs r3, 0
	ldr r0, =gUnknown_02037350
	mov r12, r0
	ldr r6, =gUnknown_03005DF0
	ldr r1, =gSaveBlock1Ptr
	mov r10, r1
	ldr r7, =gSaveBlock2Ptr
	mov r9, r7
	ldr r0, =0x00000cb4
	mov r8, r0
	ldr r4, =gBitTable
_081A9B68:
	mov r1, r9
	ldr r2, [r1]
	lsls r0, r3, 1
	mov r7, r8
	adds r1, r2, r7
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, r5
	bne _081A9B86
	ldr r1, =0x00000e2a
	adds r0, r2, r1
	ldr r1, [r4]
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_081A9B86:
	adds r4, 0x4
	adds r3, 0x1
	cmp r3, 0x7
	ble _081A9B68
	ldrb r1, [r6]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	add r0, r12
	movs r3, 0x2
	strb r3, [r0, 0x6]
	mov r7, r10
	ldr r2, [r7]
	ldr r0, =gScriptLastTalked
	ldrh r1, [r0]
	subs r1, 0x1
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r2, r0
	ldr r1, =0x00000c79
	adds r2, r1
	strb r3, [r2]
	ldrb r1, [r6]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	add r0, r12
	ldrh r1, [r0, 0x10]
	strh r1, [r0, 0xC]
	ldrb r1, [r6]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	add r0, r12
	ldrh r1, [r0, 0x12]
	strh r1, [r0, 0xE]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9B44

	thumb_func_start sub_81A9C04
sub_81A9C04: @ 81A9C04
	push {r4-r6,lr}
	sub sp, 0x14
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r5, r0, 30
	lsls r0, r5, 1
	ldr r2, =0x00000e1a
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x14
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x13
	bls _081A9C3A
	movs r0, 0x13
_081A9C3A:
	cmp r5, 0
	beq _081A9C54
	ldr r1, =gBattlePyramidOpenLevelWildMonPointers
	b _081A9C56
	.pool
_081A9C54:
	ldr r1, =gBattlePyramidLevel50WildMonPointers
_081A9C56:
	lsls r0, 2
	adds r0, r1
	ldr r6, [r0]
	ldr r4, =gEnemyParty
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	subs r0, 0x1
	str r0, [sp, 0x10]
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	adds r2, r6, r2
	adds r0, r4, 0
	movs r1, 0xB
	bl SetMonData
	ldr r1, [sp, 0x10]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrh r1, [r0]
	mov r0, sp
	bl GetSpeciesName
	adds r0, r4, 0
	movs r1, 0x2
	mov r2, sp
	bl SetMonData
	cmp r5, 0
	beq _081A9CD4
	bl sub_8165C40
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, [sp, 0x10]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x2]
	subs r5, r0
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xB
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	subs r0, 0x5
	adds r5, r0
	b _081A9CF6
	.pool
_081A9CD4:
	bl Random
	ldr r2, [sp, 0x10]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	adds r1, r6
	ldrb r4, [r1, 0x2]
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xB
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	subs r0, 0x5
	adds r5, r4, r0
_081A9CF6:
	ldr r4, =gEnemyParty
	ldr r2, =gBaseStats
	ldr r1, [sp, 0x10]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrh r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x13]
	movs r0, 0xCA
	lsls r0, 1
	adds r2, r1, 0
	muls r2, r0
	lsls r0, r5, 2
	ldr r1, =gExperienceTables
	adds r0, r1
	adds r2, r0
	adds r0, r4, 0
	movs r1, 0x19
	bl SetMonData
	ldr r1, [sp, 0x10]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0, 0x3]
	cmp r1, 0
	blt _081A9D4C
	cmp r1, 0x1
	bgt _081A9D4C
	adds r2, r0, 0x3
	b _081A9D7C
	.pool
_081A9D4C:
	ldr r2, =gBaseStats
	ldr r1, [sp, 0x10]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	ldrh r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x17]
	cmp r0, 0
	beq _081A9D90
	ldr r4, =gEnemyParty
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0
	bl GetMonData
	movs r1, 0x1
	ands r1, r0
	str r1, [sp, 0xC]
	add r2, sp, 0xC
_081A9D7C:
	adds r0, r4, 0
	movs r1, 0x2E
	bl SetMonData
	b _081A9D9C
	.pool
_081A9D90:
	str r0, [sp, 0xC]
	ldr r0, =gEnemyParty
	add r2, sp, 0xC
	movs r1, 0x2E
	bl SetMonData
_081A9D9C:
	movs r0, 0
	str r0, [sp, 0xC]
	movs r2, 0
	lsls r4, r5, 1
_081A9DA4:
	ldr r1, [sp, 0x10]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	lsls r1, r2, 1
	adds r0, 0x4
	adds r0, r1
	ldrh r1, [r0]
	lsls r2, 24
	lsrs r2, 24
	ldr r0, =gEnemyParty
	bl SetMonMoveSlot
	ldr r0, [sp, 0xC]
	adds r0, 0x1
	str r0, [sp, 0xC]
	adds r2, r0, 0
	cmp r2, 0x3
	ble _081A9DA4
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e1a
	adds r0, r1
	adds r0, r4
	ldrh r0, [r0]
	cmp r0, 0x8B
	bls _081A9E0C
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x11
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	adds r0, 0xF
	str r0, [sp, 0x10]
	movs r0, 0
	str r0, [sp, 0xC]
_081A9DF6:
	adds r1, r0, 0
	adds r1, 0x27
	ldr r0, =gEnemyParty
	add r2, sp, 0x10
	bl SetMonData
	ldr r0, [sp, 0xC]
	adds r0, 0x1
	str r0, [sp, 0xC]
	cmp r0, 0x5
	ble _081A9DF6
_081A9E0C:
	ldr r0, =gEnemyParty
	bl CalculateMonStats
	add sp, 0x14
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9C04

	thumb_func_start sub_81A9E28
sub_81A9E28: @ 81A9E28
	push {lr}
	bl sub_81AA9E4
	lsls r0, 24
	ldr r1, =gUnknown_08613650
	lsrs r0, 20
	adds r0, r1
	ldrb r0, [r0, 0x4]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A9E28

	thumb_func_start InBattlePyramid
InBattlePyramid: @ 81A9E40
	push {lr}
	ldr r0, =gMapHeader
	ldrh r1, [r0, 0x12]
	ldr r0, =0x00000169
	cmp r1, r0
	bne _081A9E58
	movs r0, 0x1
	b _081A9E66
	.pool
_081A9E58:
	movs r0, 0xBD
	lsls r0, 1
	cmp r1, r0
	beq _081A9E64
	movs r0, 0
	b _081A9E66
_081A9E64:
	movs r0, 0x2
_081A9E66:
	pop {r1}
	bx r1
	thumb_func_end InBattlePyramid

	thumb_func_start sub_81A9E6C
sub_81A9E6C: @ 81A9E6C
	push {lr}
	movs r2, 0
	ldr r0, =gMapHeader
	ldrh r1, [r0, 0x12]
	ldr r0, =0x00000169
	cmp r1, r0
	beq _081A9E80
	adds r0, 0x11
	cmp r1, r0
	bne _081A9E82
_081A9E80:
	movs r2, 0x1
_081A9E82:
	adds r0, r2, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A9E6C

	thumb_func_start sub_81A9E90
sub_81A9E90: @ 81A9E90
	push {lr}
	bl InBattlePyramid
	lsls r0, 24
	cmp r0, 0
	beq _081A9EB8
	bl sub_81A9834
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000ca8
	adds r0, r1
	movs r1, 0x2
	strb r1, [r0]
	ldr r0, =0x0000400e
	movs r1, 0
	bl VarSet
	bl copy_player_party_from_sav1
_081A9EB8:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9E90

	thumb_func_start sub_81A9EC8
sub_81A9EC8: @ 81A9EC8
	push {lr}
	bl InBattlePyramid
	lsls r0, 24
	cmp r0, 0
	beq _081A9ED8
	bl DoSoftReset
_081A9ED8:
	pop {r0}
	bx r0
	thumb_func_end sub_81A9EC8

	thumb_func_start sub_81A9EDC
sub_81A9EDC: @ 81A9EDC
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r2, =gUnknown_0203BC88
	movs r1, 0x34
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0xC
	bl ConvertBattleFrontierTrainerSpeechToString
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9EDC

	thumb_func_start sub_81A9EFC
sub_81A9EFC: @ 81A9EFC
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r2, =gUnknown_0203BC88
	movs r1, 0x34
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0x18
	bl ConvertBattleFrontierTrainerSpeechToString
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9EFC

	thumb_func_start sub_81A9F1C
sub_81A9F1C: @ 81A9F1C
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r2, =gUnknown_0203BC88
	movs r1, 0x34
	muls r1, r0
	ldr r0, [r2]
	adds r0, r1
	adds r0, 0x24
	bl ConvertBattleFrontierTrainerSpeechToString
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9F1C

	thumb_func_start sub_81A9F3C
sub_81A9F3C: @ 81A9F3C
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	movs r4, 0
	ldr r3, =gTrainerClassNameIndices
	ldr r1, =gUnknown_0203BC88
	ldr r2, [r1]
	movs r1, 0x34
	muls r0, r1
	adds r0, r2
	ldrb r0, [r0]
	adds r0, r3
	ldrb r2, [r0]
	ldr r1, =gUnknown_08613B44
_081A9F58:
	ldrb r0, [r1]
	cmp r0, r2
	bne _081A9F70
	ldrb r0, [r1, 0x1]
	b _081A9F7A
	.pool
_081A9F70:
	adds r1, 0x4
	adds r4, 0x1
	cmp r4, 0x35
	bls _081A9F58
	movs r0, 0
_081A9F7A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81A9F3C

	thumb_func_start sub_81A9F80
sub_81A9F80: @ 81A9F80
	push {lr}
	ldr r0, =gUnknown_08252C88
	bl ScriptContext1_SetupScript
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81A9F80

	thumb_func_start sub_81A9F90
sub_81A9F90: @ 81A9F90
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gSaveBlock2Ptr
	ldr r4, [r0]
	ldr r1, =0x00000ca9
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r1, 30
	lsrs r1, 29
	ldr r2, =0x00000e1a
	adds r0, r4, r2
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 16
	lsrs r0, 16
	ldr r1, =0x00000cb2
	adds r4, r1
	ldrh r1, [r4]
	cmp r1, 0x7
	bne _081AA020
	adds r0, 0x1
	lsls r7, r0, 24
	lsls r1, 24
	mov r8, r1
_081A9FCC:
	lsrs r0, r7, 24
	mov r2, r8
	lsrs r1, r2, 24
	bl sub_8162548
	lsls r0, 16
	lsrs r3, r0, 16
	movs r2, 0
	cmp r2, r5
	bge _081AA004
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r4, =0x00000cb4
	adds r0, r4
	ldrh r0, [r0]
	cmp r0, r3
	beq _081AA004
	adds r6, r1, 0
_081A9FF0:
	adds r2, 0x1
	cmp r2, r5
	bge _081AA004
	ldr r0, [r6]
	lsls r1, r2, 1
	adds r0, r4
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bne _081A9FF0
_081AA004:
	cmp r2, r5
	bne _081A9FCC
	b _081AA062
	.pool
_081AA020:
	lsls r1, 24
	mov r8, r1
	lsls r7, r0, 24
_081AA026:
	lsrs r0, r7, 24
	mov r2, r8
	lsrs r1, r2, 24
	bl sub_8162548
	lsls r0, 16
	lsrs r3, r0, 16
	movs r2, 0
	cmp r2, r5
	bge _081AA05E
	ldr r1, =gSaveBlock2Ptr
	ldr r0, [r1]
	ldr r4, =0x00000cb4
	adds r0, r4
	ldrh r0, [r0]
	cmp r0, r3
	beq _081AA05E
	adds r6, r1, 0
_081AA04A:
	adds r2, 0x1
	cmp r2, r5
	bge _081AA05E
	ldr r0, [r6]
	lsls r1, r2, 1
	adds r0, r4
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bne _081AA04A
_081AA05E:
	cmp r2, r5
	bne _081AA026
_081AA062:
	adds r0, r3, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81A9F90

	thumb_func_start sub_81AA078
sub_81AA078: @ 81AA078
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	str r0, [sp, 0x4]
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x8]
	movs r0, 0x10
	bl AllocZeroed
	str r0, [sp, 0xC]
	bl sub_81AA96C
	mov r4, sp
	adds r4, 0x1
	mov r0, sp
	adds r1, r4, 0
	bl sub_81AA33C
	movs r7, 0
_081AA0A6:
	ldr r1, [sp, 0xC]
	adds r0, r1, r7
	ldrb r0, [r0]
	ldr r2, =0x00000169
	adds r0, r2
	lsls r0, 2
	ldr r1, =gUnknown_08481DD4
	adds r0, r1
	ldr r6, [r0]
	ldr r2, [r6, 0xC]
	mov r10, r2
	ldr r0, [sp, 0x4]
	ldr r1, =gUnknown_03005DC0
	str r0, [r1, 0x8]
	ldr r0, [r6]
	lsls r0, 2
	adds r2, r0, 0
	adds r2, 0xF
	str r2, [r1]
	ldr r0, [r6, 0x4]
	lsls r0, 2
	adds r0, 0xE
	str r0, [r1, 0x4]
	ldr r0, [sp, 0x4]
	mov r9, r0
	adds r1, r7, 0
	cmp r7, 0
	bge _081AA0E0
	adds r1, r7, 0x3
_081AA0E0:
	asrs r1, 2
	ldr r4, [r6, 0x4]
	adds r0, r1, 0
	muls r0, r4
	adds r0, 0x7
	muls r2, r0
	lsls r1, 2
	subs r1, r7, r1
	ldr r3, [r6]
	adds r0, r1, 0
	muls r0, r3
	adds r0, 0x7
	adds r2, r0
	lsls r2, 1
	add r9, r2
	movs r1, 0
	mov r8, r1
	adds r2, r7, 0x1
	str r2, [sp, 0x10]
	cmp r8, r4
	bge _081AA1B6
_081AA10A:
	movs r0, 0
	mov r12, r0
	mov r1, r8
	adds r1, 0x1
	str r1, [sp, 0x14]
	cmp r12, r3
	bge _081AA1A2
	ldr r2, =gSaveBlock1Ptr
	str r2, [sp, 0x18]
	mov r4, r9
	mov r5, r10
_081AA120:
	ldrh r1, [r5]
	ldr r0, =0x000003ff
	ands r0, r1
	ldr r2, =0x0000028e
	cmp r0, r2
	bne _081AA194
	mov r0, sp
	ldrb r0, [r0, 0x1]
	cmp r7, r0
	beq _081AA194
	mov r0, sp
	ldrb r0, [r0]
	cmp r7, r0
	bne _081AA164
	ldr r1, [sp, 0x8]
	cmp r1, 0
	bne _081AA164
	ldr r2, [sp, 0x18]
	ldr r3, [r2]
	adds r2, r7, 0
	cmp r7, 0
	bge _081AA14E
	adds r2, r7, 0x3
_081AA14E:
	asrs r2, 2
	lsls r1, r2, 2
	subs r1, r7, r1
	ldr r0, [r6]
	muls r0, r1
	add r0, r12
	strh r0, [r3]
	ldr r0, [r6, 0x4]
	muls r0, r2
	add r0, r8
	strh r0, [r3, 0x2]
_081AA164:
	ldrh r0, [r5]
	movs r1, 0xFC
	lsls r1, 8
	ands r1, r0
	ldr r2, =0x0000028d
	adds r0, r2, 0
	orrs r1, r0
	strh r1, [r4]
	ldr r3, [r6]
	b _081AA196
	.pool
_081AA194:
	strh r1, [r4]
_081AA196:
	adds r4, 0x2
	adds r5, 0x2
	movs r0, 0x1
	add r12, r0
	cmp r12, r3
	blt _081AA120
_081AA1A2:
	lsls r0, r3, 3
	adds r0, 0x1E
	add r9, r0
	lsls r0, r3, 1
	add r10, r0
	ldr r1, [sp, 0x14]
	mov r8, r1
	ldr r0, [r6, 0x4]
	cmp r8, r0
	blt _081AA10A
_081AA1B6:
	ldr r7, [sp, 0x10]
	cmp r7, 0xF
	bgt _081AA1BE
	b _081AA0A6
_081AA1BE:
	bl mapheader_run_script_with_tag_x1
	ldr r0, [sp, 0xC]
	bl Free
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81AA078

	thumb_func_start sub_81AA1D8
sub_81AA1D8: @ 81AA1D8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	movs r5, 0
	mov r6, sp
	adds r6, 0x1
	add r0, sp, 0x4
	mov r8, r0
	ldr r4, =gSaveBlock2Ptr
	ldr r3, =0x00000cb4
	ldr r0, =0x0000ffff
	adds r2, r0, 0
_081AA1F2:
	ldr r0, [r4]
	lsls r1, r5, 1
	adds r0, r3
	adds r0, r1
	ldrh r1, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r5, 0x1
	cmp r5, 0x7
	ble _081AA1F2
	bl sub_81AA9E4
	lsls r0, 24
	lsrs r7, r0, 24
	mov r0, sp
	adds r1, r6, 0
	bl sub_81AA33C
	movs r0, 0
	str r0, [sp, 0x4]
	ldr r0, =gSaveBlock1Ptr
	ldr r1, [r0]
	movs r0, 0xC7
	lsls r0, 4
	adds r1, r0
	ldr r2, =0x05000180
	mov r0, r8
	bl CpuSet
	movs r5, 0
_081AA22E:
	cmp r5, 0
	bne _081AA254
	ldr r1, =gUnknown_08613650
	lsls r0, r7, 4
	adds r0, r1
	ldrb r0, [r0, 0x3]
	b _081AA25C
	.pool
_081AA254:
	ldr r1, =gUnknown_08613650
	lsls r0, r7, 4
	adds r0, r1
	ldrb r0, [r0, 0x2]
_081AA25C:
	cmp r0, 0x4
	bhi _081AA2E4
	lsls r0, 2
	ldr r1, =_081AA274
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081AA274:
	.4byte _081AA288
	.4byte _081AA292
	.4byte _081AA2A2
	.4byte _081AA2B0
	.4byte _081AA2CC
_081AA288:
	lsls r0, r5, 24
	lsrs r0, 24
	bl sub_81AA398
	b _081AA2E4
_081AA292:
	lsls r0, r5, 24
	lsrs r4, r0, 24
	mov r0, sp
	ldrb r1, [r0]
	adds r0, r4, 0
	bl sub_81AA4D8
	b _081AA2BE
_081AA2A2:
	lsls r0, r5, 24
	lsrs r4, r0, 24
	ldrb r1, [r6]
	adds r0, r4, 0
	bl sub_81AA4D8
	b _081AA2BE
_081AA2B0:
	lsls r0, r5, 24
	lsrs r4, r0, 24
	mov r0, sp
	ldrb r1, [r0]
	adds r0, r4, 0
	bl sub_81AA648
_081AA2BE:
	lsls r0, 24
	cmp r0, 0
	beq _081AA2E4
	adds r0, r4, 0
	bl sub_81AA398
	b _081AA2E4
_081AA2CC:
	lsls r0, r5, 24
	lsrs r4, r0, 24
	ldrb r1, [r6]
	adds r0, r4, 0
	bl sub_81AA648
	lsls r0, 24
	cmp r0, 0
	beq _081AA2E4
	adds r0, r4, 0
	bl sub_81AA398
_081AA2E4:
	adds r5, 0x1
	cmp r5, 0x1
	ble _081AA22E
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81AA1D8

	thumb_func_start sub_81AA2F8
sub_81AA2F8: @ 81AA2F8
	push {r4,r5,lr}
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r5, =gUnknown_08252C4F
	ldr r4, =gUnknown_08252C6A
	movs r2, 0xC8
	lsls r2, 4
	adds r1, r0, r2
	movs r3, 0xC7
	lsls r3, 4
	adds r2, r0, r3
	movs r3, 0x3F
_081AA310:
	ldrb r0, [r2, 0x1]
	cmp r0, 0x3B
	beq _081AA328
	str r5, [r1]
	b _081AA32A
	.pool
_081AA328:
	str r4, [r1]
_081AA32A:
	adds r1, 0x18
	adds r2, 0x18
	subs r3, 0x1
	cmp r3, 0
	bge _081AA310
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_81AA2F8

	thumb_func_start sub_81AA33C
sub_81AA33C: @ 81AA33C
	push {r4-r7,lr}
	adds r4, r0, 0
	adds r6, r1, 0
	ldr r5, =gSaveBlock2Ptr
	ldr r1, [r5]
	ldr r2, =0x00000e28
	adds r0, r1, r2
	ldrh r2, [r0]
	movs r3, 0xF
	ands r2, r3
	strb r2, [r4]
	ldr r7, =0x00000e22
	adds r1, r7
	ldrh r0, [r1]
	ands r0, r3
	strb r0, [r6]
	cmp r2, r0
	bne _081AA386
	ldr r1, [r5]
	ldr r2, =0x00000e28
	adds r0, r1, r2
	ldrh r2, [r0]
	adds r3, r2, 0x1
	adds r0, r3, 0
	asrs r0, 4
	lsls r0, 4
	subs r0, r3, r0
	strb r0, [r4]
	adds r0, r1, r7
	ldrh r1, [r0]
	adds r2, r1, 0
	adds r2, 0xF
	adds r0, r2, 0
	asrs r0, 4
	lsls r0, 4
	subs r0, r2, r0
	strb r0, [r6]
_081AA386:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AA33C

	thumb_func_start sub_81AA398
sub_81AA398: @ 81AA398
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	movs r5, 0
	bl sub_81AA9E4
	lsls r0, 24
	lsrs r6, r0, 24
	movs r0, 0x10
	bl AllocZeroed
	str r0, [sp, 0x8]
	bl sub_81AA96C
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e26
	adds r0, r1
	ldrh r4, [r0]
	movs r0, 0xF
	ands r4, r0
	ldr r0, [sp]
	cmp r0, 0
	bne _081AA3F0
	ldr r1, =gUnknown_08613650
	lsls r0, r6, 4
	adds r0, r1
	ldrb r0, [r0, 0x1]
	mov r10, r0
	movs r1, 0
	str r1, [sp, 0x4]
	b _081AA3FE
	.pool
_081AA3F0:
	ldr r1, =gUnknown_08613650
	lsls r0, r6, 4
	adds r0, r1
	ldrb r1, [r0]
	mov r10, r1
	ldrb r0, [r0, 0x1]
	str r0, [sp, 0x4]
_081AA3FE:
	movs r0, 0
	mov r8, r0
	cmp r8, r10
	bge _081AA4C0
_081AA406:
	movs r1, 0x1
	add r1, r8
	mov r9, r1
	b _081AA42E
	.pool
_081AA414:
	lsls r2, r4, 24
	lsrs r2, 24
	ldr r3, [sp, 0x4]
	add r3, r8
	lsls r3, 24
	lsrs r3, 24
	ldr r0, [sp]
	ldr r1, [sp, 0x8]
	bl sub_81AA760
	lsls r0, 24
	cmp r0, 0
	beq _081AA4B6
_081AA42E:
	ldr r0, =gBitTable
	mov r12, r0
	ldr r6, =gSaveBlock2Ptr
	ldr r7, =0x00000e28
	movs r3, 0x2
	lsls r0, r4, 2
	mov r1, r12
	adds r2, r0, r1
_081AA43E:
	movs r0, 0x1
	ands r0, r5
	cmp r0, 0
	beq _081AA464
	ldr r0, [r6]
	adds r0, r7
	ldrh r1, [r0]
	ldr r0, [r2]
	ands r0, r1
	cmp r0, 0
	bne _081AA474
	b _081AA472
	.pool
_081AA464:
	ldr r0, [r6]
	adds r0, r7
	ldrh r1, [r0]
	ldr r0, [r2]
	ands r0, r1
	cmp r0, 0
	beq _081AA474
_081AA472:
	orrs r5, r3
_081AA474:
	adds r2, 0x4
	adds r4, 0x1
	cmp r4, 0xF
	ble _081AA480
	mov r2, r12
	movs r4, 0
_081AA480:
	ldr r0, [r6]
	ldr r1, =0x00000e26
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0xF
	ands r1, r0
	cmp r4, r1
	bne _081AA4A6
	movs r1, 0x1
	adds r0, r5, 0
	ands r0, r1
	cmp r0, 0
	beq _081AA4A4
	movs r0, 0x6
	orrs r5, r0
	b _081AA4A6
	.pool
_081AA4A4:
	orrs r5, r1
_081AA4A6:
	adds r0, r5, 0
	ands r0, r3
	cmp r0, 0
	beq _081AA43E
	movs r0, 0x4
	ands r0, r5
	cmp r0, 0
	beq _081AA414
_081AA4B6:
	movs r0, 0x1
	ands r5, r0
	mov r8, r9
	cmp r8, r10
	blt _081AA406
_081AA4C0:
	ldr r0, [sp, 0x8]
	bl Free
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81AA398

	thumb_func_start sub_81AA4D8
sub_81AA4D8: @ 81AA4D8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x4]
	movs r6, 0
	movs r7, 0
	movs r0, 0
	str r0, [sp, 0xC]
	bl sub_81AA9E4
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0x10
	bl AllocZeroed
	str r0, [sp, 0x14]
	bl sub_81AA96C
	ldr r1, [sp]
	cmp r1, 0
	bne _081AA524
	ldr r1, =gUnknown_08613650
	lsls r0, r4, 4
	adds r0, r1
	ldrb r0, [r0, 0x1]
	str r0, [sp, 0x10]
	movs r0, 0
	b _081AA530
	.pool
_081AA524:
	ldr r1, =gUnknown_08613650
	lsls r0, r4, 4
	adds r0, r1
	ldrb r2, [r0]
	str r2, [sp, 0x10]
	ldrb r0, [r0, 0x1]
_081AA530:
	movs r3, 0
	str r3, [sp, 0x8]
	ldr r1, [sp, 0x10]
	asrs r1, 31
	str r1, [sp, 0x18]
	ldr r2, [sp, 0x10]
	cmp r3, r2
	bge _081AA622
	str r0, [sp, 0x1C]
	adds r3, r0, 0
	lsls r3, 24
	mov r9, r3
_081AA548:
	cmp r7, 0
	bne _081AA56E
	mov r0, r9
	lsrs r3, r0, 24
	ldr r0, [sp]
	ldr r1, [sp, 0x14]
	ldr r2, [sp, 0x4]
	bl sub_81AA760
	lsls r0, 24
	cmp r0, 0
	beq _081AA568
	movs r7, 0x1
	b _081AA56E
	.pool
_081AA568:
	ldr r1, [sp, 0xC]
	adds r1, 0x1
	str r1, [sp, 0xC]
_081AA56E:
	movs r0, 0x1
	ands r0, r7
	cmp r0, 0
	beq _081AA600
	ldr r2, =gUnknown_08613F46
	mov r8, r2
	ldr r3, [sp, 0x4]
	lsls r4, r3, 2
	adds r0, r6, r4
	add r0, r8
	ldrb r2, [r0]
	mov r0, r9
	lsrs r3, r0, 24
	ldr r0, [sp]
	ldr r1, [sp, 0x14]
	bl sub_81AA760
	lsls r0, 24
	ldr r1, [sp, 0x1C]
	mov r10, r1
	adds r5, r4, 0
	cmp r0, 0
	beq _081AA5E8
	ldr r4, [sp, 0xC]
	adds r4, 0x1
	b _081AA5C2
	.pool
_081AA5A8:
	adds r0, r6, r5
	adds r0, r2
	ldrb r2, [r0]
	mov r0, r10
	lsls r3, r0, 24
	lsrs r3, 24
	ldr r0, [sp]
	ldr r1, [sp, 0x14]
	bl sub_81AA760
	lsls r0, 24
	cmp r0, 0
	beq _081AA5E0
_081AA5C2:
	adds r6, 0x1
	ldr r0, =gUnknown_08613F46
	adds r1, r6, r5
	adds r1, r0
	ldrb r1, [r1]
	adds r2, r0, 0
	cmp r1, 0xFF
	beq _081AA5D6
	cmp r6, 0x3
	ble _081AA5D8
_081AA5D6:
	movs r6, 0
_081AA5D8:
	adds r7, 0x2
	asrs r0, r7, 1
	cmp r0, 0x4
	bne _081AA5A8
_081AA5E0:
	str r4, [sp, 0xC]
	b _081AA600
	.pool
_081AA5E8:
	adds r6, 0x1
	adds r0, r6, r4
	add r0, r8
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _081AA5F8
	cmp r6, 0x3
	ble _081AA5FA
_081AA5F8:
	movs r6, 0
_081AA5FA:
	ldr r1, [sp, 0xC]
	adds r1, 0x1
	str r1, [sp, 0xC]
_081AA600:
	asrs r0, r7, 1
	cmp r0, 0x4
	beq _081AA622
	movs r0, 0x1
	ands r7, r0
	ldr r2, [sp, 0x1C]
	adds r2, 0x1
	str r2, [sp, 0x1C]
	movs r3, 0x80
	lsls r3, 17
	add r9, r3
	ldr r0, [sp, 0x8]
	adds r0, 0x1
	str r0, [sp, 0x8]
	ldr r1, [sp, 0x10]
	cmp r0, r1
	blt _081AA548
_081AA622:
	movs r1, 0
	ldr r2, [sp, 0x10]
	ldr r3, [sp, 0x18]
	subs r0, r2, r3
	asrs r0, 1
	ldr r2, [sp, 0xC]
	cmp r0, r2
	ble _081AA634
	movs r1, 0x1
_081AA634:
	adds r0, r1, 0
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81AA4D8

	thumb_func_start sub_81AA648
sub_81AA648: @ 81AA648
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	lsls r1, 24
	lsrs r6, r1, 24
	movs r4, 0
	movs r7, 0
	movs r0, 0
	mov r8, r0
	bl sub_81AA9E4
	lsls r0, 24
	lsrs r5, r0, 24
	movs r0, 0x10
	bl AllocZeroed
	str r0, [sp, 0x8]
	bl sub_81AA96C
	ldr r1, [sp]
	cmp r1, 0
	bne _081AA694
	ldr r1, =gUnknown_08613650
	lsls r0, r5, 4
	adds r0, r1
	ldrb r0, [r0, 0x1]
	mov r10, r0
	movs r0, 0
	b _081AA6A0
	.pool
_081AA694:
	ldr r1, =gUnknown_08613650
	lsls r0, r5, 4
	adds r0, r1
	ldrb r2, [r0]
	mov r10, r2
	ldrb r0, [r0, 0x1]
_081AA6A0:
	movs r3, 0
	str r3, [sp, 0x4]
	mov r1, r10
	asrs r1, 31
	str r1, [sp, 0xC]
	cmp r3, r10
	bge _081AA73E
	ldr r2, =gUnknown_08613F46
	mov r9, r2
	lsls r5, r6, 2
	lsls r6, r0, 24
_081AA6B6:
	adds r0, r4, r5
	add r0, r9
	ldrb r2, [r0]
	lsrs r3, r6, 24
	ldr r0, [sp]
	ldr r1, [sp, 0x8]
	bl sub_81AA760
	lsls r0, 24
	cmp r0, 0
	beq _081AA714
	adds r7, 0x1
	b _081AA6EE
	.pool
_081AA6D8:
	adds r0, r4, r5
	adds r0, r1
	ldrb r2, [r0]
	lsrs r3, r6, 24
	ldr r0, [sp]
	ldr r1, [sp, 0x8]
	bl sub_81AA760
	lsls r0, 24
	cmp r0, 0
	beq _081AA728
_081AA6EE:
	adds r4, 0x1
	adds r0, r4, r5
	add r0, r9
	ldrb r0, [r0]
	ldr r1, =gUnknown_08613F46
	cmp r0, 0xFF
	beq _081AA700
	cmp r4, 0x3
	ble _081AA702
_081AA700:
	movs r4, 0
_081AA702:
	movs r3, 0x1
	add r8, r3
	mov r0, r8
	cmp r0, 0x4
	bne _081AA6D8
	b _081AA728
	.pool
_081AA714:
	adds r4, 0x1
	adds r0, r4, r5
	add r0, r9
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _081AA724
	cmp r4, 0x3
	ble _081AA726
_081AA724:
	movs r4, 0
_081AA726:
	adds r7, 0x1
_081AA728:
	mov r1, r8
	cmp r1, 0x4
	beq _081AA73E
	movs r2, 0x80
	lsls r2, 17
	adds r6, r2
	ldr r3, [sp, 0x4]
	adds r3, 0x1
	str r3, [sp, 0x4]
	cmp r3, r10
	blt _081AA6B6
_081AA73E:
	movs r1, 0
	mov r2, r10
	ldr r3, [sp, 0xC]
	subs r0, r2, r3
	asrs r0, 1
	cmp r0, r7
	ble _081AA74E
	movs r1, 0x1
_081AA74E:
	adds r0, r1, 0
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81AA648

	thumb_func_start sub_81AA760
sub_81AA760: @ 81AA760
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	mov r10, r1
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r7, r3, 24
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000e22
	adds r0, r1
	ldrh r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081AA7D0
	movs r6, 0x7
_081AA792:
	movs r4, 0x7
	lsls r5, r6, 24
_081AA796:
	lsls r1, r4, 24
	lsrs r1, 24
	mov r0, r8
	str r0, [sp]
	str r7, [sp, 0x4]
	mov r0, r9
	lsrs r2, r5, 24
	mov r3, r10
	bl sub_81AA810
	lsls r0, 24
	cmp r0, 0
	beq _081AA7CC
	subs r4, 0x1
	cmp r4, 0
	bge _081AA796
	subs r6, 0x1
	movs r1, 0x1
	negs r1, r1
	cmp r6, r1
	bgt _081AA792
	b _081AA7FC
	.pool
_081AA7CC:
	movs r0, 0
	b _081AA7FE
_081AA7D0:
	movs r6, 0
_081AA7D2:
	movs r4, 0
	lsls r5, r6, 24
_081AA7D6:
	lsls r1, r4, 24
	lsrs r1, 24
	mov r0, r8
	str r0, [sp]
	str r7, [sp, 0x4]
	mov r0, r9
	lsrs r2, r5, 24
	mov r3, r10
	bl sub_81AA810
	lsls r0, 24
	cmp r0, 0
	beq _081AA7CC
	adds r4, 0x1
	cmp r4, 0x7
	ble _081AA7D6
	adds r6, 0x1
	cmp r6, 0x7
	ble _081AA7D2
_081AA7FC:
	movs r0, 0x1
_081AA7FE:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81AA760

	thumb_func_start sub_81AA810
sub_81AA810: @ 81AA810
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	ldr r4, [sp, 0x34]
	ldr r5, [sp, 0x38]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x4]
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r4, 24
	lsrs r4, 24
	mov r10, r4
	lsls r5, 24
	lsrs r6, r5, 24
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 4
	adds r1, r0, r1
	str r1, [sp, 0x8]
	add r3, r10
	ldrb r1, [r3]
	adds r1, 0x2C
	movs r0, 0x19
	bl get_mapheader_by_bank_and_number
	adds r5, r0, 0
	movs r7, 0
	ldr r1, [r5, 0x4]
	ldrb r2, [r1]
	cmp r7, r2
	bge _081AA95A
	movs r0, 0x3
	ands r0, r4
	lsls r0, 3
	str r0, [sp, 0xC]
_081AA868:
	ldr r1, [r1, 0x4]
	lsls r2, r7, 1
	adds r0, r2, r7
	lsls r0, 3
	adds r3, r0, r1
	movs r4, 0x4
	ldrsh r0, [r3, r4]
	ldr r1, [r5, 0x4]
	mov r12, r1
	mov r9, r2
	ldr r2, [sp, 0x4]
	cmp r0, r2
	bne _081AA950
	movs r4, 0x6
	ldrsh r0, [r3, r4]
	cmp r0, r8
	bne _081AA950
	ldr r0, [sp]
	cmp r0, 0
	bne _081AA896
	ldrb r0, [r3, 0x1]
	cmp r0, 0x3B
	bne _081AA8A2
_081AA896:
	ldr r1, [sp]
	cmp r1, 0x1
	bne _081AA950
	ldrb r0, [r3, 0x1]
	cmp r0, 0x3B
	bne _081AA950
_081AA8A2:
	movs r3, 0
	ldr r2, [r5, 0x4]
	mov r12, r2
	cmp r3, r6
	bge _081AA8DC
	ldr r4, [sp, 0x4]
	ldr r0, [sp, 0xC]
	adds r4, r0
	str r4, [sp, 0x10]
	mov r1, r10
	lsrs r0, r1, 2
	lsls r0, 3
	mov r2, r8
	adds r1, r2, r0
	ldr r2, [sp, 0x8]
	adds r2, 0x4
_081AA8C2:
	movs r4, 0
	ldrsh r0, [r2, r4]
	ldr r4, [sp, 0x10]
	cmp r0, r4
	bne _081AA8D4
	movs r4, 0x2
	ldrsh r0, [r2, r4]
	cmp r0, r1
	beq _081AA8DC
_081AA8D4:
	adds r2, 0x18
	adds r3, 0x1
	cmp r3, r6
	blt _081AA8C2
_081AA8DC:
	cmp r3, r6
	bne _081AA950
	lsls r0, r6, 1
	mov r8, r0
	adds r0, r6
	lsls r0, 3
	ldr r1, [sp, 0x8]
	adds r5, r0, r1
	mov r3, r12
	ldr r2, [r3, 0x4]
	mov r4, r9
	adds r1, r4, r7
	lsls r1, 3
	adds r0, r5, 0
	adds r1, r2
	ldm r1!, {r2-r4}
	stm r0!, {r2-r4}
	ldm r1!, {r2-r4}
	stm r0!, {r2-r4}
	ldrh r0, [r5, 0x4]
	ldr r1, [sp, 0xC]
	adds r0, r1
	strh r0, [r5, 0x4]
	mov r2, r10
	lsrs r0, r2, 2
	lsls r0, 3
	ldrh r3, [r5, 0x6]
	adds r0, r3
	strh r0, [r5, 0x6]
	adds r0, r6, 0x1
	strb r0, [r5]
	ldrb r0, [r5, 0x1]
	cmp r0, 0x3B
	beq _081AA940
	adds r0, r6, 0
	bl sub_81A9F90
	lsls r0, 16
	lsrs r7, r0, 16
	adds r4, r7, 0
	adds r0, r4, 0
	bl sub_81627A4
	strb r0, [r5, 0x1]
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r1, =0x00000cb4
	adds r0, r1
	add r0, r8
	strh r4, [r0]
_081AA940:
	movs r0, 0
	b _081AA95C
	.pool
_081AA950:
	adds r7, 0x1
	mov r1, r12
	ldrb r2, [r1]
	cmp r7, r2
	blt _081AA868
_081AA95A:
	movs r0, 0x1
_081AA95C:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81AA810

	thumb_func_start sub_81AA96C
sub_81AA96C: @ 81AA96C
	push {r4-r7,lr}
	adds r6, r0, 0
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldr r2, =0x00000e22
	adds r1, r0, r2
	ldrh r4, [r1]
	ldr r1, =0x00000e24
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 16
	orrs r4, r0
	bl sub_81AA9E4
	lsls r0, 24
	lsrs r5, r0, 24
	movs r3, 0
	ldr r2, =gUnknown_08613655
	mov r12, r2
	movs r7, 0x7
_081AA994:
	adds r2, r6, r3
	adds r0, r4, 0
	ands r0, r7
	lsls r1, r5, 4
	adds r0, r1
	add r0, r12
	ldrb r0, [r0]
	strb r0, [r2]
	asrs r4, 3
	cmp r3, 0x7
	bne _081AA9C0
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, =0x00000e26
	adds r0, r1, r2
	ldrh r4, [r0]
	ldr r0, =0x00000e28
	adds r1, r0
	ldrh r0, [r1]
	lsls r0, 16
	orrs r4, r0
	asrs r4, 8
_081AA9C0:
	adds r3, 0x1
	cmp r3, 0xF
	ble _081AA994
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AA96C

	thumb_func_start sub_81AA9E4
sub_81AA9E4: @ 81AA9E4
	push {r4,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r4, [r0]
	ldr r1, =0x00000e28
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r3, r0, 16
	ldr r0, =0x00000cb2
	adds r4, r0
	ldrh r0, [r4]
	ldr r1, =gUnknown_08613794
	adds r0, r1
	ldrb r2, [r0]
	cmp r2, 0x21
	bhi _081AAA38
	ldr r1, =gUnknown_08613750
	lsls r0, r2, 1
	adds r0, r1
_081AAA10:
	ldrb r1, [r0]
	cmp r3, r1
	bge _081AAA30
	ldrb r0, [r0, 0x1]
	b _081AAA3A
	.pool
_081AAA30:
	adds r0, 0x2
	adds r2, 0x1
	cmp r2, 0x21
	bls _081AAA10
_081AAA38:
	movs r0, 0
_081AAA3A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_81AA9E4

	thumb_func_start sub_81AAA40
sub_81AAA40: @ 81AAA40
	push {lr}
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 4
	adds r2, r0, r1
	movs r1, 0
	movs r3, 0xC7
	lsls r3, 4
	adds r0, r3
	b _081AAA6E
	.pool
_081AAA5C:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0xF
	bhi _081AAA74
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, r2
_081AAA6E:
	ldrb r0, [r0]
	cmp r0, 0
	bne _081AAA5C
_081AAA74:
	adds r0, r1, 0
	pop {r1}
	bx r1
	thumb_func_end sub_81AAA40

	thumb_func_start sub_81AAA7C
sub_81AAA7C: @ 81AAA7C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r0, 24
	movs r3, 0
	ldr r1, =gSaveBlock2Ptr
	mov r8, r1
	lsls r1, r0, 2
	adds r1, r0
	movs r0, 0
	mov r12, r0
	lsls r4, r1, 1
	ldr r7, =0x00000e2c
	movs r6, 0
	ldr r5, =0x00000e54
	lsls r2, r1, 2
_081AAA9E:
	mov r1, r8
	ldr r0, [r1]
	adds r1, r0, r7
	adds r1, r2
	strh r6, [r1]
	adds r1, r3, r4
	adds r0, r5
	adds r0, r1
	mov r1, r12
	strb r1, [r0]
	adds r2, 0x2
	adds r3, 0x1
	cmp r3, 0x9
	ble _081AAA9E
	movs r0, 0x15
	movs r1, 0x1
	bl AddPyramidBagItem
	movs r0, 0x22
	movs r1, 0x1
	bl AddPyramidBagItem
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AAA7C

	thumb_func_start CalculateBattlePyramidPickupItemId
CalculateBattlePyramidPickupItemId: @ 81AAAE0
	push {r4-r6,lr}
	ldr r0, =gSaveBlock2Ptr
	ldr r1, [r0]
	ldr r2, =0x00000ca9
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, 30
	lsrs r6, r0, 30
	lsls r0, r6, 1
	ldr r2, =0x00000e1a
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	movs r1, 0x7
	bl __udivsi3
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x13
	ble _081AAB0A
	movs r4, 0x13
_081AAB0A:
	bl Random
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r2, r0, 16
	movs r1, 0
	ldr r3, =gUnknown_08613F86
	ldrb r0, [r3]
	lsls r5, r4, 2
	cmp r0, r2
	bgt _081AAB36
_081AAB28:
	adds r1, 0x1
	cmp r1, 0x9
	bhi _081AAB3A
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	ble _081AAB28
_081AAB36:
	cmp r1, 0x9
	bls _081AAB3C
_081AAB3A:
	movs r1, 0x9
_081AAB3C:
	cmp r6, 0
	bne _081AAB58
	ldr r2, =gUnknown_0861379C
	b _081AAB5A
	.pool
_081AAB58:
	ldr r2, =gUnknown_0861392C
_081AAB5A:
	lsls r1, 1
	adds r0, r5, r4
	lsls r0, 2
	adds r1, r0
	adds r1, r2
	ldrh r0, [r1]
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end CalculateBattlePyramidPickupItemId

	thumb_func_start ResetBagScrollPositions
ResetBagScrollPositions: @ 81AAB70
	push {r4,lr}
	ldr r4, =gUnknown_0203CE58
	movs r0, 0
	strb r0, [r4, 0x5]
	adds r0, r4, 0
	adds r0, 0x8
	movs r1, 0
	movs r2, 0xA
	bl memset
	adds r4, 0x12
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0xA
	bl memset
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ResetBagScrollPositions

	thumb_func_start CB2_BagMenuFromStartMenu
@ void CB2_BagMenuFromStartMenu()
CB2_BagMenuFromStartMenu: @ 81AAB9C
	push {lr}
	ldr r2, =sub_8086194
	movs r0, 0
	movs r1, 0x5
	bl GoToBagMenu
	pop {r0}
	bx r0
	.pool
	thumb_func_end CB2_BagMenuFromStartMenu

	thumb_func_start sub_81AABB0
sub_81AABB0: @ 81AABB0
	push {lr}
	bl InBattlePyramid
	lsls r0, 24
	cmp r0, 0
	bne _081AABCC
	ldr r2, =sub_8059D50
	movs r0, 0x1
	movs r1, 0x5
	bl GoToBagMenu
	b _081AABD4
	.pool
_081AABCC:
	ldr r1, =sub_8059D50
	movs r0, 0x1
	bl sub_81C4F98
_081AABD4:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AABB0

	thumb_func_start CB2_ChooseBerry
CB2_ChooseBerry: @ 81AABDC
	push {lr}
	ldr r2, =sub_80861B0
	movs r0, 0x4
	movs r1, 0x3
	bl GoToBagMenu
	pop {r0}
	bx r0
	.pool
	thumb_func_end CB2_ChooseBerry

	thumb_func_start sub_81AABF0
sub_81AABF0: @ 81AABF0
	push {lr}
	adds r2, r0, 0
	movs r0, 0x5
	movs r1, 0x3
	bl GoToBagMenu
	pop {r0}
	bx r0
	thumb_func_end sub_81AABF0

	thumb_func_start CB2_GoToSellMenu
@ void CB2_GoToSellMenu()
CB2_GoToSellMenu: @ 81AAC00
	push {lr}
	ldr r2, =CB2_ExitSellMenu
	movs r0, 0x3
	movs r1, 0x5
	bl GoToBagMenu
	pop {r0}
	bx r0
	.pool
	thumb_func_end CB2_GoToSellMenu

	thumb_func_start sub_81AAC14
sub_81AAC14: @ 81AAC14
	push {lr}
	ldr r2, =sub_816B31C
	movs r0, 0x6
	movs r1, 0x5
	bl GoToBagMenu
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AAC14

	thumb_func_start sub_81AAC28
sub_81AAC28: @ 81AAC28
	push {lr}
	ldr r2, =bag_menu_leave_maybe_3
	movs r0, 0x9
	movs r1, 0x5
	bl GoToBagMenu
	ldr r0, =gSpecialVar_0x8005
	movs r1, 0
	strh r1, [r0]
	ldr r0, =gScriptResult
	strh r1, [r0]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AAC28

	thumb_func_start sub_81AAC50
sub_81AAC50: @ 81AAC50
	push {lr}
	ldr r2, =bag_menu_leave_maybe_2
	movs r0, 0x7
	movs r1, 0x5
	bl GoToBagMenu
	ldr r1, =gScriptResult
	movs r0, 0
	strh r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AAC50

	thumb_func_start sub_81AAC70
sub_81AAC70: @ 81AAC70
	push {lr}
	ldr r2, =bag_menu_leave_maybe
	movs r0, 0x8
	movs r1, 0x5
	bl GoToBagMenu
	ldr r1, =gScriptResult
	movs r0, 0
	strh r0, [r1]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AAC70

	thumb_func_start GoToBagMenu
@ void GoToBagMenu(u8 bagMenuType, u8 pocketId, void ( *postExitMenuMainCallback2)())
GoToBagMenu: @ 81AAC90
	push {r4-r7,lr}
	adds r4, r2, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	ldr r6, =gUnknown_0203CE54
	ldr r0, =0x00000c48
	bl AllocZeroed
	str r0, [r6]
	cmp r0, 0
	bne _081AACBC
	adds r0, r4, 0
	bl SetMainCallback2
	b _081AAD3A
	.pool
_081AACBC:
	ldr r0, =gUnknown_0203CE58
	cmp r5, 0xC
	beq _081AACC4
	strb r5, [r0, 0x4]
_081AACC4:
	cmp r4, 0
	beq _081AACCA
	str r4, [r0]
_081AACCA:
	cmp r7, 0x4
	bhi _081AACD0
	strb r7, [r0, 0x5]
_081AACD0:
	ldrb r0, [r0, 0x4]
	subs r0, 0x4
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _081AACF0
	ldr r2, [r6]
	ldr r0, =0x0000081b
	adds r2, r0
	ldrb r1, [r2]
	movs r0, 0x10
	negs r0, r0
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2]
_081AACF0:
	ldr r0, [r6]
	movs r1, 0
	str r1, [r0]
	ldr r1, =0x0000081a
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldr r0, [r6]
	ldr r1, =0x0000081e
	adds r0, r1
	movs r1, 0x1
	negs r1, r1
	strb r1, [r0]
	ldr r0, [r6]
	ldr r1, =0x0000081f
	adds r0, r1
	movs r1, 0x1
	negs r1, r1
	strb r1, [r0]
	ldr r0, [r6]
	ldr r1, =0x00000804
	adds r0, r1
	movs r1, 0xFF
	movs r2, 0xC
	bl memset
	ldr r0, [r6]
	movs r1, 0x81
	lsls r1, 4
	adds r0, r1
	movs r1, 0xFF
	movs r2, 0xA
	bl memset
	ldr r0, =CB2_Bag
	bl SetMainCallback2
_081AAD3A:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end GoToBagMenu

	thumb_func_start c2_bag_3
c2_bag_3: @ 81AAD5C
	push {lr}
	bl RunTasks
	bl AnimateSprites
	bl BuildOamBuffer
	bl do_scheduled_bg_tilemap_copies_to_vram
	bl UpdatePaletteFade
	pop {r0}
	bx r0
	thumb_func_end c2_bag_3

	thumb_func_start vblank_cb_bag_menu
vblank_cb_bag_menu: @ 81AAD78
	push {lr}
	bl LoadOam
	bl ProcessSpriteCopyRequests
	bl TransferPlttBuffer
	pop {r0}
	bx r0
	thumb_func_end vblank_cb_bag_menu

	thumb_func_start CB2_Bag
CB2_Bag: @ 81AAD8C
	push {lr}
_081AAD8E:
	bl sub_81221EC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _081AADB2
	bl setup_bag_menu
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _081AADB2
	bl sub_81221AC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081AAD8E
_081AADB2:
	pop {r0}
	bx r0
	thumb_func_end CB2_Bag

	thumb_func_start setup_bag_menu
setup_bag_menu: @ 81AADB8
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, r1, 0
	cmp r0, 0x14
	bls _081AADCE
	b _081AB02C
_081AADCE:
	lsls r0, 2
	ldr r1, =_081AADE0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081AADE0:
	.4byte _081AAE34
	.4byte _081AAE3E
	.4byte _081AAE50
	.4byte _081AAE56
	.4byte _081AAE78
	.4byte _081AAE7E
	.4byte _081AAE86
	.4byte _081AAEA4
	.4byte _081AAECC
	.4byte _081AAEDA
	.4byte _081AAEEC
	.4byte _081AAEFA
	.4byte _081AAF0C
	.4byte _081AAF1C
	.4byte _081AAF54
	.4byte _081AAFA0
	.4byte _081AAFBC
	.4byte _081AAFC2
	.4byte _081AAFD8
	.4byte _081AAFDE
	.4byte _081AAFF8
_081AAE34:
	bl SetVBlankHBlankCallbacksToNull
	bl clear_scheduled_bg_copies_to_vram
	b _081AB012
_081AAE3E:
	bl remove_some_task
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
	b _081AB01A
	.pool
_081AAE50:
	bl FreeAllSpritePalettes
	b _081AB012
_081AAE56:
	bl ResetPaletteFade
	ldr r2, =gPaletteFade
	ldrb r0, [r2, 0x8]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2, 0x8]
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
	b _081AB01A
	.pool
_081AAE78:
	bl ResetSpriteData
	b _081AB012
_081AAE7E:
	movs r0, 0x87
	lsls r0, 3
	adds r1, r2, r0
	b _081AB01A
_081AAE86:
	bl sub_81221AC
	lsls r0, 24
	cmp r0, 0
	bne _081AAE94
	bl ResetTasks
_081AAE94:
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
	b _081AB01A
	.pool
_081AAEA4:
	bl bag_menu_init_bgs
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r1, =0x00000834
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
	b _081AB01A
	.pool
_081AAECC:
	bl load_bag_menu_graphics
	lsls r0, 24
	cmp r0, 0
	bne _081AAED8
	b _081AB044
_081AAED8:
	b _081AB012
_081AAEDA:
	bl setup_bag_menu_textboxes
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
	b _081AB01A
	.pool
_081AAEEC:
	bl sub_81ABA6C
	bl sub_81ABAC4
	bl sub_81ABAE0
	b _081AB012
_081AAEFA:
	bl allocate_bag_item_list_buffers
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
	b _081AB01A
	.pool
_081AAF0C:
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	bl load_bag_item_list_buffers
	b _081AB012
	.pool
_081AAF1C:
	ldr r1, =gUnknown_085E91FC
	ldr r4, =gUnknown_0203CE58
	ldrb r0, [r4, 0x5]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0
	bl bag_menu_print_pocket_names
	movs r0, 0
	bl bag_menu_copy_pocket_name_to_window
	ldrb r0, [r4, 0x5]
	movs r1, 0x1
	bl bag_menu_draw_pocket_indicator_square
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
	b _081AB01A
	.pool
_081AAF54:
	ldr r4, =gUnknown_0203CE58
	ldrb r0, [r4, 0x4]
	bl sub_81AB1F0
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldr r0, =gUnknown_03006310
	ldrb r2, [r4, 0x5]
	lsls r2, 1
	adds r1, r4, 0
	adds r1, 0x12
	adds r1, r2, r1
	ldrh r1, [r1]
	adds r4, 0x8
	adds r2, r4
	ldrh r2, [r2]
	bl ListMenuInit
	ldr r2, =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r2
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0
	strh r0, [r1, 0x8]
	strh r2, [r1, 0xE]
	strh r2, [r1, 0x18]
	b _081AB012
	.pool
_081AAFA0:
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	bl AddBagVisualObject
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
	b _081AB01A
	.pool
_081AAFBC:
	bl sub_80D4FAC
	b _081AB012
_081AAFC2:
	bl bag_menu_add_pocket_scroll_arrow_indicators_maybe
	bl bag_menu_add_list_scroll_arrow_indicators_maybe
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
	b _081AB01A
	.pool
_081AAFD8:
	bl bag_menu_prepare_tmhm_move_window
	b _081AB012
_081AAFDE:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0x10
	movs r2, 0
	bl BlendPalettes
	ldr r1, =gMain
	movs r2, 0x87
	lsls r2, 3
	adds r1, r2
	b _081AB01A
	.pool
_081AAFF8:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r2, =gPaletteFade
	ldrb r1, [r2, 0x8]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r2, 0x8]
_081AB012:
	ldr r1, =gMain
	movs r0, 0x87
	lsls r0, 3
	adds r1, r0
_081AB01A:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _081AB044
	.pool
_081AB02C:
	ldr r0, =vblank_cb_bag_menu
	bl SetVBlankCallback
	ldr r0, =c2_bag_3
	bl SetMainCallback2
	movs r0, 0x1
	b _081AB046
	.pool
_081AB044:
	movs r0, 0
_081AB046:
	add sp, 0x4
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end setup_bag_menu

	thumb_func_start bag_menu_init_bgs
bag_menu_init_bgs: @ 81AB050
	push {r4,lr}
	bl sub_8121DA0
	ldr r4, =gUnknown_0203CE54
	ldr r0, [r4]
	adds r0, 0x4
	movs r2, 0x80
	lsls r2, 4
	movs r1, 0
	bl memset
	movs r0, 0
	bl ResetBgsAndClearDma3BusyFlags
	ldr r1, =gUnknown_08613F90
	movs r0, 0
	movs r2, 0x3
	bl InitBgsFromTemplates
	ldr r1, [r4]
	adds r1, 0x4
	movs r0, 0x2
	bl SetBgTilemapBuffer
	bl sub_8121E10
	movs r0, 0x2
	bl schedule_bg_copy_tilemap_to_vram
	movs r1, 0x82
	lsls r1, 5
	movs r0, 0
	bl SetGpuReg
	movs r0, 0
	bl ShowBg
	movs r0, 0x1
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	movs r0, 0x50
	movs r1, 0
	bl SetGpuReg
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_init_bgs

	thumb_func_start load_bag_menu_graphics
load_bag_menu_graphics: @ 81AB0BC
	push {r4,lr}
	sub sp, 0x4
	ldr r4, =gUnknown_0203CE54
	ldr r0, [r4]
	ldr r1, =0x00000834
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0x4
	bls _081AB0D2
	b _081AB1CC
_081AB0D2:
	lsls r0, 2
	ldr r1, =_081AB0E8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081AB0E8:
	.4byte _081AB0FC
	.4byte _081AB118
	.4byte _081AB13C
	.4byte _081AB174
	.4byte _081AB1A8
_081AB0FC:
	bl reset_temp_tile_data_buffers
	ldr r1, =gUnknown_08D9A620
	movs r0, 0
	str r0, [sp]
	movs r0, 0x2
	movs r2, 0
	movs r3, 0
	bl decompress_and_copy_tile_data_to_vram
	b _081AB1AE
	.pool
_081AB118:
	bl free_temp_tile_data_buffers_if_possible
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _081AB1E4
	ldr r0, =gUnknown_08D9A88C
	ldr r4, =gUnknown_0203CE54
	ldr r1, [r4]
	adds r1, 0x4
	bl LZDecompressWram
	ldr r1, [r4]
	b _081AB1B2
	.pool
_081AB13C:
	bl IsWallysBag
	lsls r0, 24
	cmp r0, 0
	bne _081AB164
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r0, [r0, 0x8]
	cmp r0, 0
	beq _081AB164
	ldr r0, =gUnknown_08D9A5D4
	movs r1, 0
	movs r2, 0x40
	bl LoadCompressedPalette
	b _081AB1AE
	.pool
_081AB164:
	ldr r0, =gUnknown_08D9A588
	movs r1, 0
	movs r2, 0x40
	bl LoadCompressedPalette
	b _081AB1AE
	.pool
_081AB174:
	bl IsWallysBag
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _081AB18A
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	ldrb r0, [r0, 0x8]
	cmp r0, 0
	bne _081AB19C
_081AB18A:
	ldr r0, =gUnknown_0857FB34
	bl LoadCompressedObjectPic
	b _081AB1AE
	.pool
_081AB19C:
	ldr r0, =gUnknown_0857FB3C
	bl LoadCompressedObjectPic
	b _081AB1AE
	.pool
_081AB1A8:
	ldr r0, =gUnknown_0857FB44
	bl LoadCompressedObjectPalette
_081AB1AE:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
_081AB1B2:
	ldr r0, =0x00000834
	adds r1, r0
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	b _081AB1E4
	.pool
_081AB1CC:
	bl sub_8122328
	ldr r0, [r4]
	ldr r1, =0x00000834
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	movs r0, 0x1
	b _081AB1E6
	.pool
_081AB1E4:
	movs r0, 0
_081AB1E6:
	add sp, 0x4
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end load_bag_menu_graphics

	thumb_func_start sub_81AB1F0
sub_81AB1F0: @ 81AB1F0
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xA
	bne _081AB204
	ldr r0, =Task_WallyTutorialBagMenu
	b _081AB206
	.pool
_081AB204:
	ldr r0, =Task_BagMenu
_081AB206:
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81AB1F0

	thumb_func_start allocate_bag_item_list_buffers
allocate_bag_item_list_buffers: @ 81AB218
	push {r4,lr}
	ldr r4, =gUnknown_0203CE74
	movs r0, 0x82
	lsls r0, 2
	bl Alloc
	str r0, [r4]
	ldr r4, =gUnknown_0203CE78
	movs r0, 0xC3
	lsls r0, 3
	bl Alloc
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end allocate_bag_item_list_buffers

	thumb_func_start load_bag_item_list_buffers
@ void load_bag_item_list_buffers(int pocket_id)
load_bag_item_list_buffers: @ 81AB240
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r1, r7, 3
	ldr r0, =gBagPockets
	adds r1, r0
	mov r8, r1
	ldr r0, =gUnknown_0203CE54
	ldr r2, [r0]
	ldr r1, =0x0000081b
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _081AB2FC
	movs r6, 0
	ldr r3, =0x00000829
	adds r0, r2, r3
	adds r0, r7
	ldrb r0, [r0]
	subs r0, 0x1
	cmp r6, r0
	bge _081AB2B6
	ldr r5, =gUnknown_0203CE78
_081AB276:
	lsls r4, r6, 1
	adds r4, r6
	lsls r4, 3
	ldr r0, [r5]
	adds r0, r4
	mov r1, r8
	ldr r2, [r1]
	lsls r1, r6, 2
	adds r1, r2
	ldrh r1, [r1]
	bl get_name
	ldr r0, =gUnknown_0203CE74
	ldr r0, [r0]
	lsls r1, r6, 3
	adds r1, r0
	ldr r0, [r5]
	adds r0, r4
	str r0, [r1]
	str r6, [r1, 0x4]
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r3, =0x00000829
	adds r0, r3
	adds r0, r7
	ldrb r0, [r0]
	subs r0, 0x1
	cmp r6, r0
	blt _081AB276
_081AB2B6:
	ldr r5, =gUnknown_0203CE78
	lsls r4, r6, 1
	adds r4, r6
	lsls r4, 3
	ldr r0, [r5]
	adds r0, r4
	ldr r1, =gUnknown_085E8DB4
	bl StringCopy
	ldr r0, =gUnknown_0203CE74
	ldr r0, [r0]
	lsls r1, r6, 3
	adds r1, r0
	ldr r0, [r5]
	adds r0, r4
	str r0, [r1]
	movs r0, 0x2
	negs r0, r0
	str r0, [r1, 0x4]
	b _081AB34A
	.pool
_081AB2FC:
	movs r6, 0
	ldr r4, =0x00000829
	adds r0, r2, r4
	adds r0, r7
	ldrb r0, [r0]
	cmp r6, r0
	bcs _081AB34A
	ldr r5, =gUnknown_0203CE78
_081AB30C:
	lsls r4, r6, 1
	adds r4, r6
	lsls r4, 3
	ldr r0, [r5]
	adds r0, r4
	mov r1, r8
	ldr r2, [r1]
	lsls r1, r6, 2
	adds r1, r2
	ldrh r1, [r1]
	bl get_name
	ldr r0, =gUnknown_0203CE74
	ldr r0, [r0]
	lsls r1, r6, 3
	adds r1, r0
	ldr r0, [r5]
	adds r0, r4
	str r0, [r1]
	str r6, [r1, 0x4]
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r3, =0x00000829
	adds r0, r3
	adds r0, r7
	ldrb r0, [r0]
	cmp r6, r0
	bcc _081AB30C
_081AB34A:
	ldr r2, =gUnknown_03006310
	adds r1, r2, 0
	ldr r0, =gUnknown_08613F9C
	ldm r0!, {r3-r5}
	stm r1!, {r3-r5}
	ldm r0!, {r3-r5}
	stm r1!, {r3-r5}
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	ldr r4, =0x00000829
	adds r0, r1, r4
	adds r0, r7
	ldrb r0, [r0]
	strh r0, [r2, 0xC]
	ldr r0, =gUnknown_0203CE74
	ldr r0, [r0]
	str r0, [r2]
	ldr r5, =0x0000082e
	adds r1, r5
	adds r1, r7
	ldrb r0, [r1]
	strh r0, [r2, 0xE]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end load_bag_item_list_buffers

	thumb_func_start get_name
@ void get_name(char *dest, int name_id)
get_name: @ 81AB39C
	push {r4-r6,lr}
	adds r6, r0, 0
	lsls r1, 16
	lsrs r5, r1, 16
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	cmp r0, 0x2
	beq _081AB3C0
	cmp r0, 0x3
	beq _081AB420
	adds r0, r5, 0
	adds r1, r6, 0
	bl CopyItemName
	b _081AB43E
	.pool
_081AB3C0:
	ldr r4, =gStringVar2
	adds r0, r5, 0
	bl ItemIdToBattleMoveId
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xD
	muls r1, r0
	ldr r0, =gMoveNames
	adds r1, r0
	adds r0, r4, 0
	bl StringCopy
	movs r0, 0xA9
	lsls r0, 1
	cmp r5, r0
	bls _081AB408
	ldr r0, =gStringVar1
	ldr r2, =0xfffffeae
	adds r1, r5, r2
	movs r2, 0x2
	movs r3, 0x1
	bl ConvertIntToDecimalStringN
	ldr r1, =gUnknown_085E921A
	b _081AB438
	.pool
_081AB408:
	ldr r0, =gStringVar1
	ldr r2, =0xfffffee0
	adds r1, r5, r2
	movs r2, 0x2
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	b _081AB436
	.pool
_081AB420:
	ldr r0, =gStringVar1
	adds r1, r5, 0
	subs r1, 0x84
	movs r2, 0x2
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	ldr r1, =gStringVar2
	adds r0, r5, 0
	bl CopyItemName
_081AB436:
	ldr r1, =gUnknown_085E9210
_081AB438:
	adds r0, r6, 0
	bl StringExpandPlaceholders
_081AB43E:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end get_name

	thumb_func_start bag_menu_change_item_callback
bag_menu_change_item_callback: @ 81AB450
	push {r4-r6,lr}
	adds r6, r0, 0
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0x1
	beq _081AB466
	movs r0, 0x5
	bl PlaySE
	bl ShakeBagVisual
_081AB466:
	ldr r4, =gUnknown_0203CE54
	ldr r1, [r4]
	ldr r2, =0x0000081a
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _081AB50C
	adds r2, 0x1
	adds r0, r1, r2
	ldrb r1, [r0]
	lsls r1, 26
	lsrs r1, 30
	movs r0, 0x1
	eors r0, r1
	bl RemoveBagItemIconObject
	movs r0, 0x2
	negs r0, r0
	cmp r6, r0
	beq _081AB4C8
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r6, 16
	lsrs r1, 16
	bl BagGetItemIdByPocketPosition
	lsls r0, 16
	lsrs r0, 16
	ldr r1, [r4]
	ldr r2, =0x0000081b
	adds r1, r2
	ldrb r1, [r1]
	lsls r1, 26
	lsrs r1, 30
	bl AddBagItemIconObject
	b _081AB4DA
	.pool
_081AB4C8:
	ldr r0, =0x0000ffff
	ldr r1, [r4]
	ldr r2, =0x0000081b
	adds r1, r2
	ldrb r1, [r1]
	lsls r1, 26
	lsrs r1, 30
	bl AddBagItemIconObject
_081AB4DA:
	ldr r5, =gUnknown_0203CE54
	ldr r2, [r5]
	ldr r4, =0x0000081b
	adds r2, r4
	ldrb r3, [r2]
	lsls r0, r3, 26
	lsrs r0, 30
	movs r1, 0x1
	eors r1, r0
	lsls r1, 4
	movs r0, 0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5]
	adds r0, r4
	ldrb r1, [r0]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	bne _081AB50C
	adds r0, r6, 0
	bl bag_menu_print_description_box_text
_081AB50C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_change_item_callback

	thumb_func_start sub_81AB520
@ void sub_81AB520(u8 rbox_id, int item_index_in_pocket, int a3)
sub_81AB520: @ 81AB520
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x14
	adds r4, r1, 0
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r2, 24
	lsrs r7, r2, 24
	movs r0, 0x2
	negs r0, r0
	cmp r4, r0
	bne _081AB540
	b _081AB696
_081AB540:
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r1, =0x0000081a
	adds r0, r1
	ldrb r1, [r0]
	cmp r1, 0xFF
	beq _081AB570
	lsls r0, r4, 24
	lsrs r0, 24
	cmp r1, r0
	bne _081AB568
	adds r0, r7, 0
	movs r1, 0x2
	bl bag_menu_print_cursor
	b _081AB570
	.pool
_081AB568:
	adds r0, r7, 0
	movs r1, 0xFF
	bl bag_menu_print_cursor
_081AB570:
	ldr r5, =gUnknown_0203CE58
	ldrb r0, [r5, 0x5]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 16
	lsrs r4, 16
	adds r1, r4, 0
	bl BagGetItemIdByPocketPosition
	lsls r0, 16
	lsrs r6, r0, 16
	ldrb r0, [r5, 0x5]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	bl BagGetQuantityByPocketPosition
	lsls r0, 16
	lsrs r4, r0, 16
	mov r9, r4
	ldr r1, =0xfffffead
	adds r0, r6, r1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x7
	bhi _081AB5BE
	ldr r1, =gUnknown_08DC6378
	subs r3, r7, 0x1
	lsls r3, 16
	lsrs r3, 16
	movs r0, 0x10
	str r0, [sp]
	str r0, [sp, 0x4]
	mov r0, r8
	movs r2, 0x8
	bl BlitBitmapToWindow
_081AB5BE:
	ldrb r0, [r5, 0x5]
	cmp r0, 0x3
	bne _081AB610
	ldr r0, =gStringVar1
	adds r1, r4, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E8DA0
	adds r0, r4, 0
	bl StringExpandPlaceholders
	movs r0, 0x7
	adds r1, r4, 0
	movs r2, 0x77
	bl GetStringRightAlignXOffset
	lsls r3, r0, 24
	lsrs r3, 24
	str r7, [sp]
	movs r1, 0
	str r1, [sp, 0x4]
	str r1, [sp, 0x8]
	movs r0, 0xFF
	str r0, [sp, 0xC]
	str r1, [sp, 0x10]
	b _081AB652
	.pool
_081AB610:
	cmp r0, 0x4
	beq _081AB66C
	adds r0, r6, 0
	bl itemid_is_unique
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _081AB66C
	ldr r0, =gStringVar1
	mov r1, r9
	movs r2, 0x1
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E8DA0
	adds r0, r4, 0
	bl StringExpandPlaceholders
	movs r0, 0x7
	adds r1, r4, 0
	movs r2, 0x77
	bl GetStringRightAlignXOffset
	lsls r3, r0, 24
	lsrs r3, 24
	str r7, [sp]
	str r5, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0xFF
	str r0, [sp, 0xC]
	str r5, [sp, 0x10]
_081AB652:
	mov r0, r8
	movs r1, 0x7
	adds r2, r4, 0
	bl bag_menu_print
	b _081AB696
	.pool
_081AB66C:
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00000496
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0
	beq _081AB696
	cmp r0, r6
	bne _081AB696
	ldr r1, =gUnknown_086140A4
	subs r3, r7, 0x1
	lsls r3, 16
	lsrs r3, 16
	movs r0, 0x18
	str r0, [sp]
	movs r0, 0x10
	str r0, [sp, 0x4]
	mov r0, r8
	movs r2, 0x60
	bl BlitBitmapToWindow
_081AB696:
	add sp, 0x14
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AB520

	thumb_func_start bag_menu_print_description_box_text
@ void bag_menu_print_description_box_text(int a1)
bag_menu_print_description_box_text: @ 81AB6B0
	push {r4,lr}
	sub sp, 0x14
	adds r1, r0, 0
	movs r0, 0x2
	negs r0, r0
	cmp r1, r0
	beq _081AB6E0
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 16
	lsrs r1, 16
	bl BagGetItemIdByPocketPosition
	lsls r0, 16
	lsrs r0, 16
	bl ItemId_GetDescription
	adds r4, r0, 0
	b _081AB6FC
	.pool
_081AB6E0:
	ldr r0, =gStringVar1
	ldr r2, =gUnknown_085E9180
	ldr r1, =gUnknown_0203CE58
	ldrb r1, [r1, 0x4]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	bl StringCopy
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E91C0
	adds r0, r4, 0
	bl StringExpandPlaceholders
_081AB6FC:
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	movs r0, 0x1
	movs r1, 0x1
	adds r2, r4, 0
	movs r3, 0x3
	bl bag_menu_print
	add sp, 0x14
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_print_description_box_text

	thumb_func_start bag_menu_print_cursor_
bag_menu_print_cursor_: @ 81AB73C
	push {r4,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsrs r4, 24
	bl ListMenuGetYCoordForPrintingArrowCursor
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	bl bag_menu_print_cursor
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end bag_menu_print_cursor_

	thumb_func_start bag_menu_print_cursor
bag_menu_print_cursor: @ 81AB75C
	push {r4,r5,lr}
	sub sp, 0x14
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0xFF
	bne _081AB798
	movs r0, 0x1
	movs r1, 0
	bl GetMenuCursorDimensionByFont
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x1
	movs r1, 0x1
	bl GetMenuCursorDimensionByFont
	lsls r0, 24
	lsrs r0, 24
	str r4, [sp]
	str r0, [sp, 0x4]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	adds r3, r5, 0
	bl FillWindowPixelRect
	b _081AB7AE
_081AB798:
	ldr r2, =gUnknown_085E8D60
	str r5, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r1, [sp, 0x10]
	movs r1, 0x1
	movs r3, 0
	bl bag_menu_print
_081AB7AE:
	add sp, 0x14
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_print_cursor

	thumb_func_start bag_menu_add_pocket_scroll_arrow_indicators_maybe
bag_menu_add_pocket_scroll_arrow_indicators_maybe: @ 81AB7BC
	push {r4-r6,lr}
	sub sp, 0x10
	ldr r5, =gUnknown_0203CE54
	ldr r4, [r5]
	ldr r1, =0x0000081e
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _081AB80A
	ldr r2, =gUnknown_0203CE58
	ldrb r3, [r2, 0x5]
	ldr r6, =0x00000829
	adds r0, r4, r6
	adds r0, r3
	ldrb r1, [r0]
	adds r6, 0x5
	adds r0, r4, r6
	adds r0, r3
	ldrb r0, [r0]
	subs r1, r0
	str r1, [sp]
	movs r0, 0x6E
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	ldrb r0, [r2, 0x5]
	lsls r0, 1
	adds r2, 0x12
	adds r0, r2
	str r0, [sp, 0xC]
	movs r0, 0x2
	movs r1, 0xAC
	movs r2, 0xC
	movs r3, 0x94
	bl AddScrollIndicatorArrowPairParametrized
	ldr r1, [r5]
	ldr r2, =0x0000081e
	adds r1, r2
	strb r0, [r1]
_081AB80A:
	add sp, 0x10
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_add_pocket_scroll_arrow_indicators_maybe

	thumb_func_start sub_81AB824
sub_81AB824: @ 81AB824
	push {r4,lr}
	ldr r4, =gUnknown_0203CE54
	ldr r0, [r4]
	ldr r2, =0x0000081e
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _081AB842
	bl RemoveScrollIndicatorArrowPair
	ldr r0, [r4]
	ldr r1, =0x0000081e
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
_081AB842:
	bl sub_81AB89C
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AB824

	thumb_func_start bag_menu_add_list_scroll_arrow_indicators_maybe
bag_menu_add_list_scroll_arrow_indicators_maybe: @ 81AB854
	push {r4,lr}
	ldr r4, =gUnknown_0203CE54
	ldr r2, [r4]
	ldr r1, =0x0000081b
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, 0xF
	ands r0, r1
	cmp r0, 0x1
	beq _081AB882
	ldr r1, =0x0000081f
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _081AB882
	ldr r0, =gUnknown_08614094
	ldr r1, =gUnknown_0203CE5E
	bl AddScrollIndicatorArrowPair
	ldr r1, [r4]
	ldr r2, =0x0000081f
	adds r1, r2
	strb r0, [r1]
_081AB882:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_add_list_scroll_arrow_indicators_maybe

	thumb_func_start sub_81AB89C
sub_81AB89C: @ 81AB89C
	push {r4,lr}
	ldr r4, =gUnknown_0203CE54
	ldr r0, [r4]
	ldr r2, =0x0000081f
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _081AB8BA
	bl RemoveScrollIndicatorArrowPair
	ldr r0, [r4]
	ldr r1, =0x0000081f
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
_081AB8BA:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AB89C

	thumb_func_start free_bag_item_list_buffers
free_bag_item_list_buffers: @ 81AB8C8
	push {lr}
	ldr r0, =gUnknown_0203CE78
	ldr r0, [r0]
	bl Free
	ldr r0, =gUnknown_0203CE74
	ldr r0, [r0]
	bl Free
	bl FreeAllWindowBuffers
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	bl Free
	pop {r0}
	bx r0
	.pool
	thumb_func_end free_bag_item_list_buffers

	thumb_func_start unknown_ItemMenu_Confirm
unknown_ItemMenu_Confirm: @ 81AB8F8
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, =task_close_bag_menu_2
	str r1, [r0]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end unknown_ItemMenu_Confirm

	thumb_func_start task_close_bag_menu_2
task_close_bag_menu_2: @ 81AB930
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r2, r0, r1
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _081AB9A0
	ldrb r0, [r2]
	ldr r4, =gUnknown_0203CE58
	ldrb r2, [r4, 0x5]
	lsls r2, 1
	adds r1, r4, 0
	adds r1, 0x12
	adds r1, r2, r1
	adds r3, r4, 0
	adds r3, 0x8
	adds r2, r3
	bl sub_81AE6C8
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, 0
	beq _081AB984
	bl SetMainCallback2
	b _081AB98A
	.pool
_081AB984:
	ldr r0, [r4]
	bl SetMainCallback2
_081AB98A:
	bl sub_81AB824
	bl ResetSpriteData
	bl FreeAllSpritePalettes
	bl free_bag_item_list_buffers
	adds r0, r5, 0
	bl DestroyTask
_081AB9A0:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end task_close_bag_menu_2

	thumb_func_start sub_81AB9A8
sub_81AB9A8: @ 81AB9A8
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, r5, 3
	ldr r0, =gBagPockets
	adds r4, r1, r0
	cmp r5, 0x3
	bgt _081AB9C8
	cmp r5, 0x2
	blt _081AB9C8
	adds r0, r4, 0
	bl sub_80D6FB4
	b _081AB9CE
	.pool
_081AB9C8:
	adds r0, r4, 0
	bl sub_80D6F64
_081AB9CE:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	ldr r6, =0x00000829
	adds r1, r6
	adds r1, r5
	movs r2, 0
	strb r2, [r1]
	adds r3, r0, 0
	ldrb r0, [r4, 0x4]
	cmp r2, r0
	bcs _081ABA12
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, 0
	beq _081ABA12
	adds r7, r3, 0
_081AB9EE:
	ldr r0, [r7]
	adds r0, r6
	adds r0, r5
	ldrb r1, [r0]
	adds r1, 0x1
	strb r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	ldrb r1, [r4, 0x4]
	cmp r2, r1
	bcs _081ABA12
	ldr r0, [r4]
	lsls r1, r2, 2
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, 0
	bne _081AB9EE
_081ABA12:
	ldr r2, [r3]
	ldr r1, =0x0000081b
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _081ABA2E
	ldr r0, =0x00000829
	adds r1, r2, r0
	adds r1, r5
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_081ABA2E:
	ldr r1, [r3]
	ldr r2, =0x00000829
	adds r0, r1, r2
	adds r0, r5
	ldrb r2, [r0]
	cmp r2, 0x8
	bls _081ABA58
	ldr r3, =0x0000082e
	adds r0, r1, r3
	adds r0, r5
	movs r1, 0x8
	strb r1, [r0]
	b _081ABA60
	.pool
_081ABA58:
	ldr r3, =0x0000082e
	adds r0, r1, r3
	adds r0, r5
	strb r2, [r0]
_081ABA60:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AB9A8

	thumb_func_start sub_81ABA6C
sub_81ABA6C: @ 81ABA6C
	push {r4,lr}
	movs r4, 0
_081ABA70:
	adds r0, r4, 0
	bl sub_81AB9A8
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x4
	bls _081ABA70
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_81ABA6C

	thumb_func_start sub_81ABA88
sub_81ABA88: @ 81ABA88
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 1
	ldr r2, =gUnknown_0203CE6A
	adds r4, r1, r2
	subs r2, 0xA
	adds r1, r2
	ldr r2, =gUnknown_0203CE54
	ldr r3, [r2]
	ldr r5, =0x0000082e
	adds r2, r3, r5
	adds r2, r0
	ldrb r2, [r2]
	subs r5, 0x5
	adds r3, r5
	adds r3, r0
	ldrb r3, [r3]
	adds r0, r4, 0
	bl sub_812225C
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81ABA88

	thumb_func_start sub_81ABAC4
sub_81ABAC4: @ 81ABAC4
	push {r4,lr}
	movs r4, 0
_081ABAC8:
	adds r0, r4, 0
	bl sub_81ABA88
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x4
	bls _081ABAC8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_81ABAC4

	thumb_func_start sub_81ABAE0
sub_81ABAE0: @ 81ABAE0
	push {r4-r7,lr}
	sub sp, 0x4
	movs r5, 0
	ldr r6, =gUnknown_0203CE6A
	adds r7, r6, 0
	subs r7, 0xA
_081ABAEC:
	lsls r1, r5, 1
	adds r0, r1, r6
	adds r1, r7
	ldr r2, =gUnknown_0203CE54
	ldr r3, [r2]
	ldr r4, =0x0000082e
	adds r2, r3, r4
	adds r2, r5
	ldrb r2, [r2]
	subs r4, 0x5
	adds r3, r4
	adds r3, r5
	ldrb r3, [r3]
	movs r4, 0x8
	str r4, [sp]
	bl sub_8122298
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x4
	bls _081ABAEC
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81ABAE0

	thumb_func_start sub_81ABB2C
sub_81ABB2C: @ 81ABB2C
	lsls r0, 24
	ldr r1, =gUnknown_0203CE58
	lsrs r0, 23
	adds r2, r1, 0
	adds r2, 0x12
	adds r2, r0, r2
	adds r1, 0x8
	adds r0, r1
	ldrb r0, [r0]
	ldrb r2, [r2]
	adds r0, r2
	lsls r0, 24
	lsrs r0, 24
	bx lr
	.pool
	thumb_func_end sub_81ABB2C

	thumb_func_start DisplayItemMessage
@ void DisplayItemMessage(u8 taskId, u8 fontId, u8 *str, void ( *callback)(u8 taskId))
DisplayItemMessage: @ 81ABB4C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x10
	adds r5, r0, 0
	adds r6, r1, 0
	mov r8, r2
	mov r9, r3
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	ldr r0, =gTasks + 0x8
	adds r4, r0
	movs r0, 0x4
	bl AddItemMessageWindow
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0x14]
	movs r1, 0x11
	bl FillWindowPixelBuffer
	bl sav2_get_text_speed
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r4, 0x14]
	str r6, [sp]
	str r0, [sp, 0x4]
	mov r0, r8
	str r0, [sp, 0x8]
	mov r0, r9
	str r0, [sp, 0xC]
	adds r0, r5, 0
	movs r2, 0xA
	movs r3, 0xD
	bl DisplayMessageAndContinueTask
	movs r0, 0x1
	bl schedule_bg_copy_tilemap_to_vram
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end DisplayItemMessage

	thumb_func_start bag_menu_inits_lists_menu
bag_menu_inits_lists_menu: @ 81ABBBC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	lsls r5, r6, 2
	adds r5, r6
	lsls r5, 3
	ldr r0, =gTasks + 0x8
	adds r5, r0
	ldr r7, =gUnknown_0203CE58
	ldrb r4, [r7, 0x5]
	lsls r4, 1
	movs r0, 0x12
	adds r0, r7
	mov r8, r0
	add r8, r4
	adds r0, r7, 0
	adds r0, 0x8
	adds r4, r0
	movs r0, 0x4
	bl bag_menu_RemoveBagItem_message_window
	ldrb r0, [r5]
	mov r1, r8
	adds r2, r4, 0
	bl sub_81AE6C8
	ldrb r0, [r7, 0x5]
	bl sub_81AB9A8
	ldrb r0, [r7, 0x5]
	bl sub_81ABA88
	ldrb r0, [r7, 0x5]
	bl load_bag_item_list_buffers
	ldr r0, =gUnknown_03006310
	mov r2, r8
	ldrh r1, [r2]
	ldrh r2, [r4]
	bl ListMenuInit
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5]
	movs r0, 0
	bl schedule_bg_copy_tilemap_to_vram
	adds r0, r6, 0
	bl set_callback3_to_bag
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_inits_lists_menu

	thumb_func_start sub_81ABC3C
sub_81ABC3C: @ 81ABC3C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	bl bag_menu_add_window
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x1
	bl sub_81ABC54
	pop {r0}
	bx r0
	thumb_func_end sub_81ABC3C

	thumb_func_start sub_81ABC54
sub_81ABC54: @ 81ABC54
	push {r4,r5,lr}
	sub sp, 0xC
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 16
	lsrs r1, 16
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	movs r3, 0x2
	cmp r0, 0x3
	bne _081ABC6C
	movs r3, 0x3
_081ABC6C:
	ldr r0, =gStringVar1
	lsls r1, 16
	asrs r1, 16
	movs r2, 0x2
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E8DA0
	adds r0, r4, 0
	bl StringExpandPlaceholders
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0x28
	bl GetStringCenterAlignXOffset
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x2
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	adds r0, r5, 0
	movs r1, 0x1
	adds r2, r4, 0
	bl PrintTextOnWindow
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81ABC54

	thumb_func_start sub_81ABCC0
sub_81ABCC0: @ 81ABCC0
	push {r4-r7,lr}
	sub sp, 0xC
	adds r4, r0, 0
	adds r7, r2, 0
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	movs r3, 0x2
	cmp r0, 0x3
	bne _081ABCD4
	movs r3, 0x3
_081ABCD4:
	ldr r0, =gStringVar1
	movs r2, 0x2
	bl ConvertIntToDecimalStringN
	ldr r6, =gStringVar4
	ldr r1, =gUnknown_085E8DA0
	adds r0, r6, 0
	bl StringExpandPlaceholders
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r5, 0
	str r5, [sp, 0x8]
	adds r0, r4, 0
	movs r1, 0x1
	adds r2, r6, 0
	movs r3, 0
	bl PrintTextOnWindow
	str r5, [sp]
	adds r0, r4, 0
	movs r1, 0x26
	movs r2, 0x1
	adds r3, r7, 0
	bl PrintMoneyAmount
	add sp, 0xC
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81ABCC0

	thumb_func_start Task_BagMenu
Task_BagMenu: @ 81ABD28
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	lsls r0, 2
	add r0, r9
	lsls r0, 3
	str r0, [sp]
	ldr r1, =gTasks + 0x8
	adds r6, r0, r1
	ldr r5, =gUnknown_0203CE58
	ldrb r0, [r5, 0x5]
	lsls r0, 1
	adds r1, r5, 0
	adds r1, 0x12
	adds r7, r0, r1
	subs r1, 0xA
	adds r0, r1
	mov r8, r0
	bl sub_81221EC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081ABD66
	b _081ABEB2
_081ABD66:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081ABD74
	b _081ABEB2
_081ABD74:
	bl GetSwitchBagPocketDirection
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _081ABDB8
	cmp r0, 0x2
	beq _081ABDC0
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x4
	ands r0, r1
	lsls r0, 16
	lsrs r0, 16
	mov r10, r0
	cmp r0, 0
	beq _081ABE10
	bl sub_81AC2C0
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _081ABDA4
	b _081ABEB2
_081ABDA4:
	b _081ABDCC
	.pool
_081ABDB8:
	movs r1, 0x1
	negs r1, r1
	mov r0, r9
	b _081ABDC4
_081ABDC0:
	mov r0, r9
	movs r1, 0x1
_081ABDC4:
	movs r2, 0
	bl SwitchBagPocket
	b _081ABEB2
_081ABDCC:
	ldrb r0, [r6]
	adds r1, r7, 0
	mov r2, r8
	bl get_coro_args_x18_x1A
	ldrh r2, [r7]
	mov r3, r8
	ldrh r0, [r3]
	adds r2, r0
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r1, =gUnknown_0203CE58
	ldr r3, =0x00000829
	adds r0, r3
	ldrb r1, [r1, 0x5]
	adds r0, r1
	ldrb r0, [r0]
	subs r0, 0x1
	cmp r2, r0
	beq _081ABEB2
	movs r0, 0x5
	bl PlaySE
	mov r0, r9
	bl bag_menu_swap_items
	b _081ABEB2
	.pool
_081ABE10:
	ldrb r0, [r6]
	bl ListMenuHandleInput
	adds r4, r0, 0
	ldrb r0, [r6]
	adds r1, r7, 0
	mov r2, r8
	bl get_coro_args_x18_x1A
	movs r0, 0x2
	negs r0, r0
	cmp r4, r0
	beq _081ABE32
	adds r0, 0x1
	cmp r4, r0
	bne _081ABE68
	b _081ABEB2
_081ABE32:
	ldrb r0, [r5, 0x4]
	cmp r0, 0x5
	bne _081ABE40
	movs r0, 0x20
	bl PlaySE
	b _081ABEB2
_081ABE40:
	movs r0, 0x5
	bl PlaySE
	ldr r0, =gUnknown_0203CE7C
	mov r1, r10
	strh r1, [r0]
	ldr r0, =gTasks + 0x8
	subs r0, 0x8
	ldr r3, [sp]
	adds r0, r3, r0
	ldr r1, =unknown_ItemMenu_Confirm
	str r1, [r0]
	b _081ABEB2
	.pool
_081ABE68:
	movs r0, 0x5
	bl PlaySE
	bl sub_81AB824
	ldrb r0, [r6]
	movs r1, 0x2
	bl bag_menu_print_cursor_
	strh r4, [r6, 0x2]
	ldrb r0, [r5, 0x5]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 16
	lsrs r4, 16
	adds r1, r4, 0
	bl BagGetQuantityByPocketPosition
	strh r0, [r6, 0x4]
	ldrb r0, [r5, 0x5]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	bl BagGetItemIdByPocketPosition
	ldr r1, =gUnknown_0203CE7C
	strh r0, [r1]
	ldr r1, =gUnknown_08614054
	ldrb r0, [r5, 0x4]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	mov r0, r9
	bl _call_via_r1
_081ABEB2:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end Task_BagMenu

	thumb_func_start set_callback3_to_bag
set_callback3_to_bag: @ 81ABECC
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl bag_menu_add_pocket_scroll_arrow_indicators_maybe
	bl bag_menu_add_list_scroll_arrow_indicators_maybe
	movs r0, 0x3
	bl ClearWindowTilemap
	movs r0, 0x4
	bl ClearWindowTilemap
	movs r0, 0x1
	bl PutWindowTilemap
	movs r0, 0
	bl schedule_bg_copy_tilemap_to_vram
	ldr r1, =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, =Task_BagMenu
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end set_callback3_to_bag

	thumb_func_start GetSwitchBagPocketDirection
GetSwitchBagPocketDirection: @ 81ABF10
	push {lr}
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r1, =0x0000081b
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0xF
	ands r0, r1
	cmp r0, 0
	bne _081ABF6A
	bl GetLRKeysState
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _081ABF3C
	cmp r2, 0x1
	bne _081ABF54
_081ABF3C:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	b _081ABF6C
	.pool
_081ABF54:
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _081ABF60
	cmp r2, 0x2
	bne _081ABF6A
_081ABF60:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x2
	b _081ABF6C
_081ABF6A:
	movs r0, 0
_081ABF6C:
	pop {r1}
	bx r1
	thumb_func_end GetSwitchBagPocketDirection

	thumb_func_start ChangeBagPocketId
@ void ChangeBagPocketId(u8 *bagPocketId, u8 deltaBagPocketId)
ChangeBagPocketId: @ 81ABF70
	push {r4,lr}
	adds r2, r0, 0
	lsls r1, 24
	lsrs r4, r1, 24
	asrs r1, 24
	cmp r1, 0x1
	bne _081ABF88
	ldrb r0, [r2]
	cmp r0, 0x4
	bne _081ABF88
	movs r0, 0
	b _081ABFA0
_081ABF88:
	lsls r0, r4, 24
	asrs r0, 24
	movs r1, 0x1
	negs r1, r1
	ldrb r3, [r2]
	cmp r0, r1
	bne _081ABF9E
	cmp r3, 0
	bne _081ABF9E
	movs r0, 0x4
	b _081ABFA0
_081ABF9E:
	adds r0, r3, r4
_081ABFA0:
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end ChangeBagPocketId

	thumb_func_start SwitchBagPocket
@ void SwitchBagPocket(u8 taskId, u16 deltaBagPocketId, u16 a3)
SwitchBagPocket: @ 81ABFA8
	push {r4-r6,lr}
	sub sp, 0xC
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 16
	lsrs r5, r1, 16
	lsls r2, 16
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	movs r0, 0
	strh r0, [r4, 0x1A]
	strh r0, [r4, 0x18]
	strh r5, [r4, 0x16]
	cmp r2, 0
	bne _081AC026
	movs r0, 0
	bl ClearWindowTilemap
	movs r0, 0x1
	bl ClearWindowTilemap
	ldrb r0, [r4]
	ldr r3, =gUnknown_0203CE58
	ldrb r2, [r3, 0x5]
	lsls r2, 1
	adds r1, r3, 0
	adds r1, 0x12
	adds r1, r2, r1
	adds r3, 0x8
	adds r2, r3
	bl sub_81AE6C8
	movs r0, 0
	bl schedule_bg_copy_tilemap_to_vram
	ldr r3, =gSprites
	ldr r0, =gUnknown_0203CE54
	ldr r2, [r0]
	ldr r1, =0x0000081b
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r1, 26
	lsrs r1, 30
	movs r0, 0x1
	eors r0, r1
	adds r2, r0
	ldr r0, =0x00000806
	adds r2, r0
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	bl sub_81AB824
_081AC026:
	ldr r4, =gUnknown_0203CE58
	ldrb r1, [r4, 0x5]
	add r0, sp, 0x8
	strb r1, [r0]
	lsls r1, r5, 24
	asrs r1, 24
	bl ChangeBagPocketId
	lsls r0, r5, 16
	asrs r1, r0, 16
	adds r5, r0, 0
	cmp r1, 0x1
	bne _081AC07C
	ldr r2, =gUnknown_085E91FC
	ldrb r0, [r4, 0x5]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	add r1, sp, 0x8
	ldrb r1, [r1]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	bl bag_menu_print_pocket_names
	movs r0, 0
	bl bag_menu_copy_pocket_name_to_window
	b _081AC09A
	.pool
_081AC07C:
	ldr r2, =gUnknown_085E91FC
	add r0, sp, 0x8
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	ldrb r1, [r4, 0x5]
	lsls r1, 2
	adds r1, r2
	ldr r1, [r1]
	bl bag_menu_print_pocket_names
	movs r0, 0x8
	bl bag_menu_copy_pocket_name_to_window
_081AC09A:
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	movs r1, 0
	bl bag_menu_draw_pocket_indicator_square
	add r0, sp, 0x8
	ldrb r0, [r0]
	movs r1, 0x1
	bl bag_menu_draw_pocket_indicator_square
	movs r0, 0xF
	str r0, [sp]
	movs r0, 0x10
	str r0, [sp, 0x4]
	movs r0, 0x2
	movs r1, 0xB
	movs r2, 0xE
	movs r3, 0x2
	bl FillBgTilemapBufferRect_Palette0
	movs r0, 0x2
	bl schedule_bg_copy_tilemap_to_vram
	add r0, sp, 0x8
	ldrb r0, [r0]
	movs r1, 0x1
	bl SetBagVisualPocketId
	movs r0, 0x1
	bl RemoveBagObject
	asrs r0, r5, 16
	bl AddSwitchPocketRotatingBallObject
	ldr r1, =sub_81AC10C
	ldr r2, =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r2
	ldr r2, [r0]
	adds r0, r6, 0
	bl SetTaskFuncWithFollowupFunc
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end SwitchBagPocket

	thumb_func_start sub_81AC10C
sub_81AC10C: @ 81AC10C
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r6, r0, r1
	bl sub_81221AC
	lsls r0, 24
	cmp r0, 0
	bne _081AC184
	bl IsWallysBag
	lsls r0, 24
	cmp r0, 0
	bne _081AC184
	bl GetSwitchBagPocketDirection
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _081AC148
	cmp r0, 0x2
	beq _081AC164
	b _081AC184
	.pool
_081AC148:
	ldr r0, =gUnknown_0203CE5D
	movs r1, 0x16
	ldrsb r1, [r6, r1]
	bl ChangeBagPocketId
	adds r0, r7, 0
	bl SwitchTaskToFollowupFunc
	movs r1, 0x1
	negs r1, r1
	adds r0, r7, 0
	b _081AC178
	.pool
_081AC164:
	ldr r0, =gUnknown_0203CE5D
	movs r1, 0x16
	ldrsb r1, [r6, r1]
	bl ChangeBagPocketId
	adds r0, r7, 0
	bl SwitchTaskToFollowupFunc
	adds r0, r7, 0
	movs r1, 0x1
_081AC178:
	movs r2, 0x1
	bl SwitchBagPocket
	b _081AC22E
	.pool
_081AC184:
	movs r1, 0x1A
	ldrsh r0, [r6, r1]
	cmp r0, 0
	beq _081AC192
	cmp r0, 0x1
	beq _081AC1DC
	b _081AC22E
_081AC192:
	ldrb r0, [r6, 0x18]
	bl sub_81AC23C
	ldrh r0, [r6, 0x18]
	adds r1, r0, 0x1
	strh r1, [r6, 0x18]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _081AC1CC
	movs r2, 0x16
	ldrsh r0, [r6, r2]
	cmp r0, 0x1
	bne _081AC1BC
	lsls r0, r1, 16
	asrs r0, 17
	lsls r0, 24
	lsrs r0, 24
	bl bag_menu_copy_pocket_name_to_window
	b _081AC1CC
_081AC1BC:
	lsls r1, 16
	asrs r1, 17
	movs r0, 0x8
	subs r0, r1
	lsls r0, 24
	lsrs r0, 24
	bl bag_menu_copy_pocket_name_to_window
_081AC1CC:
	movs r1, 0x18
	ldrsh r0, [r6, r1]
	cmp r0, 0x10
	bne _081AC22E
	ldrh r0, [r6, 0x1A]
	adds r0, 0x1
	strh r0, [r6, 0x1A]
	b _081AC22E
_081AC1DC:
	ldr r4, =gUnknown_0203CE5D
	movs r1, 0x16
	ldrsb r1, [r6, r1]
	adds r0, r4, 0
	bl ChangeBagPocketId
	subs r5, r4, 0x5
	ldrb r0, [r5, 0x5]
	bl load_bag_item_list_buffers
	ldr r0, =gUnknown_03006310
	ldrb r2, [r5, 0x5]
	lsls r2, 1
	adds r1, r4, 0
	adds r1, 0xD
	adds r1, r2, r1
	ldrh r1, [r1]
	adds r4, 0x3
	adds r2, r4
	ldrh r2, [r2]
	bl ListMenuInit
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r6]
	movs r0, 0x1
	bl PutWindowTilemap
	movs r0, 0x2
	bl PutWindowTilemap
	movs r0, 0
	bl schedule_bg_copy_tilemap_to_vram
	bl bag_menu_add_pocket_scroll_arrow_indicators_maybe
	bl bag_menu_add_list_scroll_arrow_indicators_maybe
	adds r0, r7, 0
	bl SwitchTaskToFollowupFunc
_081AC22E:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AC10C

	thumb_func_start sub_81AC23C
sub_81AC23C: @ 81AC23C
	push {lr}
	sub sp, 0x8
	adds r3, r0, 0
	lsls r3, 24
	movs r0, 0x80
	lsls r0, 18
	adds r3, r0
	lsrs r3, 24
	movs r0, 0xF
	str r0, [sp]
	movs r0, 0x1
	str r0, [sp, 0x4]
	movs r0, 0x2
	movs r1, 0x11
	movs r2, 0xE
	bl FillBgTilemapBufferRect_Palette0
	movs r0, 0x2
	bl schedule_bg_copy_tilemap_to_vram
	add sp, 0x8
	pop {r0}
	bx r0
	thumb_func_end sub_81AC23C

	thumb_func_start bag_menu_draw_pocket_indicator_square
@ void bag_menu_draw_pocket_indicator_square(char x, int is_current_bag)
bag_menu_draw_pocket_indicator_square: @ 81AC26C
	push {lr}
	sub sp, 0x8
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	cmp r1, 0
	bne _081AC298
	ldr r1, =0x00001017
	adds r2, r0, 0x5
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x1
	str r0, [sp]
	str r0, [sp, 0x4]
	movs r0, 0x2
	movs r3, 0x3
	bl FillBgTilemapBufferRect_Palette0
	b _081AC2AE
	.pool
_081AC298:
	ldr r1, =0x0000102b
	adds r2, r0, 0x5
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x1
	str r0, [sp]
	str r0, [sp, 0x4]
	movs r0, 0x2
	movs r3, 0x3
	bl FillBgTilemapBufferRect_Palette0
_081AC2AE:
	movs r0, 0x2
	bl schedule_bg_copy_tilemap_to_vram
	add sp, 0x8
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_draw_pocket_indicator_square

	thumb_func_start sub_81AC2C0
sub_81AC2C0: @ 81AC2C0
	push {lr}
	ldr r1, =gUnknown_0203CE58
	ldrb r0, [r1, 0x4]
	cmp r0, 0x1
	bhi _081AC2E0
	ldrb r0, [r1, 0x5]
	subs r0, 0x2
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _081AC2E0
	movs r0, 0x1
	b _081AC2E2
	.pool
_081AC2E0:
	movs r0, 0
_081AC2E2:
	pop {r1}
	bx r1
	thumb_func_end sub_81AC2C0

	thumb_func_start bag_menu_swap_items
bag_menu_swap_items: @ 81AC2E8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x14
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	ldr r0, =gTasks + 0x8
	mov r9, r0
	adds r6, r4, r0
	ldrb r0, [r6]
	movs r1, 0x10
	movs r2, 0x1
	bl sub_81AF15C
	ldr r3, =gUnknown_0203CE58
	ldrb r0, [r3, 0x5]
	lsls r0, 1
	adds r2, r3, 0
	adds r2, 0x12
	adds r2, r0, r2
	adds r1, r3, 0
	adds r1, 0x8
	adds r0, r1
	ldrh r1, [r0]
	ldrh r2, [r2]
	adds r1, r2
	strh r1, [r6, 0x2]
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r2, =0x0000081a
	adds r0, r2
	movs r5, 0
	strb r1, [r0]
	ldrb r0, [r3, 0x5]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	ldrh r1, [r6, 0x2]
	bl BagGetItemIdByPocketPosition
	lsls r0, 16
	lsrs r0, 16
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r0, =gStringVar4
	mov r8, r0
	ldr r1, =gUnknown_085E8DFE
	bl StringExpandPlaceholders
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x1
	str r0, [sp]
	str r5, [sp, 0x4]
	str r5, [sp, 0x8]
	str r5, [sp, 0xC]
	str r5, [sp, 0x10]
	movs r1, 0x1
	mov r2, r8
	movs r3, 0x3
	bl bag_menu_print
	ldrb r0, [r6, 0x2]
	bl sub_80D4FEC
	bl sub_81AB89C
	ldrb r0, [r6]
	movs r1, 0x2
	bl bag_menu_print_cursor_
	movs r2, 0x8
	negs r2, r2
	add r9, r2
	add r4, r9
	ldr r0, =sub_81AC3C0
	str r0, [r4]
	add sp, 0x14
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_swap_items

	thumb_func_start sub_81AC3C0
@ void sub_81AC3C0(u8 taskId)
sub_81AC3C0: @ 81AC3C0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	bl sub_81221EC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _081AC48E
	ldr r0, =gMain
	mov r8, r0
	ldrh r1, [r0, 0x2E]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _081AC418
	movs r0, 0x5
	bl PlaySE
	ldrb r0, [r4]
	ldr r3, =gUnknown_0203CE58
	ldrb r2, [r3, 0x5]
	lsls r2, 1
	adds r1, r3, 0
	adds r1, 0x12
	adds r1, r2, r1
	adds r3, 0x8
	adds r2, r3
	bl get_coro_args_x18_x1A
	b _081AC472
	.pool
_081AC418:
	ldrb r0, [r4]
	bl ListMenuHandleInput
	adds r7, r0, 0
	ldrb r0, [r4]
	ldr r5, =gUnknown_0203CE58
	ldrb r2, [r5, 0x5]
	lsls r2, 1
	adds r1, r5, 0
	adds r1, 0x12
	adds r1, r2, r1
	adds r4, r5, 0
	adds r4, 0x8
	adds r2, r4
	bl get_coro_args_x18_x1A
	movs r0, 0
	bl sub_80D4FC8
	ldrb r0, [r5, 0x5]
	lsls r0, 1
	adds r0, r4
	ldrb r0, [r0]
	bl sub_80D4FEC
	movs r0, 0x2
	negs r0, r0
	cmp r7, r0
	beq _081AC460
	adds r0, 0x1
	cmp r7, r0
	bne _081AC482
	b _081AC48E
	.pool
_081AC460:
	movs r0, 0x5
	bl PlaySE
	mov r0, r8
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081AC47A
_081AC472:
	adds r0, r6, 0
	bl sub_81AC498
	b _081AC48E
_081AC47A:
	adds r0, r6, 0
	bl sub_81AC590
	b _081AC48E
_081AC482:
	movs r0, 0x5
	bl PlaySE
	adds r0, r6, 0
	bl sub_81AC498
_081AC48E:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_81AC3C0

	thumb_func_start sub_81AC498
sub_81AC498: @ 81AC498
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r3, r0, 24
	lsls r0, r3, 2
	adds r0, r3
	lsls r0, 3
	mov r10, r0
	ldr r0, =gTasks + 0x8
	add r0, r10
	mov r9, r0
	ldr r5, =gUnknown_0203CE58
	ldrb r6, [r5, 0x5]
	lsls r1, r6, 1
	adds r0, r5, 0
	adds r0, 0x12
	adds r0, r1
	mov r8, r0
	ldr r2, =gUnknown_0203CE60
	adds r7, r1, r2
	ldrh r0, [r7]
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r1
	lsls r0, 16
	lsrs r4, r0, 16
	mov r0, r9
	movs r1, 0x2
	ldrsh r2, [r0, r1]
	cmp r2, r4
	beq _081AC4E2
	subs r0, r4, 0x1
	cmp r2, r0
	bne _081AC4F8
_081AC4E2:
	adds r0, r3, 0
	bl sub_81AC590
	b _081AC566
	.pool
_081AC4F8:
	ldr r1, =gBagPockets
	lsls r0, r6, 3
	adds r0, r1
	ldr r0, [r0]
	adds r1, r2, 0
	adds r2, r4, 0
	bl sub_80D702C
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r2, =0x0000081a
	adds r0, r2
	movs r1, 0xFF
	strb r1, [r0]
	mov r1, r9
	ldrb r0, [r1]
	mov r1, r8
	adds r2, r7, 0
	bl sub_81AE6C8
	mov r2, r9
	movs r1, 0x2
	ldrsh r0, [r2, r1]
	cmp r0, r4
	bge _081AC538
	ldrb r1, [r5, 0x5]
	lsls r1, 1
	ldr r2, =gUnknown_0203CE60
	adds r1, r2
	ldrh r0, [r1]
	subs r0, 0x1
	strh r0, [r1]
_081AC538:
	ldrb r0, [r5, 0x5]
	bl load_bag_item_list_buffers
	ldr r0, =gUnknown_03006310
	mov r2, r8
	ldrh r1, [r2]
	ldrh r2, [r7]
	bl ListMenuInit
	lsls r0, 24
	lsrs r0, 24
	mov r1, r9
	strh r0, [r1]
	movs r0, 0x1
	bl sub_80D4FC8
	bl bag_menu_add_list_scroll_arrow_indicators_maybe
	ldr r0, =gTasks + 0x8
	subs r0, 0x8
	add r0, r10
	ldr r1, =Task_BagMenu
	str r1, [r0]
_081AC566:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AC498

	thumb_func_start sub_81AC590
sub_81AC590: @ 81AC590
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	mov r9, r1
	ldr r0, =gTasks + 0x8
	mov r10, r0
	mov r7, r9
	add r7, r10
	ldr r4, =gUnknown_0203CE58
	ldrb r0, [r4, 0x5]
	lsls r0, 1
	adds r1, r4, 0
	adds r1, 0x12
	adds r6, r0, r1
	movs r1, 0x8
	adds r1, r4
	mov r8, r1
	adds r5, r0, r1
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r1, =0x0000081a
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	ldrb r0, [r7]
	adds r1, r6, 0
	adds r2, r5, 0
	bl sub_81AE6C8
	movs r0, 0x2
	ldrsh r2, [r7, r0]
	ldrh r0, [r6]
	ldrh r1, [r5]
	adds r0, r1
	cmp r2, r0
	bge _081AC5F2
	ldrb r1, [r4, 0x5]
	lsls r1, 1
	add r1, r8
	ldrh r0, [r1]
	subs r0, 0x1
	strh r0, [r1]
_081AC5F2:
	ldrb r0, [r4, 0x5]
	bl load_bag_item_list_buffers
	ldr r0, =gUnknown_03006310
	ldrh r1, [r6]
	ldrh r2, [r5]
	bl ListMenuInit
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r7]
	movs r0, 0x1
	bl sub_80D4FC8
	bl bag_menu_add_list_scroll_arrow_indicators_maybe
	mov r0, r10
	subs r0, 0x8
	add r0, r9
	ldr r1, =Task_BagMenu
	str r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AC590

	thumb_func_start sub_81AC644
sub_81AC644: @ 81AC644
	push {r4,r5,lr}
	sub sp, 0x14
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x4]
	subs r0, 0x1
	cmp r0, 0x9
	bls _081AC654
	b _081AC82C
_081AC654:
	lsls r0, 2
	ldr r1, =_081AC668
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081AC668:
	.4byte _081AC690
	.4byte _081AC82C
	.4byte _081AC82C
	.4byte _081AC82C
	.4byte _081AC6E8
	.4byte _081AC82C
	.4byte _081AC76C
	.4byte _081AC7CC
	.4byte _081AC70C
	.4byte _081AC690
_081AC690:
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	bl ItemId_GetBattleUsage
	lsls r0, 24
	cmp r0, 0
	beq _081AC6C4
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_08614042
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x2
	b _081ACA10
	.pool
_081AC6C4:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_08614046
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x1
	b _081ACA10
	.pool
_081AC6E8:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_08614047
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x4
	b _081ACA10
	.pool
_081AC70C:
	ldr r4, =gUnknown_0203CE7C
	ldrh r0, [r4]
	bl itemid_is_unique
	lsls r0, 24
	cmp r0, 0
	bne _081AC748
	ldrh r0, [r4]
	cmp r0, 0xAF
	beq _081AC748
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_0861404B
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x2
	b _081ACA10
	.pool
_081AC748:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_08614046
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x1
	b _081ACA10
	.pool
_081AC76C:
	ldr r4, =gUnknown_0203CE7C
	ldrh r0, [r4]
	bl itemid_is_unique
	lsls r0, 24
	cmp r0, 0
	bne _081AC7A8
	ldrh r0, [r4]
	cmp r0, 0xAF
	beq _081AC7A8
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_0861404D
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x2
	b _081ACA10
	.pool
_081AC7A8:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_08614046
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x1
	b _081ACA10
	.pool
_081AC7CC:
	ldr r4, =gUnknown_0203CE7C
	ldrh r0, [r4]
	bl itemid_is_unique
	lsls r0, 24
	cmp r0, 0
	bne _081AC808
	ldrh r0, [r4]
	cmp r0, 0xAF
	beq _081AC808
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_0861404F
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x2
	b _081ACA10
	.pool
_081AC808:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_08614046
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x1
	b _081ACA10
	.pool
_081AC82C:
	bl sub_81221AC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _081AC840
	bl InUnionRoom
	cmp r0, 0x1
	bne _081AC8A4
_081AC840:
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	cmp r0, 0x4
	beq _081AC856
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	bl sub_8122148
	lsls r0, 24
	cmp r0, 0
	bne _081AC880
_081AC856:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_08614046
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x1
	b _081ACA10
	.pool
_081AC880:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_08614044
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x2
	b _081ACA10
	.pool
_081AC8A4:
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	cmp r0, 0x4
	bls _081AC8AE
	b _081ACA12
_081AC8AE:
	lsls r0, 2
	ldr r1, =_081AC8C0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081AC8C0:
	.4byte _081AC8D4
	.4byte _081AC9B4
	.4byte _081AC9D8
	.4byte _081AC9FC
	.4byte _081AC92C
_081AC8D4:
	ldr r4, =gUnknown_0203CE54
	ldr r1, [r4]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r3, =0x00000824
	adds r0, r1, r3
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x4
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, r3
	ldr r1, =gUnknown_0861402C
	movs r2, 0x4
	bl memcpy
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	bl itemid_is_mail
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _081AC90A
	b _081ACA12
_081AC90A:
	ldr r0, [r4]
	ldr r1, =0x00000824
	adds r0, r1
	movs r1, 0x6
	strb r1, [r0]
	b _081ACA12
	.pool
_081AC92C:
	ldr r4, =gUnknown_0203CE54
	ldr r1, [r4]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r5, =0x00000824
	adds r0, r1, r5
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x4
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, r5
	ldr r1, =gUnknown_08614030
	movs r2, 0x4
	bl memcpy
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, =0x00000496
	adds r0, r1
	ldr r2, =gUnknown_0203CE7C
	ldrh r0, [r0]
	ldrh r1, [r2]
	cmp r0, r1
	bne _081AC96C
	ldr r0, [r4]
	ldr r1, =0x00000825
	adds r0, r1
	movs r1, 0x8
	strb r1, [r0]
_081AC96C:
	ldrh r1, [r2]
	ldr r0, =0x00000103
	cmp r1, r0
	beq _081AC97A
	adds r0, 0xD
	cmp r1, r0
	bne _081ACA12
_081AC97A:
	movs r0, 0x6
	bl TestPlayerAvatarFlags
	lsls r0, 24
	cmp r0, 0
	beq _081ACA12
	ldr r0, [r4]
	adds r0, r5
	movs r1, 0x7
	strb r1, [r0]
	b _081ACA12
	.pool
_081AC9B4:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_08614034
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x4
	b _081ACA10
	.pool
_081AC9D8:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_08614038
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x4
	b _081ACA10
	.pool
_081AC9FC:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	movs r0, 0x82
	lsls r0, 4
	adds r2, r1, r0
	ldr r0, =gUnknown_0861403C
	str r0, [r2]
	ldr r0, =0x00000828
	adds r1, r0
	movs r0, 0x6
_081ACA10:
	strb r0, [r1]
_081ACA12:
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	cmp r0, 0x2
	bne _081ACA50
	movs r0, 0x1
	bl ClearWindowTilemap
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	bl PrintTMHMMoveData
	movs r0, 0x3
	bl PutWindowTilemap
	movs r0, 0x4
	bl PutWindowTilemap
	movs r0, 0
	bl schedule_bg_copy_tilemap_to_vram
	b _081ACA86
	.pool
_081ACA50:
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E8DBE
	adds r0, r4, 0
	bl StringExpandPlaceholders
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	movs r0, 0x1
	movs r1, 0x1
	adds r2, r4, 0
	movs r3, 0x3
	bl bag_menu_print
_081ACA86:
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r1, =0x00000828
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _081ACAB0
	movs r0, 0
	b _081ACAB6
	.pool
_081ACAB0:
	cmp r0, 0x2
	bne _081ACAC4
	movs r0, 0x1
_081ACAB6:
	bl bag_menu_add_window
	lsls r0, 24
	lsrs r0, 24
	bl sub_81ACAF8
	b _081ACAEE
_081ACAC4:
	cmp r0, 0x4
	bne _081ACADC
	movs r0, 0x2
	bl bag_menu_add_window
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x2
	movs r2, 0x2
	bl sub_81ACB54
	b _081ACAEE
_081ACADC:
	movs r0, 0x3
	bl bag_menu_add_window
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x2
	movs r2, 0x3
	bl sub_81ACB54
_081ACAEE:
	add sp, 0x14
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_81AC644

	thumb_func_start sub_81ACAF8
sub_81ACAF8: @ 81ACAF8
	push {r4-r6,lr}
	sub sp, 0x14
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0
	str r0, [sp]
	movs r0, 0x10
	str r0, [sp, 0x4]
	ldr r6, =gUnknown_0203CE54
	ldr r1, [r6]
	ldr r5, =0x00000828
	adds r0, r1, r5
	ldrb r0, [r0]
	str r0, [sp, 0x8]
	ldr r0, =gUnknown_08613FB4
	str r0, [sp, 0xC]
	movs r0, 0x82
	lsls r0, 4
	adds r1, r0
	ldr r0, [r1]
	str r0, [sp, 0x10]
	adds r0, r4, 0
	movs r1, 0x7
	movs r2, 0x8
	movs r3, 0x1
	bl AddItemMenuActionTextPrinters
	ldr r0, [r6]
	adds r0, r5
	ldrb r1, [r0]
	adds r0, r4, 0
	movs r2, 0
	bl InitMenuInUpperLeftCornerPlaySoundWhenAPressed
	add sp, 0x14
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81ACAF8

	thumb_func_start sub_81ACB54
sub_81ACB54: @ 81ACB54
	push {r4-r6,lr}
	sub sp, 0x14
	adds r4, r0, 0
	adds r5, r1, 0
	adds r6, r2, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	movs r0, 0x38
	str r0, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	ldr r0, =gUnknown_08613FB4
	str r0, [sp, 0xC]
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	movs r1, 0x82
	lsls r1, 4
	adds r0, r1
	ldr r0, [r0]
	str r0, [sp, 0x10]
	adds r0, r4, 0
	movs r1, 0x7
	movs r2, 0x8
	movs r3, 0x1
	bl sub_8198DBC
	movs r0, 0
	str r0, [sp]
	adds r0, r4, 0
	movs r1, 0x38
	adds r2, r5, 0
	adds r3, r6, 0
	bl sub_8199944
	add sp, 0x14
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81ACB54

	thumb_func_start unknown_item_menu_type
unknown_item_menu_type: @ 81ACBB0
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl sub_81AC644
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r1, =0x00000828
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x2
	bhi _081ACBE8
	ldr r0, =gTasks
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	ldr r0, =Task_HandleInBattleItemMenuInput
	b _081ACBF4
	.pool
_081ACBE8:
	ldr r0, =gTasks
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	ldr r0, =Task_HandleOutOfBattleItemMenuInput
_081ACBF4:
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end unknown_item_menu_type

	thumb_func_start Task_HandleInBattleItemMenuInput
Task_HandleInBattleItemMenuInput: @ 81ACC04
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	adds r6, r5, 0
	bl sub_81221EC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _081ACC6A
	bl ProcessMenuInputNoWrapAround
	lsls r0, 24
	asrs r4, r0, 24
	movs r0, 0x2
	negs r0, r0
	cmp r4, r0
	beq _081ACC6A
	adds r0, 0x1
	cmp r4, r0
	bne _081ACC44
	movs r0, 0x5
	bl PlaySE
	ldr r0, =gUnknown_08613FB4
	ldr r1, [r0, 0x24]
	adds r0, r5, 0
	bl _call_via_r1
	b _081ACC6A
	.pool
_081ACC44:
	movs r0, 0x5
	bl PlaySE
	ldr r1, =gUnknown_08613FB4
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	movs r2, 0x82
	lsls r2, 4
	adds r0, r2
	ldr r0, [r0]
	adds r0, r4
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r6, 0
	bl _call_via_r1
_081ACC6A:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end Task_HandleInBattleItemMenuInput

	thumb_func_start Task_HandleOutOfBattleItemMenuInput
Task_HandleOutOfBattleItemMenuInput: @ 81ACC78
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	bl sub_81221EC
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081ACC8C
	b _081ACDF0
_081ACC8C:
	bl GetMenuCursorPos
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r5, =gMain
	ldrh r1, [r5, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _081ACCD4
	lsls r0, r4, 24
	asrs r0, 24
	cmp r0, 0
	bgt _081ACCAA
	b _081ACDF0
_081ACCAA:
	subs r0, 0x2
	lsls r0, 24
	asrs r0, 24
	bl sub_81ACDFC
	lsls r0, 24
	cmp r0, 0
	bne _081ACCBC
	b _081ACDF0
_081ACCBC:
	movs r0, 0x5
	bl PlaySE
	movs r1, 0x1
	negs r1, r1
	movs r0, 0
	bl sub_8199134
	b _081ACDF0
	.pool
_081ACCD4:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081ACD1C
	lsls r0, r4, 24
	asrs r1, r0, 24
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r2, =0x00000828
	adds r0, r2
	ldrb r0, [r0]
	subs r0, 0x2
	cmp r1, r0
	blt _081ACCF2
	b _081ACDF0
_081ACCF2:
	adds r0, r1, 0x2
	lsls r0, 24
	asrs r0, 24
	bl sub_81ACDFC
	lsls r0, 24
	cmp r0, 0
	beq _081ACDF0
	movs r0, 0x5
	bl PlaySE
	movs r0, 0
	movs r1, 0x1
	bl sub_8199134
	b _081ACDF0
	.pool
_081ACD1C:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _081ACD30
	bl GetLRKeysState
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081ACD58
_081ACD30:
	lsls r0, r4, 24
	asrs r1, r0, 24
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081ACDF0
	subs r0, r1, 0x1
	lsls r0, 24
	asrs r0, 24
	bl sub_81ACDFC
	lsls r0, 24
	cmp r0, 0
	beq _081ACDF0
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	b _081ACD92
_081ACD58:
	ldrh r1, [r5, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _081ACD6E
	bl GetLRKeysState
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _081ACD9A
_081ACD6E:
	lsls r0, r4, 24
	asrs r1, r0, 24
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _081ACDF0
	adds r0, r1, 0x1
	lsls r0, 24
	asrs r0, 24
	bl sub_81ACDFC
	lsls r0, 24
	cmp r0, 0
	beq _081ACDF0
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
_081ACD92:
	movs r1, 0
	bl sub_8199134
	b _081ACDF0
_081ACD9A:
	ldrh r1, [r5, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081ACDD8
	movs r0, 0x5
	bl PlaySE
	ldr r2, =gUnknown_08613FB4
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	lsls r1, r4, 24
	asrs r1, 24
	movs r3, 0x82
	lsls r3, 4
	adds r0, r3
	ldr r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 3
	adds r2, 0x4
	adds r0, r2
	ldr r1, [r0]
	adds r0, r6, 0
	bl _call_via_r1
	b _081ACDF0
	.pool
_081ACDD8:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081ACDF0
	movs r0, 0x5
	bl PlaySE
	ldr r0, =gUnknown_08613FB4
	ldr r1, [r0, 0x24]
	adds r0, r6, 0
	bl _call_via_r1
_081ACDF0:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end Task_HandleOutOfBattleItemMenuInput

	thumb_func_start sub_81ACDFC
sub_81ACDFC: @ 81ACDFC
	push {lr}
	lsls r0, 24
	asrs r1, r0, 24
	cmp r1, 0
	blt _081ACE30
	ldr r0, =gUnknown_0203CE54
	ldr r2, [r0]
	ldr r3, =0x00000828
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r1, r0
	bgt _081ACE30
	movs r3, 0x82
	lsls r3, 4
	adds r0, r2, r3
	ldr r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0xE
	beq _081ACE30
	movs r0, 0x1
	b _081ACE32
	.pool
_081ACE30:
	movs r0, 0
_081ACE32:
	pop {r1}
	bx r1
	thumb_func_end sub_81ACDFC

	thumb_func_start bag_menu_remove_some_window
bag_menu_remove_some_window: @ 81ACE38
	push {lr}
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r1, =0x00000828
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _081ACE58
	movs r0, 0
	bl bag_menu_remove_window
	b _081ACE76
	.pool
_081ACE58:
	cmp r0, 0x2
	bne _081ACE64
	movs r0, 0x1
	bl bag_menu_remove_window
	b _081ACE76
_081ACE64:
	cmp r0, 0x4
	bne _081ACE70
	movs r0, 0x2
	bl bag_menu_remove_window
	b _081ACE76
_081ACE70:
	movs r0, 0x3
	bl bag_menu_remove_window
_081ACE76:
	pop {r0}
	bx r0
	thumb_func_end bag_menu_remove_some_window

	thumb_func_start ItemMenu_UseOutOfBattle
@ void ItemMenu_UseOutOfBattle(u8 taskId)
ItemMenu_UseOutOfBattle: @ 81ACE7C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r5, =gUnknown_0203CE7C
	ldrh r0, [r5]
	bl ItemId_GetFieldFunc
	cmp r0, 0
	beq _081ACEEE
	bl bag_menu_remove_some_window
	bl CalculatePlayerPartyCount
	lsls r0, 24
	cmp r0, 0
	bne _081ACEB8
	ldrh r0, [r5]
	bl ItemId_GetType
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081ACEB8
	adds r0, r4, 0
	bl bag_menu_print_there_is_no_pokemon
	b _081ACEEE
	.pool
_081ACEB8:
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0
	bl schedule_bg_copy_tilemap_to_vram
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	cmp r0, 0x3
	beq _081ACEE8
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	bl ItemId_GetFieldFunc
	adds r1, r0, 0
	adds r0, r4, 0
	bl _call_via_r1
	b _081ACEEE
	.pool
_081ACEE8:
	adds r0, r4, 0
	bl sub_80FDD10
_081ACEEE:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end ItemMenu_UseOutOfBattle

	thumb_func_start ItemMenu_Toss
ItemMenu_Toss: @ 81ACEF4
	push {r4-r7,lr}
	sub sp, 0x14
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r6, r0, 3
	ldr r7, =gTasks + 0x8
	adds r4, r6, r7
	bl bag_menu_remove_some_window
	movs r0, 0x1
	strh r0, [r4, 0x10]
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	bne _081ACF24
	adds r0, r5, 0
	bl BagMenuConfirmToss
	b _081ACF6A
	.pool
_081ACF24:
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E8EE0
	adds r0, r4, 0
	bl StringExpandPlaceholders
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	movs r0, 0x1
	movs r1, 0x1
	adds r2, r4, 0
	movs r3, 0x3
	bl bag_menu_print
	movs r0, 0x7
	bl sub_81ABC3C
	adds r0, r7, 0
	subs r0, 0x8
	adds r0, r6, r0
	ldr r1, =Task_ChooseHowManyToToss
	str r1, [r0]
_081ACF6A:
	add sp, 0x14
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ItemMenu_Toss

	thumb_func_start BagMenuConfirmToss
BagMenuConfirmToss: @ 81ACF88
	push {r4,r5,lr}
	sub sp, 0x14
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	ldr r0, =gTasks + 0x8
	adds r4, r0
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r0, =gStringVar2
	movs r2, 0x10
	ldrsh r1, [r4, r2]
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E8F0E
	adds r0, r4, 0
	bl StringExpandPlaceholders
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	movs r0, 0x1
	movs r1, 0x1
	adds r2, r4, 0
	movs r3, 0x3
	bl bag_menu_print
	ldr r2, =gUnknown_08614084
	adds r0, r5, 0
	movs r1, 0x5
	bl bag_menu_yes_no
	add sp, 0x14
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end BagMenuConfirmToss

	thumb_func_start BagMenuCancelToss
BagMenuCancelToss: @ 81AD010
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	ldr r0, =gTasks + 0x8
	adds r4, r0
	movs r1, 0x2
	ldrsh r0, [r4, r1]
	bl bag_menu_print_description_box_text
	ldrb r0, [r4]
	movs r1, 0
	bl bag_menu_print_cursor_
	adds r0, r5, 0
	bl set_callback3_to_bag
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end BagMenuCancelToss

	thumb_func_start Task_ChooseHowManyToToss
Task_ChooseHowManyToToss: @ 81AD044
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	adds r6, r5, 0
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	adds r0, r4, 0
	adds r0, 0x10
	ldrh r1, [r4, 0x4]
	bl AdjustQuantityAccordingToDPadInput
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081AD088
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r1, =0x00000817
	adds r0, r1
	ldrb r0, [r0]
	movs r2, 0x10
	ldrsh r1, [r4, r2]
	bl sub_81ABC54
	b _081AD0C6
	.pool
_081AD088:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081AD0AC
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x7
	bl bag_menu_remove_window
	adds r0, r5, 0
	bl BagMenuConfirmToss
	b _081AD0C6
	.pool
_081AD0AC:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081AD0C6
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x7
	bl bag_menu_remove_window
	adds r0, r6, 0
	bl BagMenuCancelToss
_081AD0C6:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end Task_ChooseHowManyToToss

	thumb_func_start BagMenuActuallyToss
BagMenuActuallyToss: @ 81AD0CC
	push {r4-r6,lr}
	sub sp, 0x14
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	ldr r5, =gTasks + 0x8
	adds r6, r4, r5
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r0, =gStringVar2
	movs r2, 0x10
	ldrsh r1, [r6, r2]
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r6, =gStringVar4
	ldr r1, =gUnknown_085E8EF9
	adds r0, r6, 0
	bl StringExpandPlaceholders
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	movs r0, 0x1
	movs r1, 0x1
	adds r2, r6, 0
	movs r3, 0x3
	bl bag_menu_print
	subs r5, 0x8
	adds r4, r5
	ldr r0, =Task_ActuallyToss
	str r0, [r4]
	add sp, 0x14
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end BagMenuActuallyToss

	thumb_func_start Task_ActuallyToss
Task_ActuallyToss: @ 81AD150
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r5, r0, r1
	ldr r4, =gUnknown_0203CE58
	ldrb r0, [r4, 0x5]
	lsls r0, 1
	adds r1, r4, 0
	adds r1, 0x12
	adds r1, r0
	mov r8, r1
	adds r1, r4, 0
	adds r1, 0x8
	adds r7, r0, r1
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _081AD1CE
	movs r0, 0x5
	bl PlaySE
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	ldrh r1, [r5, 0x10]
	bl RemoveBagItem
	ldrb r0, [r5]
	mov r1, r8
	adds r2, r7, 0
	bl sub_81AE6C8
	ldrb r0, [r4, 0x5]
	bl sub_81AB9A8
	ldrb r0, [r4, 0x5]
	bl sub_81ABA88
	ldrb r0, [r4, 0x5]
	bl load_bag_item_list_buffers
	ldr r0, =gUnknown_03006310
	mov r2, r8
	ldrh r1, [r2]
	ldrh r2, [r7]
	bl ListMenuInit
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5]
	movs r0, 0
	bl schedule_bg_copy_tilemap_to_vram
	adds r0, r6, 0
	bl set_callback3_to_bag
_081AD1CE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end Task_ActuallyToss

	thumb_func_start ItemMenu_Register
ItemMenu_Register: @ 81AD1EC
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r7, r0, r1
	ldr r0, =gUnknown_0203CE58
	ldrb r1, [r0, 0x5]
	lsls r1, 1
	adds r2, r0, 0
	adds r2, 0x12
	adds r6, r1, r2
	adds r0, 0x8
	adds r5, r1, r0
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, =0x00000496
	adds r1, r0, r2
	ldr r0, =gUnknown_0203CE7C
	ldrh r2, [r0]
	ldrh r0, [r1]
	cmp r0, r2
	bne _081AD238
	movs r0, 0
	strh r0, [r1]
	b _081AD23A
	.pool
_081AD238:
	strh r2, [r1]
_081AD23A:
	ldrb r0, [r7]
	adds r1, r6, 0
	adds r2, r5, 0
	bl sub_81AE6C8
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	bl load_bag_item_list_buffers
	ldr r0, =gUnknown_03006310
	ldrh r1, [r6]
	ldrh r2, [r5]
	bl ListMenuInit
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r7]
	movs r0, 0
	bl schedule_bg_copy_tilemap_to_vram
	adds r0, r4, 0
	bl ItemMenu_Cancel
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ItemMenu_Register

	thumb_func_start ItemMenu_Give
ItemMenu_Give: @ 81AD278
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r6, r4, 0
	bl bag_menu_remove_some_window
	ldr r5, =gUnknown_0203CE7C
	ldrh r0, [r5]
	bl itemid_80BF6D8_mail_related
	lsls r0, 24
	cmp r0, 0
	bne _081AD2AC
	ldr r2, =gUnknown_085E8DCE
	ldr r3, =sub_81AD350
	adds r0, r4, 0
	movs r1, 0x1
	bl DisplayItemMessage
	b _081AD2EA
	.pool
_081AD2AC:
	ldrh r0, [r5]
	bl itemid_is_unique
	lsls r0, 24
	cmp r0, 0
	bne _081AD2E4
	bl CalculatePlayerPartyCount
	lsls r0, 24
	cmp r0, 0
	bne _081AD2CA
	adds r0, r4, 0
	bl bag_menu_print_there_is_no_pokemon
	b _081AD2EA
_081AD2CA:
	ldr r0, =gUnknown_0203CE54
	ldr r1, [r0]
	ldr r0, =sub_81B7F60
	str r0, [r1]
	adds r0, r4, 0
	bl unknown_ItemMenu_Confirm
	b _081AD2EA
	.pool
_081AD2E4:
	adds r0, r6, 0
	bl bag_menu_print_cant_be_held_msg
_081AD2EA:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end ItemMenu_Give

	thumb_func_start bag_menu_print_there_is_no_pokemon
bag_menu_print_there_is_no_pokemon: @ 81AD2F0
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gUnknown_085E8DE9
	ldr r3, =sub_81AD350
	movs r1, 0x1
	bl DisplayItemMessage
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_print_there_is_no_pokemon

	thumb_func_start bag_menu_print_cant_be_held_msg
bag_menu_print_cant_be_held_msg: @ 81AD30C
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r5, =gStringVar4
	ldr r1, =gUnknown_085E8E11
	adds r0, r5, 0
	bl StringExpandPlaceholders
	ldr r3, =sub_81AD350
	adds r0, r4, 0
	movs r1, 0x1
	adds r2, r5, 0
	bl DisplayItemMessage
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_print_cant_be_held_msg

	thumb_func_start sub_81AD350
sub_81AD350: @ 81AD350
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081AD36E
	movs r0, 0x5
	bl PlaySE
	adds r0, r4, 0
	bl bag_menu_inits_lists_menu
_081AD36E:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AD350

	thumb_func_start ItemMenu_CheckTag
ItemMenu_CheckTag: @ 81AD378
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0203CE54
	ldr r2, [r1]
	ldr r1, =sub_8177C14
	str r1, [r2]
	bl unknown_ItemMenu_Confirm
	pop {r0}
	bx r0
	.pool
	thumb_func_end ItemMenu_CheckTag

	thumb_func_start ItemMenu_Cancel
ItemMenu_Cancel: @ 81AD398
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	ldr r0, =gTasks + 0x8
	adds r4, r0
	bl bag_menu_remove_some_window
	movs r1, 0x2
	ldrsh r0, [r4, r1]
	bl bag_menu_print_description_box_text
	movs r0, 0
	bl schedule_bg_copy_tilemap_to_vram
	movs r0, 0x1
	bl schedule_bg_copy_tilemap_to_vram
	ldrb r0, [r4]
	movs r1, 0
	bl bag_menu_print_cursor_
	adds r0, r5, 0
	bl set_callback3_to_bag
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ItemMenu_Cancel

	thumb_func_start ItemMenu_UseInBattle
ItemMenu_UseInBattle: @ 81AD3DC
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, =gUnknown_0203CE7C
	ldrh r0, [r4]
	bl ItemId_GetBattleFunc
	cmp r0, 0
	beq _081AD400
	bl bag_menu_remove_some_window
	ldrh r0, [r4]
	bl ItemId_GetBattleFunc
	adds r1, r0, 0
	adds r0, r5, 0
	bl _call_via_r1
_081AD400:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ItemMenu_UseInBattle

	thumb_func_start bag_menu_mail_related
bag_menu_mail_related: @ 81AD40C
	push {lr}
	movs r0, 0xC
	movs r1, 0x5
	movs r2, 0
	bl GoToBagMenu
	pop {r0}
	bx r0
	thumb_func_end bag_menu_mail_related

	thumb_func_start item_menu_type_2
item_menu_type_2: @ 81AD41C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, =gUnknown_0203CE7C
	ldrh r0, [r4]
	bl itemid_80BF6D8_mail_related
	lsls r0, 24
	cmp r0, 0
	bne _081AD44C
	ldr r2, =gUnknown_085E8DCE
	ldr r3, =sub_81AD350
	adds r0, r5, 0
	movs r1, 0x1
	bl DisplayItemMessage
	b _081AD4AE
	.pool
_081AD44C:
	ldrh r0, [r4]
	bl sub_8122148
	lsls r0, 24
	cmp r0, 0
	bne _081AD488
	ldrh r0, [r4]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E8E27
	adds r0, r4, 0
	bl StringExpandPlaceholders
	ldr r3, =sub_81AD350
	adds r0, r5, 0
	movs r1, 0x1
	adds r2, r4, 0
	bl DisplayItemMessage
	b _081AD4AE
	.pool
_081AD488:
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	cmp r0, 0x4
	beq _081AD4A8
	ldrh r0, [r4]
	bl itemid_is_unique
	lsls r0, 24
	cmp r0, 0
	bne _081AD4A8
	adds r0, r5, 0
	bl unknown_ItemMenu_Confirm
	b _081AD4AE
	.pool
_081AD4A8:
	adds r0, r5, 0
	bl bag_menu_print_cant_be_held_msg
_081AD4AE:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end item_menu_type_2

	thumb_func_start item_menu_type_b
item_menu_type_b: @ 81AD4B4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r5, =gUnknown_0203CE7C
	ldrh r0, [r5]
	bl itemid_is_mail
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081AD4E4
	ldr r2, =gUnknown_085E8DCE
	ldr r3, =sub_81AD350
	adds r0, r4, 0
	movs r1, 0x1
	bl DisplayItemMessage
	b _081AD51A
	.pool
_081AD4E4:
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x5]
	cmp r0, 0x4
	beq _081AD514
	ldrh r0, [r5]
	bl itemid_is_unique
	lsls r0, 24
	cmp r0, 0
	bne _081AD514
	ldr r0, =gTasks
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	ldr r0, =unknown_ItemMenu_Confirm
	str r0, [r1]
	b _081AD51A
	.pool
_081AD514:
	adds r0, r4, 0
	bl bag_menu_print_cant_be_held_msg
_081AD51A:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end item_menu_type_b

	thumb_func_start UseRegisteredKeyItemOnField
@ bool8 UseRegisteredKeyItemOnField()
UseRegisteredKeyItemOnField: @ 81AD520
	push {r4-r7,lr}
	bl InUnionRoom
	cmp r0, 0x1
	beq _081AD54C
	bl InBattlePyramid
	lsls r0, 24
	cmp r0, 0
	bne _081AD54C
	bl InBattlePike
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0
	bne _081AD54C
	bl InMultiBattleRoom
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081AD550
_081AD54C:
	movs r0, 0
	b _081AD5D2
_081AD550:
	bl HideMapNamePopUpWindow
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl ChangeBgY_ScreenOff
	ldr r4, =gSaveBlock1Ptr
	ldr r0, [r4]
	ldr r5, =0x00000496
	adds r1, r0, r5
	ldrh r0, [r1]
	cmp r0, 0
	beq _081AD5CA
	movs r1, 0x1
	bl CheckBagHasItem
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x1
	bne _081AD5C4
	bl script_env_2_enable
	bl player_bitmagic
	bl sub_808B864
	bl sub_808BCF4
	ldr r2, =gUnknown_0203CE7C
	ldr r0, [r4]
	adds r0, r5
	ldrh r1, [r0]
	strh r1, [r2]
	ldrh r0, [r0]
	bl ItemId_GetFieldFunc
	movs r1, 0x8
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r6, [r1, 0xE]
	b _081AD5D0
	.pool
_081AD5C4:
	ldr r0, [r4]
	adds r0, r5
	strh r7, [r0]
_081AD5CA:
	ldr r0, =gUnknown_082736B3
	bl ScriptContext1_SetupScript
_081AD5D0:
	movs r0, 0x1
_081AD5D2:
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end UseRegisteredKeyItemOnField

	thumb_func_start display_sell_item_ask_str
@ void display_sell_item_ask_str(int a1)
display_sell_item_ask_str: @ 81AD5DC
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	adds r7, r5, 0
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	ldr r6, =gUnknown_0203CE7C
	ldrh r0, [r6]
	bl itemid_get_market_price
	lsls r0, 16
	cmp r0, 0
	bne _081AD634
	ldrh r0, [r6]
	ldr r1, =gStringVar2
	bl CopyItemName
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E960F
	adds r0, r4, 0
	bl StringExpandPlaceholders
	ldr r3, =bag_menu_inits_lists_menu
	adds r0, r5, 0
	movs r1, 0x1
	adds r2, r4, 0
	bl DisplayItemMessage
	b _081AD66A
	.pool
_081AD634:
	movs r0, 0x1
	strh r0, [r4, 0x10]
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	bne _081AD64C
	bl bag_menu_AddMoney_window
	adds r0, r5, 0
	bl sub_81AD680
	b _081AD66A
_081AD64C:
	ldrh r0, [r6]
	ldr r1, =gStringVar2
	bl CopyItemName
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E962F
	adds r0, r4, 0
	bl StringExpandPlaceholders
	ldr r3, =sub_81AD730
	adds r0, r7, 0
	movs r1, 0x1
	adds r2, r4, 0
	bl DisplayItemMessage
_081AD66A:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end display_sell_item_ask_str

	thumb_func_start sub_81AD680
sub_81AD680: @ 81AD680
	push {r4-r6,lr}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	ldr r0, =gTasks + 0x8
	adds r4, r0
	ldr r6, =gStringVar1
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	bl itemid_get_market_price
	lsls r0, 16
	lsrs r0, 17
	movs r2, 0x10
	ldrsh r1, [r4, r2]
	muls r1, r0
	adds r0, r6, 0
	movs r2, 0
	movs r3, 0x6
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E9654
	adds r0, r4, 0
	bl StringExpandPlaceholders
	ldr r3, =sub_81AD6E4
	adds r0, r5, 0
	movs r1, 0x1
	adds r2, r4, 0
	bl DisplayItemMessage
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AD680

	thumb_func_start sub_81AD6E4
sub_81AD6E4: @ 81AD6E4
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gUnknown_0861408C
	movs r1, 0x6
	bl bag_menu_yes_no
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AD6E4

	thumb_func_start sub_81AD6FC
sub_81AD6FC: @ 81AD6FC
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	ldr r0, =gTasks + 0x8
	adds r4, r0
	bl bag_menu_remove_money_window
	movs r0, 0x4
	bl bag_menu_RemoveBagItem_message_window
	ldrb r0, [r4]
	movs r1, 0
	bl bag_menu_print_cursor_
	adds r0, r5, 0
	bl set_callback3_to_bag
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AD6FC

	thumb_func_start sub_81AD730
sub_81AD730: @ 81AD730
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	ldr r6, =gTasks + 0x8
	adds r0, r4, r6
	mov r8, r0
	movs r0, 0x8
	bl bag_menu_add_window
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	bl itemid_get_market_price
	lsls r0, 16
	lsrs r0, 17
	mov r2, r8
	movs r3, 0x10
	ldrsh r1, [r2, r3]
	adds r2, r0, 0
	muls r2, r1
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_81ABCC0
	bl bag_menu_AddMoney_window
	subs r6, 0x8
	adds r4, r6
	ldr r0, =sub_81AD794
	str r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AD730

	thumb_func_start sub_81AD794
sub_81AD794: @ 81AD794
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, r4, 0
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r6, r0, r1
	adds r0, r6, 0
	adds r0, 0x10
	ldrh r1, [r6, 0x4]
	bl AdjustQuantityAccordingToDPadInput
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081AD7F4
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r1, =0x00000818
	adds r0, r1
	ldrb r4, [r0]
	movs r2, 0x10
	ldrsh r5, [r6, r2]
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	bl itemid_get_market_price
	lsls r0, 16
	lsrs r0, 17
	movs r2, 0x10
	ldrsh r1, [r6, r2]
	adds r2, r0, 0
	muls r2, r1
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_81ABCC0
	b _081AD844
	.pool
_081AD7F4:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081AD818
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x8
	bl bag_menu_remove_window
	adds r0, r4, 0
	bl sub_81AD680
	b _081AD844
	.pool
_081AD818:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081AD844
	movs r0, 0x5
	bl PlaySE
	ldrb r0, [r6]
	movs r1, 0
	bl bag_menu_print_cursor_
	bl bag_menu_remove_money_window
	movs r0, 0x8
	bl bag_menu_remove_window
	movs r0, 0x4
	bl bag_menu_RemoveBagItem_message_window
	adds r0, r5, 0
	bl set_callback3_to_bag
_081AD844:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_81AD794

	thumb_func_start sub_81AD84C
sub_81AD84C: @ 81AD84C
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	ldr r0, =gTasks + 0x8
	adds r4, r0
	ldr r6, =gUnknown_0203CE7C
	ldrh r0, [r6]
	ldr r1, =gStringVar2
	bl CopyItemName
	ldr r0, =gStringVar1
	mov r8, r0
	ldrh r0, [r6]
	bl itemid_get_market_price
	lsls r0, 16
	lsrs r0, 17
	movs r2, 0x10
	ldrsh r1, [r4, r2]
	muls r1, r0
	mov r0, r8
	movs r2, 0
	movs r3, 0x6
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E9677
	adds r0, r4, 0
	bl StringExpandPlaceholders
	ldr r3, =sub_81AD8C8
	adds r0, r5, 0
	movs r1, 0x1
	adds r2, r4, 0
	bl DisplayItemMessage
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AD84C

	thumb_func_start sub_81AD8C8
sub_81AD8C8: @ 81AD8C8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	lsls r6, r0, 2
	adds r6, r0
	lsls r6, 3
	ldr r0, =gTasks + 0x8
	adds r0, r6
	mov r10, r0
	ldr r7, =gUnknown_0203CE58
	ldrb r5, [r7, 0x5]
	lsls r5, 1
	movs r1, 0x12
	adds r1, r7
	mov r9, r1
	add r9, r5
	adds r0, r7, 0
	adds r0, 0x8
	adds r5, r0
	movs r0, 0x5F
	bl PlaySE
	ldr r2, =gUnknown_0203CE7C
	mov r8, r2
	ldrh r0, [r2]
	mov r3, r10
	ldrh r1, [r3, 0x10]
	bl RemoveBagItem
	ldr r0, =gSaveBlock1Ptr
	ldr r4, [r0]
	movs r1, 0x92
	lsls r1, 3
	adds r4, r1
	mov r2, r8
	ldrh r0, [r2]
	bl itemid_get_market_price
	lsls r0, 16
	lsrs r0, 17
	mov r3, r10
	movs r2, 0x10
	ldrsh r1, [r3, r2]
	muls r1, r0
	adds r0, r4, 0
	bl AddMoney
	mov r3, r10
	ldrb r0, [r3]
	mov r1, r9
	adds r2, r5, 0
	bl sub_81AE6C8
	ldrb r0, [r7, 0x5]
	bl sub_81AB9A8
	ldrb r0, [r7, 0x5]
	bl sub_81ABA88
	ldrb r0, [r7, 0x5]
	bl load_bag_item_list_buffers
	ldr r0, =gUnknown_03006310
	mov r2, r9
	ldrh r1, [r2]
	ldrh r2, [r5]
	bl ListMenuInit
	lsls r0, 24
	lsrs r0, 24
	mov r3, r10
	strh r0, [r3]
	movs r1, 0x2
	bl bag_menu_print_cursor_
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r1, =0x00000819
	adds r0, r1
	ldrb r4, [r0]
	ldr r2, =gSaveBlock1Ptr
	ldr r0, [r2]
	movs r3, 0x92
	lsls r3, 3
	adds r0, r3
	bl GetMoney
	adds r1, r0, 0
	adds r0, r4, 0
	movs r2, 0
	bl PrintMoneyAmountInMoneyBox
	ldr r0, =gTasks + 0x8
	subs r0, 0x8
	adds r6, r0
	ldr r0, =sub_81AD9C0
	str r0, [r6]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AD8C8

	thumb_func_start sub_81AD9C0
sub_81AD9C0: @ 81AD9C0
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _081AD9E2
	movs r0, 0x5
	bl PlaySE
	bl bag_menu_remove_money_window
	adds r0, r4, 0
	bl bag_menu_inits_lists_menu
_081AD9E2:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AD9C0

	thumb_func_start display_deposit_item_ask_str
display_deposit_item_ask_str: @ 81AD9EC
	push {r4-r6,lr}
	sub sp, 0x14
	lsls r0, 24
	lsrs r2, r0, 24
	lsls r0, r2, 2
	adds r0, r2
	lsls r5, r0, 3
	ldr r6, =gTasks + 0x8
	adds r1, r5, r6
	movs r0, 0x1
	strh r0, [r1, 0x10]
	movs r3, 0x4
	ldrsh r0, [r1, r3]
	cmp r0, 0x1
	bne _081ADA18
	adds r0, r2, 0
	bl sub_81ADB14
	b _081ADA5E
	.pool
_081ADA18:
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E8E42
	adds r0, r4, 0
	bl StringExpandPlaceholders
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	movs r0, 0x1
	movs r1, 0x1
	adds r2, r4, 0
	movs r3, 0x3
	bl bag_menu_print
	movs r0, 0x7
	bl sub_81ABC3C
	adds r0, r6, 0
	subs r0, 0x8
	adds r0, r5, r0
	ldr r1, =sub_81ADA7C
	str r1, [r0]
_081ADA5E:
	add sp, 0x14
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end display_deposit_item_ask_str

	thumb_func_start sub_81ADA7C
sub_81ADA7C: @ 81ADA7C
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r6, r4, 0
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r5, r0, r1
	adds r0, r5, 0
	adds r0, 0x10
	ldrh r1, [r5, 0x4]
	bl AdjustQuantityAccordingToDPadInput
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _081ADAC0
	ldr r0, =gUnknown_0203CE54
	ldr r0, [r0]
	ldr r1, =0x00000817
	adds r0, r1
	ldrb r0, [r0]
	movs r2, 0x10
	ldrsh r1, [r5, r2]
	bl sub_81ABC54
	b _081ADB0E
	.pool
_081ADAC0:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081ADAE4
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x7
	bl bag_menu_remove_window
	adds r0, r4, 0
	bl sub_81ADB14
	b _081ADB0E
	.pool
_081ADAE4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081ADB0E
	movs r0, 0x5
	bl PlaySE
	movs r1, 0x2
	ldrsh r0, [r5, r1]
	bl bag_menu_print_description_box_text
	ldrb r0, [r5]
	movs r1, 0
	bl bag_menu_print_cursor_
	movs r0, 0x7
	bl bag_menu_remove_window
	adds r0, r6, 0
	bl set_callback3_to_bag
_081ADB0E:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_81ADA7C

	thumb_func_start sub_81ADB14
sub_81ADB14: @ 81ADB14
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x14
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r7, r1, 3
	ldr r0, =gTasks + 0x8
	mov r9, r0
	adds r2, r7, 0
	add r2, r9
	mov r8, r2
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	ldr r4, =gUnknown_0203CE7C
	ldrh r0, [r4]
	bl itemid_is_unique
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	beq _081ADB6C
	ldr r2, =gUnknown_085E8E8E
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	str r0, [sp, 0xC]
	str r0, [sp, 0x10]
	movs r0, 0x1
	b _081ADBE2
	.pool
_081ADB6C:
	ldrh r0, [r4]
	mov r3, r8
	ldrh r1, [r3, 0x10]
	bl sub_80D6D70
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x1
	bne _081ADBD4
	ldrh r0, [r4]
	ldr r1, =gStringVar1
	bl CopyItemName
	ldr r0, =gStringVar2
	mov r2, r8
	movs r3, 0x10
	ldrsh r1, [r2, r3]
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r4, =gStringVar4
	ldr r1, =gUnknown_085E8E5A
	adds r0, r4, 0
	bl StringExpandPlaceholders
	str r6, [sp]
	str r5, [sp, 0x4]
	str r5, [sp, 0x8]
	str r5, [sp, 0xC]
	str r5, [sp, 0x10]
	movs r0, 0x1
	movs r1, 0x1
	adds r2, r4, 0
	movs r3, 0x3
	bl bag_menu_print
	mov r0, r9
	subs r0, 0x8
	adds r0, r7, r0
	ldr r1, =Task_ActuallyToss
	b _081ADBF2
	.pool
_081ADBD4:
	ldr r2, =gUnknown_085E8E6E
	movs r0, 0x1
	str r0, [sp]
	str r5, [sp, 0x4]
	str r5, [sp, 0x8]
	str r5, [sp, 0xC]
	str r5, [sp, 0x10]
_081ADBE2:
	movs r1, 0x1
	movs r3, 0x3
	bl bag_menu_print
	mov r0, r9
	subs r0, 0x8
	adds r0, r7, r0
	ldr r1, =sub_81ADC0C
_081ADBF2:
	str r1, [r0]
	add sp, 0x14
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81ADB14

	thumb_func_start sub_81ADC0C
sub_81ADC0C: @ 81ADC0C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r5, r0, r1
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _081ADC44
	movs r0, 0x5
	bl PlaySE
	movs r1, 0x2
	ldrsh r0, [r5, r1]
	bl bag_menu_print_description_box_text
	ldrb r0, [r5]
	movs r1, 0
	bl bag_menu_print_cursor_
	adds r0, r4, 0
	bl set_callback3_to_bag
_081ADC44:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81ADC0C

	thumb_func_start IsWallysBag
@ bool8 IsWallysBag()
IsWallysBag: @ 81ADC54
	push {lr}
	ldr r0, =gUnknown_0203CE58
	ldrb r0, [r0, 0x4]
	cmp r0, 0xA
	beq _081ADC68
	movs r0, 0
	b _081ADC6A
	.pool
_081ADC68:
	movs r0, 0x1
_081ADC6A:
	pop {r1}
	bx r1
	thumb_func_end IsWallysBag

	thumb_func_start PrepareBagForWallyTutorial
@ void PrepareBagForWallyTutorial()
PrepareBagForWallyTutorial: @ 81ADC70
	push {r4-r6,lr}
	ldr r4, =gUnknown_0203CE80
	movs r0, 0xD0
	bl AllocZeroed
	str r0, [r4]
	ldr r5, =gSaveBlock1Ptr
	ldr r1, [r5]
	movs r2, 0xAC
	lsls r2, 3
	adds r1, r2
	movs r2, 0x78
	bl memcpy
	ldr r0, [r4]
	ldr r1, [r5]
	movs r2, 0xCA
	lsls r2, 3
	adds r1, r2
	adds r0, 0x78
	movs r2, 0x40
	bl memcpy
	ldr r0, [r4]
	ldr r2, =gUnknown_0203CE58
	ldrb r1, [r2, 0x5]
	adds r0, 0xCE
	strh r1, [r0]
	movs r6, 0
	adds r5, r2, 0
	adds r5, 0x8
_081ADCAE:
	ldr r2, [r4]
	lsls r3, r6, 1
	adds r0, r2, 0
	adds r0, 0xB8
	adds r0, r3
	ldrh r1, [r5]
	strh r1, [r0]
	adds r2, 0xC2
	adds r2, r3
	ldrh r0, [r5, 0xA]
	strh r0, [r2]
	adds r5, 0x2
	adds r6, 0x1
	cmp r6, 0x4
	bls _081ADCAE
	ldr r4, =gSaveBlock1Ptr
	ldr r0, [r4]
	movs r1, 0xAC
	lsls r1, 3
	adds r0, r1
	movs r1, 0x1E
	bl ClearItemSlots
	ldr r0, [r4]
	movs r2, 0xCA
	lsls r2, 3
	adds r0, r2
	movs r1, 0x10
	bl ClearItemSlots
	bl ResetBagScrollPositions
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end PrepareBagForWallyTutorial

	thumb_func_start RestoreBagAfterWallyTutorial
@ void RestoreBagAfterWallyTutorial()
RestoreBagAfterWallyTutorial: @ 81ADD00
	push {r4-r6,lr}
	ldr r5, =gSaveBlock1Ptr
	ldr r0, [r5]
	movs r1, 0xAC
	lsls r1, 3
	adds r0, r1
	ldr r4, =gUnknown_0203CE80
	ldr r1, [r4]
	movs r2, 0x78
	bl memcpy
	ldr r0, [r5]
	movs r1, 0xCA
	lsls r1, 3
	adds r0, r1
	ldr r1, [r4]
	adds r1, 0x78
	movs r2, 0x40
	bl memcpy
	ldr r1, =gUnknown_0203CE58
	ldr r0, [r4]
	adds r0, 0xCE
	ldrh r0, [r0]
	strb r0, [r1, 0x5]
	movs r5, 0
	adds r6, r4, 0
	adds r3, r1, 0
	adds r3, 0x8
_081ADD3A:
	lsls r2, r5, 1
	ldr r1, [r4]
	adds r0, r1, 0
	adds r0, 0xB8
	adds r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	adds r1, 0xC2
	adds r1, r2
	ldrh r0, [r1]
	strh r0, [r3, 0xA]
	adds r3, 0x2
	adds r5, 0x1
	cmp r5, 0x4
	bls _081ADD3A
	ldr r0, [r6]
	bl Free
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end RestoreBagAfterWallyTutorial

	thumb_func_start DoWallyTutorialBagMenu
@ void DoWallyTutorialBagMenu()
DoWallyTutorialBagMenu: @ 81ADD70
	push {lr}
	bl PrepareBagForWallyTutorial
	movs r0, 0xD
	movs r1, 0x1
	bl AddBagItem
	movs r0, 0x4
	movs r1, 0x1
	bl AddBagItem
	ldr r2, =sub_8059D50
	movs r0, 0xA
	movs r1, 0
	bl GoToBagMenu
	pop {r0}
	bx r0
	.pool
	thumb_func_end DoWallyTutorialBagMenu

	thumb_func_start Task_WallyTutorialBagMenu
@ void Task_WallyTutorialBagMenu(u8 taskId)
Task_WallyTutorialBagMenu: @ 81ADD98
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _081ADE32
	movs r0, 0x10
	ldrsh r1, [r4, r0]
	cmp r1, 0xCC
	beq _081ADDEC
	cmp r1, 0xCC
	bgt _081ADDD0
	cmp r1, 0x66
	beq _081ADDDA
	b _081ADE2C
	.pool
_081ADDD0:
	movs r0, 0x99
	lsls r0, 1
	cmp r1, r0
	beq _081ADE0C
	b _081ADE2C
_081ADDDA:
	movs r0, 0x5
	bl PlaySE
	adds r0, r5, 0
	movs r1, 0x1
	movs r2, 0
	bl SwitchBagPocket
	b _081ADE2C
_081ADDEC:
	movs r0, 0x5
	bl PlaySE
	ldrb r0, [r4]
	movs r1, 0x2
	bl bag_menu_print_cursor_
	ldr r1, =gUnknown_0203CE7C
	movs r0, 0x4
	strh r0, [r1]
	adds r0, r5, 0
	bl sub_81AC644
	b _081ADE2C
	.pool
_081ADE0C:
	movs r0, 0x5
	bl PlaySE
	bl bag_menu_remove_some_window
	ldrb r0, [r4]
	movs r1, 0
	movs r2, 0
	bl sub_81AE6C8
	bl RestoreBagAfterWallyTutorial
	adds r0, r5, 0
	bl unknown_ItemMenu_Confirm
	b _081ADE32
_081ADE2C:
	ldrh r0, [r4, 0x10]
	adds r0, 0x1
	strh r0, [r4, 0x10]
_081ADE32:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end Task_WallyTutorialBagMenu

	thumb_func_start unknown_ItemMenu_Show
unknown_ItemMenu_Show: @ 81ADE38
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =gSpecialVar_0x8005
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, =gScriptResult
	movs r0, 0x1
	strh r0, [r1]
	bl bag_menu_remove_some_window
	adds r0, r4, 0
	bl unknown_ItemMenu_Confirm
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end unknown_ItemMenu_Show

	thumb_func_start bag_menu_leave_maybe_3
bag_menu_leave_maybe_3: @ 81ADE6C
	push {lr}
	ldr r0, =gUnknown_03005DAC
	ldr r1, =sub_819FA50
	str r1, [r0]
	ldr r0, =c2_exit_to_overworld_2_switch
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_leave_maybe_3

	thumb_func_start unknown_ItemMenu_Give2
unknown_ItemMenu_Give2: @ 81ADE8C
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gUnknown_0203CE7C
	ldrh r0, [r0]
	movs r1, 0x1
	bl RemoveBagItem
	ldr r1, =gScriptResult
	movs r0, 0x1
	strh r0, [r1]
	bl bag_menu_remove_some_window
	adds r0, r4, 0
	bl unknown_ItemMenu_Confirm
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end unknown_ItemMenu_Give2

	thumb_func_start bag_menu_leave_maybe_2
bag_menu_leave_maybe_2: @ 81ADEBC
	push {lr}
	ldr r0, =gUnknown_03005DAC
	ldr r1, =sub_818DEF4
	str r1, [r0]
	ldr r0, =c2_exit_to_overworld_2_switch
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_leave_maybe_2

	thumb_func_start unknown_ItemMenu_Confirm2
unknown_ItemMenu_Confirm2: @ 81ADEDC
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r1, =gScriptResult
	movs r0, 0x1
	strh r0, [r1]
	bl bag_menu_remove_some_window
	adds r0, r4, 0
	bl unknown_ItemMenu_Confirm
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end unknown_ItemMenu_Confirm2

	thumb_func_start bag_menu_leave_maybe
bag_menu_leave_maybe: @ 81ADF00
	push {lr}
	ldr r0, =gUnknown_03005DAC
	ldr r1, =sub_818E564
	str r1, [r0]
	ldr r0, =c2_exit_to_overworld_2_switch
	bl SetMainCallback2
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_leave_maybe

	thumb_func_start bag_menu_print_pocket_names
bag_menu_print_pocket_names: @ 81ADF20
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x1C
	adds r4, r0, 0
	mov r8, r1
	movs r0, 0
	movs r1, 0
	str r0, [sp, 0x14]
	str r1, [sp, 0x18]
	ldr r1, =0x00ffffff
	ldr r0, [sp, 0x14]
	ands r0, r1
	movs r1, 0x80
	lsls r1, 21
	orrs r0, r1
	str r0, [sp, 0x14]
	ldr r1, =0xffffff00
	ldr r0, [sp, 0x18]
	ands r0, r1
	movs r1, 0x2
	orrs r0, r1
	str r0, [sp, 0x18]
	add r0, sp, 0x14
	bl AddWindow
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r6, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x1
	adds r1, r4, 0
	movs r2, 0x40
	bl GetStringCenterAlignXOffset
	lsls r3, r0, 24
	lsrs r3, 24
	movs r7, 0x1
	str r7, [sp]
	movs r5, 0
	str r5, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0xFF
	mov r9, r0
	str r0, [sp, 0xC]
	str r7, [sp, 0x10]
	adds r0, r6, 0
	movs r1, 0x1
	adds r2, r4, 0
	bl bag_menu_print
	mov r2, r8
	cmp r2, 0
	beq _081ADFBA
	movs r0, 0x1
	mov r1, r8
	movs r2, 0x40
	bl GetStringCenterAlignXOffset
	adds r3, r0, 0
	adds r3, 0x40
	lsls r3, 24
	lsrs r3, 24
	str r7, [sp]
	str r5, [sp, 0x4]
	str r5, [sp, 0x8]
	mov r0, r9
	str r0, [sp, 0xC]
	str r7, [sp, 0x10]
	adds r0, r6, 0
	movs r1, 0x1
	mov r2, r8
	bl bag_menu_print
_081ADFBA:
	adds r0, r6, 0
	movs r1, 0x7
	bl GetWindowAttribute
	ldr r1, =gUnknown_0203CE54
	ldr r1, [r1]
	ldr r2, =0x00000844
	adds r1, r2
	ldr r2, =0x04000100
	bl CpuSet
	adds r0, r6, 0
	bl RemoveWindow
	add sp, 0x1C
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_print_pocket_names

	thumb_func_start bag_menu_copy_pocket_name_to_window
bag_menu_copy_pocket_name_to_window: @ 81ADFF8
	push {r4-r7,lr}
	adds r7, r0, 0
	cmp r7, 0x8
	bls _081AE002
	movs r7, 0x8
_081AE002:
	ldr r0, =gUnknown_0203CE54
	ldr r4, [r0]
	ldr r0, =0x00000844
	adds r4, r0
	movs r0, 0x2
	movs r1, 0x7
	bl GetWindowAttribute
	adds r5, r0, 0
	lsls r0, r7, 5
	adds r0, r4, r0
	ldr r6, =0x04000040
	adds r1, r5, 0
	adds r2, r6, 0
	bl CpuSet
	adds r0, r7, 0
	adds r0, 0x10
	lsls r0, 5
	adds r4, r0
	movs r0, 0x80
	lsls r0, 1
	adds r5, r0
	adds r0, r4, 0
	adds r1, r5, 0
	adds r2, r6, 0
	bl CpuSet
	movs r0, 0x2
	movs r1, 0x2
	bl CopyWindowToVram
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_copy_pocket_name_to_window

	thumb_func_start setup_bag_menu_textboxes
setup_bag_menu_textboxes: @ 81AE054
	push {r4,lr}
	ldr r0, =gUnknown_08614174
	bl InitWindows
	bl DeactivateAllTextPrinters
	movs r0, 0
	movs r1, 0x1
	movs r2, 0xE0
	bl sub_809882C
	movs r0, 0
	movs r1, 0xA
	movs r2, 0xD0
	bl copy_textbox_border_tile_patterns_to_vram
	movs r0, 0xC0
	movs r1, 0x1
	bl sub_819A2BC
	ldr r0, =gUnknown_0860F074
	movs r1, 0xF0
	movs r2, 0x20
	bl LoadPalette
	movs r4, 0
_081AE088:
	adds r0, r4, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	adds r0, r4, 0
	bl PutWindowTilemap
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2
	bls _081AE088
	movs r0, 0
	bl schedule_bg_copy_tilemap_to_vram
	movs r0, 0x1
	bl schedule_bg_copy_tilemap_to_vram
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end setup_bag_menu_textboxes

	thumb_func_start bag_menu_print
bag_menu_print: @ 81AE0BC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x14
	mov r9, r3
	ldr r3, [sp, 0x30]
	ldr r4, [sp, 0x34]
	ldr r6, [sp, 0x38]
	ldr r5, [sp, 0x3C]
	mov r8, r5
	ldr r5, [sp, 0x40]
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	mov r7, r9
	lsls r7, 24
	lsrs r7, 24
	mov r9, r7
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r5, 24
	lsrs r5, 24
	str r4, [sp]
	str r6, [sp, 0x4]
	lsls r4, r5, 1
	adds r4, r5
	ldr r5, =gUnknown_08614164
	adds r4, r5
	str r4, [sp, 0x8]
	mov r4, r8
	lsls r4, 24
	asrs r4, 24
	str r4, [sp, 0xC]
	str r2, [sp, 0x10]
	mov r2, r9
	bl AddTextPrinterParametrized2
	add sp, 0x14
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_print

	thumb_func_start sub_81AE124
sub_81AE124: @ 81AE124
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0203CE54
	ldr r1, [r1]
	movs r2, 0x81
	lsls r2, 4
	adds r1, r2
	adds r1, r0
	ldrb r0, [r1]
	bx lr
	.pool
	thumb_func_end sub_81AE124

	thumb_func_start bag_menu_add_window
bag_menu_add_window: @ 81AE13C
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, =gUnknown_0203CE54
	movs r3, 0x81
	lsls r3, 4
	adds r1, r2, r3
	ldr r0, [r0]
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, 0xFF
	bne _081AE172
	lsls r0, r2, 3
	ldr r1, =gUnknown_086141AC
	adds r0, r1
	bl AddWindow
	strb r0, [r4]
	ldrb r0, [r4]
	movs r1, 0
	movs r2, 0x1
	movs r3, 0xE
	bl SetWindowBorderStyle
	movs r0, 0x1
	bl schedule_bg_copy_tilemap_to_vram
_081AE172:
	ldrb r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end bag_menu_add_window

	thumb_func_start bag_menu_remove_window
bag_menu_remove_window: @ 81AE184
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0203CE54
	movs r2, 0x81
	lsls r2, 4
	adds r0, r2
	ldr r1, [r1]
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq _081AE1B8
	movs r1, 0
	bl sub_8198070
	ldrb r0, [r4]
	bl ClearWindowTilemap
	ldrb r0, [r4]
	bl RemoveWindow
	movs r0, 0x1
	bl schedule_bg_copy_tilemap_to_vram
	movs r0, 0xFF
	strb r0, [r4]
_081AE1B8:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_remove_window

	thumb_func_start AddItemMessageWindow
@ u8 AddItemMessageWindow(u8 a1)
AddItemMessageWindow: @ 81AE1C4
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, =gUnknown_0203CE54
	movs r3, 0x81
	lsls r3, 4
	adds r1, r2, r3
	ldr r0, [r0]
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, 0xFF
	bne _081AE1E8
	lsls r0, r2, 3
	ldr r1, =gUnknown_086141AC
	adds r0, r1
	bl AddWindow
	strb r0, [r4]
_081AE1E8:
	ldrb r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end AddItemMessageWindow

	thumb_func_start bag_menu_RemoveBagItem_message_window
bag_menu_RemoveBagItem_message_window: @ 81AE1F8
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_0203CE54
	movs r2, 0x81
	lsls r2, 4
	adds r0, r2
	ldr r1, [r1]
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq _081AE22C
	movs r1, 0
	bl sub_8197DF8
	ldrb r0, [r4]
	bl ClearWindowTilemap
	ldrb r0, [r4]
	bl RemoveWindow
	movs r0, 0x1
	bl schedule_bg_copy_tilemap_to_vram
	movs r0, 0xFF
	strb r0, [r4]
_081AE22C:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_RemoveBagItem_message_window

	thumb_func_start bag_menu_yes_no
bag_menu_yes_no: @ 81AE238
	push {lr}
	sub sp, 0x10
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 21
	ldr r3, =gUnknown_086141AC
	adds r1, r3
	movs r3, 0x2
	str r3, [sp]
	movs r3, 0x1
	str r3, [sp, 0x4]
	movs r3, 0xE
	str r3, [sp, 0x8]
	str r2, [sp, 0xC]
	movs r2, 0x1
	movs r3, 0
	bl CreateYesNoMenuWithCallbacks
	add sp, 0x10
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_yes_no

	thumb_func_start bag_menu_AddMoney_window
bag_menu_AddMoney_window: @ 81AE268
	push {r4,lr}
	movs r0, 0x9
	bl bag_menu_add_window
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0x92
	lsls r1, 3
	adds r0, r1
	bl GetMoney
	adds r3, r0, 0
	adds r0, r4, 0
	movs r1, 0x1
	movs r2, 0xE
	bl set_window_border_style_and_print_money_box
	movs r0, 0x13
	movs r1, 0xB
	bl AddMoneyLabelObject
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end bag_menu_AddMoney_window

	thumb_func_start bag_menu_remove_money_window
bag_menu_remove_money_window: @ 81AE2A4
	push {lr}
	movs r0, 0x9
	bl bag_menu_remove_window
	bl RemoveMoneyLabelObject
	pop {r0}
	bx r0
	thumb_func_end bag_menu_remove_money_window

	thumb_func_start bag_menu_prepare_tmhm_move_window
bag_menu_prepare_tmhm_move_window: @ 81AE2B4
	push {lr}
	movs r0, 0x3
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x3
	movs r1, 0x13
	movs r2, 0
	movs r3, 0
	bl blit_move_info_icon
	movs r0, 0x3
	movs r1, 0x14
	movs r2, 0
	movs r3, 0xC
	bl blit_move_info_icon
	movs r0, 0x3
	movs r1, 0x15
	movs r2, 0
	movs r3, 0x18
	bl blit_move_info_icon
	movs r0, 0x3
	movs r1, 0x16
	movs r2, 0
	movs r3, 0x24
	bl blit_move_info_icon
	movs r0, 0x3
	movs r1, 0x2
	bl CopyWindowToVram
	pop {r0}
	bx r0
	thumb_func_end bag_menu_prepare_tmhm_move_window

	thumb_func_start PrintTMHMMoveData
PrintTMHMMoveData: @ 81AE2FC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x14
	lsls r0, 16
	lsrs r4, r0, 16
	movs r0, 0x4
	movs r1, 0
	bl FillWindowPixelBuffer
	cmp r4, 0
	bne _081AE354
	movs r4, 0
	movs r5, 0
_081AE31A:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 26
	lsrs r0, 24
	str r0, [sp]
	str r5, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r0, 0xFF
	str r0, [sp, 0xC]
	movs r0, 0x4
	str r0, [sp, 0x10]
	movs r1, 0x1
	ldr r2, =gUnknown_085E8D45
	movs r3, 0x7
	bl bag_menu_print
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _081AE31A
	movs r0, 0x4
	movs r1, 0x2
	bl CopyWindowToVram
	b _081AE440
	.pool
_081AE354:
	adds r0, r4, 0
	bl ItemIdToBattleMoveId
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r1, =gBattleMoves
	lsls r0, r7, 1
	adds r0, r7
	lsls r0, 2
	adds r5, r0, r1
	ldrb r1, [r5, 0x2]
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x4
	movs r2, 0
	movs r3, 0
	bl blit_move_info_icon
	ldrb r0, [r5, 0x1]
	cmp r0, 0x1
	bhi _081AE38C
	ldr r2, =gUnknown_085E8D45
	b _081AE39C
	.pool
_081AE38C:
	ldr r4, =gStringVar1
	ldrb r1, [r5, 0x1]
	adds r0, r4, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r2, r4, 0
_081AE39C:
	movs r0, 0xC
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r0, 0xFF
	str r0, [sp, 0xC]
	movs r0, 0x4
	str r0, [sp, 0x10]
	movs r1, 0x1
	movs r3, 0x7
	bl bag_menu_print
	ldr r2, =gBattleMoves
	lsls r1, r7, 1
	adds r0, r1, r7
	lsls r0, 2
	adds r2, r0, r2
	ldrb r0, [r2, 0x3]
	adds r6, r1, 0
	cmp r0, 0
	bne _081AE3D8
	ldr r2, =gUnknown_085E8D45
	b _081AE3E8
	.pool
_081AE3D8:
	ldr r4, =gStringVar1
	ldrb r1, [r2, 0x3]
	adds r0, r4, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r2, r4, 0
_081AE3E8:
	movs r0, 0x18
	str r0, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0xFF
	mov r8, r0
	str r0, [sp, 0xC]
	movs r0, 0x4
	mov r9, r0
	str r0, [sp, 0x10]
	movs r1, 0x1
	movs r3, 0x7
	bl bag_menu_print
	ldr r5, =gStringVar1
	ldr r1, =gBattleMoves
	adds r0, r6, r7
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x4]
	adds r0, r5, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	movs r0, 0x24
	str r0, [sp]
	str r4, [sp, 0x4]
	str r4, [sp, 0x8]
	mov r0, r8
	str r0, [sp, 0xC]
	mov r0, r9
	str r0, [sp, 0x10]
	movs r0, 0x4
	movs r1, 0x1
	adds r2, r5, 0
	movs r3, 0x7
	bl bag_menu_print
	movs r0, 0x4
	movs r1, 0x2
	bl CopyWindowToVram
_081AE440:
	add sp, 0x14
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end PrintTMHMMoveData

	thumb_func_start ListMenuDummyTask
@ void ListMenuDummyTask(u8 taskId)
ListMenuDummyTask: @ 81AE458
	bx lr
	thumb_func_end ListMenuDummyTask

	thumb_func_start DoMysteryGiftListMenu
@ int DoMysteryGiftListMenu(struct WindowTemplate *windowTemplate, struct ListMenuTemplate *listMenuTemplate, int a3, int a4, int a5)
DoMysteryGiftListMenu: @ 81AE45C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	mov r12, r0
	str r1, [sp]
	ldr r0, [sp, 0x28]
	lsls r2, 24
	lsrs r6, r2, 24
	mov r10, r6
	lsls r3, 16
	lsrs r7, r3, 16
	str r7, [sp, 0x4]
	lsls r0, 16
	mov r8, r0
	lsrs r0, 16
	mov r9, r0
	ldr r5, =gUnknown_0203CE84
	ldrb r4, [r5, 0x4]
	cmp r4, 0x1
	beq _081AE4F4
	cmp r4, 0x1
	ble _081AE492
	cmp r4, 0x2
	beq _081AE558
_081AE492:
	mov r0, r12
	bl AddWindow
	strb r0, [r5, 0x5]
	cmp r6, 0x1
	beq _081AE4B0
	cmp r6, 0x2
	bne _081AE4C0
	ldrb r0, [r5, 0x5]
	mov r1, r9
	lsls r2, r1, 24
	lsrs r2, 24
	adds r1, r7, 0
	bl sub_809882C
_081AE4B0:
	ldrb r0, [r5, 0x5]
	mov r3, r8
	lsrs r2, r3, 20
	lsls r2, 24
	lsrs r2, 24
	ldr r1, [sp, 0x4]
	bl sub_8098858
_081AE4C0:
	ldr r0, =gUnknown_03006310
	adds r2, r0, 0
	ldr r1, [sp]
	ldm r1!, {r3-r5}
	stm r2!, {r3-r5}
	ldm r1!, {r3-r5}
	stm r2!, {r3-r5}
	ldr r4, =gUnknown_0203CE84
	ldrb r1, [r4, 0x5]
	strb r1, [r0, 0x10]
	movs r1, 0
	movs r2, 0
	bl ListMenuInit
	strb r0, [r4, 0x6]
	ldrb r0, [r4, 0x5]
	movs r1, 0x1
	bl CopyWindowToVram
	movs r0, 0x1
	strb r0, [r4, 0x4]
	b _081AE570
	.pool
_081AE4F4:
	ldrb r0, [r5, 0x6]
	bl ListMenuHandleInput
	str r0, [r5]
	ldr r1, =gMain
	ldrh r0, [r1, 0x2E]
	ands r4, r0
	cmp r4, 0
	beq _081AE50A
	movs r0, 0x2
	strb r0, [r5, 0x4]
_081AE50A:
	ldrh r1, [r1, 0x2E]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081AE51E
	movs r0, 0x2
	negs r0, r0
	str r0, [r5]
	movs r0, 0x2
	strb r0, [r5, 0x4]
_081AE51E:
	ldrb r0, [r5, 0x4]
	cmp r0, 0x2
	bne _081AE570
	cmp r6, 0
	bne _081AE534
	ldrb r0, [r5, 0x5]
	bl ClearWindowTilemap
	b _081AE546
	.pool
_081AE534:
	mov r4, r10
	cmp r4, 0
	blt _081AE546
	cmp r4, 0x2
	bgt _081AE546
	ldrb r0, [r5, 0x5]
	movs r1, 0
	bl sub_819746C
_081AE546:
	ldr r0, =gUnknown_0203CE84
	ldrb r0, [r0, 0x5]
	movs r1, 0x1
	bl CopyWindowToVram
	b _081AE570
	.pool
_081AE558:
	ldrb r0, [r5, 0x6]
	movs r1, 0
	movs r2, 0
	bl sub_81AE6C8
	ldrb r0, [r5, 0x5]
	bl RemoveWindow
	movs r0, 0
	strb r0, [r5, 0x4]
	ldr r0, [r5]
	b _081AE574
_081AE570:
	movs r0, 0x1
	negs r0, r0
_081AE574:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end DoMysteryGiftListMenu

	thumb_func_start ListMenuInit
@ u8 ListMenuInit(struct ListMenuTemplate *listMenuTemplate, u16 scrollOffset, u16 selectedRow)
ListMenuInit: @ 81AE584
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r1, 16
	lsrs r1, 16
	lsls r2, 16
	lsrs r2, 16
	bl ListMenuInitInternal
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldrb r0, [r5, 0x10]
	bl PutWindowTilemap
	ldrb r0, [r5, 0x10]
	movs r1, 0x2
	bl CopyWindowToVram
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end ListMenuInit

	thumb_func_start Unused_ListMenuInit2
@ u8 Unused_ListMenuInit2(struct ListMenuTemplate *listMenuTemplate, int a2, u16 scrollOffset, u16 selectedRow)
Unused_ListMenuInit2: @ 81AE5B0
	push {r4-r7,lr}
	sub sp, 0x8
	adds r6, r0, 0
	adds r4, r1, 0
	adds r1, r2, 0
	adds r2, r3, 0
	lsls r1, 16
	lsrs r1, 16
	lsls r2, 16
	lsrs r2, 16
	bl ListMenuInitInternal
	lsls r0, 24
	lsrs r7, r0, 24
	ldrb r0, [r4, 0x4]
	cmp r0, 0xFF
	beq _081AE5F0
	adds r5, r4, 0
_081AE5D4:
	ldrb r0, [r6, 0x10]
	ldrb r1, [r5]
	ldrb r2, [r5, 0x1]
	ldrb r3, [r5, 0x2]
	ldrb r4, [r5, 0x3]
	str r4, [sp]
	ldrb r4, [r5, 0x4]
	str r4, [sp, 0x4]
	bl PutWindowRectTilemapOverridePalette
	adds r5, 0x8
	ldrb r0, [r5, 0x4]
	cmp r0, 0xFF
	bne _081AE5D4
_081AE5F0:
	ldrb r0, [r6, 0x10]
	movs r1, 0x2
	bl CopyWindowToVram
	adds r0, r7, 0
	add sp, 0x8
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end Unused_ListMenuInit2

	thumb_func_start ListMenuHandleInput
@ int ListMenuHandleInput(u8 taskId)
ListMenuHandleInput: @ 81AE604
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r3, r1, r0
	ldr r2, =gMain
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _081AE638
	ldrh r0, [r3, 0x18]
	ldrh r1, [r3, 0x1A]
	adds r0, r1
	ldr r1, [r3]
	lsls r0, 3
	adds r0, r1
	ldr r0, [r0, 0x4]
	b _081AE6C2
	.pool
_081AE638:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _081AE646
	movs r0, 0x2
	negs r0, r0
	b _081AE6C2
_081AE646:
	ldrh r1, [r2, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _081AE65A
	adds r0, r3, 0
	movs r1, 0x1
	movs r2, 0x1
	movs r3, 0
	b _081AE6BA
_081AE65A:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _081AE66A
	adds r0, r3, 0
	movs r1, 0x1
	movs r2, 0x1
	b _081AE6B8
_081AE66A:
	ldrb r0, [r3, 0x16]
	lsrs r0, 6
	cmp r0, 0x1
	beq _081AE680
	cmp r0, 0x1
	ble _081AE67A
	cmp r0, 0x2
	beq _081AE68C
_081AE67A:
	movs r2, 0
	movs r0, 0
	b _081AE6A0
_081AE680:
	movs r0, 0x20
	ands r0, r1
	lsls r0, 16
	lsrs r2, r0, 16
	movs r0, 0x10
	b _081AE69A
_081AE68C:
	movs r0, 0x80
	lsls r0, 2
	ands r0, r1
	lsls r0, 16
	lsrs r2, r0, 16
	movs r0, 0x80
	lsls r0, 1
_081AE69A:
	ands r0, r1
	lsls r0, 16
	lsrs r0, 16
_081AE6A0:
	cmp r2, 0
	beq _081AE6AE
	ldrb r2, [r3, 0xE]
	adds r0, r3, 0
	movs r1, 0x1
	movs r3, 0
	b _081AE6BA
_081AE6AE:
	cmp r0, 0
	beq _081AE6BE
	ldrb r2, [r3, 0xE]
	adds r0, r3, 0
	movs r1, 0x1
_081AE6B8:
	movs r3, 0x1
_081AE6BA:
	bl ListMenuChangeSelection
_081AE6BE:
	movs r0, 0x1
	negs r0, r0
_081AE6C2:
	pop {r1}
	bx r1
	thumb_func_end ListMenuHandleInput

	thumb_func_start sub_81AE6C8
sub_81AE6C8: @ 81AE6C8
	push {r4,lr}
	adds r3, r1, 0
	lsls r0, 24
	lsrs r0, 24
	adds r4, r0, 0
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r1, r0, r1
	cmp r3, 0
	beq _081AE6E4
	ldrh r0, [r1, 0x18]
	strh r0, [r3]
_081AE6E4:
	cmp r2, 0
	beq _081AE6EC
	ldrh r0, [r1, 0x1A]
	strh r0, [r2]
_081AE6EC:
	ldrb r0, [r1, 0x1E]
	cmp r0, 0xFF
	beq _081AE6FC
	ldrb r1, [r1, 0x17]
	lsrs r1, 6
	subs r1, 0x2
	bl ListMenuRemoveCursorObject
_081AE6FC:
	adds r0, r4, 0
	bl DestroyTask
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AE6C8

	thumb_func_start sub_81AE70C
sub_81AE70C: @ 81AE70C
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	ldr r0, =gTasks + 0x8
	adds r4, r0
	ldrb r0, [r4, 0x10]
	ldrb r2, [r4, 0x15]
	lsls r2, 28
	lsrs r1, r2, 4
	orrs r1, r2
	lsrs r1, 24
	bl FillWindowPixelBuffer
	ldrh r1, [r4, 0x18]
	ldrh r3, [r4, 0xE]
	adds r0, r4, 0
	movs r2, 0
	bl ListMenuPrintEntries
	adds r0, r4, 0
	bl ListMenuDrawCursor
	ldrb r0, [r4, 0x10]
	movs r1, 0x2
	bl CopyWindowToVram
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AE70C

	thumb_func_start sub_81AE750
sub_81AE750: @ 81AE750
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	ldr r0, =gTasks + 0x8
	adds r4, r0
	lsrs r1, 20
	ldrb r6, [r4, 0x14]
	movs r5, 0xF
	adds r0, r5, 0
	ands r0, r6
	orrs r0, r1
	strb r0, [r4, 0x14]
	ands r2, r5
	ldrb r1, [r4, 0x15]
	movs r0, 0x10
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	lsrs r3, 20
	ands r0, r5
	orrs r0, r3
	strb r0, [r4, 0x15]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AE750

	thumb_func_start sub_81AE794
sub_81AE794: @ 81AE794
	push {r4,r5,lr}
	adds r3, r1, 0
	adds r5, r2, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	ldr r0, =gTasks + 0x8
	adds r4, r0
	ldrb r0, [r4, 0x10]
	movs r1, 0x1
	adds r2, r3, 0
	bl SetWindowAttribute
	ldrb r0, [r4, 0x10]
	movs r1, 0x2
	adds r2, r5, 0
	bl SetWindowAttribute
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AE794

	thumb_func_start sub_81AE7D0
sub_81AE7D0: @ 81AE7D0
	push {r4-r7,lr}
	sub sp, 0x20
	mov r12, r2
	ldr r5, [sp, 0x34]
	lsls r3, 16
	lsrs r3, 16
	adds r4, r3, 0
	mov r3, sp
	ldm r0!, {r2,r6,r7}
	stm r3!, {r2,r6,r7}
	ldm r0!, {r2,r6,r7}
	stm r3!, {r2,r6,r7}
	mov r0, sp
	movs r3, 0
	strh r1, [r0, 0x18]
	mov r1, r12
	strh r1, [r0, 0x1A]
	strb r3, [r0, 0x1C]
	strb r3, [r0, 0x1D]
	cmp r4, 0x40
	bne _081AE804
	movs r1, 0
	movs r2, 0x1
	movs r3, 0
	bl ListMenuChangeSelection
_081AE804:
	cmp r4, 0x80
	bne _081AE814
	mov r0, sp
	movs r1, 0
	movs r2, 0x1
	movs r3, 0x1
	bl ListMenuChangeSelection
_081AE814:
	cmp r5, 0
	beq _081AE81E
	mov r0, sp
	ldrh r0, [r0, 0x18]
	strh r0, [r5]
_081AE81E:
	ldr r2, [sp, 0x38]
	cmp r2, 0
	beq _081AE82A
	mov r0, sp
	ldrh r0, [r0, 0x1A]
	strh r0, [r2]
_081AE82A:
	movs r0, 0x1
	negs r0, r0
	add sp, 0x20
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81AE7D0

	thumb_func_start sub_81AE838
sub_81AE838: @ 81AE838
	push {lr}
	adds r2, r1, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r1, r0
	cmp r2, 0
	beq _081AE856
	ldrh r0, [r1, 0x1A]
	ldrh r1, [r1, 0x18]
	adds r0, r1
	strh r0, [r2]
_081AE856:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AE838

	thumb_func_start get_coro_args_x18_x1A
get_coro_args_x18_x1A: @ 81AE860
	push {lr}
	adds r3, r1, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r1, r0
	cmp r3, 0
	beq _081AE87A
	ldrh r0, [r1, 0x18]
	strh r0, [r3]
_081AE87A:
	cmp r2, 0
	beq _081AE882
	ldrh r0, [r1, 0x1A]
	strh r0, [r2]
_081AE882:
	pop {r0}
	bx r0
	.pool
	thumb_func_end get_coro_args_x18_x1A

	thumb_func_start ListMenuGetYCoordForPrintingArrowCursor
@ u8 ListMenuGetYCoordForPrintingArrowCursor(u8 taskId)
ListMenuGetYCoordForPrintingArrowCursor: @ 81AE88C
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	ldr r0, =gTasks + 0x8
	adds r4, r0
	ldrb r0, [r4, 0x17]
	lsls r0, 26
	lsrs r0, 26
	movs r1, 0x1
	bl GetFontAttribute
	ldrb r1, [r4, 0x16]
	lsls r1, 26
	lsrs r1, 29
	adds r0, r1
	lsls r0, 24
	lsrs r0, 24
	ldrh r1, [r4, 0x1A]
	adds r2, r1, 0
	muls r2, r0
	adds r1, r2, 0
	ldrb r0, [r4, 0x14]
	lsls r0, 28
	lsrs r0, 28
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end ListMenuGetYCoordForPrintingArrowCursor

	thumb_func_start ListMenuInitInternal
@ u8 ListMenuInitInternal(struct ListMenuTemplate *listMenuTemplate, u16 scrollOffset, u16 selectedRow)
ListMenuInitInternal: @ 81AE8D4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r4, r0, 0
	adds r5, r1, 0
	adds r6, r2, 0
	lsls r5, 16
	lsrs r5, 16
	lsls r6, 16
	lsrs r6, 16
	ldr r0, =ListMenuDummyTask
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r0, 2
	add r0, r8
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r7, r0, r1
	adds r0, r7, 0
	ldm r4!, {r1-r3}
	stm r0!, {r1-r3}
	ldm r4!, {r1-r3}
	stm r0!, {r1-r3}
	movs r1, 0
	strh r5, [r7, 0x18]
	strh r6, [r7, 0x1A]
	strb r1, [r7, 0x1C]
	strb r1, [r7, 0x1D]
	movs r0, 0xFF
	strb r0, [r7, 0x1E]
	strb r1, [r7, 0x1F]
	ldr r3, =gUnknown_03006300
	ldrb r1, [r7, 0x14]
	movs r5, 0xF
	lsrs r1, 4
	ldrb r4, [r3]
	movs r2, 0x10
	negs r2, r2
	adds r0, r2, 0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r7, 0x15]
	lsls r1, 28
	lsrs r1, 24
	ands r0, r5
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r7, 0x15]
	lsrs r0, 4
	ands r5, r0
	ldrb r0, [r3, 0x1]
	ands r2, r0
	orrs r2, r5
	strb r2, [r3, 0x1]
	ldrb r1, [r7, 0x16]
	lsls r1, 29
	lsrs r1, 17
	ldr r0, [r3]
	ldr r2, =0xfffc0fff
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	ldrb r0, [r7, 0x17]
	lsls r0, 26
	lsrs r0, 26
	strb r0, [r3, 0x3]
	ldrh r0, [r7, 0xC]
	ldrh r1, [r7, 0xE]
	cmp r0, r1
	bcs _081AE96C
	strh r0, [r7, 0xE]
_081AE96C:
	ldrb r0, [r7, 0x10]
	ldrb r2, [r7, 0x15]
	lsls r2, 28
	lsrs r1, r2, 4
	orrs r1, r2
	lsrs r1, 24
	bl FillWindowPixelBuffer
	ldrh r1, [r7, 0x18]
	ldrh r3, [r7, 0xE]
	adds r0, r7, 0
	movs r2, 0
	bl ListMenuPrintEntries
	adds r0, r7, 0
	bl ListMenuDrawCursor
	adds r0, r7, 0
	movs r1, 0x1
	bl ListMenuCallSelectionChangedCallback
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end ListMenuInitInternal

	thumb_func_start ListMenuPrint
@ void ListMenuPrint(struct ListMenu *listMenu, u8 *str, u8 x, u8 y)
ListMenuPrint: @ 81AE9B4
	push {r4-r7,lr}
	sub sp, 0x18
	adds r4, r0, 0
	adds r6, r1, 0
	lsls r2, 24
	lsrs r7, r2, 24
	lsls r3, 24
	lsrs r3, 24
	mov r12, r3
	ldr r5, =gUnknown_03006300
	ldrb r1, [r5, 0x3]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0
	beq _081AEA20
	add r1, sp, 0x14
	ldr r2, [r5]
	lsls r0, r2, 24
	lsrs r0, 28
	movs r3, 0
	strb r0, [r1]
	lsls r0, r2, 28
	lsrs r0, 28
	strb r0, [r1, 0x1]
	lsls r0, r2, 20
	lsrs r0, 28
	strb r0, [r1, 0x2]
	ldrb r0, [r4, 0x10]
	lsls r1, r2, 1
	lsrs r1, 25
	lsls r2, 14
	lsrs r2, 26
	str r2, [sp]
	str r3, [sp, 0x4]
	add r2, sp, 0x14
	str r2, [sp, 0x8]
	movs r2, 0x1
	negs r2, r2
	str r2, [sp, 0xC]
	str r6, [sp, 0x10]
	adds r2, r7, 0
	mov r3, r12
	bl AddTextPrinterParametrized2
	ldrb r1, [r5, 0x3]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r5, 0x3]
	b _081AEA5E
	.pool
_081AEA20:
	add r2, sp, 0x14
	ldrb r1, [r4, 0x15]
	lsls r0, r1, 28
	lsrs r0, 28
	strb r0, [r2]
	ldrb r0, [r4, 0x14]
	lsrs r0, 4
	strb r0, [r2, 0x1]
	adds r0, r2, 0
	lsls r1, 24
	lsrs r1, 28
	strb r1, [r0, 0x2]
	ldrb r0, [r4, 0x10]
	ldrb r1, [r4, 0x17]
	lsls r1, 26
	lsrs r1, 26
	ldrb r2, [r4, 0x16]
	lsls r2, 29
	lsrs r2, 29
	str r2, [sp]
	str r3, [sp, 0x4]
	add r2, sp, 0x14
	str r2, [sp, 0x8]
	movs r2, 0x1
	negs r2, r2
	str r2, [sp, 0xC]
	str r6, [sp, 0x10]
	adds r2, r7, 0
	mov r3, r12
	bl AddTextPrinterParametrized2
_081AEA5E:
	add sp, 0x18
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end ListMenuPrint

	thumb_func_start ListMenuPrintEntries
@ void ListMenuPrintEntries(struct ListMenu *listMenu, u16 startIndex, u16 yOffset, u16 count)
ListMenuPrintEntries: @ 81AEA68
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	adds r4, r0, 0
	lsls r1, 16
	lsrs r1, 16
	mov r9, r1
	lsls r2, 16
	lsrs r2, 16
	str r2, [sp]
	lsls r3, 16
	lsrs r3, 16
	mov r10, r3
	ldrb r0, [r4, 0x17]
	lsls r0, 26
	lsrs r0, 26
	movs r1, 0x1
	bl GetFontAttribute
	ldrb r1, [r4, 0x16]
	lsls r1, 26
	lsrs r1, 29
	adds r0, r1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	movs r0, 0
	mov r8, r0
	cmp r8, r10
	bge _081AEB10
_081AEAAA:
	ldr r0, [r4]
	mov r2, r9
	lsls r1, r2, 3
	adds r0, r1, r0
	ldr r2, [r0, 0x4]
	movs r0, 0x3
	negs r0, r0
	adds r5, r1, 0
	cmp r2, r0
	beq _081AEAC2
	ldrb r6, [r4, 0x12]
	b _081AEAC4
_081AEAC2:
	ldrb r6, [r4, 0x11]
_081AEAC4:
	ldr r0, [sp]
	add r0, r8
	ldr r2, [sp, 0x4]
	adds r1, r0, 0
	muls r1, r2
	ldrb r0, [r4, 0x14]
	lsls r0, 28
	lsrs r0, 28
	adds r0, r1
	lsls r0, 24
	lsrs r2, r0, 24
	adds r7, r2, 0
	ldr r3, [r4, 0x8]
	cmp r3, 0
	beq _081AEAEE
	ldrb r0, [r4, 0x10]
	ldr r1, [r4]
	adds r1, r5, r1
	ldr r1, [r1, 0x4]
	bl _call_via_r3
_081AEAEE:
	ldr r0, [r4]
	adds r0, r5, r0
	ldr r1, [r0]
	adds r0, r4, 0
	adds r2, r6, 0
	adds r3, r7, 0
	bl ListMenuPrint
	mov r0, r9
	adds r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	mov r9, r0
	movs r0, 0x1
	add r8, r0
	cmp r8, r10
	blt _081AEAAA
_081AEB10:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end ListMenuPrintEntries

	thumb_func_start ListMenuDrawCursor
@ void ListMenuDrawCursor(struct ListMenu *listMenu)
ListMenuDrawCursor: @ 81AEB20
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r6, r0, 0
	ldrb r0, [r6, 0x17]
	lsls r0, 26
	lsrs r0, 26
	movs r1, 0x1
	bl GetFontAttribute
	ldrb r1, [r6, 0x16]
	lsls r1, 26
	lsrs r1, 29
	adds r0, r1
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r6, 0x13]
	mov r8, r1
	ldrh r1, [r6, 0x1A]
	muls r1, r0
	ldrb r0, [r6, 0x14]
	lsls r0, 28
	lsrs r0, 28
	adds r0, r1
	lsls r0, 24
	lsrs r7, r0, 24
	ldrb r0, [r6, 0x17]
	lsrs r0, 6
	cmp r0, 0x1
	beq _081AEC0C
	cmp r0, 0x1
	bgt _081AEB66
	cmp r0, 0
	beq _081AEB70
	b _081AEC0C
_081AEB66:
	cmp r0, 0x2
	beq _081AEB84
	cmp r0, 0x3
	beq _081AEBCC
	b _081AEC0C
_081AEB70:
	ldr r1, =gUnknown_085E8D60
	adds r0, r6, 0
	mov r2, r8
	adds r3, r7, 0
	bl ListMenuPrint
	b _081AEC0C
	.pool
_081AEB84:
	ldrb r0, [r6, 0x1E]
	cmp r0, 0xFF
	bne _081AEB94
	adds r0, r6, 0
	movs r1, 0
	bl ListMenuAddCursorObject
	strb r0, [r6, 0x1E]
_081AEB94:
	ldrb r5, [r6, 0x1E]
	ldrb r0, [r6, 0x10]
	movs r1, 0x1
	bl GetWindowAttribute
	adds r4, r0, 0
	lsls r4, 19
	ldr r0, =0xffff0000
	adds r4, r0
	lsrs r4, 16
	ldrb r0, [r6, 0x10]
	movs r1, 0x2
	bl GetWindowAttribute
	adds r2, r0, 0
	lsls r2, 3
	adds r2, r7
	subs r2, 0x1
	lsls r2, 16
	lsrs r2, 16
	adds r0, r5, 0
	adds r1, r4, 0
	movs r3, 0
	bl ListMenuUpdateCursorObject
	b _081AEC0C
	.pool
_081AEBCC:
	ldrb r0, [r6, 0x1E]
	cmp r0, 0xFF
	bne _081AEBDC
	adds r0, r6, 0
	movs r1, 0x1
	bl ListMenuAddCursorObject
	strb r0, [r6, 0x1E]
_081AEBDC:
	ldrb r5, [r6, 0x1E]
	ldrb r0, [r6, 0x10]
	movs r1, 0x1
	bl GetWindowAttribute
	adds r4, r0, 0
	lsls r4, 3
	add r4, r8
	lsls r4, 16
	lsrs r4, 16
	ldrb r0, [r6, 0x10]
	movs r1, 0x2
	bl GetWindowAttribute
	adds r2, r0, 0
	lsls r2, 3
	adds r2, r7
	lsls r2, 16
	lsrs r2, 16
	adds r0, r5, 0
	adds r1, r4, 0
	movs r3, 0x1
	bl ListMenuUpdateCursorObject
_081AEC0C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end ListMenuDrawCursor

	thumb_func_start ListMenuAddCursorObject
ListMenuAddCursorObject: @ 81AEC18
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r0, 0
	adds r5, r1, 0
	mov r1, sp
	movs r0, 0
	strb r0, [r1]
	movs r0, 0xA0
	strb r0, [r1, 0x1]
	ldrb r0, [r4, 0x10]
	movs r1, 0x3
	bl GetWindowAttribute
	mov r1, sp
	lsls r0, 3
	adds r0, 0x2
	strh r0, [r1, 0x2]
	ldrb r0, [r4, 0x17]
	lsls r0, 26
	lsrs r0, 26
	movs r1, 0x1
	bl GetFontAttribute
	mov r1, sp
	lsls r0, 24
	lsrs r0, 24
	adds r0, 0x2
	strh r0, [r1, 0x4]
	movs r0, 0x80
	lsls r0, 7
	strh r0, [r1, 0x6]
	ldr r0, =0x0000ffff
	strh r0, [r1, 0x8]
	movs r0, 0xF
	strb r0, [r1, 0xA]
	mov r0, sp
	adds r1, r5, 0
	bl ListMenuAddCursorObjectInternal
	lsls r0, 24
	lsrs r0, 24
	add sp, 0xC
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end ListMenuAddCursorObject

	thumb_func_start ListMenuErasePrintedCursor
ListMenuErasePrintedCursor: @ 81AEC78
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	adds r7, r0, 0
	lsls r1, 16
	lsrs r1, 16
	mov r8, r1
	ldrb r1, [r7, 0x17]
	lsrs r0, r1, 6
	cmp r0, 0
	bne _081AECF4
	lsls r0, r1, 26
	lsrs r0, 26
	movs r1, 0x1
	bl GetFontAttribute
	adds r4, r0, 0
	ldrb r0, [r7, 0x16]
	lsls r0, 26
	lsrs r0, 29
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	ldrb r0, [r7, 0x17]
	lsls r0, 26
	lsrs r0, 26
	movs r1, 0
	bl GetMenuCursorDimensionByFont
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldrb r0, [r7, 0x17]
	lsls r0, 26
	lsrs r0, 26
	movs r1, 0x1
	bl GetMenuCursorDimensionByFont
	lsls r0, 24
	lsrs r0, 24
	ldrb r6, [r7, 0x10]
	ldrb r2, [r7, 0x15]
	lsls r2, 28
	lsrs r1, r2, 4
	orrs r1, r2
	lsrs r1, 24
	ldrb r2, [r7, 0x13]
	mov r3, r8
	muls r3, r4
	adds r4, r3, 0
	ldrb r3, [r7, 0x14]
	lsls r3, 28
	lsrs r3, 28
	adds r3, r4
	lsls r3, 16
	lsrs r3, 16
	str r5, [sp]
	str r0, [sp, 0x4]
	adds r0, r6, 0
	bl FillWindowPixelRect
_081AECF4:
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end ListMenuErasePrintedCursor

	thumb_func_start ListMenuUpdateSelectedRowIndexAndScrollOffset
@ u8 ListMenuUpdateSelectedRowIndexAndScrollOffset(int, bool8 movingDown)
ListMenuUpdateSelectedRowIndexAndScrollOffset: @ 81AED00
	push {r4-r6,lr}
	adds r4, r0, 0
	lsls r1, 24
	ldrh r3, [r4, 0x1A]
	ldrh r5, [r4, 0x18]
	cmp r1, 0
	bne _081AED74
	ldrh r0, [r4, 0xE]
	cmp r0, 0x1
	bne _081AED18
	movs r2, 0
	b _081AED2A
_081AED18:
	ldrh r0, [r4, 0xE]
	lsrs r2, r0, 1
	movs r1, 0x1
	ands r1, r0
	adds r2, r1
	subs r0, r2
	subs r0, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
_081AED2A:
	cmp r5, 0
	bne _081AED50
	cmp r3, 0
	beq _081AEDB6
	ldr r1, [r4]
	movs r2, 0x3
	negs r2, r2
_081AED38:
	subs r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	adds r0, r5, r3
	lsls r0, 3
	adds r0, r1
	ldr r0, [r0, 0x4]
	cmp r0, r2
	bne _081AEDBA
	cmp r3, 0
	bne _081AED38
	b _081AEDB6
_081AED50:
	cmp r3, r2
	bls _081AED70
	ldr r1, [r4]
	movs r6, 0x3
	negs r6, r6
_081AED5A:
	subs r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	adds r0, r5, r3
	lsls r0, 3
	adds r0, r1
	ldr r0, [r0, 0x4]
	cmp r0, r6
	bne _081AEDBA
	cmp r3, r2
	bhi _081AED5A
_081AED70:
	subs r0, r5, 0x1
	b _081AEDE2
_081AED74:
	ldrh r0, [r4, 0xE]
	cmp r0, 0x1
	bne _081AED7E
	movs r2, 0
	b _081AED88
_081AED7E:
	ldrh r0, [r4, 0xE]
	lsrs r2, r0, 1
	movs r1, 0x1
	ands r1, r0
	adds r2, r1
_081AED88:
	adds r1, r0, 0
	ldrh r0, [r4, 0xC]
	subs r0, r1
	cmp r5, r0
	bne _081AEDC0
	subs r0, r1, 0x1
	cmp r3, r0
	bge _081AEDB6
	ldr r2, [r4]
	movs r6, 0x3
	negs r6, r6
	adds r1, r0, 0
_081AEDA0:
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	adds r0, r5, r3
	lsls r0, 3
	adds r0, r2
	ldr r0, [r0, 0x4]
	cmp r0, r6
	bne _081AEDBA
	cmp r3, r1
	blt _081AEDA0
_081AEDB6:
	movs r0, 0
	b _081AEDE8
_081AEDBA:
	strh r3, [r4, 0x1A]
	movs r0, 0x1
	b _081AEDE8
_081AEDC0:
	cmp r3, r2
	bcs _081AEDE0
	ldr r1, [r4]
	movs r6, 0x3
	negs r6, r6
_081AEDCA:
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	adds r0, r5, r3
	lsls r0, 3
	adds r0, r1
	ldr r0, [r0, 0x4]
	cmp r0, r6
	bne _081AEDBA
	cmp r3, r2
	bcc _081AEDCA
_081AEDE0:
	adds r0, r5, 0x1
_081AEDE2:
	strh r2, [r4, 0x1A]
	strh r0, [r4, 0x18]
	movs r0, 0x2
_081AEDE8:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end ListMenuUpdateSelectedRowIndexAndScrollOffset

	thumb_func_start ListMenuScroll
@ void ListMenuScroll(struct ListMenu *listMenu, int a2, bool8 movingDown)
ListMenuScroll: @ 81AEDF0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	adds r6, r0, 0
	lsls r1, 24
	lsrs r5, r1, 24
	adds r7, r5, 0
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	ldrh r0, [r6, 0xE]
	cmp r5, r0
	bcc _081AEE2A
	ldrb r0, [r6, 0x10]
	ldrb r2, [r6, 0x15]
	lsls r2, 28
	lsrs r1, r2, 4
	orrs r1, r2
	lsrs r1, 24
	bl FillWindowPixelBuffer
	ldrh r1, [r6, 0x18]
	ldrh r3, [r6, 0xE]
	adds r0, r6, 0
	movs r2, 0
	bl ListMenuPrintEntries
	b _081AEF1A
_081AEE2A:
	ldrb r0, [r6, 0x17]
	lsls r0, 26
	lsrs r0, 26
	movs r1, 0x1
	bl GetFontAttribute
	ldrb r1, [r6, 0x16]
	lsls r1, 26
	lsrs r1, 29
	adds r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	mov r1, r8
	cmp r1, 0
	bne _081AEEBC
	ldrb r0, [r6, 0x10]
	adds r2, r5, 0
	muls r2, r4
	lsls r2, 24
	lsrs r2, 24
	ldrb r1, [r6, 0x15]
	lsls r1, 28
	lsrs r3, r1, 4
	orrs r3, r1
	lsrs r3, 24
	movs r1, 0x1
	bl ScrollWindow
	ldrh r1, [r6, 0x18]
	adds r0, r6, 0
	movs r2, 0
	adds r3, r5, 0
	bl ListMenuPrintEntries
	ldrh r0, [r6, 0xE]
	adds r1, r0, 0
	muls r1, r4
	adds r0, r1, 0
	ldrb r4, [r6, 0x14]
	lsls r4, 28
	lsrs r4, 28
	adds r4, r0
	lsls r4, 16
	lsrs r4, 16
	ldrb r0, [r6, 0x10]
	movs r1, 0x3
	bl GetWindowAttribute
	adds r5, r0, 0
	lsls r5, 19
	lsrs r5, 16
	ldrb r0, [r6, 0x10]
	movs r1, 0x4
	bl GetWindowAttribute
	lsls r0, 3
	subs r0, r4
	lsls r0, 16
	lsrs r0, 16
	ldrb r3, [r6, 0x10]
	ldrb r2, [r6, 0x15]
	lsls r2, 28
	lsrs r1, r2, 4
	orrs r1, r2
	lsrs r1, 24
	str r5, [sp]
	str r0, [sp, 0x4]
	adds r0, r3, 0
	movs r2, 0
	adds r3, r4, 0
	bl FillWindowPixelRect
	b _081AEF1A
_081AEEBC:
	ldrb r0, [r6, 0x10]
	adds r2, r7, 0
	muls r2, r4
	lsls r2, 24
	lsrs r2, 24
	ldrb r1, [r6, 0x15]
	lsls r1, 28
	lsrs r3, r1, 4
	orrs r3, r1
	lsrs r3, 24
	movs r1, 0
	bl ScrollWindow
	ldrh r2, [r6, 0xE]
	subs r2, r7
	ldrh r1, [r6, 0x18]
	adds r1, r2
	lsls r1, 16
	lsrs r1, 16
	lsls r2, 16
	lsrs r2, 16
	adds r0, r6, 0
	adds r3, r7, 0
	bl ListMenuPrintEntries
	ldrb r0, [r6, 0x10]
	movs r1, 0x3
	bl GetWindowAttribute
	lsls r0, 19
	lsrs r0, 16
	ldrb r3, [r6, 0x10]
	ldrb r2, [r6, 0x15]
	lsls r2, 28
	lsrs r1, r2, 4
	orrs r1, r2
	lsrs r1, 24
	str r0, [sp]
	ldrb r0, [r6, 0x14]
	lsls r0, 28
	lsrs r0, 28
	str r0, [sp, 0x4]
	adds r0, r3, 0
	movs r2, 0
	movs r3, 0
	bl FillWindowPixelRect
_081AEF1A:
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end ListMenuScroll

	thumb_func_start ListMenuChangeSelection
@ bool8 ListMenuChangeSelection(struct ListMenu *listMenu, bool8 updateCursorAndCallCallback, u8 count, bool8 movingDown)
ListMenuChangeSelection: @ 81AEF28
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp]
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r3, 24
	mov r9, r3
	ldrh r0, [r4, 0x1A]
	mov r10, r0
	movs r7, 0
	movs r5, 0
	movs r0, 0
	cmp r7, r8
	bcs _081AEF90
_081AEF56:
	adds r6, r0, 0x1
	b _081AEF76
_081AEF5A:
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	ldrh r0, [r4, 0x18]
	ldrh r1, [r4, 0x1A]
	adds r0, r1
	ldr r1, [r4]
	lsls r0, 3
	adds r0, r1
	ldr r1, [r0, 0x4]
	movs r0, 0x3
	negs r0, r0
	cmp r1, r0
	bne _081AEF88
_081AEF76:
	adds r0, r4, 0
	mov r1, r9
	bl ListMenuUpdateSelectedRowIndexAndScrollOffset
	lsls r0, 24
	lsrs r0, 24
	orrs r5, r0
	cmp r0, 0x2
	beq _081AEF5A
_081AEF88:
	lsls r0, r6, 24
	lsrs r0, 24
	cmp r0, r8
	bcc _081AEF56
_081AEF90:
	ldr r0, [sp]
	cmp r0, 0
	beq _081AEFEE
	cmp r5, 0x1
	beq _081AEFA6
	cmp r5, 0x1
	ble _081AEFA2
	cmp r5, 0x3
	ble _081AEFC6
_081AEFA2:
	movs r0, 0x1
	b _081AEFF0
_081AEFA6:
	adds r0, r4, 0
	mov r1, r10
	bl ListMenuErasePrintedCursor
	adds r0, r4, 0
	bl ListMenuDrawCursor
	adds r0, r4, 0
	movs r1, 0
	bl ListMenuCallSelectionChangedCallback
	ldrb r0, [r4, 0x10]
	movs r1, 0x2
	bl CopyWindowToVram
	b _081AEFEE
_081AEFC6:
	adds r0, r4, 0
	mov r1, r10
	bl ListMenuErasePrintedCursor
	adds r0, r4, 0
	adds r1, r7, 0
	mov r2, r9
	bl ListMenuScroll
	adds r0, r4, 0
	bl ListMenuDrawCursor
	adds r0, r4, 0
	movs r1, 0
	bl ListMenuCallSelectionChangedCallback
	ldrb r0, [r4, 0x10]
	movs r1, 0x2
	bl CopyWindowToVram
_081AEFEE:
	movs r0, 0
_081AEFF0:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end ListMenuChangeSelection

	thumb_func_start ListMenuCallSelectionChangedCallback
@ void ListMenuCallSelectionChangedCallback(struct ListMenu *listMenu, u8 a2)
ListMenuCallSelectionChangedCallback: @ 81AF000
	push {r4,lr}
	adds r2, r0, 0
	lsls r1, 24
	lsrs r4, r1, 24
	ldr r3, [r2, 0x4]
	cmp r3, 0
	beq _081AF022
	ldrh r0, [r2, 0x18]
	ldrh r1, [r2, 0x1A]
	adds r0, r1
	ldr r1, [r2]
	lsls r0, 3
	adds r0, r1
	ldr r0, [r0, 0x4]
	adds r1, r4, 0
	bl _call_via_r3
_081AF022:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end ListMenuCallSelectionChangedCallback

	thumb_func_start sub_81AF028
sub_81AF028: @ 81AF028
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsls r2, 24
	lsrs r2, 24
	ldr r6, =gUnknown_03006300
	movs r5, 0xF
	ands r0, r5
	ldrb r3, [r6]
	mov r8, r3
	movs r4, 0x10
	negs r4, r4
	adds r3, r4, 0
	mov r7, r8
	ands r3, r7
	orrs r3, r0
	lsrs r1, 20
	ands r3, r5
	orrs r3, r1
	strb r3, [r6]
	ands r2, r5
	ldrb r0, [r6, 0x1]
	ands r4, r0
	orrs r4, r2
	strb r4, [r6, 0x1]
	ldrb r0, [r6, 0x3]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r6, 0x3]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AF028

	thumb_func_start sub_81AF078
sub_81AF078: @ 81AF078
	push {lr}
	lsls r1, 24
	cmp r1, 0
	bne _081AF086
	movs r0, 0x5
	bl PlaySE
_081AF086:
	pop {r0}
	bx r0
	thumb_func_end sub_81AF078

	thumb_func_start sub_81AF08C
sub_81AF08C: @ 81AF08C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r3, r1, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r2, r1, r0
	cmp r3, 0x10
	bhi _081AF154
	lsls r0, r3, 2
	ldr r1, =_081AF0B8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081AF0B8:
	.4byte _081AF0FC
	.4byte _081AF0FC
	.4byte _081AF100
	.4byte _081AF104
	.4byte _081AF108
	.4byte _081AF10C
	.4byte _081AF110
	.4byte _081AF114
	.4byte _081AF118
	.4byte _081AF11C
	.4byte _081AF122
	.4byte _081AF12A
	.4byte _081AF130
	.4byte _081AF138
	.4byte _081AF140
	.4byte _081AF146
	.4byte _081AF14E
_081AF0FC:
	ldr r0, [r2, 0x4]
	b _081AF158
_081AF100:
	ldrh r0, [r2, 0xC]
	b _081AF158
_081AF104:
	ldrh r0, [r2, 0xE]
	b _081AF158
_081AF108:
	ldrb r0, [r2, 0x10]
	b _081AF158
_081AF10C:
	ldrb r0, [r2, 0x11]
	b _081AF158
_081AF110:
	ldrb r0, [r2, 0x12]
	b _081AF158
_081AF114:
	ldrb r0, [r2, 0x13]
	b _081AF158
_081AF118:
	ldrb r0, [r2, 0x14]
	b _081AF124
_081AF11C:
	ldrb r0, [r2, 0x14]
	lsrs r0, 4
	b _081AF158
_081AF122:
	ldrb r0, [r2, 0x15]
_081AF124:
	lsls r0, 28
	lsrs r0, 28
	b _081AF158
_081AF12A:
	ldrb r0, [r2, 0x15]
	lsrs r0, 4
	b _081AF158
_081AF130:
	ldrb r0, [r2, 0x16]
	lsls r0, 29
	lsrs r0, 29
	b _081AF158
_081AF138:
	ldrb r0, [r2, 0x16]
	lsls r0, 26
	lsrs r0, 29
	b _081AF158
_081AF140:
	ldrb r0, [r2, 0x16]
	lsrs r0, 6
	b _081AF158
_081AF146:
	ldrb r0, [r2, 0x17]
	lsls r0, 26
	lsrs r0, 26
	b _081AF158
_081AF14E:
	ldrb r0, [r2, 0x17]
	lsrs r0, 6
	b _081AF158
_081AF154:
	movs r0, 0x1
	negs r0, r0
_081AF158:
	pop {r1}
	bx r1
	thumb_func_end sub_81AF08C

	thumb_func_start sub_81AF15C
sub_81AF15C: @ 81AF15C
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r4, r1, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r3, r1, r0
	cmp r4, 0x10
	bhi _081AF25C
	lsls r0, r4, 2
	ldr r1, =_081AF188
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_081AF188:
	.4byte _081AF1CC
	.4byte _081AF1CC
	.4byte _081AF1D0
	.4byte _081AF1D4
	.4byte _081AF1D8
	.4byte _081AF1DC
	.4byte _081AF1E0
	.4byte _081AF1E4
	.4byte _081AF1E8
	.4byte _081AF1F4
	.4byte _081AF202
	.4byte _081AF20E
	.4byte _081AF21C
	.4byte _081AF228
	.4byte _081AF236
	.4byte _081AF244
	.4byte _081AF250
_081AF1CC:
	str r2, [r3, 0x4]
	b _081AF25C
_081AF1D0:
	strh r2, [r3, 0xC]
	b _081AF25C
_081AF1D4:
	strh r2, [r3, 0xE]
	b _081AF25C
_081AF1D8:
	strb r2, [r3, 0x10]
	b _081AF25C
_081AF1DC:
	strb r2, [r3, 0x11]
	b _081AF25C
_081AF1E0:
	strb r2, [r3, 0x12]
	b _081AF25C
_081AF1E4:
	strb r2, [r3, 0x13]
	b _081AF25C
_081AF1E8:
	movs r0, 0xF
	ands r2, r0
	ldrb r1, [r3, 0x14]
	movs r0, 0x10
	negs r0, r0
	b _081AF1FA
_081AF1F4:
	lsls r2, 4
	ldrb r1, [r3, 0x14]
	movs r0, 0xF
_081AF1FA:
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, 0x14]
	b _081AF25C
_081AF202:
	movs r0, 0xF
	ands r2, r0
	ldrb r1, [r3, 0x15]
	movs r0, 0x10
	negs r0, r0
	b _081AF214
_081AF20E:
	lsls r2, 4
	ldrb r1, [r3, 0x15]
	movs r0, 0xF
_081AF214:
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, 0x15]
	b _081AF25C
_081AF21C:
	movs r0, 0x7
	ands r2, r0
	ldrb r1, [r3, 0x16]
	movs r0, 0x8
	negs r0, r0
	b _081AF23C
_081AF228:
	movs r0, 0x7
	ands r2, r0
	lsls r2, 3
	ldrb r1, [r3, 0x16]
	movs r0, 0x39
	negs r0, r0
	b _081AF23C
_081AF236:
	lsls r2, 6
	ldrb r1, [r3, 0x16]
	movs r0, 0x3F
_081AF23C:
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, 0x16]
	b _081AF25C
_081AF244:
	movs r0, 0x3F
	ands r2, r0
	ldrb r1, [r3, 0x17]
	movs r0, 0x40
	negs r0, r0
	b _081AF256
_081AF250:
	lsls r2, 6
	ldrb r1, [r3, 0x17]
	movs r0, 0x3F
_081AF256:
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, 0x17]
_081AF25C:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_81AF15C

	thumb_func_start sub_81AF264
sub_81AF264: @ 81AF264
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _081AF276
	cmp r0, 0x1
	beq _081AF28A
	b _081AF2E4
_081AF276:
	ldrh r1, [r4, 0x30]
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl StartSpriteAnim
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	strh r0, [r4, 0x2E]
	b _081AF2E4
_081AF28A:
	movs r1, 0x32
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _081AF29A
	cmp r0, 0x1
	beq _081AF2C0
	ldrh r2, [r4, 0x38]
	b _081AF2DE
_081AF29A:
	movs r0, 0x34
	ldrsh r3, [r4, r0]
	ldr r1, =gSineTable
	ldrh r2, [r4, 0x38]
	lsls r0, r2, 24
	lsrs r0, 23
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	muls r0, r3
	cmp r0, 0
	bge _081AF2B4
	adds r0, 0xFF
_081AF2B4:
	asrs r0, 8
	strh r0, [r4, 0x24]
	b _081AF2DE
	.pool
_081AF2C0:
	movs r0, 0x34
	ldrsh r3, [r4, r0]
	ldr r1, =gSineTable
	ldrh r2, [r4, 0x38]
	lsls r0, r2, 24
	lsrs r0, 23
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	muls r0, r3
	cmp r0, 0
	bge _081AF2DA
	adds r0, 0xFF
_081AF2DA:
	asrs r0, 8
	strh r0, [r4, 0x26]
_081AF2DE:
	ldrh r0, [r4, 0x36]
	adds r0, r2, r0
	strh r0, [r4, 0x38]
_081AF2E4:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AF264

	thumb_func_start AddScrollIndicatorArrowObject
AddScrollIndicatorArrowObject: @ 81AF2F0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x18
	adds r6, r0, 0
	ldr r5, [sp, 0x30]
	lsls r6, 24
	lsrs r6, 24
	mov r8, r6
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r5, 16
	lsrs r5, 16
	mov r12, r5
	mov r4, sp
	ldr r0, =gUnknown_08614244
	ldm r0!, {r5-r7}
	stm r4!, {r5-r7}
	ldm r0!, {r5-r7}
	stm r4!, {r5-r7}
	mov r0, sp
	movs r4, 0
	strh r3, [r0]
	mov r3, r12
	strh r3, [r0, 0x2]
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gSprites
	lsls r3, r0, 4
	adds r3, r0
	lsls r3, 2
	adds r3, r1
	adds r5, r3, 0
	adds r5, 0x3E
	ldrb r1, [r5]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r5]
	strh r4, [r3, 0x2E]
	ldr r1, =gUnknown_086141FC
	mov r5, r8
	lsls r6, r5, 2
	adds r6, r1
	ldrb r2, [r6]
	lsls r1, r2, 28
	lsrs r1, 28
	strh r1, [r3, 0x30]
	lsrs r2, 4
	strh r2, [r3, 0x32]
	ldrb r1, [r6, 0x1]
	strh r1, [r3, 0x34]
	ldrh r1, [r6, 0x2]
	strh r1, [r3, 0x36]
	strh r4, [r3, 0x38]
	add sp, 0x18
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end AddScrollIndicatorArrowObject

	thumb_func_start AddScrollIndicatorArrowPair
AddScrollIndicatorArrowPair: @ 81AF380
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x14
	adds r6, r0, 0
	mov r9, r1
	ldr r0, =gUnknown_086142C8
	str r0, [sp, 0x4]
	ldr r5, =0xffff0000
	ldr r0, [sp, 0x8]
	ands r0, r5
	movs r1, 0x80
	lsls r1, 1
	orrs r0, r1
	ldrh r1, [r6, 0xA]
	lsls r1, 16
	ldr r4, =0x0000ffff
	ands r0, r4
	orrs r0, r1
	str r0, [sp, 0x8]
	add r0, sp, 0x4
	bl LoadCompressedObjectPic
	ldrh r2, [r6, 0xC]
	cmp r2, r4
	bne _081AF3DC
	ldr r0, =gUnknown_086142A8
	ldrb r1, [r6, 0xE]
	lsls r1, 20
	movs r2, 0x80
	lsls r2, 17
	adds r1, r2
	lsrs r1, 16
	movs r2, 0x20
	bl LoadPalette
	b _081AF3EE
	.pool
_081AF3DC:
	ldr r0, =gUnknown_086142A8
	str r0, [sp, 0xC]
	add r0, sp, 0xC
	ldr r1, [r0, 0x4]
	ands r1, r5
	orrs r1, r2
	str r1, [r0, 0x4]
	bl LoadSpritePalette
_081AF3EE:
	ldr r0, =Task_ScrollIndicatorArrowPair
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r0, 2
	add r0, r8
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r7, r0, r1
	movs r0, 0
	strb r0, [r7]
	mov r0, r9
	str r0, [r7, 0x4]
	ldrh r0, [r6, 0x6]
	strh r0, [r7, 0x8]
	ldrh r0, [r6, 0x8]
	strh r0, [r7, 0xA]
	ldrh r0, [r6, 0xA]
	strh r0, [r7, 0xE]
	ldrh r0, [r6, 0xC]
	strh r0, [r7, 0x10]
	ldrb r0, [r6]
	ldrb r1, [r6, 0x1]
	ldrb r2, [r6, 0x2]
	ldrh r3, [r6, 0xA]
	ldrh r4, [r6, 0xC]
	str r4, [sp]
	bl AddScrollIndicatorArrowObject
	strb r0, [r7, 0xC]
	ldrb r0, [r6, 0x3]
	ldrb r1, [r6, 0x4]
	ldrb r2, [r6, 0x5]
	ldrh r3, [r6, 0xA]
	ldrh r4, [r6, 0xC]
	str r4, [sp]
	bl AddScrollIndicatorArrowObject
	strb r0, [r7, 0xD]
	ldrh r1, [r6, 0xC]
	ldr r0, =0x0000ffff
	cmp r1, r0
	bne _081AF47C
	ldr r5, =gSprites
	ldrb r0, [r7, 0xC]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	ldrb r3, [r6, 0xE]
	lsls r3, 4
	ldrb r4, [r1, 0x5]
	movs r2, 0xF
	adds r0, r2, 0
	ands r0, r4
	orrs r0, r3
	strb r0, [r1, 0x5]
	ldrb r1, [r7, 0xD]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r1, [r6, 0xE]
	lsls r1, 4
	ldrb r3, [r0, 0x5]
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, 0x5]
_081AF47C:
	mov r0, r8
	add sp, 0x14
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end AddScrollIndicatorArrowPair

	thumb_func_start AddScrollIndicatorArrowPairParametrized
AddScrollIndicatorArrowPairParametrized: @ 81AF4A0
	push {r4,lr}
	adds r4, r1, 0
	subs r0, 0x2
	cmp r0, 0x1
	bhi _081AF4C4
	ldr r0, =gUnknown_0203CE8C
	movs r1, 0x2
	strb r1, [r0]
	strb r4, [r0, 0x1]
	strb r2, [r0, 0x2]
	movs r1, 0x3
	strb r1, [r0, 0x3]
	strb r4, [r0, 0x4]
	strb r3, [r0, 0x5]
	b _081AF4D6
	.pool
_081AF4C4:
	ldr r0, =gUnknown_0203CE8C
	movs r1, 0
	strb r1, [r0]
	strb r2, [r0, 0x1]
	strb r4, [r0, 0x2]
	movs r1, 0x1
	strb r1, [r0, 0x3]
	strb r3, [r0, 0x4]
	strb r4, [r0, 0x5]
_081AF4D6:
	adds r2, r0, 0
	movs r1, 0
	movs r0, 0
	strh r0, [r2, 0x6]
	ldr r0, [sp, 0x8]
	strh r0, [r2, 0x8]
	ldr r0, [sp, 0xC]
	strh r0, [r2, 0xA]
	ldr r0, [sp, 0x10]
	strh r0, [r2, 0xC]
	strb r1, [r2, 0xE]
	adds r0, r2, 0
	ldr r1, [sp, 0x14]
	bl AddScrollIndicatorArrowPair
	lsls r0, 24
	lsrs r0, 24
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end AddScrollIndicatorArrowPairParametrized

	thumb_func_start Task_ScrollIndicatorArrowPair
Task_ScrollIndicatorArrowPair: @ 81AF504
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	ldr r0, [r4, 0x4]
	ldrh r5, [r0]
	ldrh r0, [r4, 0x8]
	cmp r5, r0
	bne _081AF548
	ldr r0, =0x0000ffff
	cmp r5, r0
	beq _081AF548
	ldr r3, =gSprites
	ldrb r1, [r4, 0xC]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	b _081AF55E
	.pool
_081AF548:
	ldr r3, =gSprites
	ldrb r1, [r4, 0xC]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
_081AF55E:
	strb r1, [r0]
	ldrh r0, [r4, 0xA]
	cmp r5, r0
	bne _081AF580
	ldrb r1, [r4, 0xD]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	b _081AF594
	.pool
_081AF580:
	ldrb r1, [r4, 0xD]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
_081AF594:
	strb r1, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end Task_ScrollIndicatorArrowPair

	thumb_func_start Task_ScrollIndicatorArrowPairOnMainMenu
Task_ScrollIndicatorArrowPairOnMainMenu: @ 81AF59C
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	movs r1, 0x1E
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _081AF5E8
	ldr r3, =gSprites
	ldrb r1, [r4, 0xC]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	ldrb r1, [r4, 0xD]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	b _081AF612
	.pool
_081AF5E8:
	ldr r3, =gSprites
	ldrb r1, [r4, 0xC]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	ldrb r1, [r4, 0xD]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
_081AF612:
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end Task_ScrollIndicatorArrowPairOnMainMenu

	thumb_func_start RemoveScrollIndicatorArrowPair
RemoveScrollIndicatorArrowPair: @ 81AF620
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r6, r0, 0
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r5, r0, r1
	ldrh r0, [r5, 0xE]
	ldr r4, =0x0000ffff
	cmp r0, r4
	beq _081AF63E
	bl FreeSpriteTilesByTag
_081AF63E:
	ldrh r0, [r5, 0x10]
	cmp r0, r4
	beq _081AF648
	bl FreeSpritePaletteByTag
_081AF648:
	ldrb r1, [r5, 0xC]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gSprites
	adds r0, r4
	bl DestroySprite
	ldrb r1, [r5, 0xD]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl DestroySprite
	adds r0, r6, 0
	bl DestroyTask
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end RemoveScrollIndicatorArrowPair

	thumb_func_start ListMenuAddCursorObjectInternal
ListMenuAddCursorObjectInternal: @ 81AF680
	push {lr}
	cmp r1, 0
	beq _081AF68A
	cmp r1, 0x1
	beq _081AF690
_081AF68A:
	bl ListMenuAddRedOutlineCursorObject
	b _081AF694
_081AF690:
	bl ListMenuAddRedArrowCursorObject
_081AF694:
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	thumb_func_end ListMenuAddCursorObjectInternal

	thumb_func_start ListMenuUpdateCursorObject
@ void ListMenuUpdateCursorObject(u8 taskId, u16 x, u16 y, u32 a4)
ListMenuUpdateCursorObject: @ 81AF69C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 16
	lsrs r1, 16
	lsls r2, 16
	lsrs r2, 16
	cmp r3, 0
	beq _081AF6B4
	cmp r3, 0x1
	beq _081AF6BA
	b _081AF6BE
_081AF6B4:
	bl ListMenuUpdateRedOutlineCursorObject
	b _081AF6BE
_081AF6BA:
	bl ListMenuUpdateRedArrowCursorObject
_081AF6BE:
	pop {r0}
	bx r0
	thumb_func_end ListMenuUpdateCursorObject

	thumb_func_start ListMenuRemoveCursorObject
ListMenuRemoveCursorObject: @ 81AF6C4
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	cmp r1, 0
	beq _081AF6D4
	cmp r1, 0x1
	beq _081AF6DA
	b _081AF6DE
_081AF6D4:
	bl ListMenuRemoveRedOutlineCursorObject
	b _081AF6DE
_081AF6DA:
	bl ListMenuRemoveRedArrowCursorObject
_081AF6DE:
	pop {r0}
	bx r0
	thumb_func_end ListMenuRemoveCursorObject

	thumb_func_start Task_RedOutlineCursor
Task_RedOutlineCursor: @ 81AF6E4
	bx lr
	thumb_func_end Task_RedOutlineCursor

	thumb_func_start ListMenuGetRedOutlineCursorSpriteCount
ListMenuGetRedOutlineCursorSpriteCount: @ 81AF6E8
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	lsls r1, 16
	lsrs r1, 16
	movs r3, 0x4
	cmp r0, 0x10
	bls _081AF708
	movs r2, 0x8
	subs r0, 0x8
	cmp r2, r0
	bge _081AF708
_081AF700:
	adds r3, 0x2
	adds r2, 0x8
	cmp r2, r0
	blt _081AF700
_081AF708:
	cmp r1, 0x10
	bls _081AF71C
	movs r2, 0x8
	subs r1, 0x8
	cmp r2, r1
	bge _081AF71C
_081AF714:
	adds r3, 0x2
	adds r2, 0x8
	cmp r2, r1
	blt _081AF714
_081AF71C:
	lsls r0, r3, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	thumb_func_end ListMenuGetRedOutlineCursorSpriteCount

	thumb_func_start ListMenuSetUpRedOutlineCursorSpriteOamTable
ListMenuSetUpRedOutlineCursorSpriteOamTable: @ 81AF724
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	adds r3, r2, 0
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	lsls r1, 16
	lsrs r1, 16
	mov r9, r1
	ldr r0, =gUnknown_0861425C
	ldr r0, [r0]
	str r0, [r3]
	movs r1, 0x88
	strb r1, [r3]
	strb r1, [r3, 0x1]
	ldr r0, =gUnknown_08614260
	ldr r0, [r0]
	str r0, [r3, 0x4]
	mov r2, r8
	adds r2, 0x80
	strb r2, [r3, 0x4]
	strb r1, [r3, 0x5]
	ldr r0, =gUnknown_08614274
	ldr r0, [r0]
	str r0, [r3, 0x8]
	strb r1, [r3, 0x8]
	mov r4, r9
	adds r4, 0x80
	strb r4, [r3, 0x9]
	ldr r0, =gUnknown_08614278
	ldr r0, [r0]
	str r0, [r3, 0xC]
	strb r2, [r3, 0xC]
	strb r4, [r3, 0xD]
	movs r0, 0x4
	mov r12, r0
	mov r2, r8
	cmp r2, 0x10
	bls _081AF7B8
	movs r2, 0x8
	mov r5, r8
	subs r5, 0x8
	cmp r2, r5
	bge _081AF7B8
	ldr r0, =gUnknown_08614264
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, =gUnknown_08614270
	ldr r6, [r0]
	adds r1, r3, 0
	adds r1, 0x10
	movs r7, 0x88
	mov r10, r7
_081AF796:
	ldr r0, [sp]
	str r0, [r1]
	adds r0, r2, 0
	subs r0, 0x78
	strb r0, [r1]
	mov r7, r10
	strb r7, [r1, 0x1]
	adds r1, 0x4
	str r6, [r1]
	strb r0, [r1]
	strb r4, [r1, 0x1]
	adds r1, 0x4
	movs r0, 0x2
	add r12, r0
	adds r2, 0x8
	cmp r2, r5
	blt _081AF796
_081AF7B8:
	mov r2, r9
	cmp r2, 0x10
	bls _081AF7F6
	movs r1, 0x8
	mov r4, r9
	subs r4, 0x8
	cmp r1, r4
	bge _081AF7F6
	ldr r0, =gUnknown_08614268
	ldr r6, [r0]
	ldr r0, =gUnknown_0861426C
	ldr r5, [r0]
	mov r7, r12
	lsls r0, r7, 2
	adds r2, r0, r3
	movs r7, 0x88
	mov r3, r8
	adds r3, 0x80
_081AF7DC:
	str r6, [r2]
	strb r7, [r2]
	adds r0, r1, 0
	subs r0, 0x78
	strb r0, [r2, 0x1]
	adds r2, 0x4
	str r5, [r2]
	strb r3, [r2]
	strb r0, [r2, 0x1]
	adds r2, 0x4
	adds r1, 0x8
	cmp r1, r4
	blt _081AF7DC
_081AF7F6:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ListMenuSetUpRedOutlineCursorSpriteOamTable

	thumb_func_start ListMenuAddRedOutlineCursorObject
ListMenuAddRedOutlineCursorObject: @ 81AF828
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x28
	adds r6, r0, 0
	ldr r0, =gUnknown_08614338
	str r0, [sp, 0x18]
	ldr r5, =0xffff0000
	add r0, sp, 0x18
	ldr r1, [r0, 0x4]
	ands r1, r5
	movs r2, 0x80
	lsls r2, 1
	orrs r1, r2
	ldrh r2, [r6, 0x6]
	lsls r2, 16
	ldr r3, =0x0000ffff
	ands r1, r3
	orrs r1, r2
	str r1, [r0, 0x4]
	bl LoadCompressedObjectPic
	ldrh r2, [r6, 0x8]
	ldr r7, =0x0000ffff
	cmp r2, r7
	bne _081AF884
	ldr r0, =gUnknown_086142A8
	ldrb r1, [r6, 0xA]
	lsls r1, 20
	movs r2, 0x80
	lsls r2, 17
	adds r1, r2
	lsrs r1, 16
	movs r2, 0x20
	bl LoadPalette
	b _081AF896
	.pool
_081AF884:
	ldr r0, =gUnknown_086142A8
	str r0, [sp, 0x20]
	add r0, sp, 0x20
	ldr r1, [r0, 0x4]
	ands r1, r5
	orrs r1, r2
	str r1, [r0, 0x4]
	bl LoadSpritePalette
_081AF896:
	ldr r0, =Task_RedOutlineCursor
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	adds r4, r0, 0
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r5, r0, r1
	ldrh r0, [r6, 0x6]
	movs r3, 0
	mov r8, r3
	strh r0, [r5, 0xE]
	ldrh r0, [r6, 0x8]
	strh r0, [r5, 0x10]
	ldrh r0, [r6, 0x2]
	ldrh r1, [r6, 0x4]
	bl ListMenuGetRedOutlineCursorSpriteCount
	strb r0, [r5]
	ldrb r0, [r5]
	lsls r0, 2
	bl Alloc
	adds r2, r0, 0
	str r2, [r5, 0x8]
	str r2, [r5, 0x4]
	ldrh r0, [r6, 0x2]
	ldrh r1, [r6, 0x4]
	bl ListMenuSetUpRedOutlineCursorSpriteOamTable
	mov r1, sp
	ldr r0, =gDummySpriteTemplate
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	mov r1, sp
	ldrh r0, [r6, 0x6]
	strh r0, [r1]
	ldrh r0, [r6, 0x8]
	strh r0, [r1, 0x2]
	ldrb r1, [r6]
	adds r1, 0x78
	ldrb r2, [r6, 0x1]
	adds r2, 0x78
	mov r0, sp
	movs r3, 0
	bl CreateSprite
	strb r0, [r5, 0xC]
	ldrb r1, [r5, 0xC]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r7, =gSprites
	adds r0, r7
	adds r1, r5, 0
	bl SetSubspriteTables
	ldrb r0, [r5, 0xC]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r7
	ldrb r2, [r1, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x5]
	ldrb r1, [r5, 0xC]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	adds r0, 0x43
	mov r1, r8
	strb r1, [r0]
	ldrb r1, [r5, 0xC]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	adds r0, 0x42
	ldrb r2, [r0]
	movs r1, 0x40
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	ldrh r1, [r6, 0x8]
	ldr r0, =0x0000ffff
	cmp r1, r0
	bne _081AF96E
	ldrb r0, [r5, 0xC]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r7
	ldrb r2, [r6, 0xA]
	lsls r2, 4
	ldrb r3, [r1, 0x5]
	movs r0, 0xF
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0x5]
_081AF96E:
	adds r0, r4, 0
	add sp, 0x28
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end ListMenuAddRedOutlineCursorObject

	thumb_func_start ListMenuUpdateRedOutlineCursorObject
@ void ListMenuUpdateRedOutlineCursorObject(u8 taskId, u16 x, u16 y)
ListMenuUpdateRedOutlineCursorObject: @ 81AF994
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 16
	lsrs r1, 16
	lsls r2, 16
	lsrs r2, 16
	lsls r3, r0, 2
	adds r3, r0
	lsls r3, 3
	ldr r0, =gTasks + 0x8
	adds r3, r0
	ldr r5, =gSprites
	ldrb r4, [r3, 0xC]
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	adds r0, r5
	adds r1, 0x78
	strh r1, [r0, 0x20]
	ldrb r1, [r3, 0xC]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r2, 0x78
	strh r2, [r0, 0x22]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ListMenuUpdateRedOutlineCursorObject

	thumb_func_start ListMenuRemoveRedOutlineCursorObject
ListMenuRemoveRedOutlineCursorObject: @ 81AF9D8
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r5, r0, 0
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	ldr r0, [r4, 0x8]
	bl Free
	ldrh r0, [r4, 0xE]
	ldr r6, =0x0000ffff
	cmp r0, r6
	beq _081AF9FC
	bl FreeSpriteTilesByTag
_081AF9FC:
	ldrh r0, [r4, 0x10]
	cmp r0, r6
	beq _081AFA06
	bl FreeSpritePaletteByTag
_081AFA06:
	ldrb r1, [r4, 0xC]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	bl DestroySprite
	adds r0, r5, 0
	bl DestroyTask
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ListMenuRemoveRedOutlineCursorObject

	thumb_func_start ObjectCB_RedArrowCursor
ObjectCB_RedArrowCursor: @ 81AFA30
	push {lr}
	adds r2, r0, 0
	ldr r1, =gSineTable
	ldrh r3, [r2, 0x2E]
	lsls r0, r3, 24
	lsrs r0, 23
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bge _081AFA48
	adds r0, 0x3F
_081AFA48:
	asrs r0, 6
	strh r0, [r2, 0x24]
	adds r0, r3, 0
	adds r0, 0x8
	strh r0, [r2, 0x2E]
	pop {r0}
	bx r0
	.pool
	thumb_func_end ObjectCB_RedArrowCursor

	thumb_func_start Task_RedArrowCursor
Task_RedArrowCursor: @ 81AFA5C
	bx lr
	thumb_func_end Task_RedArrowCursor

	thumb_func_start ListMenuAddRedArrowCursorObject
ListMenuAddRedArrowCursorObject: @ 81AFA60
	push {r4-r7,lr}
	sub sp, 0x28
	adds r5, r0, 0
	ldr r0, =gUnknown_08614378
	str r0, [sp, 0x18]
	ldr r6, =0xffff0000
	add r0, sp, 0x18
	ldr r1, [r0, 0x4]
	ands r1, r6
	movs r2, 0x80
	orrs r1, r2
	ldrh r2, [r5, 0x6]
	lsls r2, 16
	ldr r4, =0x0000ffff
	ands r1, r4
	orrs r1, r2
	str r1, [r0, 0x4]
	bl LoadCompressedObjectPic
	ldrh r2, [r5, 0x8]
	cmp r2, r4
	bne _081AFAB4
	ldr r0, =gUnknown_086142A8
	ldrb r1, [r5, 0xA]
	lsls r1, 20
	movs r2, 0x80
	lsls r2, 17
	adds r1, r2
	lsrs r1, 16
	movs r2, 0x20
	bl LoadPalette
	b _081AFAC6
	.pool
_081AFAB4:
	ldr r0, =gUnknown_086142A8
	str r0, [sp, 0x20]
	add r0, sp, 0x20
	ldr r1, [r0, 0x4]
	ands r1, r6
	orrs r1, r2
	str r1, [r0, 0x4]
	bl LoadSpritePalette
_081AFAC6:
	ldr r0, =Task_RedArrowCursor
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	adds r6, r0, 0
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	ldrh r0, [r5, 0x6]
	strh r0, [r4, 0x2]
	ldrh r0, [r5, 0x8]
	strh r0, [r4, 0x4]
	mov r1, sp
	ldr r0, =gUnknown_08614290
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	mov r1, sp
	ldrh r0, [r5, 0x6]
	strh r0, [r1]
	ldrh r0, [r5, 0x8]
	strh r0, [r1, 0x2]
	ldrb r1, [r5]
	ldrb r2, [r5, 0x1]
	mov r0, sp
	movs r3, 0
	bl CreateSprite
	strb r0, [r4]
	ldr r3, =gSprites
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	movs r2, 0x8
	strh r2, [r0, 0x24]
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	strh r2, [r0, 0x26]
	ldrh r1, [r5, 0x8]
	ldr r0, =0x0000ffff
	cmp r1, r0
	bne _081AFB46
	ldrb r0, [r4]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	ldrb r2, [r5, 0xA]
	lsls r2, 4
	ldrb r3, [r1, 0x5]
	movs r0, 0xF
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0x5]
_081AFB46:
	adds r0, r6, 0
	add sp, 0x28
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end ListMenuAddRedArrowCursorObject

	thumb_func_start ListMenuUpdateRedArrowCursorObject
@ void ListMenuUpdateRedArrowCursorObject(u8 taskId, u16 x, u16 y)
ListMenuUpdateRedArrowCursorObject: @ 81AFB68
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r3, r0, 2
	adds r3, r0
	lsls r3, 3
	ldr r0, =gTasks + 0x8
	adds r3, r0
	ldr r5, =gSprites
	ldrb r4, [r3]
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	adds r0, r5
	strh r1, [r0, 0x20]
	ldrb r1, [r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	strh r2, [r0, 0x22]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ListMenuUpdateRedArrowCursorObject

	thumb_func_start ListMenuRemoveRedArrowCursorObject
ListMenuRemoveRedArrowCursorObject: @ 81AFBA0
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r5, r0, 0
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	ldrh r0, [r4, 0x2]
	ldr r6, =0x0000ffff
	cmp r0, r6
	beq _081AFBBE
	bl FreeSpriteTilesByTag
_081AFBBE:
	ldrh r0, [r4, 0x4]
	cmp r0, r6
	beq _081AFBC8
	bl FreeSpritePaletteByTag
_081AFBC8:
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	bl DestroySprite
	adds r0, r5, 0
	bl DestroyTask
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end ListMenuRemoveRedArrowCursorObject

	thumb_func_start sub_81AFBF0
sub_81AFBF0: @ 81AFBF0
	push {lr}
	ldr r1, =gUnknown_0203CE9C
	movs r2, 0
	adds r0, r1, 0
	adds r0, 0x1C
_081AFBFA:
	str r2, [r0]
	subs r0, 0x4
	cmp r0, r1
	bge _081AFBFA
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AFBF0

	thumb_func_start sub_81AFC0C
sub_81AFC0C: @ 81AFC0C
	push {lr}
	adds r2, r1, 0
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x7
	bhi _081AFC20
	ldr r1, =gUnknown_0203CE9C
	lsls r0, 2
	adds r0, r1
	str r2, [r0]
_081AFC20:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AFC0C

	thumb_func_start sub_81AFC28
sub_81AFC28: @ 81AFC28
	push {r4,r5,lr}
	adds r2, r0, 0
	adds r4, r1, 0
	ldrb r1, [r4]
	adds r0, r1, 0
	cmp r0, 0xFF
	beq _081AFC68
	ldr r5, =gUnknown_0203CE9C
_081AFC38:
	cmp r1, 0xF7
	beq _081AFC48
	strb r1, [r2]
	adds r4, 0x1
	adds r2, 0x1
	b _081AFC60
	.pool
_081AFC48:
	adds r4, 0x1
	ldrb r0, [r4]
	lsls r0, 2
	adds r0, r5
	ldr r1, [r0]
	cmp r1, 0
	beq _081AFC5E
	adds r0, r2, 0
	bl StringCopy
	adds r2, r0, 0
_081AFC5E:
	adds r4, 0x1
_081AFC60:
	ldrb r1, [r4]
	adds r0, r1, 0
	cmp r0, 0xFF
	bne _081AFC38
_081AFC68:
	movs r0, 0xFF
	strb r0, [r2]
	adds r0, r2, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81AFC28

	thumb_func_start sub_81AFC74
sub_81AFC74: @ 81AFC74
	lsls r0, 24
	ldr r1, =gUnknown_0203CE9C
	lsrs r0, 22
	adds r0, r1
	ldr r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_81AFC74

	thumb_func_start sav1_are_mapnumbers_in_given_list
sav1_are_mapnumbers_in_given_list: @ 81AFC84
	push {r4,lr}
	adds r2, r0, 0
	ldr r0, =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, 0x4
	ldrsb r1, [r0, r1]
	lsls r1, 8
	ldrb r0, [r0, 0x5]
	lsls r0, 24
	asrs r0, 24
	adds r0, r1
	lsls r0, 16
	lsrs r3, r0, 16
	ldrh r0, [r2]
	ldr r1, =0x0000ffff
	cmp r0, r1
	beq _081AFCC4
	adds r4, r1, 0
	adds r1, r2, 0
_081AFCAA:
	ldrh r0, [r1]
	cmp r0, r3
	bne _081AFCBC
	movs r0, 0x1
	b _081AFCC6
	.pool
_081AFCBC:
	adds r1, 0x2
	ldrh r0, [r1]
	cmp r0, r4
	bne _081AFCAA
_081AFCC4:
	movs r0, 0
_081AFCC6:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sav1_are_mapnumbers_in_given_list

	thumb_func_start sav1_is_in_pokecenter
sav1_is_in_pokecenter: @ 81AFCCC
	push {lr}
	ldr r0, =gUnknown_086143BC
	bl sav1_are_mapnumbers_in_given_list
	pop {r1}
	bx r1
	.pool
	thumb_func_end sav1_is_in_pokecenter

	thumb_func_start sub_81AFCDC
sub_81AFCDC: @ 81AFCDC
	push {lr}
	ldr r0, =gUnknown_0861440A
	bl sav1_are_mapnumbers_in_given_list
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81AFCDC

	thumb_func_start sub_81AFCEC
sub_81AFCEC: @ 81AFCEC
	push {lr}
	ldr r0, =gUnknown_0861440E
	bl sav1_are_mapnumbers_in_given_list
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_81AFCEC

	thumb_func_start sav2_set_x9_bit3_when_sav1_in_pokecenter
sav2_set_x9_bit3_when_sav1_in_pokecenter: @ 81AFCFC
	push {lr}
	bl sav1_is_in_pokecenter
	cmp r0, 0
	bne _081AFD18
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldrb r1, [r2, 0x9]
	movs r0, 0xFD
	ands r0, r1
	b _081AFD22
	.pool
_081AFD18:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldrb r1, [r2, 0x9]
	movs r0, 0x2
	orrs r0, r1
_081AFD22:
	strb r0, [r2, 0x9]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sav2_set_x9_bit3_when_sav1_in_pokecenter

	thumb_func_start sub_81AFD2C
sub_81AFD2C: @ 81AFD2C
	push {lr}
	bl sub_81AFCDC
	cmp r0, 0
	bne _081AFD48
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldrb r1, [r2, 0x9]
	movs r0, 0xFB
	ands r0, r1
	b _081AFD52
	.pool
_081AFD48:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldrb r1, [r2, 0x9]
	movs r0, 0x4
	orrs r0, r1
_081AFD52:
	strb r0, [r2, 0x9]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AFD2C

	thumb_func_start sub_81AFD5C
sub_81AFD5C: @ 81AFD5C
	push {lr}
	bl sub_81AFCEC
	cmp r0, 0
	bne _081AFD78
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldrb r1, [r2, 0x9]
	movs r0, 0xF7
	ands r0, r1
	b _081AFD82
	.pool
_081AFD78:
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldrb r1, [r2, 0x9]
	movs r0, 0x8
	orrs r0, r1
_081AFD82:
	strb r0, [r2, 0x9]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_81AFD5C

	thumb_func_start sav2_set_x9_depending_on_sav1_map
sav2_set_x9_depending_on_sav1_map: @ 81AFD8C
	push {lr}
	bl sav2_set_x9_bit3_when_sav1_in_pokecenter
	bl sub_81AFD2C
	bl sub_81AFD5C
	pop {r0}
	bx r0
	thumb_func_end sav2_set_x9_depending_on_sav1_map

	thumb_func_start sub_81AFDA0
sub_81AFDA0: @ 81AFDA0
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	adds r2, 0xA8
	ldr r0, [r2]
	movs r1, 0x80
	lsls r1, 8
	orrs r0, r1
	movs r1, 0x1
	orrs r0, r1
	movs r1, 0x2
	orrs r0, r1
	movs r1, 0x4
	orrs r0, r1
	movs r1, 0x10
	orrs r0, r1
	movs r1, 0x20
	orrs r0, r1
	movs r1, 0x8
	orrs r0, r1
	str r0, [r2]
	bx lr
	.pool
	thumb_func_end sub_81AFDA0

	thumb_func_start sub_81AFDD0
sub_81AFDD0: @ 81AFDD0
	ldr r0, =gSaveBlock2Ptr
	ldr r2, [r0]
	ldrb r1, [r2, 0x9]
	movs r0, 0x80
	orrs r0, r1
	strb r0, [r2, 0x9]
	bx lr
	.pool
	thumb_func_end sub_81AFDD0

	thumb_func_start AllocItemIconTemporaryBuffers
@ bool8 AllocItemIconTemporaryBuffers()
AllocItemIconTemporaryBuffers: @ 81AFDE4
	push {r4,r5,lr}
	movs r0, 0x90

