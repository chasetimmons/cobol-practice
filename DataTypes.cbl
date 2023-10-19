       working-storage section.
       01  my-numeric      pic 9(5).
       01  my-signed       pic S9(5).
       01  my-lsigned      pic S9(5) leading.
       01  salary          pic 9(5)V9(2).
       01  my-alphanumeric pic X(5).
       
       procedure division.
           move 5 to my-numeric
           display my-numeric *> Displays 00005

           move 123456 to my-numeric
           display my-numeric *> Displays 23456

           move -5 to my-signed
           display my-signed   *> Displays 00005-

           move -5 to my-lsigned
           display my-lsigned   *> Displays -00005
           
           move 5 to salary
           display salary *> Displays 0000500

           move 7.27 to salary
           display salary *> Displays 0000727

           move "hi" to my-alphanumeric
           display my-alphanumeric *> Displays "hi"

           move "greetings" to my-alphanumeric
           display my-alphanumeric *> Displays "greet"

           stop run
           .