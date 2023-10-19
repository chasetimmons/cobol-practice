       working-storage section.
       01  my-numeric                  pic 99.

       01  my-alphanumeric             pic X(15).
       01  edited-alphanumeric         pic X(15).

       78  MINIMUM-RANDOM-NUMBER       value 0.
       78  MAXIMUM-RANDOM-NUMBER       value 99.

       01  today.
           05  year                    pic 9(4).
           05  month                   pic 9(2).
           05  #day                    pic 9(2).

       procedure division.
           move function mod(5,2) to my-numeric
           display my-numeric
           move function max(1,2,3,4,5) to my-numeric
           display my-numeric
           move function min(1,2,3,4,5) to my-numeric
           display my-numeric
           move function mean(1,2,3,4,5) to my-numeric
           display my-numeric
           move function range(1,2,3,4,5) to my-numeric
           display my-numeric
           move function sqrt(4) to my-numeric
           display my-numeric

           move "Micro Focus" to my-alphanumeric
           display my-alphanumeric
           move function length(my-alphanumeric) to my-numeric
           display my-numeric
           move function upper-case(my-alphanumeric)
               to edited-alphanumeric
           display edited-alphanumeric
           move function lower-case(my-alphanumeric)
               to edited-alphanumeric
           display edited-alphanumeric

           compute my-numeric = function random *
               (MAXIMUM-RANDOM-NUMBER - MINIMUM-RANDOM-NUMBER + 1)
               + MINIMUM-RANDOM-NUMBER
           display my-numeric

           move function current-date to today
           display today

           stop run
           .