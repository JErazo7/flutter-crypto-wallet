
# flutter-crypto-wallet

* Developed with 💙 by [Josue Erazo][profile_link] # 🏋️
* Dockerized by Marcello de Sales [Marcello de Sales][marcello_profile_link]

[![License: MIT][license_badge]][license_link]

A multiplatform (Android, iOS, Web and macOS) crypto-wallet example created with Flutter and [CoinGecko API](https://www.coingecko.com/es).
  


 - Web

![Web](https://raw.githubusercontent.com/JErazo7/flutter-crypto-wallet/readme/screenshots/web.png)
  
  - iOS - macOs - Android 
  
  ![iOS - macOs - Android](https://raw.githubusercontent.com/JErazo7/flutter-crypto-wallet/readme/screenshots/devices.png)

## Architecture 🚀

This project is developed under Clean Architecture. Based on the following scheme:
![enter image description here](https://resocoder.com/wp-content/uploads/2020/03/DDD-Flutter-Diagram-v3.svg)

# Run Web Server

* Run with docker without Flutter
  * Just install Docker Engine in any Operating System
  * Run the command `docker-compose up --build`
  * Go to http://localhost:4040

```console
$ docker-compose up --build
Building crypto-wallet
[+] Building 210.3s (20/20) FINISHED
 => [internal] load build definition from Dockerfile                                                                              0.1s
 => => transferring dockerfile: 37B                                                                                               0.0s
 => [internal] load .dockerignore                                                                                                 0.1s
 => => transferring context: 2B                                                                                                   0.0s
 => [internal] load metadata for docker.io/library/debian:latest                                                                  1.3s
 => [auth] library/debian:pull token for registry-1.docker.io                                                                     0.0s
 => [internal] load build context                                                                                                 0.2s
 => => transferring context: 42.29kB                                                                                              0.1s
 => [ 1/14] FROM docker.io/library/debian:latest@sha256:33a8231b1ec668c044b583971eea94fff37151de3a1d5a3737b08665300c8a0b          0.0s
 => CACHED [ 2/14] RUN apt-get update                                                                                             0.0s
 => CACHED [ 3/14] RUN apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib3  0.0s
 => CACHED [ 4/14] RUN apt-get clean                                                                                              0.0s
 => CACHED [ 5/14] RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter                                        0.0s
 => CACHED [ 6/14] RUN flutter channel master                                                                                     0.0s
 => CACHED [ 7/14] RUN flutter upgrade                                                                                            0.0s
 => CACHED [ 8/14] RUN flutter config --enable-web                                                                                0.0s
 => CACHED [ 9/14] RUN flutter doctor -v                                                                                          0.0s
 => [10/14] COPY . /usr/local/bin/app                                                                                             0.7s
 => [11/14] WORKDIR /usr/local/bin/app                                                                                            0.2s
 => [12/14] RUN flutter pub get                                                                                                  44.4s
 => [13/14] RUN flutter build web                                                                                               155.9s
 => [14/14] RUN ["chmod", "+x", "/usr/local/bin/app/server/server.sh"]                                                            0.9s
 => exporting to image                                                                                                            6.2s
 => => exporting layers                                                                                                           6.0s
 => => writing image sha256:bfaadc27663885f65a512d0810114d31f80f32808994566ba4ee667462bbc942                                      0.0s
 => => naming to docker.io/marcellodesales/crypto-wallet-web                                                                      0.0s
Recreating flutter-crypto-wallet_crypto-wallet_1 ... done
Attaching to flutter-crypto-wallet_crypto-wallet_1
crypto-wallet_1  | Server start script initialized...
crypto-wallet_1  | Starting server on port 4040 ...
```

[license_link]:  https://opensource.org/licenses/MIT

[very_good_analysis_link]:  https://pub.dev/packages/very_good_analysis

[profile_link]:  https://www.linkedin.com/in/erazo-josue/
[marcello_profile_link]:  https://www.linkedin.com/in/marcellodesales/
[license_badge]:  https://img.shields.io/badge/license-MIT-blue.svg
