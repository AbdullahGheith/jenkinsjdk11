# jenkinsjdk11

Simple image for centos with openjdk 11 and Jenkins.

start.sh is copied from /etc/init.d/jenkins but removed the -deamon option to make it run in the foreground.

I made this so i can compile it myself for rpi

If you want a precompiled image, you can use the prebuilt one like this:

```console
docker run -p 8080:8080 xabdullahx/openjdk11-jenkins
```
