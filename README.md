# Adverbs-of-quantification
This is a computational supplement to the articles Adverbs of Quantification (Lewis 1975, and Rooth to appear). It computes primitive case semantics for indefinite descriptions, including discourse anaphora to indefinite antecededents and donkey anaphora with adverbs of quantification. The syntax-semantics interface uses a multi-modal continuation categorial grammar.

# Examples
```
make duck1a.show
parse duck1a.gm
...
-------------------
edge      : 138 so a duck awoke	(0 4)	(s + (e + t))
semantics : (^ w (^ y ((duck w y) & (awake w y))))
proofnet  : ((s + ((1 . e) + (2 . t))) (so ((s + (3 . t)) / (4 . t))) (a (((s + ((1 . e) + (2 . t))) // ((5 . e) \\ (s + (6 . t)))) / ((7 . e) \N (8 . t)))) (duck ((7 . e) \N (8 . t))) (awoke ((5 . e) \ (4 . t))))
derivation: (D ((Z (U so)) ((Z ((Z (U L)) (a duck))) (U awoke))))
169 edges -- Done parsing.
#<output_port:stdout>
```
The caret symbols are read as lambda. The semantics is a relation that holds between a world w and an individual y iff y is a duck in w, and y awoke in w.  The lambda variable y models a discourse referent for the duck.

```
make duck1b.show
...
-------------------
edge      : 231 so a duck awoke x it1 quacked	(0 7)	(s + (e + t))
semantics : (^ w (^ x ((duck w x) & ((awake w x) & (quack w x)))))
proofnet  : ((s + ((1 . e) + (2 . t))) (so ((s + (3 . t)) / (4 . t))) (a (((s + ((5 . e) + (2 . t))) // ((6 . e) \\ (s + (7 . t)))) / ((8 . e) \N (9 . t)))) (duck ((8 . e) \N (9 . t))) (awoke ((6 . e) \ (4 . t))) (x (((s + (3 . t)) \ (s + (10 . t))) / (11 . t))) (it1 ((s + ((1 . e) + (2 . t))) // ((12 . e) \\ (s + ((5 . e) + (2 . t)))))) (quacked ((12 . e) \ (11 . t))))
derivation: (D ((Z ((Z (U L)) ((Z (U so)) ((Z ((Z (U L)) (a duck))) (U awoke))))) ((Z (U x)) ((Z ((Z (U L)) it1)) (U quacked)))))
```
The semantics is a relation that holds between a world w and an individual y iff y is a duck in w, y awoke in w, and y quacked in w.  The semantics of anaphora to an indefinite antecedent has been computed in categorial grammar and type theory.

# Prerequisites and setup
A unix/linux command line environment with the Bigloo scheme compiler is needed. If you are using osx and macports, say this.

```
sudo port install bigloo
sudo port install wget
cd barker-shan
make parser.scm
make parse
cd ..
ln barker-shan/parse .
```




