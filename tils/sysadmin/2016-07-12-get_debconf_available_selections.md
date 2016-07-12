# Get debconf available selections
 
_Category: sysadmin_
_Generated on 2016-07-12_

To use Debian preseeding you need to know available debconf parameters.

Install `debconf-get-selections`:

```
sudo apt install debconf-utils
```

Install the required package ( ufw as an example ):

```
sudo apt-get ufw
```

Read it's debconf values from local debconf database:

```
sudo debconf-get-selections | grep ufw
```

Use it anywhere! YAY!