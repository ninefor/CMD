@echo off 
rasdial JF sh00321 wandong
set /P fwdw=���䷢�ĵ�λ���س�������
sqlcmd -U sa -P XXXboy123 -S 192.168.0.5 -d LFWeb /Q "INSERT into Department_Info (dept_code,dept_name) values ((select max(convert(int,dept_code))+1 from Department_Info),'$(fwdw)')"
rasphone -h JF