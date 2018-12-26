#!/usr/bin/perl

use strict;
use warnings;

my $file_name = $ARGV[0];
open my $file_handle, $file_name or die "Could not open $file_name: $!";

print q|
<opml version="2.0">
  <body>
    <outline title="Feeds" text="Feeds" description="Feeds" type="folder">
    |;

while( my $line = <$file_handle>)  {   

    if ($line =~ m#^(http.+/)(.+)(\.rss)$# ) {
	print   qq|
	    <outline title="$2" text="$2" description="$2" type="rss" xmlUrl="$1$2$3" htmlUrl="$1$2"/> 
	    |;
    }
}


print q|
    </outline>
  </body>
</opml>
    |;

close $file_handle;
