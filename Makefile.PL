use inc::Module::Install;
name 'Data-Encoder';
all_from 'lib/Data/Encoder.pm';

#requires '';

#build_requires '';
recommends 'JSON';
test_requires 'Test::More', 0.96;

tests join q{ }, map { sprintf 't%s.t', '/*' x $_ } 1..3;
author_tests 'xt';

auto_include();
auto_set_repository();

WriteAll;
