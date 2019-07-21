# Super Slim Development Environment For Python 3 

For anyone not looking to use a super complex dev stack or use tools like Salt/Chef to get up and running with python and django

## Getting Started

These instructions will get you a copy of the project up and running on your local machine.

### Prerequisites

The below are the tools needed for use of this software

1. VirtualBox
2. Vagrant
3. For windows users strongly recomended GitBash

### Installing


```
$ git clone git@github.com/ThomasMcDonnell/super-simple-python-vagrantbox
$ cd super-simple-python-vagrantbox && vim Vagrantfile
```

comment out the sync-folder and port forwarding lines 14 & 15 as shown below.

```
 14  config.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1"
 15  config.vm.synced_folder "project", "/home/webdev/project", owner: "webdev", group: "webdev", mount_options:["dmode=775,fmode=664"]
```

We will uncomment these and run a reload once we have created a webdev user with sudo permissions. Next boot up the VM and allow the 
bootstrap.sh to install all our python goodies.

```
$ vagrant up
```

Once booted up we can ssh into the VM and create a webdev user

```
$ sudo adduser webdev  
$ sudo adduser webdev sudo

```

uncomment out the sync-folder and port forwarding lines 14 & 15 as shown below and run a vagrant reload.

```
 14  config.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1"
 15  config.vm.synced_folder "project", "/home/webdev/project", owner: "webdev", group: "webdev", mount_options:["dmode=775,fmode=664"]
```

```
$ vagrant reload
```

And thats it you should now have a ubuntu 18.04 LTS with Python3 && Virualenv wrapper aswell as postgresql and a sync folder called 
project under the user webdev "/home/webdev/project".

To change to the webdev user in the vagrant box simply :

```
$ su - webdev
```

## Contributing

Please read [CONTRIBUTING.md] for details of code of conduct, and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments
