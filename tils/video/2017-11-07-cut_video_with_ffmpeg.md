# Cut video with ffmpeg
 
_Category: video_
_Generated on 2017-11-07_
_source: [source]_

```
$ ffmpeg -ss 00:00:30.0 -i input.wmv -c copy -t 00:00:10.0 output.wmv
```

- `-ss`: starting point
- `-t`: duration

is possible to use `-to` instead of `-t` to specify the end time


[source]: https://superuser.com/a/141343
