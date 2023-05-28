#!/usr/bin/perl

# test.pl: small script to test mod_dosevasive's effectiveness
# original author : Jonathan Zdziarski, https://github.com/jzdziarski/mod_evasive
# released with the license : GNU General Public License v2.0
# modified by Abhishek Ghosh, thecustomizewindows.com
# released with the license : GNU General Public License v3.0 

use IO::Socket;
use strict;
# changed from 100 to 200
for(0..200) {
  my($response);
  # change your-site.com:443
  my($SOCKET) = new IO::Socket::INET( Proto   => "tcp",
                                      PeerAddr=> "your-site.com:443");
  if (! defined $SOCKET) { die $!; }
  print $SOCKET "GET /?$_ HTTP/1.0\n\n";
  $response = <$SOCKET>;
  print $response;
  close($SOCKET);
}
