# Script: tong_hop.sh
# Tac gia: Ngô Thu Thúy
# Ngay tao: 2026-11-11
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt
Get-Content logs/rental.log | Select-String "status=404" >> logs/tong_hop.txt
Get-Content logs/rental.log | Select-String "status=500" | Measure-Object >> logs/tong_hop.txt
Write-Host "HOAN_THIEN!"

