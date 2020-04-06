#!/bin/sh

# include parse_yaml function
. ./scripts/parse_yaml.sh

# read yaml file
eval $(parse_yaml ./scripts/config.yml "config_")

# access yaml content
echo 'accessing config stored in config.yml...'
echo python is $config_python_version
echo nvm is $config_nvm_version
echo ubuntu is $config_ubuntu_version
