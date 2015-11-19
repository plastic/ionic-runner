# Ionic Runner
-------------

Running ionic app

[![Docker](http://brunorocha.org/mediafiles/image/2015/7/26da7b36ff8bb5db4211400358dc7c4e_10937.png)](http://www.docker.com)
[![Ionic](http://a4.mzstatic.com/us/r30/Purple1/v4/89/89/e2/8989e222-6a10-a697-b210-abafedfad0a1/icon175x175.jpeg)](http://ionicframework.com)

### Install

```sh
docker pull plastic/ionic
docker run -it -p 8100:8100 -p 35729:35729 -v $(pwd)/app:/ionic-demo plastic/ionic
```