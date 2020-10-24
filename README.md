# PDFExtractor
Tool to extract pages from and merge multiple PDFs

## Usage

1. Place the input PDF files in an directory named `In`
1. Run `./genconfig.sh`
1. Edit configuration (`*.pages`) files in `In/Config`
1. Run `./shorten.sh`

### Rules for `*.pages` files

- Single page: `10`
- Range: `2-5`
