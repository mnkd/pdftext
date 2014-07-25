//
//  main.m
//  pdftext
//
//  Created by m-nakada on 7/25/14.
//  Copyright (c) 2014 Nekojarashi Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Quartz/Quartz.h>

void usage() {
  fprintf(stderr, "usage:\n");
  fprintf(stderr, "  pdftext </path/to/file>\n");
  fprintf(stderr, "\n");
}

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    NSArray *arguments = [[NSProcessInfo processInfo] arguments];
    if ([arguments count] != 2) {
      usage();
      return 1;
    }

    NSString *path = arguments[1];
    path = [path stringByExpandingTildeInPath];

    // Open PDF
    PDFDocument *document = [[PDFDocument alloc] initWithURL:[NSURL fileURLWithPath:path]];
    if (!document) {
      fprintf(stderr, "Could not open pdf (%s)\n", [path fileSystemRepresentation]);
      return -1;
    }

    // Extract strings
    NSString *string = document.string;
    if ([string length]) {
      NSArray *pages = [string componentsSeparatedByString:@"\n"];
      for (NSString *page in pages) {
        printf("%s", [page UTF8String]);
      }
    } else {
      printf("Could not extract strings\n");
    }

    printf("\n");
  }

  return 0;
}
