#!/bin/sed -f
s@declare@public struct@g

s@\(	\+\)union@\1[StructLayout(LayoutKind.Explicit)]\n\1public struct@g

s@\(	\+\)\(.*\);@\1public \2;@g

s@begin@{@g
s@end union@};@g
s@end@};@g


s@byte @sbyte @g
s@unsigned sbyte @byte @g

s@unsigned short @ushort @g
s@unsigned int @uint @g
s@unsigned long @ulong @g

s@public \([[:alnum:]]\+\) \([[:alnum:]]\+\) \[\([[:digit:]]\+\)\];@\[MarshallAs(UnmanagedType.ByValArray, SizeConst = \3)\]\n	public \1\[\] \2;@g
s@\(	\+\)public elem @\1[FieldOffset(0)]\n\1public @g
