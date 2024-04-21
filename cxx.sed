#!/bin/sed -f
s/declare/struct/g

s/begin/{/g
s/end union/};/g
s/end/} __attribute__((packed));/g


s/unsigned /u/g

s/byte /int8_t /g
s/short /int16_t /g
s/int /int32_t /g
s/long /int64_t /g

s@elem @@g

s/ \[/[/g
