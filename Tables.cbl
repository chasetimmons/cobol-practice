       working-storage section.
       01  sales.
           05  sales-entry binary-long occurs 5.

       78  TABLE-SIZE      value 5.
       01  daily-sales     binary-long occurs TABLE-SIZE
                                       indexed by i 
                                       values 1000,2000,3000,4000,5000.

       procedure division.
           move 1000 to sales-entry(1)
           move 2000 to sales-entry(2)
           move 3000 to sales-entry(3)
           move 4000 to sales-entry(4)
           move 5000 to sales-entry(5)
           
           declare j as binary-char
           declare total-sales as binary-long = 0
           perform varying j from 1 by 1 until j > 5
               display sales-entry(j)
               add sales-entry(j) to total-sales
           end-perform
           display "TOTAL: " total-sales

           perform varying i from 1 by 1 until i > 5
               display daily-sales(i)
               add daily-sales(i) to total-sales
           end-perform
           display "TOTAL: " total-sales

           set i to 1
           search daily-sales
               at end 
                   display "Invalid Index" i 
               when i = 3
                   display " "
                   display "Sales at index 3 are: " daily-sales(i)
           end-search

           goback
           .