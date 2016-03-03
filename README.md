# We Share Love
a sharing portal for a self-sustaining living.

This app is built with [meteor] (https://www.meteor.com).
## Requirements
These tools need to be installed before launching wsl.

### meteor
Follow these [instructions] (https://www.meteor.com/install) to install meteor.

### graphicsmagick
* **Mac OS X** `brew install graphicsmagick` or `brew install imagemagick`
* **Linux** download rpm or use packagemanager
```bash
sudo add-apt-repository ppa:dhor/myway
sudo apt-get update
sudo apt-get install graphicsmagick
```
* **Centos** `yum install GraphicsMagick`
* **Windows** [download] (https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick/) the installer and run

### elasticsearch
wsl is (going to) built with elasticsearch, so you need to run it before. Look [here] (https://www.elastic.co/guide/en/elasticsearch/guide/current/_installing_elasticsearch.html)  how to.

## Installation
Clone this repo with
```bash
git clone https://github.com/heaven7/wsl.git && cd wsl/
```
## Configuration
Change the `settings.example.json` corresponding your needs and rename it to `settings.json`.

## Start
Start the app in Linux/MacOS with
```bash
source start.sh
```
on Windows with
```bash
meteor --settings settings.json
```
and point your browser to
```bash
localhost:3000
```
Enjoy :)

## Contributing
Contributors are very welcome. There are many things you can help with,
including finding and fixing bugs, improving packages, contributing to improved design or adding features. Some guidelines below:

* **Questions**: Please post to Stack Overflow and tag with `wsl` : http://stackoverflow.com/questions/tagged/wsl.

* **New Features**: If you'd like to work on a feature,
  start by creating a 'Feature Design: Title' issue. This will let people bat it
  around a bit before you send a full blown pull request. Also, you can create
  an issue to discuss a design even if you won't be working on it.

* **Bugs**: If you think you found a bug, please create a "reproduction." This is a small project that demonstrates the problem as concisely as possible. The project should be cloneable from Github. Any bug reports without a reproduction that don't have an obvious solution will be marked as "awaiting-reproduction" and closed after one week. Want more information on creating reproductions? Watch this video: https://www.eventedmind.com/feed/github-issues-and-reproductions.

## License
MIT