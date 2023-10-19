       working-storage section.
       01  by-reference        binary-char value 7.
       01  by-content          binary-char value 7.
       01  by-value            binary-char value 7.

       procedure division.
           call "Subprogram" using by reference by-reference
                                   by content by-content
                                   by value by-value
           display by-reference
           display by-content
           display by-value
           goback
           .
