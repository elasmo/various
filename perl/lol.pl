#!/usr/bin/env perl
use warnings;
use strict;
my $text = "Sec-T 4 lyfe madafakka! Keep it rizzle..";

my $x = 0;
my $xd = 0.4;
my $w = (`tput cols`-1) * .5;

my $len = length($text);
my $c = 0;

printf("\e[?25l");

for(;;) 
{
    my $l = 14 * sin($x);
    my $dw = $w + $l;
    my $color = 90 +(rand() * 100) % 8;
    print ' 'x$dw;
    printf("\e[%dm", $color);
    printf("%s\n", substr($text, $c, 1));
    $c++;
    if($c > $len)
    {
        $c = 0;
    }
    $x += $xd;
    if($x > 10 || $x < -10)
    {
        $xd = -$xd;
    }
    system("sleep 0.1");
}
