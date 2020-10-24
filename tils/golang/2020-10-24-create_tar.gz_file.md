# Create tar.gz file

<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>golang</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2020-10-24</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://www.arthurkoziel.com/writing-tar-gz-files-in-go/">source</a></td>
    </tr>
  </tbody>
</table>

Pretty easy but verbose 😅

```go
package main

import (
	"io"
	"archive/tar"
	"compress/gzip"
	"log"
	"fmt"
	"os"
)

func main() {
	// Files which to include in the tar.gz archive
	files := []string{"example.txt", "test/test.txt"}

	// Create output file
	out, err := os.Create("output.tar.gz")
	if err != nil {
		log.Fatalln("Error writing archive:", err)
	}
	defer out.Close()

	// Create the archive and write the output to the "out" Writer
	err = createArchive(files, out)
	if err != nil {
		log.Fatalln("Error creating archive:", err)
	}

	fmt.Println("Archive created successfully")
}

func createArchive(files []string, buf io.Writer) error {
	// Create new Writers for gzip and tar
	// These writers are chained. Writing to the tar writer will
	// write to the gzip writer which in turn will write to
	// the "buf" writer
	gw := gzip.NewWriter(buf)
	defer gw.Close()
	tw := tar.NewWriter(gw)
	defer tw.Close()

	// Iterate over files and add them to the tar archive
	for _, file := range files {
		err := addToArchive(tw, file)
		if err != nil {
			return err
		}
	}

	return nil
}

func addToArchive(tw *tar.Writer, filename string) error {
	// Open the file which will be written into the archive
	file, err := os.Open(filename)
	if err != nil {
		return err
	}
	defer file.Close()

	// Get FileInfo about our file providing file size, mode, etc.
	info, err := file.Stat()
	if err != nil {
		return err
	}

	// Create a tar Header from the FileInfo data
	header, err := tar.FileInfoHeader(info, info.Name())
	if err != nil {
		return err
	}

	// Use full path as name (FileInfoHeader only takes the basename)
	// If we don't do this the directory strucuture would
	// not be preserved
	// https://golang.org/src/archive/tar/common.go?#L626
	header.Name = filename

	// Write file header to the tar archive
	err = tw.WriteHeader(header)
	if err != nil {
		return err
	}

	// Copy file content to tar archive
	_, err = io.Copy(tw, file)
	if err != nil {
		return err
	}

	return nil
}
```
