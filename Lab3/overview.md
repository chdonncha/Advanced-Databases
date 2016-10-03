Tree

Is a sorted representation of a datastructure

```{mermaid}
graph TD;
  1-->2;
  1-->4;
  4-->5
```
they're not good for indexs

it's not good to store a database in a list

but in somecases you can get unbalanced binary trees and the searching preformance dips

1. Insert into terminal node

```{mermaid}
  graph TD;
  3/6
```

2. Split

```{mermaid}
  graph TD;
  -/6 --> 3/-
  3/-
```

insert numbers:

```{mermaid}
  graph TD;
  6/10 --> 3/5
  6/10 --> 7/-
  6/10 --> 19/-
```

```{mermaid}
  graph TD;
    6/- --> 4/-
    6/- --> 10/-
    4/- --> 3/-
    4/- --> 5/-
    10/- --> 19/-
    10/- --> 8/-
```
