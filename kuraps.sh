#!/bin/bash
echo Selamat datang tod, Siapa nama lu? #tulisan keluar
read nick #membaca yang ditulis
sleep 0.03
echo "      _.-^^---....,,-- "
sleep 0.03
echo "  _--     Kuraps Here   --_ "
sleep 0.03
echo " <       NothingLast       >) "
sleep 0.03
echo " |         Forever :V      | "
sleep 0.03
echo "  \._    ig : kurapsss     _./ "
sleep 0.03
echo "     '''--. . , ; .--'''    " 
sleep 0.03
echo "           | |   |           "
sleep 0.03
echo "        .-=||  | |=-.    "
sleep 0.03
echo "        '-=#$%&%$#=-'    "
sleep 0.03
echo "           | ;  :|      "
sleep 0.03
echo "  _____.,-#%&$@%#&#~,._____ "
sleep 0.03
echo "============================="
sleep 2
echo "== Tool by kuraps Tnx to Ray =="
sleep 0.3
echo "==   youtube: MVREAK DEV   =="
sleep 0.7
echo "============================="
echo Selamat datang $nick ":)"
get_url=$(curl -s http://zlucifer.com/api/sms.php)
cek='curl -s '$get_url # check status
response=`curl -s -o /dev/null -w "%{http_code}" $cek`
if [[ $response = *sleeping* ]]; then
    echo
    echo "Website Offline/Restart untuk sementara"
else
    echo
    echo "Silahkan masukan nomor hp target klean "
    echo contoh 081234XNXX
    read target # input no telp
    echo
    echo "Berapa random sms yang mau dikirim?"
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
            echo "Jangan close dulu aplikasi sebelum spam selesai YA GUYS MUMEK LU"            
            echo "========================================"
            target_do=$get_url'/sms.php?nomor='$target'&paket='$paket


            CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
            echo " HACKER TAPI PALSU :V "
            echo
            echo " NURI PELIT BEASISWA ASW "
            echo " BY KURAPS TI MGD NURI ASW"
            echo "======================================="
            fi
            let i++
            done
    else
        echo "ada KESALAHAN"
    fi
fi
