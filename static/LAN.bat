@echo off
echo ���ͺ�ԧ�ǧ�Ź
for /l %%a in (1,1,255) do (
  for /f "tokens=1,2,3,4,*" %%b in ('ping 192.168.1.%%a -n 1') do (
    if "%%b"=="Request" ( echo [�������ö���¡��  ] 192.168.1.%%a )
    if "%%b"=="Reply"   ( if "%%e"=="Destination" echo [�������������    ] 192.168.1.%%a)
    if "%%b"=="Reply"   ( if "%%e"=="bytes=32"    echo [��������������  ] 192.168.1.%%a)
  )
)
