       linkage section.
       01  by-reference        binary-char.
       01  by-content          binary-char.
       01  by-value            binary-char.

       procedure division using by-reference
                                by-content
                                by-value.
               add 1 to by-reference
               add 1 to by-content
               add 1 to by-value
               goback
               .