#!/bin/sh

mkdir -p In
mkdir -p Out
mkdir -p Config

for input in In/*
do
  config_name="$(echo $input | sed 's/In/Config/g' | sed 's/pdf/pages/g')"
  touch $config_name
done
