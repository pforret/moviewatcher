#!/usr/bin/env bash
[[ -z ${1:-} ]] && echo "Usage: Run as $0 run (no verbose mode)" && exit 1

script_folder=$(dirname "$0")
"$script_folder/moviewatcher" download https://datasets.imdbws.com/name.basics.tsv.gz
"$script_folder/moviewatcher" download https://datasets.imdbws.com/title.akas.tsv.gz
"$script_folder/moviewatcher" download https://datasets.imdbws.com/title.basics.tsv.gz
#"$script_folder/moviewatcher" download https://datasets.imdbws.com/title.crew.tsv.gz
#"$script_folder/moviewatcher" download https://datasets.imdbws.com/title.principals.tsv.gz
#"$script_folder/moviewatcher" download https://datasets.imdbws.com/title.ratings.tsv.gz

"$script_folder/moviewatcher" split
