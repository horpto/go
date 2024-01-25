TEXT main.bce4(SB) /home/horpto/develop/go/test/loopbce1.go
func bce4(a, b []int) []int {
  0x45cf40		493b6610		CMPQ SP, 0x10(R14)	
  0x45cf44		0f869f000000		JBE 0x45cfe9		
  0x45cf4a		55			PUSHQ BP		
  0x45cf4b		4889e5			MOVQ SP, BP		
  0x45cf4e		4883ec20		SUBQ $0x20, SP		
	for i < len(a) && j < len(b) {
  0x45cf52		4889442430		MOVQ AX, 0x30(SP)	
  0x45cf57		48897c2448		MOVQ DI, 0x48(SP)	
  0x45cf5c		4889742450		MOVQ SI, 0x50(SP)	
  0x45cf61		48895c2438		MOVQ BX, 0x38(SP)	
	res := make([]int, len(a)+len(b))
  0x45cf66		488d0c33		LEAQ 0(BX)(SI*1), CX		
  0x45cf6a		48894c2418		MOVQ CX, 0x18(SP)		
  0x45cf6f		488d050a5f0000		LEAQ 0x5f0a(IP), AX		
  0x45cf76		4889cb			MOVQ CX, BX			
  0x45cf79		e8228afeff		CALL runtime.makeslice(SB)	
	for i < len(a) && j < len(b) {
  0x45cf7e		488b542450		MOVQ 0x50(SP), DX	
  0x45cf83		488b742438		MOVQ 0x38(SP), SI	
  0x45cf88		488b7c2448		MOVQ 0x48(SP), DI	
  0x45cf8d		4c8b442418		MOVQ 0x18(SP), R8	
  0x45cf92		4c8b4c2430		MOVQ 0x30(SP), R9	
  0x45cf97		31c9			XORL CX, CX		
  0x45cf99		31db			XORL BX, BX		
  0x45cf9b		eb03			JMP 0x45cfa0		
		k++
  0x45cf9d		48ffc3			INCQ BX			
	for i < len(a) && j < len(b) {
  0x45cfa0		4839ce			CMPQ SI, CX		
  0x45cfa3		7e21			JLE 0x45cfc6		
  0x45cfa5		4885d2			TESTQ DX, DX		
  0x45cfa8		741c			JE 0x45cfc6		
  0x45cfaa		4839ce			CMPQ SI, CX		
		ai := a[i] //+
  0x45cfad		762e			JBE 0x45cfdd		
  0x45cfaf		4d8b14c9		MOVQ 0(R9)(CX*8), R10	
		if ai < bj {
  0x45cfb3		4c3917			CMPQ 0(DI), R10		
  0x45cfb6		7ee5			JLE 0x45cf9d		
			res[k] = ai //+
  0x45cfb8		4c39c3			CMPQ BX, R8		
  0x45cfbb		7315			JAE 0x45cfd2		
  0x45cfbd		4c8914d8		MOVQ R10, 0(AX)(BX*8)	
			i++
  0x45cfc1		48ffc1			INCQ CX			
  0x45cfc4		ebd7			JMP 0x45cf9d		
	return res
  0x45cfc6		4c89c3			MOVQ R8, BX		
  0x45cfc9		4889d9			MOVQ BX, CX		
  0x45cfcc		4883c420		ADDQ $0x20, SP		
  0x45cfd0		5d			POPQ BP			
  0x45cfd1		c3			RET			
			res[k] = ai //+
  0x45cfd2		4889d8			MOVQ BX, AX			
  0x45cfd5		4c89c1			MOVQ R8, CX			
  0x45cfd8		e8c3d3ffff		CALL runtime.panicIndex(SB)	
		ai := a[i] //+
  0x45cfdd		4889c8			MOVQ CX, AX			
  0x45cfe0		4889f1			MOVQ SI, CX			
  0x45cfe3		e8b8d3ffff		CALL runtime.panicIndex(SB)	
  0x45cfe8		90			NOPL				
func bce4(a, b []int) []int {
  0x45cfe9		4889442408		MOVQ AX, 0x8(SP)			
  0x45cfee		48895c2410		MOVQ BX, 0x10(SP)			
  0x45cff3		48894c2418		MOVQ CX, 0x18(SP)			
  0x45cff8		48897c2420		MOVQ DI, 0x20(SP)			
  0x45cffd		4889742428		MOVQ SI, 0x28(SP)			
  0x45d002		4c89442430		MOVQ R8, 0x30(SP)			
  0x45d007		e814cdffff		CALL runtime.morestack_noctxt.abi0(SB)	
  0x45d00c		488b442408		MOVQ 0x8(SP), AX			
  0x45d011		488b5c2410		MOVQ 0x10(SP), BX			
  0x45d016		488b4c2418		MOVQ 0x18(SP), CX			
  0x45d01b		488b7c2420		MOVQ 0x20(SP), DI			
  0x45d020		488b742428		MOVQ 0x28(SP), SI			
  0x45d025		4c8b442430		MOVQ 0x30(SP), R8			
  0x45d02a		e911ffffff		JMP main.bce4(SB)			
