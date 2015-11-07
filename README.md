We Share Love
===

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/heaven7/wsl?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

![alt tag](https://codeship.com/projects/c78c06e0-6f59-0132-e1d9-5a2456e5a93f/status?branch=master)

We Share Love - a sharing portal for a self-sustaining living.

### Installation
Clone this repo.
Fetch and init submodules on checkout
```bash
git clone https://github.com/heaven7/wsl.git
cd wsl/
git submodule update --init --recursive
git fetch --recurse-submodules
```
### Configuration
Change the settings.example.json corresponding your needs and rename it to
```bash
settings.json
```
wsl is built with elasticsearch, so you need to run it before. Look [here] (https://www.elastic.co/guide/en/elasticsearch/guide/current/_installing_elasticsearch.html)  how to.

Start with
```bash
source start.sh
```
and point your browser to
```bash
localhost:3000
```
