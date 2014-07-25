pdftext
=======

* Convert PDF to Text
* Command Line Tool
* OS X

## Usage

`pdftext /path/to/pdf-file`

## How to convert

```objective-c
NSString *path = @"/path/to/pdf";
PDFDocument *document = [[PDFDocument alloc] initWithURL:[NSURL fileURLWithPath:path]];
NSString *string = document.string;
NSLog(@"%@", string);
```

## Reference
https://developer.apple.com/library/mac/Documentation/GraphicsImaging/Reference/QuartzFramework/Classes/PDFDocument_Class/Reference/Reference.html
