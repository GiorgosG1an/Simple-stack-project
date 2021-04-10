TITLE Simple Stack project
INCLUDE Irvine32.inc

.data
	mText   BYTE "Project by Giorgos Giannopoulos",0dh,0ah,0
	mbye  BYTE "Thank you",0
	x dword 10d
	y dword 5d
	z sdword -25d


.code
MAIN PROC
	mov edx,OFFSET mText
	mov eax,x
	call WriteString
	push  x
	call writeint
	call crlf
	mov ebx,y
	add eax,ebx
	call writeint
	call crlf
	mov ecx,z
	add eax,ecx
	call writeint
	call crlf
	pop x
	mov eax,x
	call writeint
	call crlf
	
	mov edx,OFFSET mbye
	call Writestring

	exit
MAIN endp

END MAIN