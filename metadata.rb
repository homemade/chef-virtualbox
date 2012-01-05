maintainer       "HomeMade Digital"
maintainer_email "operations@homemadedigital.com"
license           "Apache 2.0"
description      "Installs/Configures VirtualBox"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "apt"

recipe "virtualbox::default", "Installs VirtualBox"
