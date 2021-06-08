param ($ip)
if ($ip){
echo "Rita Lima - Passando parametros"
echo "Modo de uso: .\passando_parametros 192.168.0.1"
}else{
echo "Efetuando ping no Host: $ip"
ping -n 1 $ip | Select-String "bytes-32"
}