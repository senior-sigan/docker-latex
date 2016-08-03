# Supported tags and respective `Dockerfile` links

- [`base`, (*base/Dockerfile*)](https://github.com/blan4/docker-latex/blob/master/base/Dockerfile)
- [`pscyr`, (*pscyr/Dockerfile*)](https://github.com/blan4/docker-latex/blob/master/pscyr/Dockerfile)

# What is LaTeX?

LaTeX is a document preparation system. When writing, the writer uses plain text as opposed to formatted text, as in WYSIWYG word processors like Microsoft Word or LibreOffice Writer. The writer uses markup tagging conventions to define the general structure of a document (such as article, book, and letter), to stylise text throughout a document (such as bold and italic), and to add citations and cross-references. A TeX distribution such as TeX Live or MikTeX is used to produce an output file (such as PDF or DVI) suitable for printing or digital distribution.

> [wikipedia.org/wiki/LaTeX](https://en.wikipedia.org/wiki/LaTeX)

![logo](https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/LaTeX_logo.svg/100px-LaTeX_logo.svg.png)

# How to use this image

## Run a single TexLive script

To compile your LaTeX work use Docker image directly:

```bash
$ docker run -it --rm --name latexmk --net=none -v "$PWD":/data sigan/latex:pscyr latexmk -pdf -pdflatex="pdflatex %O %S" your_super_latex_file
```

You can use any other latex commands if you know how.

### Notes

The image assumes that your latex files, styles and extra files are located in some directory and you run script described above from this location.

# Image Variants

The `latex` images come in many flavours, each designed for a specific use case.

## `sigan/latex:base`

This is default image with preinstalled and configured TexLive package. Latex extras, science packages and common fonts are included. Only english and russian language packs are installed.

## `sigan/latex:pscyr`

This is `base` image with PSCyr fonts.

# Supported Docker versions

This image is officially supported on Docker version 1.12.0.

Support for older versions (down to 1.6) is provided on a best-effort basis.

Please see [the Docker installation documentation](https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.

# User Feedback

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/blan4/docker-latex/issues).

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/blan4/docker-latex/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
