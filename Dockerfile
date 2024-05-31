FROM kong:3.6.1-ubuntu

COPY --from=kong/deck:latest /usr/local/bin/deck /usr/local/bin/deck
COPY * /

## example of validated file
RUN /usr/local/bin/deck file validate config.yml
RUN /usr/local/bin/deck file lint -s config.yml ruleset.yml

## example of corrupted file
RUN /usr/local/bin/deck file validate corrupted.yml
RUN /usr/local/bin/deck file lint -s corrupted.yml ruleset.yml