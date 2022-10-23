#!/usr/bin/env bash
[[ -z ${1:-} ]] && echo "Usage: Run as $0 run (no verbose mode)" && exit 1

script_folder=$(dirname "$0")
"$script_folder/moviewatcher" download https://datasets.imdbws.com/name.basics.tsv.gz
"$script_folder/moviewatcher" -o names                   split "$script_folder/tmp/name.basics.tsv"

"$script_folder/moviewatcher" download https://datasets.imdbws.com/title.basics.tsv.gz
"$script_folder/moviewatcher" -o movies --filter "movie" split "$script_folder/tmp/title.basics.tsv"
"$script_folder/moviewatcher" -o tv --filter "tvEpisode,tvMovie,tvSeries" split "$script_folder/tmp/title.basics.tsv"
"$script_folder/moviewatcher" -o shorts --filter "short" split "$script_folder/tmp/title.basics.tsv"

#"$script_folder/moviewatcher" download https://datasets.imdbws.com/title.akas.tsv.gz
#"$script_folder/moviewatcher" download https://datasets.imdbws.com/title.crew.tsv.gz
#"$script_folder/moviewatcher" download https://datasets.imdbws.com/title.principals.tsv.gz
#"$script_folder/moviewatcher" download https://datasets.imdbws.com/title.ratings.tsv.gz

