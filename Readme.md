# Vagrant

## Introduction

Vagrant setup locally

## Contents

- [Usage](#usage)

## Usage

```bash
./init.sh

cd ~/vagrant
NAME=pizza vagrant up
NAME=pizza vagrant ssh
```

## TODO

- Get smarter with init.sh to create a folder per `$NAME`: `init.sh pizza` => ~/vagrant/pizza && name is read from directory name
