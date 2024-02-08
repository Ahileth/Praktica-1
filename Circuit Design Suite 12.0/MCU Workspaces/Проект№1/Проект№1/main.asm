$MOD51 
org 00h												
mov	r2,#00h				
mov dptr,#100h			
mov r1,#055h			
mov p1,#0h				
loop:							
mov a,r1				
movx @dptr,a 					
movx a,@dptr			
mov r2,#0ffh				
xrl a,#055h;			
jnz exit 								
mov	r2,#00h				
inc dptr								
mov a,dph						
xrl a,#017h;			
jnz loop 								
mov	a,dpl						
xrl a,#0E8h;			
jnz loop 								
exit:
cjne r2,#0ffh,noerror	
setb P1.1 							
noerror:	
END