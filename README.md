# Monica Lora-Gateway Project
<!-- Short description of the project. -->

Project that contains the Lora library, the Lora-Bot and all its dependencies. This readme is meant for describing the application with all dependencies, see `Deployment` if you want to work with.

<!-- A teaser figure may be added here. It is best to keep the figure small (<500KB) and in the same repo -->

## Getting Started
<!-- Instruction to make the project up and running. -->

The project documentation is available on the [Wiki](https://github.com/MONICA-Project/lora-bot/wiki) of lora-bot.

## Deployment
<!-- Deployment/Installation instructions. If this is software library, change this section to "Usage" and give usage examples -->

### Checkout

Please checkout this project with it submodules:
```bash
git clone https://github.com/MONICA-Project/lora-project
bash update.sh 
```

### Raspberry Pi

Install it with `sudo dpkg -i armhf-lorabot_x.x-x.deb`. Then rename all config files in `/etc/lorabot/` from `.conf.example` to `.conf` and maybe modify them.

## Development
<!-- Developer instructions. -->

### Build

This depends on the OS you running.

#### Windows

[Checkout this repo](#Checkout) and open `Lora-Bot/Lora-Bot.sln` in Visual Studio. Then build a Release (or Debug). You can not run it under windwos, because you can't access SPI or GPIO's.

On Windows you can create with `Lora-Bot/Lora-Bot/dpkg/create-Builds.bat` deb files for Linux, if you have WSL installed.

#### Linux

[Checkout this repo](#Checkout) and run: `dotnet build Lora-Bot.sln --configuration Release`

You must have `dotnet-sdk-3.0` installed

If you want to have deb files run `cd Lora-Map/Lora-Map/dpkg` and `bash make-deb.sh armhf` that you can install with `sudo dpkg -i armhf-loramap_x.x-x.deb`

### Prerequisite

You need C# .NET Core 3. If you want to install the software on a Raspi, you need the folloing steps.
* [Download .NET Core Runtime 3.1.0](https://dotnet.microsoft.com/download/dotnet-core/3.1) for ARM32
```bash
wget [download link]
sudo mkdir /usr/share/dotnet
sudo tar zxf dotnet-runtime-3.1.0-linux-arm.tar.gz -C /usr/share/dotnet
rm dotnet-runtime-3.1.0-linux-arm.tar.gz
sudo ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet 
```

Apt can't check if dotnet is installed, so do it before to avoid that the software will not be run.

If you install the deb packets, it will check and install all dependencies.

This Software also need a running Mqtt-Server that is accessable from the Raspberry Pi. You can install a local one, or somewhere in the lan, or even in the internet (that is not recommended, because the Library did not fully support Crypo, i recooment a local server, that forward all traffic, you find more in this [documentation](https://mosquitto.org/man/mosquitto-conf-5.html) over creating mosquitto bridges.)

## Contributing
Contributions are welcome. 

Please fork, make your changes, and submit a pull request. For major changes, please open an issue first and discuss it with the other authors.

## Affiliation
![MONICA](https://github.com/MONICA-Project/template/raw/master/monica.png)  
This work is supported by the European Commission through the [MONICA H2020 PROJECT](https://www.monica-project.eu) under grant agreement No 732350.

