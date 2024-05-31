FROM kong/deck:latest

COPY * /

## example of validated file
RUN /usr/local/bin/deck file validate config.yml
RUN /usr/local/bin/deck file lint -s config.yml ruleset.yml

## example of corrupted file
RUN /usr/local/bin/deck file validate corrupted.yml
RUN /usr/local/bin/deck file lint -s corrupted.yml ruleset.yml