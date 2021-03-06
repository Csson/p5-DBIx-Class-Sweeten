use 5.10.1;
use strict;
use warnings;

package DBIx::Class::Sweeten::ResultSet;

# ABSTRACT: Short intro
# AUTHORITY
our $VERSION = '0.0104';

use base 'DBIx::Class::Candy::ResultSet';

sub base {
    (my $base = caller(2)) =~ s{^(.*?)::Schema::ResultSet::.*}{$1};

    return $_[1] || "${base}::Schema::ResultSet";
}
sub perl_version { 10 }

sub experimental { [] }

1;
