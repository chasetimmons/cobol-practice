       input-output section.
           select bird-spotting-data assign "bird-data.dat"
               organization indexed
               access random
               record key record-key
               file status file-status-code.

       file section.
       FD  bird-spotting-data.    *> File Description
       01  bird-spotting-record.  *> 
           05  record-key              pic 9(3).
           05  filler                  pic X.
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
           perform read-record
           perform rewrite-record
           goback
           .

       read-record section.
           move 3 to record-key
           read bird-spotting-data
               invalid key
                   display "Record not found " record-key
               not invalid key
                   display bird-spotting-record
           end-read
           .

       rewrite-record section.
           move 3 to record-key
           move 5 to bird-count
           rewrite bird-spotting-record
               invalid key
                   display "Failure to ammend record " record-key
               not invalid key
                   display "Record " record-key " successfully ammended"
           end-rewrite
           .

       write-record section.
           move 5 to record-key
           move "01/01/2023" to #date
           move "Mourning Dove" to common-name
           move "No clue" to scientific-name
           move 1 to bird-count
           write bird-spotting-record
               invalid key
                   display "Failure to insert record " record-key
               not invalid key
                   display "Record " record-key " successfully inserted"
           end-write
           .

       delete-record section.
           move 1 to record-key
           delete bird-spotting-data record
               invalid key
                   display "Failure to delete record " record-key
               not invalid key
                   display "Record " record-key " successfully deleted"
           end-delete
           .