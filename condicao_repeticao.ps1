﻿param ($p1)
if (!$p1){
echo "Rita Lima - Program"
echo "Exemplo de uso: .\script2.ps1 192.168.0"
}else{
foreach ($ip in 1..254){
ping -n 1 "$p1.$ip" | Select-String "bytes=32"
}
}
