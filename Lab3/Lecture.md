Exercise on B-Tree:

50,60,70,40,30,20,10,80,90,100

```{mermaid}
  graph TD;
    50/70
```
add 70

```{mermaid}
  graph TD;
    60/- --> 50/-
    60/- --> 70/-
```

add 40

```{mermaid}
  graph TD;
    60/- --> 40/50
    60/- --> 70/-
```

add 30

```{mermaid}
  graph TD;
    40/60 --> 30/-
    40/60 --> 50/-
    40/60 --> 70/-
```

add 20

```{mermaid}
  graph TD;
    40/60 --> 20/30
    40/60 --> 50/-
    40/60 --> 70/-
```

add 10

```{mermaid}
  graph TD;
    40/- --> 20/-
    40/- --> 60/-
    60/- --> 70/-
    20/- --> 10/-
```
