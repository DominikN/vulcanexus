# vulcanexus

```
xhost local:root
```

```
docker run --rm -it \
--net=host \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
donowak/vulcanexus fastdds_monitor
```