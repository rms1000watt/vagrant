# Vagrant

## Introduction

Vagrant setup locally

## Contents

- [Usage](#usage)

## Usage

Create a Vagrant machine for general `devops` usage:

```bash
./init.sh

cd ~/vagrant/devops
vagrant up
vagrant ssh
```

Create a Vagrant machine for your company `org-x`:

```bash
./init.sh org-x

cd ~/vagrant/org-x
vagrant up
vagrant ssh
```

Now you can make a Vagrant machine for each project!
