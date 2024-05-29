# device-serial-mqtt

## Share USB Serial with container
* On Windows:
  - Download: https://github.com/espressif/esptool/releases
  - Share Serial:
  ```bash
  esp_rfc2217_server -v -p 4000 COM3
  ```
* On Linux/Mac:
  - Download:
  ```bash
  pip install esptool
  ```
  - Share Serial:
  * Linux
  ```bash
  esp_rfc2217_server.py -v -p 4000 /dev/ttyUSB0
  ```
  * Mac
  ```bash
  esp_rfc2217_server.py -v -p 4000 /dev/tty.usbserial-0001
  ```
## Clone this repository
```bash
mkdir -p ~/Git/OpenDataTelemetry
cd ~/Git/OpenDataTelemetry
git clone https://github.com/OpenDataTelemetry/device-serial-mqtt.git
code ~/Git/OpenDataTelemetry/device-serial-mqtt
```
Reopen folder in Container with Remote Extension.

## From Container in VSCode Remote
* Build
```bash
idf.py build
```
* Flash
```bash
idf.py --port rfc2217://HOST:4000?ign_set_control flash
```
* Flash and Monitor
```bash
idf.py --port rfc2217://HOST:4000?ign_set_control flash monitor
```

> Note:
>  HOST: 
>  * WSL2/Mac: host.docker.internal
>  * Linux: 172.17.0.1
