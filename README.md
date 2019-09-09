# Docker_on_IoT
![docker](https://cdn.vox-cdn.com/thumbor/fbrTLtxuP2D29o8VJUaE-u3NKfU=/0x0:792x613/1200x800/filters:focal(300x237:426x363)/cdn.vox-cdn.com/uploads/chorus_image/image/59850273/Docker_logo_011.0.png)
## About Docker
Docker is a platform for developers and sysadmins to develop, deploy, and run applications with containers. The use of Linux containers to deploy applications is called _**Containerization**_. Containers are not new, but their use for easily deploying applications is.

Containerization is increasingly popular because containers are:

- **Flexible**: Even the most complex applications can be containerized.
- **Lightweight**: Containers leverage and share the host kernel.
- **Interchangeable**: You can deploy updates and upgrades on-the-fly.
- **Portable**: You can build locally, deploy to the cloud, and run anywhere.
- **Scalable**: You can increase and automatically distribute container replicas.
- **Stackable**: You can stack services vertically and on-the-fly.

## Images and Containers
A container is launched by running an image. An image is an executable package that includes everything needed to run an application--the code, a runtime, libraries, environment variables, and configuration files.
A container is a runtime instance of an image--what the image becomes in memory when executed (that is, an image with state, or a user process). 

## Containers and Virtual Machines
A container runs natively on Linux and shares the kernel of the host machine with other containers. It runs a discrete process, taking no more memory than any other executable, making it lightweight.

A virtual machine (VM) runs a full-blown “guest” operating system with virtual access to host resources through a hypervisor. In general, VMs provide an environment with more resources than most applications need.
![containers and vm](https://codingthesmartway.com/wp-content/uploads/2019/02/010.png)

# Internet of Things (IoT)
![IoT](http://techativeng.com/wp-content/uploads/2017/04/internet-of-things-blog-image2.png)

## What is IoT?
The Internet of Things (IoT) is a system of interrelated computing devices, mechanical and digital machines, objects, animals or people that are provided with unique identifiers and the ability to transfer data over a network without requiring human-to-human or human-to-computer interaction.

## Why IoT matters?
IoT provides businesses and people better insight into and control over the 99 percent of objects and environments that remain beyond the reach of the internet. And by doing so, IoT allows businesses and people to be more connected to the world around them and to do more meaningful, higher-level work.

![docker iot](https://iotbytes.files.wordpress.com/2017/06/iot_containers.png?w=541&h=356)

## Why IoT needs Docker?
Containers are well-positioned to address some of the main challenges that developers face when deploying software to IoT devices:

- **Minimal hardware resources:** Many IoT devices lack powerful computing and memory resources. Their ability to process software updates is therefore limited. Containers can help on this front because installing a new container image does not require much computing power. An IoT device needs simply to download an image, put it wherever it’s going to live and remove the old image. Configuration processing is minimal.
- **Geographic distribution:** In some use cases, IoT devices are spread across a large geographic area. Delivering software to them from a single central repository may not work well. With Docker, it’s easy to spin up image registries in multiple locations to serve the entire network well.
- **Limited or sporadic network access:** Despite the implications of the term “internet of things,” not all devices on the internet of things are well-connected to the internet. They may have limited network bandwidth, or be online only occasionally. Docker can help to deliver software updates under these circumstances because when container images are updated, Docker downloads only the parts of the image that have changed. 
- **Widely varying device environments:** The software that runs on an IoT device could be almost anything. The diversity of software configurations on IoT devices would normally make application installation difficult, because applications would have to be configured for each type of environment if installed via traditional methods. With containers, however, the operating system version and other software variables are much less important. As long as the device runs some kind of Linux distribution and has a container runtime, you can install a containerized application on it without special configuration.

# Installing Docker on Raspberry pi 3
![raspi docker](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdEo8_tay7ZiXF2gfBlZGbF-D0c49nCSzzEIgRpYIMLKwp4wFrEQ)

## Pre-requisites
#### Set up your SD card
- Download the required os from https://www.raspberrypi.org/downloads/ (Here I am using Raspbian Buster)
- Format the SD card as FAT format
- Write Image to SD Card. You can use Win32DiskImager/Etcher to do this.

![win32](https://a.fsdn.com/con/app/proj/win32diskimager/screenshots/Win32DiskImager-1.0.png/max/max/1)

![win32](https://upload.wikimedia.org/wikipedia/commons/c/c2/Etcher_1.4.9_running_on_Windows_10.png)

- Add “SSH” File to the SD Card Root

  Enable SSH by placing a file named “ssh” (without any extension) onto the boot partition of the SD card:
  
![ssh](https://hackernoon.com/hn-images/0*z9-QmlW-rVcKeWCq.png)

- Put the SD card in Raspi and connect it to laptop via ethernet cable
- Install advanced IP Scanner
- open Command prompt and type :
~~~
ipconfig
~~~
under ethernet , we can find default gateway.
copy that to Advanced IP Scanner and search 
![advanced ip scanner](http://1.bp.blogspot.com/-SSbw_MZck_k/VfaHMVohxFI/AAAAAAAAOis/JJs7j5sXVg8/s1600/Advanced%2BIP%2BScanner.png)
- install and open Putty

In hostname field , eneter the IP address of raspi which we found from Advanced IP Scanner.

![putty](https://blog.digilentinc.com/wp-content/uploads/2016/12/ssh-win-config-e1483036629948.png)

The default credentials are:
```
username: pi
password: raspberry
```
- Configure your pi
 You can now configure your Pi via 
 ```
 sudo raspi-config
 ```
 ![raspi-config](https://hackernoon.com/hn-images/1*Lbzu8tb6H3azpdSK_wLsig.png)
 here we can change/enable whatever we want.
 
 if we want GUI of the OS in the raspi , we need to enable VNC server in raspi-config
 Navigate to **Interfacing Options** and **enable VNC**
 on your main system , download and launch VNC Viewer
 connect to the raspi from vnc viewer
 
 ![vnc](https://cdn.staticaly.com/gh/bcurran3/ChocolateyPackages/master/vnc-viewer/vnc-viewer_screenshot.png)
 
 ### Note: 
>  - we can connect to raspi even without ethernet cable if the wifi option is enabled and configured to the hotspot
>  - Instead of Advanced IP Scanner , we can just use ``` ping raspberrypi.local ``` to find out the IP address of the raspi
