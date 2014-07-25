pdftext
=======

## Basis
* Convert PDF to text Command Line Tool
* OS X

## How to convert

```
NSString *path = @"/path/to/pdf";
PDFDocument *document = [[PDFDocument alloc] initWithURL:[NSURL fileURLWithPath:path]];
NSString *string = document.string;
NSLog(@"%@", string);
```

## Refer
https://developer.apple.com/library/mac/Documentation/GraphicsImaging/Reference/QuartzFramework/Classes/PDFDocument_Class/Reference/Reference.html
