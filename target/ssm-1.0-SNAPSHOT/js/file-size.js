jQuery.fn.dataTable.ext.type.order['file-size-pre'] = function ( data ) {
    var matches = data.match( /^(\d+(?:\.\d+)?)\s*([a-z]+)/i );
    var multipliers = {
        b:  1,
        bytes: 1,
        kb: 1024,
        kib: 1024,
        mb: 1048576,
        mib: 1048576,
        gb: 1073741824,
        gib: 1073741824,
        tb: 1099511627776,
        tib: 1099511627776,
        pb: 1125899906842624,
        pib: 1125899906842624
    };

    if (matches) {
        var multiplier = multipliers[matches[2].toLowerCase()];
        return parseFloat( matches[1] ) * multiplier;
    } else {
        return -1;
    };
};