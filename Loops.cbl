       procedure division.
           *> perform method 5 times
           perform demonstrate-perform-until
           perform demonstrate-perform-varying
           perform demonstrate-perfom-until-exit
           goback
           .

       *> DOU Loop
       demonstrate-perform-until section.
           declare counter as binary-char = 0
           perform until counter = 10
               display "DOU Counter = " counter
               add 1 to counter
           end-perform
           .

       *> FOR Loop
       demonstrate-perform-varying section.
           declare counter as binary-char
           perform varying counter from 1 by 1 until counter=10
               display "FOR Counter = " counter
           end-perform
           .
       
       *> EXIT Perform
       demonstrate-perfom-until-exit section.
           declare counter as binary-char = 0
           perform until exit  
               if counter = 10
                   display "Exiting Loop!"
                   exit perform
               end-if
               display "Looping in perform until next..." counter
               add 1 to counter
           end-perform
           .