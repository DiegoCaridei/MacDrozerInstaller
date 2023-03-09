python2.7 get-pip.py
sudo python2.7 get-pip.py
pip2.7 install twisted
pip2.7 install drozer-2.4.4-py2-none-any.whl
while true; do
    read -p "Is your Android device connected via USB " yn
    case $yn in
        [Yy]* ) adb connect;adb install drozer-agent-2.3.4.apk; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Using your Android device, start the dozer application and then press type y to contine" yn
    case $yn in
        [Yy]* ) adb forward tcp:31415 tcp:31415;drozer console connect; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done