# Monica Lora-Gateway Project
<!-- Short description of the project. -->

Project that contains the Lora library, the Lora-Bot and all its dependencies. This readme is meant for describing the application with all dependencies, see `Deployment` if you want to work with.

<!-- A teaser figure may be added here. It is best to keep the figure small (<500KB) and in the same repo -->
![Preview](https://raw.githubusercontent.com/MONICA-Project/lora-map/v1.2.10/Lora-Map.jpg)

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

[Checkout this repo](#Checkout) and run: `msbuild /p:Configuration="Release" /p:Platform="Any CPU" /p:OutputPath="./bin/Release/" "Lora-Bot/Lora-Bot.sln"`

You must have `mono-complete`, `libmono-posix4.0-cil` and `wiringpi` installed

If you want to have deb files run `cd Lora-Map/Lora-Map/dpkg` and `bash make-deb.sh armhf` that you can install with `sudo dpkg -i armhf-loramap_x.x-x.deb`

### Prerequisite

On Windows you need C# Runtime 4.7.2, on linux you need Mono, installation instructions are available [here](https://www.mono-project.com/download/stable/#download-lin-debian). You need only setup apt.

If you install the deb packets, it will check and install all dependencies.

This Software also need a running Mqtt-Server that is accessable from the Raspberry Pi. You can install a local one, or somewhere in the lan, or even in the internet (that is not recommended, because the Library did not fully support Crypo, i recooment a local server, that forward all traffic, you find more in this [documentation](https://mosquitto.org/man/mosquitto-conf-5.html) over creating mosquitto bridges.)

## Contributing
Contributions are welcome. 

Please fork, make your changes, and submit a pull request. For major changes, please open an issue first and discuss it with the other authors.

## Affiliation
![MONICA](https://github.com/MONICA-Project/template/raw/master/monica.png)  
This work is supported by the European Commission through the [MONICA H2020 PROJECT](https://www.monica-project.eu) under grant agreement No 732350.

