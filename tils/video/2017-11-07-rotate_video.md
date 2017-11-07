# Rotate video
 
_Category: video_
_Generated on 2017-11-07_
_source: [source]_

```
$ mencoder -ovc lavc -vop rotate=1 -oac copy input.mpg -o output
```

Rotate can have 4 values:

- 0: Rotate by 90 degrees clockwise and flip (default)
- 1: Rotate by 90 degrees clockwise
- 2: Rotate by 90 degrees counterclockwise
- 3: Rotate by 90 degrees counterclockwise and flip


[source]: http://www.thelinuxblog.com/rotating-videos-in-linux/
