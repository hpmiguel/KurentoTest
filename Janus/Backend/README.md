# Janus Backend

Janus Gateway is a backend application developed in C for Ubuntu.

**Installation**

It would be advisable try to install it on a Ubuntu LTS version.

Janus Gateway is installed like debian packages, first of all you have to install some dependencies to support all the protocols that it needs. Meetecho have already write make and shell files to automate the unpackaging.

I have uploaded an install script to avoid execute every instruction, if you have curiosity you can see its contents.

Note: I have disabled several service and protocols to make me easier the installation, like rabbitmq, ssl... you can see it with detail in the script.

The original installation is here https://github.com/meetecho/janus-gateway

**Deployment**

You can run the script, it simply runs the compilated linux command of Janus and it listens in 8088 port.
