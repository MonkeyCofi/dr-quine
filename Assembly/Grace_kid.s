; Comment
%define C "; Comment%2$c%%define C %1$c%4$s%1$c%2$c%%define FNAME %1$cGrace_kid.s%1$c%2$c%%macro real_main 0%2$csection .data%2$c%3$csrc db, C, 0%2$c%3$cfname db FNAME, 0%2$c"
%define FNAME "Grace_kid.s"
%macro real_main 0
section .data
	src db, C, 0
	fname db FNAME, 0
