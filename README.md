# Docker-FFW

A dockerized version of FFW. 

## Whats inside?

* FFW
* Radamsa
* Honggfuzz


## Howto 

Build:
```
docker build -t ffw .
```

## Named container

Start the container, name it `ffw1`:

```
docker run -ti --name ffw1 ffwtest
```

If you exit via CTRL-D, and want to continue later, just do: 
```
docker start ffw1
docker attach ffw1
```

Data will persist.