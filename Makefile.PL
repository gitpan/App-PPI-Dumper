use ExtUtils::MakeMaker;

require 5.008;

eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'	       => 'App::PPI::Dumper',
	'ABSTRACT'     => 'This is what the module does',
	'VERSION_FROM' => 'lib/Dumper.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Getopt::Std'  => '0',
		'PPI'          => '0',
		'PPI::Dumper'  => '0',
		'Test::More'   => '0',
		'Test::Output' => '0.18',
		},

	'PM'           => {
		'lib/Dumper.pm'         => '$(INST_LIBDIR)/Dumper.pm',
		},

	'EXE_FILES'    => [ 'script/ppi_dumper' ],
	
	'MAN3PODS'     => {
		'lib/Dumper.pm' => '$(INST_MAN3DIR)/App::PPI::Dumper.3',
		},

	clean  => { FILES    => q|App-PPI-Dumper-*| },

	);
