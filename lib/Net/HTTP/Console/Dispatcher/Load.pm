package Net::HTTP::Console::Dispatcher::Load;

use MooseX::Declare;

class Net::HTTP::Console::Dispatcher::Load with Net::HTTP::Console::Dispatcher {

    method dispatch($input) {
        (my $type, my $name) = $input =~ /(\w+)\s(.*)$/;

        if ($type eq 'spec') {
            $self->application->load_api_spec($name);
        }elsif($type eq 'lib') {
            $self->application->load_api_lib($name);
        }else{
            $self->logger('error', "can't load for $type");
        }
    }

    method pattern($input) {
        $input =~ /load\s(.*)$/ ? $1 : 0;
    }
}

1;
