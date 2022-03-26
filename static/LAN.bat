@echo off
echo ทดสอบปิงในวงแลน
for /l %%a in (1,1,255) do (
  for /f "tokens=1,2,3,4,*" %%b in ('ping 192.168.1.%%a -n 1') do (
    if "%%b"=="Request" ( echo [ไม่สามารถเรียกได้  ] 192.168.1.%%a )
    if "%%b"=="Reply"   ( if "%%e"=="Destination" echo [ไม่ได้เชื่อมต่อ    ] 192.168.1.%%a)
    if "%%b"=="Reply"   ( if "%%e"=="bytes=32"    echo [เชื่อมต่อได้แล้ว  ] 192.168.1.%%a)
  )
)
