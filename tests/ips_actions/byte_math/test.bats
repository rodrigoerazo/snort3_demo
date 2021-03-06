#!/usr/bin/env bats

PCAP="byte_math.pcap"
CFG="snort.lua"
OPTION="-q -A csv -k none -s 8274"

@test "Byte Math - ADD operator" {
    $snort -r $PCAP -c $CFG $OPTION > snort.out
    diff expected snort.out
}

teardown()
{
    rm -f snort.out
}

