![bash_unit CI](https://github.com/pforret/moviewatcher/workflows/bash_unit%20CI/badge.svg)
![Shellcheck CI](https://github.com/pforret/moviewatcher/workflows/Shellcheck%20CI/badge.svg)
![GH Language](https://img.shields.io/github/languages/top/pforret/moviewatcher)
![GH stars](https://img.shields.io/github/stars/pforret/moviewatcher)
![GH tag](https://img.shields.io/github/v/tag/pforret/moviewatcher)
![GH License](https://img.shields.io/github/license/pforret/moviewatcher)
[![basher install](https://img.shields.io/badge/basher-install-white?logo=gnu-bash&style=flat)](https://www.basher.it/package/)

# moviewatcher

analyze movie metadata updates

## 🔥 Usage

```
Program : moviewatcher.sh  by peter@forret.com
Version : v0.1.10 (2022-10-23 17:51)
Purpose : analyze movie metadata updates
Usage   : moviewatcher.sh [-h] [-q] [-v] [-f] [-l <log_dir>] [-t <tmp_dir>] [-o <out_dir>] [-t <filter>] <action> <input?>
Flags, options and parameters:
    -h|--help        : [flag] show usage [default: off]
    -q|--quiet       : [flag] no output [default: off]
    -v|--verbose     : [flag] also show debug messages [default: off]
    -f|--force       : [flag] do not ask for confirmation (always yes) [default: off]
    -l|--log_dir <?> : [option] folder for log files   [default: log]
    -t|--tmp_dir <?> : [option] folder for temp files  [default: tmp]
    -o|--out_dir <?> : [option] folder for output files  [default: split]
    -t|--filter <?>  : [option] filter on titleType
    <action>         : [choice] action to perform  [options: download,split,gha:update,check,env,update]
    <input>          : [parameter] input url/file/text (optional)

### TIPS & EXAMPLES
* use moviewatcher download [url] to download to temp folder
  moviewatcher download
* use moviewatcher split [file] [type(s)] to split a large tsv file into smaller files that can easier be tracked in git
  moviewatcher --filter movie,tvMovie --out_dir movies split tmp/name.basics.tsv
* use moviewatcher gha:update to update all data after running
  moviewatcher gha:update
* use moviewatcher check to check if this script is ready to execute and what values the options/flags are
  moviewatcher check
* use moviewatcher env to generate an example .env file
  moviewatcher env > .env
* use moviewatcher update to update to the latest version
  moviewatcher update
* >>> bash script created with pforret/bashew
* >>> for bash development, also check IO:print pforret/setver and pforret/IO:progressbar
```

## ⚡️ Examples

```bash
> moviewatcher download https://datasets.imdbws.com/name.basics.tsv.gz
# download file from source
> moviewatcher split
# split source files up in pieces based on key
```

## 🚀 Installation

with [basher](https://github.com/basherpm/basher)

	$ basher install pforret/moviewatcher

or with `git`

	$ git clone https://github.com/pforret/moviewatcher.git
	$ cd moviewatcher

## 📝 Acknowledgements

* script created with [bashew](https://github.com/pforret/bashew)

&copy; 2022 Peter Forret
