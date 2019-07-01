andrewrothstein.sonarqube
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-sonarqube.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-sonarqube)

Installs [SonarQube](https://www.sonarqube.org/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.sonarqube
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
