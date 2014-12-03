# Rocker-Docket

Run [Rocket](https://github.com/coreos/rocket) under [Docker](https://github.com/docker/docker).

This gives you access to the rkt executable without having to install rkt on your system.
You do, however, have to have docker installed.

# Installation

Install the gem:
```bash
gem install rocker-docket
```

Then you can either:
  * Build the image yourself: ```rocker-docket build``` or...
  * Pull it from the docker registry: ```rocker-docket pull```

# Usage
Use it just like you would use the rkt CLI, after you have built or pulled. For help, run:
```bash
rkt help
```

By default, the host directory /var/lib/rkt will be mounted in the container, for rkt 
operations. You can override this by setting ```ROCKET_DIR```. 
