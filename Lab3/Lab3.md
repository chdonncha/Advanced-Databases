### RAID
---
#### 1.
* <u>10</u> disks
* <u>100</u> GB
* <u>8</u> have transfer rate: <u>1000</u> <u>Mbits/sec</u>
* <u>2</u> have transfer rate: <u>500</u> <u>Mbits/sec</u>
* The DB has a stable size of <u>750GB</u>

Show how to implement different level of RAID (0,1,3,5,10,0+1)
and for the ones that can be implemented compute:

1. storage effiency (disk space actually used for data / total disk space used)
2. The average read access time in an ideal situation (i.e. how many Mbits per second?)

##### RAID 0

Storage effiency: 100%

As we only require 750GB and can access up to 1000GB it gives a redundant 250GB

The average read access time is:

(1000 * 8) + (500 * 2) = 9000Mbits/sec

##### RAID 1

Storage effiency: 50%

1000GB * .50 = 500GB (50% avilable harddisk)

750-500=-250 (250GB more is required for a stable DB)

It is not possible to establish a stable DB with the space provided

##### RAID 3

1 disk used for control

= 100GB

9 used for storage

= 900GB
= 750GB required for stable DB

900 - 750GB = 150GB excess DB space

so stroage effiency is 90%

##### RAID 5

Storage Effiency: <u>Exact same as RAID 3</U>


##### RAID 10



##### RAID 0+1

<u>You are not requested to use all the disks, but only the ones
you need to accommodates your database of 750GB</u>
---
#### 2.
A RAID 4 configuration (parity disk at block level) is composed by 5 disks + the parity disk.

The time for <u>reading</u> a block is <u>1 second</u>, <u>writing</u> <u>5 second.</u>
The database needs to modify (write):

(a) A data spread over 2 blocks in the same stripe

List all the operations the RAID system is supposed to do to read the data and modify them taking into account the parity block.

(b) Can you do another write operation at the same time you are performing a)?

(c) Can you do another read operation at the same time you are performing a)?

(d) How long does operation (a) take?

Do the same exercise considering RAID 5 (parity block striped).
Is there a difference?

<u>Assume that each disk has an hardware controller so that it is possible to perform perform parallel read and write from the disks.</u>

<u>Remember that, even if part of the stripe is modified, the parity bit for the stripe has to be recomputed.</u>

---
### B-Trees
---
(a) Insert into a simple binary tree (it is not a b-tree, there are no balancing rules) the following data (respecting the order of arrivals):

<b>2,4,5,6,8,10,9,14,16,18,7,22,1</b>

```{mermaid}
  graph TD
    6/14 --> 4/-
    6/14 --> 9/-
    6/14 --> 18/-
    4/- --> 1/2
    4/- --> 5/-
    9/- --> 7/8
    9/- --> 10/-
    18/- --> 16/-
    18/- --> 22/-
```

(b) Insert the same data into a B-Tree 2-3 (<u>2</u> data for each node, <u>3</u> pointers, as seen in class).

(c) Compare the two trees. Can you see a difference? What is the main advantage of the B-tree?
