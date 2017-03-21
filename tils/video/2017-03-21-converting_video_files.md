# Converting video files
 
_Category: video_
_Generated on 2017-03-21_

```
avconv -i input.MOV -strict -2 -c:v libx264 output.mp4
```

`-c:v` specify the output encoding
