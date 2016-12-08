#### Lab 3 - B-Trees: Exercise (a)

Insert into a simple binary tree (it is not a b-tree, there are no balancing rules) the following data (respecting the order of arrivals):

<b>2,4,5,6,8,10,9,14,16,18,7,22,1</b>

---

add 2

```{mermaid}
  graph TD
    2
```

add 4

```{mermaid}
  graph TD
    2 --> 4
```

add 5

```{mermaid}
  graph TD
    2 --> 4
    4 --> 5
```

add 6

```{mermaid}
  graph TD
    2 --> 4
    4 --> 5
    5 --> 6
```

add 8

```{mermaid}
  graph TD
    2 --> 4
    4 --> 5
    5 --> 6
    6 --> 8
```

add 10

```{mermaid}
  graph TD
    2 --> 4
    4 --> 5
    5 --> 6
    6 --> 8
    8 --> 10
```

add 9

```{mermaid}
  graph TD
    2 --> 4
    4 --> 5
    5 --> 6
    6 --> 8
    8 --> 10
    10 --> 9
```

add 14

```{mermaid}
  graph TD
    2 --> 4
    4 --> 5
    5 --> 6
    6 --> 8
    8 --> 10
    10 --> 9
    10 --> 14
```

add 16

```{mermaid}
  graph TD
    2 --> 4
    4 --> 5
    5 --> 6
    6 --> 8
    8 --> 10
    10 --> 9
    10 --> 14
    14 --> 16
```

add 18

```{mermaid}
  graph TD
    2 --> 4
    4 --> 5
    5 --> 6
    6 --> 8
    8 --> 10
    10 --> 9
    10 --> 14
    14 --> 16
    16 --> 18
```

add 7

```{mermaid}
  graph TD
    2 --> 4
    4 --> 5
    5 --> 6
    6 --> 8
    8 --> 7
    8 --> 10
    10 --> 9
    10 --> 14
    14 --> 16
    16 --> 18
```

add 22

```{mermaid}
  graph TD
    2 --> 4
    4 --> 5
    5 --> 6
    6 --> 8
    8 --> 7
    8 --> 10
    10 --> 9
    10 --> 14
    14 --> 16
    16 --> 18
    18 --> 22
```

add 1

```{mermaid}
  graph TD
    2 --> 4
    2 --> 1
    4 --> 5
    5 --> 6
    6 --> 8
    8 --> 7
    8 --> 10
    10 --> 9
    10 --> 14
    14 --> 16
    16 --> 18
    18 --> 22
```
