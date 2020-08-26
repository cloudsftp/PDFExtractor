#!/bin/sh

for input in In/*
do
  config_name="$(echo $input | sed 's/In/Config/g' | sed 's/pdf/pages/g')"
  touch $config_name
done
