org 100h

mov ax, 13h
int 10h

mov bh, 0 
  
;call fill_background    

mov al, COLOR1
mov cx, 20
mov si, 150
mov dx, 10
mov di, 10
call draw_line   

mov al, COLOR1
mov cx, 60
mov si, 190
mov dx, 50
mov di, 50
call draw_line

mov al, COLOR1
mov cx, 60
mov si, 190
mov dx, 180
mov di, 180
call draw_line

mov al, COLOR1
mov cx, 190
mov si, 190
mov dx, 50
mov di, 180  
call draw_line    

mov al, COLOR1
mov cx, 60
mov si, 60
mov dx, 50
mov di, 180
call draw_line

mov al, COLOR1
mov cx, 20
mov si, 20
mov dx, 10
mov di, 140
call draw_line 

mov al, COLOR1
mov cx, 20
mov si, 55
mov dx, 140
mov di, 140
call draw_line

mov al, COLOR1
mov cx, 65
mov si, 150
mov dx, 140
mov di, 140
call draw_line  

mov al, COLOR1
mov cx, 150
mov si, 150
mov dx, 55
mov di, 140
call draw_line

mov al, COLOR1
mov cx, 150
mov si, 150
mov dx, 10
mov di, 45
call draw_line 

mov al, COLOR2
mov cx, 21
mov si, 30
mov dx, 11
mov di, 20         
call draw_line


;mov ax, 3
;int 10h

ret     
    
fill_background proc   
    mov ah, 0ch
    mov al, BG_COLOR
    mov cx, XMAX-1
    mov dx, YMAX-1    
    l : int 10h
        dec cx
        cmp cx, -1
        jnz l
        mov cx, XMAX   
        dec dx
        cmp dx, -1
        jnz l
    ret  
endp fill_background     

draw_line1 proc   
    mov ah, 0ch
    mov al, COLOR1
    mov cx, 150
    mov dx, 10
    l1: int 10h
        dec cx
        cmp cx, 19
        jnz l1 
    ret
endp draw_line1
             
draw_line2 proc
    mov ah, 0ch
    mov al, COLOR1
    mov cx, 190
    mov dx, 50
    l2: int 10h
        dec cx
        cmp cx, 59
        jnz l2             
    ret
endp draw_line2 

draw_line3 proc
    mov ah, 0ch
    mov al, COLOR1
    mov cx, 190
    mov dx, 180
    l3: int 10h
        dec cx
        cmp cx, 59
        jnz l3             
    ret
endp draw_line3

draw_line4 proc
    mov ah, 0ch
    mov al, COLOR1
    mov cx, 190
    mov dx, 180
    l4: int 10h
        dec dx
        cmp dx, 50
        jnz l4             
    ret
endp draw_line4 

draw_line5 proc
    mov ah, 0ch
    mov al, COLOR1
    mov cx, 60
    mov dx, 180
    l5: int 10h
        dec dx
        cmp dx, 50
        jnz l5             
    ret
endp draw_line5

draw_line6 proc
    mov ah, 0ch
    mov al, COLOR1
    mov cx, 20
    mov dx, 140
    l6: int 10h
        dec dx
        cmp dx, 10
        jnz l6             
    ret
endp draw_line6  

draw_line7 proc
    mov ah, 0ch
    mov al, COLOR1
    mov cx, 55
    mov dx, 140
    l7: int 10h
        dec cx
        cmp cx, 20
        jnz l7             
    ret
draw_line7 endp    

draw_line8 proc
    mov ah, 0ch
    mov al, COLOR1
    mov cx, 150
    mov dx, 140
    l8: int 10h
        dec cx
        cmp cx, 65
        jnz l8             
    ret
draw_line8 endp   

draw_line9 proc
    mov ah, 0ch
    mov al, COLOR1
    mov cx, 150
    mov dx, 140
    l9: int 10h
        dec dx
        cmp dx, 55
        jnz l9             
    ret
draw_line9 endp

draw_line10 proc
    mov ah, 0ch
    mov al, COLOR1
    mov cx, 150
    mov dx, 45
    l10: int 10h
        dec dx
        cmp dx, 10
        jnz l10             
    ret
draw_line10 endp 

draw_line proc 
    mov bl, 2
    mov ah, 0ch
    _l: int 10h
        cmp dx, di
        jnz _n
        dec bl 
        cmp cx, si
        jnz _c
        dec bl
    _c: cmp bl, 0
        jz _e
        inc cx
        inc dx 
        jmp _l
    _e:           
    ret
draw_line endp

BLACK equ 0           
BLUE equ 1
RED equ 4
WHITE equ 7
BG_COLOR equ WHITE
COLOR1 equ WHITE
COLOR2 equ RED
XMAX equ 320
YMAX equ 200 




