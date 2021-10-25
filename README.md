# lazyrecon-docker
Docker image for the lazy recon script


Build:

```
git clone https://github.com/AdamGreenhill/lazyrecon-docker
cd lazyrecon-docker
docker build -t thegreatrecon .
```

Usage:

```
docker run -it \
        -v "${PWD}:/output" \
        thegreatrecon \
        -d $domain
```
