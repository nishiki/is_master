# is_master
[![Version](https://img.shields.io/badge/latest_version-1.0.0-green.svg)](https://github.com/nishiki/is_master/releases)
[![Build Status](https://travis-ci.org/nishiki/is_master.svg?branch=master)](https://travis-ci.org/nishiki/is_master)
[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](https://github.com/nishiki/is_master/blob/master/LICENSE)

is_master execute a command when it determine that server is master

## Install

On debian or ubuntu:
```
apt install ruby
gem install is_master
```

## How to use

It's simple:
```
is_master 10.0.254.2 ls -l
```

## Development
### Test on local machine with docker

  * install [docker](https://docs.docker.com/engine/installation/)
  * run the tests

```
docker run -v $(pwd):/is_master:ro -it nishiki/ruby:stretch /bin/bash -l /is_master/.docker-test
```

## License

```
Copyright (c) 2017 Adrien Waksberg

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
