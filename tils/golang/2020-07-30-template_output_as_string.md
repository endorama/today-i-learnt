# Template output as string
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>golang</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2020-07-30</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://coderwall.com/p/ns60fq/simply-output-go-html-template-execution-to-strings">source</a></td>
    </tr>
  </tbody>
</table>


```golang
tplSource := `
Test template with {{.Key}}
`

t := template.New("example").Parse(tplSource)

data := struct{
    Key string
}{
    Key: "variable key"
}

var tpl bytes.Buffer
if err := t.Execute(&tpl, data); err != nil {
    return err
}

result := tpl.String() // or tpl.Bytes()
```
