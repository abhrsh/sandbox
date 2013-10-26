#!/bin/sh

vagrant box add lucid64 http://files.vagrantup.com/lucid64.box
vagrant init lucid64
vagrant box list
