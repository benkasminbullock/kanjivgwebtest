#!/home/ben/software/install/bin/perl
use Z;
use WWW::LinkRot ':all';
use Data::Dumper;
my $links = get_links(["projects.html"]);
print Dumper $links;
my $temp = "$Bin/link-statuses.json.$$";
check_links($links, out => $temp);
html_report(in => $temp, out => 'link-checks.html');
unlink($temp) or die $!;
