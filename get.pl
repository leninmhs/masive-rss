#!/usr/bin/perl
# Lee multiples fuentes rss y almacena las entradas en una bd postgres
# aptitude install libxml-rss-feed-perl libclass-dbi-pg-perl
# Por leninmhs

use XML::RSS::Feed;
use LWP::Simple qw(get);
use DBI;

my $bd = DBI->connect("DBI:Pg:dbname=masive-rss;host=localhost", "postgres", "linux", {'RaiseError' => 1});


    my $feed = XML::RSS::Feed->new(
        url    => "http://leninmhs.wordpress.com/feed/",
        name   => "leninmhs",
        delay  => 10,
        debug  => 1,
        tmpdir => "/tmp", # optional caching
    );
my @URLlist = ( 
 'http://pagina1/rss.xml',
 'http://leninmhs.wordpress.com/feed/', 
 #'http://www.qwerty.com/feed/', esta malo :/
 'http://pagina2/feed/',
);
   # while (1) {
    	foreach my $URL ( @URLlist ) {
	#my $content = get($URL++);
        


	#Insert de la categoria
	$rows = $bd->prepare("INSERT INTO entradas (fk_medio, titulo,link, contenido,fecha_publicado) VALUES (?,?,?,?,?)");
	

        $feed->parse(get($URL));
        #$rows->execute(1, "titulooo",$_->url);
        
        $rows->execute( 1, $_->headline, $_->url, $_->description, $_->item->date ) for $feed->late_breaking_news;

	        
        sleep($feed->delay); 
        }#fin foreach
    #}#fin while
