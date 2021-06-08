$site = Read-Host "Digite o site:"
$web = Invoke-WebRequest -uri "$site" -Method Options
echo "O servidor roda:"
$web.headers.server
echo ""
echo "O servidor aceita os metodos:"
$web.headers.allow
echo ""
echo "Links Encontrados: "
$web2 = Invoke-WebRequest -uri "$site"
$web2.links.href | Select-String http://
