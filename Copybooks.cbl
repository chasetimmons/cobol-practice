       working-storage section.
       copy bird-typedefs.
       copy bird replacing ==(prefix)== by ==ws==.

       linkage section.
       copy bird replacing ==(prefix)== by ==lk==.

       procedure division using by reference lk-bird.
           move lk-bird to ws-bird
           perform display-names  
           perform display-measurements  
           perform display-breeding-population

           goback
           .