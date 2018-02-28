module.exports = function(raw) {
    var lines = raw.split( "\n" );

    lines = lines.map( l => {
        if ( ! /^#/.test(l) ) return l;

        if( /#!/.test(l) ) {
            return l.replace('#!','#');
        }

        var is_vertical = /#(\^|v)/.test(l);

        l = l.replace( '#^', '#' );
        l = l.replace( '#v', '#' );

        l = l.replace( /^#+\s*$/, '' );

        return ( is_vertical ? 'vvv' : '>>>') + "\n\n" + l

    });

    lines = lines.map( line => {
        if( ! /^~ /.test(line) ) return line;

        return "<aside class='notes'>" + line.replace( /^~ /, '' ) + "</aside>";
    });

    let in_code = false;
    lines = lines.map( line =>{ 
        if ( /^```/.test(line) ) in_code = !in_code;

        return line.replace( /    /g, "\t" );
    });

    return lines.join("\n");

}
