# diff-so-fancy
diff-so-fancy docker style

## Build your image

`docker build -t gismo/diff-so-fancy .`

## Run git diff with docker and diff-so-fancy result

`docker run --rm -it -v `pwd`:/app -w /app gismo/diff-so-fancy`

### Used code
https://github.com/so-fancy/diff-so-fancy

### Thank you
Christophe Porteneuve and [this presentation](https://deliciousinsights.github.io/france-tv-git-protips)
