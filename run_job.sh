#!/usr/bin/env bash
./moviewatcher download https://datasets.imdbws.com/name.basics.tsv.gz
./moviewatcher download https://datasets.imdbws.com/title.akas.tsv.gz
./moviewatcher download https://datasets.imdbws.com/title.basics.tsv.gz
./moviewatcher download https://datasets.imdbws.com/title.crew.tsv.gz
./moviewatcher download https://datasets.imdbws.com/title.principals.tsv.gz
./moviewatcher download https://datasets.imdbws.com/title.ratings.tsv.gz

./moviewatcher split
