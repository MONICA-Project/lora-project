#!/bin/bash
echo "Pull Librarys/litjson"
if [ -a Librarys/litjson/.git ] 
then
	cd Librarys/litjson
	git pull
	cd ..
	cd ..
else
	git submodule update --init --  Librarys/litjson
	cd Librarys/litjson
	git checkout master
	cd ..
	cd ..
fi

echo "Pull Librarys/mqtt"
if [ -a Librarys/mqtt/.git ] 
then
	cd Librarys/mqtt
	git pull
	cd ..
	cd ..
else
	git submodule update --init --  Librarys/mqtt
	cd Librarys/mqtt
	git checkout master
	cd ..
	cd ..
fi

echo "Pull Librarys/RaspberryIO_26"
if [ -a Librarys/RaspberryIO_26/.git ] 
then
	cd Librarys/RaspberryIO_26
	git pull
	cd ..
	cd ..
else
	git submodule update --init --  Librarys/RaspberryIO_26
	cd Librarys/RaspberryIO_26
	git checkout master
	cd ..
	cd ..
fi

echo "Pull Lora"
if [ -a Lora/.git ] 
then
	cd Lora
	git pull
	cd ..
else
	git submodule update --init --  Lora
	cd Lora
	git checkout master
	cd ..
fi

echo "Pull Lora-Bot"
if [ -a Lora-Bot/.git ] 
then
	cd Lora-Bot
	git pull
	cd ..
else
	git submodule update --init --  Lora-Bot
	cd Lora-Bot
	git checkout master
	cd ..
fi

echo "Pull Utils/Bot-Utils"
if [ -a Utils/Bot-Utils/.git ] 
then
	cd Utils/Bot-Utils
	git pull
	cd ..
	cd ..
else
	git submodule update --init --  Utils/Bot-Utils
	cd Utils/Bot-Utils
	git checkout master
	cd ..
	cd ..
fi

echo "Pull Utils/ConnectorDataMqtt"
if [ -a Utils/ConnectorDataMqtt/.git ] 
then
	cd Utils/ConnectorDataMqtt
	git pull
	cd ..
	cd ..
else
	git submodule update --init --  Utils/ConnectorDataMqtt
	cd Utils/ConnectorDataMqtt
	git checkout master
	cd ..
	cd ..
fi

echo "Pull Utils/Iot-Interfaces"
if [ -a Utils/Iot-Interfaces/.git ] 
then
	cd Utils/Iot-Interfaces
	git pull
	cd ..
	cd ..
else
	git submodule update --init --  Utils/Iot-Interfaces
	cd Utils/Iot-Interfaces
	git checkout master
	cd ..
	cd ..
fi

echo "Pull Utils/Utils"
if [ -a Utils/Utils/.git ] 
then
	cd Utils/Utils
	git pull
	cd ..
	cd ..
else
	git submodule update --init --  Utils/Utils
	cd Utils/Utils
	git checkout master
	cd ..
	cd ..
fi

echo "Pull Utils/Utils-IoT"
if [ -a Utils/Utils-IoT/.git ] 
then
	cd Utils/Utils-IoT
	git pull
	cd ..
	cd ..
else
	git submodule update --init --  Utils/Utils-IoT
	cd Utils/Utils-IoT
	git checkout master
	cd ..
	cd ..
fi

if [ -z "$1" ]
then
	read -p "Please Press key"
fi