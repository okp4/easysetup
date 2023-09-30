% Facts
company(company1).
company(company2).
company(company3).

dataset(company1, dataset1).
dataset(company2, dataset2).
dataset(company3, dataset3).

permission(company1, read, dataset2).
permission(company2, read, dataset1).
permission(company2, read, dataset3).
permission(company3, read, dataset1).

% Rules
has_permission(Company, Action, Dataset) :-
    permission(Company, Action, Dataset).
