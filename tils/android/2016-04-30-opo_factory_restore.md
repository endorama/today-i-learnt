# Opo factory restore
 
_Category: android_
_Generated on 2016-04-30_

_source: https://tektab.com/2015/10/30/how-to-restoring-oneplus-one-to-factory-image-cyngnopo-to-100-stock/_

Install `adb` and `fastboot`: install Android SDK package, then packages `android-tools-adb` and `android-tools-fastboot`

( download proper image from cyngn.com/support )

Enable developer tools on device and android debug mode via adb.

Verify device is present:


```
$ adb devices
```

Extract the factory image.


Reboot to bootloader:

```
$ adb reboot-bootloader
```

Verify device is seen by fastboot:

```
$ fastboot devices
```

Verify device status:

```
$ fastboot oem device-info
```

If device is not unlocked you should unlock it, **this will erase all your data**:

```
$ fastboot oem unlock
```

Flash all images ( or only the needed ones ):

```
$ fastboot flash modem NON-HLOS.bin
$ fastboot flash sbl1 sbl1.mbn
$ fastboot flash dbi sdi.mbn
$ fastboot flash aboot emmc_appsboot.mbn
$ fastboot flash rpm rpm.mbn
$ fastboot flash tz tz.mbn
$ fastboot flash LOGO logo.bin
$ fastboot flash oppostanvbk static_nvbk.bin
$ fastboot flash recovery recovery.img
$ fastboot flash system system.img
$ fastboot flash boot boot.img
$ fastboot flash cache cache.img
```

Flash user data if needed:

```
# if 16GB
$ fastboot flash userdata userdata.img
# if 64GB
$ fastboot flash userdata userdata_64G.img
```

Reboot:

```
$ fastboot reboot
```
