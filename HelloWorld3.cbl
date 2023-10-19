       working-storage section.
       01  ws-display pic X(20) value "Hello, COBOL World!".

       procedure division.
           display ws-display
           stop run
           .