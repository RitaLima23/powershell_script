#RITA LIMA - PING SWEEP
param ($p1)
if(!$p1){
echo "RITA LIMA - PROGRAM"
echo "Exemplo de uso: .\ping_sweep.ps1 192.168.0"
}else{
foreach ($ip in 1...254){
try{$resp = ping -n 1 "$p1.$ip" | Select-String "bytes=32"
$resp.Line.Split(' ')[2] -replace ":", " "
}catch {}
 }
  } 