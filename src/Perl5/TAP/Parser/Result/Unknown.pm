use v6.0.0;

module TAP::Parser::Result::Unknown {
    #~ our sub subname { ... }
}

multi sub EXPORT() {
    # @EXPORT goes here
    my %o;
    #~ %o<&subname> := &TAP::Parser::Result::Unknown::subname;
    %o
}

multi sub EXPORT(@ops) {
    # @EXPORT_OK goes here
    my %o = &EXPORT() if @ops.grep('ALL') || @ops.grep(':DEFAULT');
    for @ops {
        #~ %o<&subname> := &TAP::Parser::Result::Unknown::subname if $_ eq 'ALL' || $_ eq 'subname';
    }
    %o
}
