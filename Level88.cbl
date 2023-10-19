       working-storage section.
       01  person              typedef.
           05  #name.
               10  first-name  pic X(15).
               10  last-name   pic X(15).
           03  gender          pic X.
               88  female      value "F" "f".
               88  male        value "M" "m".
               88  #other      value "O" "o".
               88  valid       value "F" "f" "M" "m" "O" "o".
       01  switch              pic 9 value 1.
           88 switch-on        value 0.
           88 switch-off       value 1.
       01  my-person           person.

       procedure division.
           move "M" to my-person::gender
           move "Smith" to my-person::last-name
           set my-person::female to true

           evaluate true
               when my-person::female
                   display "Hello, Mrs. " my-person::last-name
               when my-person::male
                   display "Hello, Mr. " my-person::last-name
               when other
                   display "Hello, Mx. " my-person::last-name
           end-evaluate

           set switch-on to true
           display switch
           set switch-off to true
           display switch

           goback
           .