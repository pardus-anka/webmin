
do 'servers-lib.pl';

sub cgi_args
{
my ($cgi) = @_;
if ($cgi eq 'edit_serv.cgi' && $access{'edit'}) {
	my @servers = &list_servers();
	return @servers ? 'id='.&urlize($servers[0]->{'id'}) : 'none';
	}
return undef;
}
