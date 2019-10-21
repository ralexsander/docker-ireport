# iReport 5.6.0

iReport version 5.6.0 running on Java 6.

## How to Run

On a Mac you need to install XQuartz and configure it to allow network connections:

- XQuartz -> Preferences -> Security
- Enable: Allow metwork connections

Then restart XQuartz.

Open Terminal and run:

```
xhost + 127.0.0.1
```

After that just run the container:

```
docker run \
--rm \
--env DISPLAY=host.docker.internal:0 \
--hostname ireport \
--volume ${PWD}/reports:/reports \
ralexsander/ireport
```

## Motivations

I was getting some hard time to get Jasper Studio run old reports on a Mac, so I decided to use the legacy iReport. The best way to achieve that without installing Java 6 on the Mac is using Docker.
