# Rocker-Docket
Run Rocket under Docker.
This gives you access to the rkt executable without having to install rkt on your system.
You do, however, have to have docker installed.

# Installation

## Install the gem
```bash
gem install rocker-docket
```

## Build the rocker-docket image to run rkt:
```
rocker-docket build
```

## Pull the rocker-docket image from the registry:
```bash
rocker-docket pull
```

# Usage
Use it just like you would use the rkt CLI, after you have built or pulled. For help, run:
```bash
rkt help
```
By default, the host directory /var/lib/rkt will be mounted in the container, for rkt 
operations. You can override this by setting ```ROCKET_DIR```. 
