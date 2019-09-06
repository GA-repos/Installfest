#!/bin/sh

##########################################################
# Taken from https://gist.github.com/pkuczynski/8665367  #
##########################################################

## Purpose is to parse a config file and turn values into variables accessible in scripts
## parse_yaml()  is used like the following:
## include parse_yaml function
# . parse_yaml.sh

## read yaml file saved as zconfig.yml
# eval $(parse_yaml zconfig.yml "config_")

## access yaml content, which contains values from zconfig.yml
# echo $config_development_database

parse_yaml() {
	local prefix=$2
	local s='[[:space:]]*' w='[a-zA-Z0-9_]*' fs=$(echo @|tr @ '\034')
	sed -ne "s|^\($s\)\($w\)$s:$s\"\(.*\)\"$s\$|\1$fs\2$fs\3|p" \
		-e "s|^\($s\)\($w\)$s:$s\(.*\)$s\$|\1$fs\2$fs\3|p"  $1 |
		awk -F$fs '{
			indent = length($1)/2;
			vname[indent] = $2;
			for (i in vname) {if (i > indent) {delete vname[i]}}
				if (length($3) > 0) {
					vn=""; for (i=0; i<indent; i++) {vn=(vn)(vname[i])("_")}
					printf("%s%s%s=\"%s\"\n", "'$prefix'",vn, $2, $3);
				}
		}'
}
