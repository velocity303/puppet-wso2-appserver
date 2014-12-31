# wso2appserver

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with wso2appserver](#setup)
    * [What wso2appserver affects](#what-wso2appserver-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with wso2appserver](#beginning-with-wso2appserver)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This is a Puppet module to install, configure and run the WSO2 Application Server. This is currently developed against RedHat based OS using Puppet 3.7.

## Module Description

This module will install, configure and manage the WSO2 Application Server as described at their product page here:
http://wso2.com/products/application-server/

This is currently built specifically against version 5.2

## Setup

This module requires the use of Nanliu's staging module available here:
https://forge.puppetlabs.com/nanliu/staging

Please install this before using this module using the command 'puppet module install nanliu-staging'

Afterwards this module can be installed by cloning into your module path and renaming the resulting directory to wso2appserver.

### What wso2appserver affects

* This module will create a directory /opt/wso2 (this can be altered by using the exposed parameters)
* Currently the WSO2 version is hard coded but can be modified in the module code. This should be fixed in future versions.
* Installs the service for WSO2 app server in the path /etc/init.d/

### Beginning with wso2appserver

## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here. You must provide your own application zip file. This will be named something like wso2as-5.2.0.zip and can be referenced by URL.

## Reference

Exposed parameters and sample:
 class { 'wso2appserver':
   wso2_user     => 'wso2user' 
   install_dir   => '/opt/wso2'
   source        => 'http://url/to/your/wso2as-5.2.0.zip'
   java_home     => '/usr/lib/jvm/java'
   service       => 'wso2as'
 }

## Limitations

This has been tested against WSO2 App Server 5.2 and RedHat based systems using Puppet 3.7

## Development

Please submit any issues if you would like to make modifications to this module.

## Release Notes/Contributors/Etc 

Initial release. This is the quick and dirty setup, but should become more polished with time. Let me know if you have any issues with its current state.
