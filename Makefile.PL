use ExtUtils::MakeMaker;
WriteMakefile(
        'NAME'         => 'Test::WWW::Mechanize::Plugin::Jcode',
        'VERSION_FROM' => 'lib/Test/WWW/Mechanize/Plugin/Jcode.pm', # finds $VERSION
        'PREREQ_PM'    => {
                Test::More => 0.32,
				WWW::Mechanize    => '1.00',
				Test::WWW::Mechanize    => '1.00',
                Jcode => 0,
        },
);
