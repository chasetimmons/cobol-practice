       working-storage section.
       01  my-alphanumeric pic X(20) value "Hello, COBOL World!".
       01  first-name      pic X(20).
       01  last-name       pic X(20).
       01  full-name       pic X(40).

       procedure division.
           display my-alphanumeric(8:5)
           *> (offset:substring-length)
           
           display "What is your first name?"
           accept first-name

           display "What is your last name?"
           accept last-name

           string first-name delimited by space
               space delimited by size
               last-name delimited by space
               into full-name
           end-string
           display full-name

           move "Mary Contrary" to full-name
           unstring full-name
               delimited by space
               into first-name last-name
           end-unstring
           display first-name
           display last-name

           stop run
           .