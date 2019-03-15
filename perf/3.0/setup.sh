# export or set SNORT3_BUILD, ODP_PATH, and SNORT_PCAPS

[ -d "$SNORT3_BUILD" ] || SNORT3_BUILD=/home/snorty/work/alt/install
[ -d "$SNORT_PCAPS" ] || SNORT_PCAPS=/home/snorty/ramdisk
[ -d "$ODP_PATH" ] || export ODP_PATH="/home/snorty"

export LUA_PATH=$SNORT3_BUILD/include/snort/lua/\?.lua\;\;
export SNORT_LUA_PATH=$SNORT3_BUILD/etc/snort/

snort=$SNORT3_BUILD/bin/snort
plugs=$SNORT3_BUILD/lib64

confs="decode stream inspect detect-min detect-max"
daq="--daq dump --daq-var load-mode=read-file --daq-var output=none"
args="--warn-all --plugin-path $plugs $daq -H -Q -A csv"
runt="seconds:"
