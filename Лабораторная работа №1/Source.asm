.686
.model flat,stdcall
.stack 100h
.data
X DW 103;
Y DW 12;
M DW ?;
.code
ExitProcess PROTO STDCALL :DWORD
Start:

MOV ax,X; // ������� ax = X. X(16)=103 X(2)=1100111
MOV bx,Y; // ������� bx = Y. Y(16)=12  Y(2)=1100
IMUL bx, 4; // ��������� bx �� 4. ��������� � ax. ax(16)=B80 ax(10)=2944
SUB ax,bx; //��������� ���������� ����������
XOR ax,bx; // ���������� �������� ����� ���������� ��������� � Y
MOV M,ax; // ���������� ���������� �������� �� �������� ax/ ax(16)=B7A ax(10)=2938
exit:
Invoke ExitProcess,1
End Start
