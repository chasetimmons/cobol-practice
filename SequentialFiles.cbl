       input-output section.
           select bird-spotting-data assign "bird-data.txt"
               organization sequential
               file status file-status-code.

       file section.
       FD  bird-spotting-data.    *> File Description
       01  bird-spotting-record.  *> 
           05  #date.
               10  #day                pic 9(2).
               10  filler              pic X.
               10  month               pic 9(2).
               10  filler              pic X.
               10  year                pic 9(4).
               10  filler              pic X(2).
           05  #name.
               10  common-name         pic X(16).
               10  scientific-name     pic X(24).
           05  bird-count              pic 9(4).
           05  filler                  pic X(2).

       working-storage section.
       01  end-of-file         pic 9.
       01  file-status-code.
           05  status-key-1    pic X.
           05  status-key-2    pic X.

       procedure division.
           perform read-first-record
           perform read-all-data

           goback 
           .

       read-first-record section.
           open input bird-spotting-data
           read bird-spotting-data
           display bird-spotting-record
           close bird-spotting-data
           .

       read-all-data section.
           open input bird-spotting-data
           set end-of-file to 1 *> FALSE
           perform until end-of-file = 0 *> TRUE
               perform check-file-status-code
               read bird-spotting-data
                   at end
                       set end-of-file to 0 *> TRUE
                   not at end
                       display bird-spotting-record
               end-read  
           end-perform
           close bird-spotting-data
           .

       read-data section.
           open input bird-spotting-data
           *> Read some data!
           close bird-spotting-data
           .

       write-data section.
           open output bird-spotting-data
           *> Write some data!
           close bird-spotting-data
           .

       check-file-status-code section.
           if file-status-code not equal "00"
               display "Error Code " file-status-code
               goback
           end-if
           .