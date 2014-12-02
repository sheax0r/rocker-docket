# Rocker-Docket
Run Rocket under Docker.

# Usage
Basic usage:
```bash
docker pull sheax0r/rocker-docket
docker run rocker-docket help 
```

This really isn't very useful unless you mount some host volumes (or data containers or what-have-you)
to store your rocket ACIs on; otherwise they will just disappear when the container stops.

I'll include some scripts to help with this in the near future.

