<p align="center"><a href="https://netdata.cloud"><img src="https://user-images.githubusercontent.com/1153921/95268672-a3665100-07ec-11eb-8078-db619486d6ad.png" alt="Netdata" width="300" /></a></p>

<h3 align="center">Netdata is high-fidelity infrastructure monitoring and troubleshooting.<br />Open-source, free, preconfigured, opinionated, and always real-time.</h3>
<br />

<img src="https://user-images.githubusercontent.com/1153921/95269366-1b814680-07ee-11eb-8ff4-c1b0b8758499.png" alt="---" style="max-width: 100%;" />

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]
![Github CI][ci]

# About

Netdata's **distributed, real-time monitoring Agent** collects thousands of metrics from systems, hardware, containers,
and applications with zero configuration. It runs permanently on all your physical/virtual servers, containers, cloud
deployments, and edge/IoT devices, and is perfectly safe to install on your systems mid-incident without any
preparation.

For more information you can visit the [official website](https://netdata.cloud) or the [documentation](https://docs.netdata.cloud) or the [Github page](https://github.com/netdata/netdata/blob/master/README.md).

Netdata is licensed under the GNU General Public License v3.0 [Netdata License](https://github.com/netdata/netdata/blob/master/LICENSE)

Here is an example of a Netdata dashboard:

![netdata charts](image/screenshot.png)

# Installation

The Netdata Addon is not available in the Home Assistant default Addon. To install this Addon you'll need to:

1. Go to the *Configuration* section
2. Go to the *Addon, Backup & Supervisor* section
3. Click on the *add-on store* lower-right button
4. Click on the 3 dots icon on the top-right corner
5. Click on *Repositories*
6. Add this repository: https://github.com/varuntirumala1/netdata-homeassistant-addon
7. Search for the "Netdata" add-on
8. Start the "Netdata" add-on
9. Check the logs of the "Netdata" add-on to see if everything went well

![netdata installation](image/installation.gif)

