name             'mail_client'
maintainer       'Rally Software Development Corp'
maintainer_email 'rallysoftware-cookbooks@rallydev.com'
license          'MIT'
description      'Installs/Configures mail_client'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.1.0'

recipe 'mail_client::default', 'Installs mutt and alpine'

supports 'ubuntu'
supports 'centos'

depends 'yum-epel', '~> 0.2'
depends 'apt', '~> 2.0'
