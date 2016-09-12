Polyglot Virtual Node Server Framework is an application that makes it easy and quick to both develop and maintain virtual node servers for the ISY-994 home automation controller by Universal Devices Inc. Using virtual node servers, the ISY-994i is able to communicate with and control third-party devices to which the ISY-994i cannot natively connect.

**Documentation:** http://ud-polyglot.readthedocs.io/
**Github:** https://github.com/UniversalDevicesInc/Polyglot

This image contains the default Kodi and Hue node servers, as well as the Sonos and Nest node server built by Einstein42:
https://github.com/Einstein42/sonos-polyglot
https://github.com/Einstein42/nest-polyglot

**Sample run command:**
> docker run -d --name=polyglot -v ~/docker/polyglot:/home/polyglot/Polyglot/config --net=host -t i814u2/udi-polyglot 
