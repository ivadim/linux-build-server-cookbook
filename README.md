Linux Build Server Cookbook
================
Prepares build server with main build tools and configures a vsts build agent

## Build tools
* build-essential package(gcc, g++, make ...)
* openjdk 8
* android sdk
* nodejs
* maven
* python 2 and python 3
* cmake

## Extra tools
* git
* subversion
* VSTS build agent

# Test cookbook locally
* Set up 'data_bags/users/vsts.json' by replacing *vsts_url*, *vsts_user* and *vsts_token* with appropriate values
* Replace pool name in attributes.rb if needed
* Run ```kitchen converge```
