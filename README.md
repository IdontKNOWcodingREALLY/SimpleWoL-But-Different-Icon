# SimpleWoL-But-Different-Icon
> **Note:** This is a personal modified version of the original [SimpleWoL](https://github.com/herzhenr/simple-wake-on-lan) project created by [herzhenr](https://github.com/herzhenr).

> **Note:** ok so I need you to listen this repo is a hot garbage so if you want the app sure take it will work good and have different icon, but only if you use square icon won't work good for you use if you use circle icon I don't think I will do anything in this as it works for me.

>**Note** this project is vibe coded via clankers 🤖

>**Special mention**: for the <a href="https://www.flaticon.com/free-icons/ethernet" title="ethernet icons">Ethernet icons created by Talha Dogar - Flaticon</a>. 

<p float="center">
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-green.svg" alt="MIT License"></a>
  <a href="https://flutter.dev"><img src="https://img.shields.io/badge/Flutter-%2302569B.svg?logo=Flutter&logoColor=white" alt="Flutter"></a>
  <a href="https://www.dart.dev"><img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart"></a>
</p>

Simple Wake on Lan is a simple cross-platform flutter application for Android to send Wake On Lan packets to a device.

## Usage
Wake on LAN (WoL) is a network protocol that allows a device to be turned on or awakened remotely
over a network while it is sleeping. This project aims to make the process of waking devices easy with a mobile application. 

## Screenshots

|                                          |                                     |
|:----------------------------------------:|:-----------------------------------:|
| ![play_integrity](docs/screenshot-1.png) | ![dark_mode](docs/screenshot-2.png) |  

|                                    |                                 |
|:----------------------------------:|:-------------------------------:|
| ![settings](docs/screenshot-3.png) | ![about](docs/screenshot-4.png) |

## Features

- Automatic device discovery
- Simple interface to send Wake On Lan packets
- Export and import user data as a `json` file (see below)

The app stores the added devices in a `json` file which can be exported and imported within the app UI. An example of the file structure is shown below:
```json
[
  {
    "id": "6b353440-d183-11ed-964b-69a9facd6cfd",
    "hostName": "Raspberry Pi",
    "ipAddress": "192.168.1.9",
    "macAddress": "12:12:12:12:12:12",
    "wolPort": 9,
    "deviceType": "computer",
    "modified": "2023-04-14T14:17:45.974511"
  },
  {
    "id": "87c87ab0-d184-13ed-9d56-a5f550305985",
    "hostName": "Printer",
    "ipAddress": "192.168.1.10",
    "macAddress": "f0:f0:f0:f0:f0:f0",
    "wolPort": 9,
    "deviceType": "printer",
    "modified": "2023-04-14T14:18:14.997081"
  }
]
```

## Download

- You can download the latest version of the app from [GitHub Releases]()

## Architecture
The app is built using the [Flutter](https://flutter.dev/) framework. It uses the [Material 3](https://m3.material.io) design system from Google.

## Build
To build the app yourself, you need to have the Flutter SDK installed. You can find the installation instructions [here](https://flutter.dev/docs/get-started/install).

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

```License
Copyright (c) 2026 IdontKNOWcodingREALLYIdontKNOWcodingREALLY

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
