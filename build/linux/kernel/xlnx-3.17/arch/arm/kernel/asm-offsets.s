	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"asm-offsets.c"
@ GNU C (Sourcery CodeBench Lite 2014.05-23) version 4.8.3 20140320 (prerelease) (arm-xilinx-linux-gnueabi)
@	compiled by GNU C version 4.7.2, GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include
@ -I arch/arm/include/generated
@ -I /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include
@ -I include
@ -I /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/include/uapi
@ -I arch/arm/include/generated/uapi
@ -I /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/uapi
@ -I include/generated/uapi
@ -I /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/.
@ -I .
@ -iprefix /opt/petalinux/petalinux-v2014.4-final/tools/linux-i386/arm-xilinx-linux-gnueabi/bin/../lib/gcc/arm-xilinx-linux-gnueabi/4.8.3/
@ -isysroot /opt/petalinux/petalinux-v2014.4-final/tools/linux-i386/arm-xilinx-linux-gnueabi/bin/../arm-xilinx-linux-gnueabi/libc
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(asm_offsets)
@ -D KBUILD_MODNAME=KBUILD_STR(asm_offsets) -D __CS_SOURCERYGXX_MAJ__=2014
@ -D __CS_SOURCERYGXX_MIN__=5 -D __CS_SOURCERYGXX_REV__=23
@ -isystem /opt/petalinux/petalinux-v2014.4-final/tools/linux-i386/arm-xilinx-linux-gnueabi/bin/../lib/gcc/arm-xilinx-linux-gnueabi/4.8.3/include
@ -include /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/include/linux/kconfig.h
@ -MD arch/arm/kernel/.asm-offsets.s.d
@ /opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu
@ -auxbase-strip arch/arm/kernel/asm-offsets.s -Os -Wall -Wundef
@ -Wstrict-prototypes -Wno-trigraphs -Werror=implicit-function-declaration
@ -Wno-format-security -Wno-maybe-uninitialized -Wframe-larger-than=1024
@ -Wno-unused-but-set-variable -Wdeclaration-after-statement
@ -Wno-pointer-sign -Werror=implicit-int -Werror=strict-prototypes
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -funwind-tables
@ -fno-delete-null-pointer-checks -fno-stack-protector -fomit-frame-pointer
@ -fno-var-tracking-assignments -fno-strict-overflow -fconserve-stack
@ -fverbose-asm --param allow-store-data-races=0
@ options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments
@ -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
@ -fdefer-pop -fdevirtualize -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
@ -fif-conversion2 -findirect-inlining -finline -finline-atomics
@ -finline-functions -finline-functions-called-once
@ -finline-small-functions -fipa-cp -fipa-profile -fipa-pure-const
@ -fipa-reference -fipa-sra -fira-hoist-pressure -fira-share-save-slots
@ -fira-share-spill-slots -fivopts -fkeep-static-consts
@ -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-register-move
@ -foptimize-sibling-calls -fpartial-inlining -fpeephole -fpeephole2
@ -fprefetch-loop-arrays -freg-struct-return -fregmove -freorder-blocks
@ -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns2
@ -fsection-anchors -fshow-column -fshrink-wrap -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
@ -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
@ -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
@ -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename -ftree-cselim
@ -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
@ -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
@ -ftree-tail-merge -ftree-ter -ftree-vect-loop-version -ftree-vrp
@ -funit-at-a-time -funwind-tables -fuse-caller-save -fverbose-asm
@ -fzero-initialized-in-bss -marm -mglibc -mlittle-endian -msched-prolog
@ -munaligned-access -mvectorize-with-neon-quad

#APP
	.macro	it, cond
	.endm
	.macro	itt, cond
	.endm
	.macro	ite, cond
	.endm
	.macro	ittt, cond
	.endm
	.macro	itte, cond
	.endm
	.macro	itet, cond
	.endm
	.macro	itee, cond
	.endm
	.macro	itttt, cond
	.endm
	.macro	ittte, cond
	.endm
	.macro	ittet, cond
	.endm
	.macro	ittee, cond
	.endm
	.macro	itett, cond
	.endm
	.macro	itete, cond
	.endm
	.macro	iteet, cond
	.endm
	.macro	iteee, cond
	.endm

	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 50 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TSK_ACTIVE_MM #436 offsetof(struct task_struct, active_mm)	@
@ 0 "" 2
@ 54 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 55 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TI_FLAGS #0 offsetof(struct thread_info, flags)	@
@ 0 "" 2
@ 56 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TI_PREEMPT #4 offsetof(struct thread_info, preempt_count)	@
@ 0 "" 2
@ 57 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TI_ADDR_LIMIT #8 offsetof(struct thread_info, addr_limit)	@
@ 0 "" 2
@ 58 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TI_TASK #12 offsetof(struct thread_info, task)	@
@ 0 "" 2
@ 59 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TI_EXEC_DOMAIN #16 offsetof(struct thread_info, exec_domain)	@
@ 0 "" 2
@ 60 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TI_CPU #20 offsetof(struct thread_info, cpu)	@
@ 0 "" 2
@ 61 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TI_CPU_DOMAIN #24 offsetof(struct thread_info, cpu_domain)	@
@ 0 "" 2
@ 62 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TI_CPU_SAVE #28 offsetof(struct thread_info, cpu_context)	@
@ 0 "" 2
@ 63 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TI_USED_CP #80 offsetof(struct thread_info, used_cp)	@
@ 0 "" 2
@ 64 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TI_TP_VALUE #96 offsetof(struct thread_info, tp_value)	@
@ 0 "" 2
@ 65 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TI_FPSTATE #104 offsetof(struct thread_info, fpstate)	@
@ 0 "" 2
@ 67 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->TI_VFPSTATE #248 offsetof(struct thread_info, vfpstate)	@
@ 0 "" 2
@ 69 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->VFP_CPU #272 offsetof(union vfp_state, hard.cpu)	@
@ 0 "" 2
@ 81 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 82 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_R0 #0 offsetof(struct pt_regs, ARM_r0)	@
@ 0 "" 2
@ 83 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_R1 #4 offsetof(struct pt_regs, ARM_r1)	@
@ 0 "" 2
@ 84 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_R2 #8 offsetof(struct pt_regs, ARM_r2)	@
@ 0 "" 2
@ 85 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_R3 #12 offsetof(struct pt_regs, ARM_r3)	@
@ 0 "" 2
@ 86 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_R4 #16 offsetof(struct pt_regs, ARM_r4)	@
@ 0 "" 2
@ 87 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_R5 #20 offsetof(struct pt_regs, ARM_r5)	@
@ 0 "" 2
@ 88 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_R6 #24 offsetof(struct pt_regs, ARM_r6)	@
@ 0 "" 2
@ 89 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_R7 #28 offsetof(struct pt_regs, ARM_r7)	@
@ 0 "" 2
@ 90 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_R8 #32 offsetof(struct pt_regs, ARM_r8)	@
@ 0 "" 2
@ 91 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_R9 #36 offsetof(struct pt_regs, ARM_r9)	@
@ 0 "" 2
@ 92 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_R10 #40 offsetof(struct pt_regs, ARM_r10)	@
@ 0 "" 2
@ 93 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_FP #44 offsetof(struct pt_regs, ARM_fp)	@
@ 0 "" 2
@ 94 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_IP #48 offsetof(struct pt_regs, ARM_ip)	@
@ 0 "" 2
@ 95 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_SP #52 offsetof(struct pt_regs, ARM_sp)	@
@ 0 "" 2
@ 96 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_LR #56 offsetof(struct pt_regs, ARM_lr)	@
@ 0 "" 2
@ 97 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_PC #60 offsetof(struct pt_regs, ARM_pc)	@
@ 0 "" 2
@ 98 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_PSR #64 offsetof(struct pt_regs, ARM_cpsr)	@
@ 0 "" 2
@ 99 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_OLD_R0 #68 offsetof(struct pt_regs, ARM_ORIG_r0)	@
@ 0 "" 2
@ 100 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->S_FRAME_SIZE #72 sizeof(struct pt_regs)	@
@ 0 "" 2
@ 101 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 103 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->L2X0_R_PHY_BASE #0 offsetof(struct l2x0_regs, phy_base)	@
@ 0 "" 2
@ 104 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->L2X0_R_AUX_CTRL #4 offsetof(struct l2x0_regs, aux_ctrl)	@
@ 0 "" 2
@ 105 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->L2X0_R_TAG_LATENCY #8 offsetof(struct l2x0_regs, tag_latency)	@
@ 0 "" 2
@ 106 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->L2X0_R_DATA_LATENCY #12 offsetof(struct l2x0_regs, data_latency)	@
@ 0 "" 2
@ 107 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->L2X0_R_FILTER_START #16 offsetof(struct l2x0_regs, filter_start)	@
@ 0 "" 2
@ 108 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->L2X0_R_FILTER_END #20 offsetof(struct l2x0_regs, filter_end)	@
@ 0 "" 2
@ 109 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->L2X0_R_PREFETCH_CTRL #24 offsetof(struct l2x0_regs, prefetch_ctrl)	@
@ 0 "" 2
@ 110 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->L2X0_R_PWR_CTRL #28 offsetof(struct l2x0_regs, pwr_ctrl)	@
@ 0 "" 2
@ 111 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 114 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->MM_CONTEXT_ID #360 offsetof(struct mm_struct, context.id.counter)	@
@ 0 "" 2
@ 115 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 117 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->VMA_VM_MM #32 offsetof(struct vm_area_struct, vm_mm)	@
@ 0 "" 2
@ 118 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->VMA_VM_FLAGS #40 offsetof(struct vm_area_struct, vm_flags)	@
@ 0 "" 2
@ 119 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 120 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->VM_EXEC #4 VM_EXEC	@
@ 0 "" 2
@ 121 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 122 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->PAGE_SZ #4096 PAGE_SIZE	@
@ 0 "" 2
@ 123 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 124 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->SYS_ERROR0 #10420224 0x9f0000	@
@ 0 "" 2
@ 125 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 126 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->SIZEOF_MACHINE_DESC #104 sizeof(struct machine_desc)	@
@ 0 "" 2
@ 127 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->MACHINFO_TYPE #0 offsetof(struct machine_desc, nr)	@
@ 0 "" 2
@ 128 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->MACHINFO_NAME #4 offsetof(struct machine_desc, name)	@
@ 0 "" 2
@ 129 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 130 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->PROC_INFO_SZ #52 sizeof(struct proc_info_list)	@
@ 0 "" 2
@ 131 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->PROCINFO_INITFUNC #16 offsetof(struct proc_info_list, __cpu_flush)	@
@ 0 "" 2
@ 132 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->PROCINFO_MM_MMUFLAGS #8 offsetof(struct proc_info_list, __cpu_mm_mmu_flags)	@
@ 0 "" 2
@ 133 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->PROCINFO_IO_MMUFLAGS #12 offsetof(struct proc_info_list, __cpu_io_mmu_flags)	@
@ 0 "" 2
@ 134 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 142 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->CPU_SLEEP_SIZE #36 offsetof(struct processor, suspend_size)	@
@ 0 "" 2
@ 143 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->CPU_DO_SUSPEND #40 offsetof(struct processor, do_suspend)	@
@ 0 "" 2
@ 144 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->CPU_DO_RESUME #44 offsetof(struct processor, do_resume)	@
@ 0 "" 2
@ 150 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->SLEEP_SAVE_SP_SZ #8 sizeof(struct sleep_save_sp)	@
@ 0 "" 2
@ 151 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->SLEEP_SAVE_SP_PHYS #4 offsetof(struct sleep_save_sp, save_ptr_stash_phys)	@
@ 0 "" 2
@ 152 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->SLEEP_SAVE_SP_VIRT #0 offsetof(struct sleep_save_sp, save_ptr_stash)	@
@ 0 "" 2
@ 154 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 155 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->DMA_BIDIRECTIONAL #0 DMA_BIDIRECTIONAL	@
@ 0 "" 2
@ 156 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->DMA_TO_DEVICE #1 DMA_TO_DEVICE	@
@ 0 "" 2
@ 157 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->DMA_FROM_DEVICE #2 DMA_FROM_DEVICE	@
@ 0 "" 2
@ 158 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
@ 159 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->CACHE_WRITEBACK_ORDER #6 __CACHE_WRITEBACK_ORDER	@
@ 0 "" 2
@ 160 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->CACHE_WRITEBACK_GRANULE #64 __CACHE_WRITEBACK_GRANULE	@
@ 0 "" 2
@ 161 "/opt/petalinux/petalinux-v2014.4-final/components/linux-kernel/xlnx-3.17/arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	main, .-main
	.ident	"GCC: (Sourcery CodeBench Lite 2014.05-23) 4.8.3 20140320 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
