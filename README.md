# Docker CLI: xdvdfs

> Xbox DVD Filesystem library and management tool.
>
> Built and deployed as a lightweight Docker image.
>
> The working directory should be mounted on `/work`.
>
> [Source Repository](https://github.com/antangelo/xdvdfs.git)

## `xdvdfs` usage

```
Tool for interacting with XISO/XDVDFS images

Usage: xdvdfs [COMMAND]

Commands:
  ls           List files in an image
  tree         List all files in an image, recursively
  md5          Show MD5 checksums for files in an image
  checksum     Compute deterministic checksum of image contents
  info         Print information about image metadata
  copy-out     Copy a file or directory out of the provided image file
  unpack       Unpack an entire image to a directory
  pack         Pack an image from a given directory or source ISO image
  build-image  Pack an image from a given specification
  image-spec   Manage image spec `xdvdfs.toml` files
  compress     Pack and compress an image from a given directory or source ISO image
  help         Print this message or the help of the given subcommand(s)

Options:
  -h, --help     Print help
  -V, --version  Print version
```

## Example

- Pack an XISO (XBOB) image from an ISO

`docker run --rm -it -v "$(pwd):/work" ghcr.io/majfault/xdvdfs pack game.iso`
