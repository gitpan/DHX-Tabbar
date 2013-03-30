package DHX::Tabbar;

use Moose;
use CAM::XML;

=head1 NAME

DHX::Tabbar - XML generator for dhtmlxAccordion

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

use DHX::Tabbar;

my $tabbar = DHX::Tabbar->new;

    $tabbar->tab(
        {
            id => 't1',
            selected => '1',
            width => '50',
            text => 'A'
        },
        {
            id => 't2',
            width => '50',
            text => 'B'
        }
    );
    
    $tabbar->tab(
        {
            id => 't3',
            width => '50',
            text => 'C'
        }
    );
    
    print "Content-type: application/xml; charset=utf8\n\n";
    print $tabbar->result;

=cut

# row
has 'row' => (
    is => 'rw',
    default => sub {
        CAM::XML->new('row');
    }
);

# add tab
sub tab {
    my $self = shift;
    
    foreach my $row (@_){
        my $tab = CAM::XML->new('tab');
        while(my ($key, $value) = each($row)){
            if($key eq 'text'){
                $tab->add(-text => $value);
            }else{
                $tab->setAttributes($key, $value);
            }
        }
        $self->row->add($tab);
    }
}

# print result
sub result {
    my $self = shift;
    
    my $tabbar = CAM::XML->new('tabbar');
    
    $tabbar->add($self->row);
    
    return $tabbar->header, $tabbar->toString;
}

1;

=head1 INSTANCE METHODS

=over

=item $tabbar->tab({foo_key => foo_value, bar_key => bar_value});

Set tabs dhtmlxTabbar

=item $tabbar->result;

get result xml dhtml.

=back

=head1 LICENSE

opensouce

=head1 AUTHOR

Lucas Tiago de Moraes - lucastiagodemoraes@gmail.com