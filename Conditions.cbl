       working-storage section.
       01  my-alphanumeric     pic X(30) value "Hello".

       procedure division.
           perform demonstrate-if
           move "Hi" to my-alphanumeric
           perform demonstrate-eval
           goback
           .

       demonstrate-if section.
           if my-alphanumeric equals "Hello"
               display "IF: Hello, World!"
           else
               if my-alphanumeric equals "Hi"
                   continue
               else
                   display "IF: Nice to meet you!"
               end-if
           end-if
           display "IF: Goodbye, World!"
           .

       demonstrate-eval section.
           evaluate my-alphanumeric
               when "Hello"
                   display "EVAL: Hello, World!"
               when "Hi"
                   continue
               when other
                   display "EVAL: Nice to meet you!"
           end-evaluate
           display "EVAL: Goodbye, World!"
           .