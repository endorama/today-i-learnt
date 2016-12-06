# Resize svg drawing to canvas
 
_Category: inkscape_
_Generated on 2016-12-06_

_source: https://shkspr.mobi/blog/2013/03/inkscape-cropping-svg-files-on-the-command-line/_

Resizing SVG drawing to canvas from cli using inkscape:

```bash
$ inkscape --verb=FitCanvasToDrawing --verb=FileSave --verb=FileClose *.svg
```