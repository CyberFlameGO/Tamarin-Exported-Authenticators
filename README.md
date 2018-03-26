#Exported Authenticators Tamarin model

[`draft-Sullivan`](https://tools.ietf.org/html/draft-ietf-tls-exported-authenticator-06) defines Exported Authenticators (EAs) for [TLS 1.3](https://tlswg.github.io/tls13-spec/draft-ietf-tls-tls13.html) and [TLS 1.2](https://www.ietf.org/rfc/rfc5246.txt) with [extended master secret](https://tools.ietf.org/html/rfc7627). This project is a [Tamarin](https://tamarin-prover.github.io/) model of the 6^th^ draft of `draft-Sullivan`. It attempts to prove the security guarantees claimed by `draft-Sullivan` hold. 

##Getting Started

###Prerequisites 	
This project requires the [Tamarin prover](https://tamarin-prover.github.io/), which requires stack, Haskell (ghc), GraphViz, and maude. 
We also make use of m4, and make.

###Getting Started
To build the project run `make`.

    make

Because of the complex structure of the model if you make changes to the model you may have to run `make clean` before `make` will trigger correctly.

    make clean ; make

If you are running a version of Tamarin older that 1.2.0 then you need to run :

    make axiom ; make

This will rewrite the model into the older format.
###Proofs

To verify the proofs run Tamarin on the full proof file, `proofs/all_lemmas.spthy`. 

    tamarin-prover proofs/all_lemmas.spthy

This may take a long time and consume a lot of resources. 

To explore the proofs in Tamarins interactive solver run:

    tamarin-prover interactive proofs/

This will start the interactive prover at `localhost:3001`. Opening the proofs in the interactive prover checks the entire proof. This may take a long time and use a lot of resources. 

To explore the model without checking the proofs run:

    tamarin-prover interactive .
    
The Tamarin prover will start an interactive instance at `localhost:3001`. 

The Tamarin version used to produce the proofs was:

    tamarin-prover 1.3.1, (C) David Basin, Cas Cremers, Jannik Dreier, Simon Meier, Ralf Sasse, Benedikt Schmidt, ETH Zurich 2010-2017
    Git revision: 120c7e706f3e1d4646b233faf2bc9936834ed9d3, branch: develop

###Authors
* Jonathan Hoyland
* Cas Cremers

###Acknowledgments 
Thanks to Sam Scott for his assistance in getting the model running and for his invaluable proof advice, and to the other TLS 1.3 Tamarin team members at large for the work on which this model is largely based. 
