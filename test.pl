require Compress::Zlib;
use SOAP::Lite;


print SOAP::Lite
		            ->uri('http://localhost/My/Parameters')
					           ->proxy('http://localhost/', options => {compress_threshold => 1})
							              ->echo(1 x 10000)
->result;

require Compress::Zlib;
