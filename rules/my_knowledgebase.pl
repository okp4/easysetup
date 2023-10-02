% Facts
memberOf(alice, council).
memberOf(bob, council).

% Rules
can_vote(X) :- memberOf(X, council).
