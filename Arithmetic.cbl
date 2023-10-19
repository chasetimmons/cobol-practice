       working-storage section.
       01  bank-balance    pic 9(7)V9(2).
       01  interest        pic 9(7)V9(2) comp-5.
       78  interest-rate   value 0.04.

       procedure division.
           *> add variable to receiving variable
           *> subtract variable from receiving variable
           *> multiply variable by receiving variable
           *> divide variable into receiving variable

           *> add variable1 to variable2 giving receiving-variable
           *> subtract variable1 from variable2 giving receiving-variable
           *> multiply variable1 by variable2 giving receiving-variable
           *> divide variable1 into variable2 giving receiving-variable remainder rem
           *> divide variable1 by variable2 giving receiving-variable remainder rem

           *> compute daily-sales = daily-sales - (daily-sales * vat)
           *> compute weekly-sales = daily-sales * 7
           *> compute yearly-sales = weekly-sales * 52
           *> compute monthly-sales = yearly-sales / 12

           initialize bank-balance replacing numeric data by all "9"
           multiply bank-balance by interest-rate giving interest
           add interest to bank-balance
               on size error
                   display "ERROR - balance is too large!"
               not on size error
                   display interest " successfully added to account."
           end-add

           stop run
           .