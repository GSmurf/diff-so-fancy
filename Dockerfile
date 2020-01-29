# docker build -t gismo/diff-so-fancy .
# docker run --rm -it -v `pwd`:/app -w /app gismo/diff-so-fancy

FROM alpine

RUN apk add  --no-cache \
    ncurses \
    curl \
    perl \
    git && \
  curl -L https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy -o diff-so-fancy && \
  chmod +x diff-so-fancy && \
  mv diff-so-fancy /usr/local/bin/diff-so-fancy && \
  diff-so-fancy --set-defaults
  
CMD git diff --color | diff-so-fancy
