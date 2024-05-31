FROM kong/deck:latest

COPY * /

## example of validated file
RUN deck file validate config.yml
RUN deck file lint -s config.yml ruleset.yml

## example of corrupted file
RUN deck file validate corrupted.yml
RUN deck file lint -s corrupted.yml ruleset.yml