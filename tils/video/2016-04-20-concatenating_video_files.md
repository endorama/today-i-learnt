# Concatenating video files
 
_Category: video_
_Generated on 2016-04-20_

`mencoder -oac copy -ovc copy -idx -o output.avi video1.avi video2.avi video3.avi`

- `-oac`: output audio codec
  see `mencoder -oac help` for available formats
- `-ovc`: output video codec
  see `mencoder -ovc help` for available formats
- `-idx`: build index
- `-o`: output

By default this will create a AVI file.

**Note**: in case of audio problem change audio codec