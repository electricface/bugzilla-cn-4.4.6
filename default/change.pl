#!/usr/bin/env perl
use 5.018;
use strict;
use warnings;

my @files = qx(find);
my ($from , $to) = @ARGV;

say "has from " if defined $from;
say "has to " if defined $to;

if ( defined $from and defined $to )
{
	for my $f (@files){
		chomp $f;
		if ( -f $f )
		{
#			say $f;
#			say " $from =>  $to ";
			qx(sed -i s/$from/$to/g $f );
		}
	}
}
