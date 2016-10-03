2,4,5,6,8,10,9,14,16,18,7,22,1

---

add 2+4

```{mermaid}
  graph TD
    2/4
```

add 5

```{mermaid}
  graph TD
    2/5 --> 4/-
```

add 6

```{mermaid}
  graph TD
    4/5 --> 2/-
    4/5 --> 6/-
```

add 8

```{mermaid}
  graph TD
    4/5 --> 2/-
    4/5 --> 6/8
```

add 10

```{mermaid}
  graph TD
    4/5 --> 2/-
    4/5 --> 6/8
    6/8 --> 10/-
```

add 9

```{mermaid}
  graph TD
    4/5 --> 2/-
    4/5 --> 6/8
    6/8 --> 9/10
```

add 14

```{mermaid}
  graph TD
    4/5 --> 2/-
    4/5 --> -/9
    -/9 --> 6/8
    -/9 --> 10/14
```
