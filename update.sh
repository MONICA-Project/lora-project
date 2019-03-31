echo "Switch to subdir Librarys"
cd Librarys
echo "Pull litjson"
cd litjson
git pull
cd ..
echo "Pull Mono.Posix"
cd Mono.Posix
git pull
cd ..
echo "Pull mqtt"
cd mqtt
git pull
cd ..
echo "Pull RaspberryIO"
cd RaspberryIO
git pull
cd ..
cd ..
echo "Pull Lora"
cd Lora
git pull
cd ..
echo "Pull Lora-Bot"
cd Lora-Bot
git pull
cd ..
echo "Switch to subdir Utils"
cd Utils
echo "Pull Bot-Utils"
cd Bot-Utils
git pull
cd ..
echo "Pull ConnectorDataMqtt"
cd ConnectorDataMqtt
git pull
cd ..
echo "Pull Iot-Interfaces"
cd Iot-Interfaces
git pull
cd ..
echo "Pull Utils"
cd Utils
git pull
cd ..
echo "Pull Utils-IoT"
cd Utils-IoT
git pull
cd ..
read -p "Press return"