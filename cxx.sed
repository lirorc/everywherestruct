s/declare/struct/g

s/begin/{/g
s/end/} __attribute__((packed));/g

s/byte /int8_t /g
s/int /int32_t /g

s@elem @@g

s/ \[/[/g
