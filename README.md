# Rocker-Docket

Run [Rocket](https://github.com/coreos/rocket) under [Docker](https://github.com/docker/docker).

This gives you access to the rkt executable without having to install rkt on your system.
You do, however, have to have docker installed.

# Installation

Install the gem:
```bash
gem install rocker-docket
```

Once installed, you can:
  * Build the image : ```rocker-docket build``` 
  * Update to the latest version of rocket: ```rocker-docket update```.

Updating will also build. If you have never run build before, it will get the 
latest version of rocket.

# Usage
Use it just like you would use the rkt CLI, after you have built the image. 
```bash
rkt help
```

By default, the host directory /var/lib/rkt will be mounted in the container, for rkt 
operations. You can override this by setting ```ROCKET_DIR```. 
