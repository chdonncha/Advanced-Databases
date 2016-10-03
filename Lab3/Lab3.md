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

1. storage effiency
(disk space actually used for data / total disk space used)
2. The average read access time in an ideal situation
(i.e. how many Mbits per second?)

You are not requested to use all the disks, but only the ones
you need to accommodates your database of 750GB
---
#### 2.
A RAID 4 configuration (parity disk at block level) is composed by 5 disks + the parity disk.

The time for reading a block is 1 second, writing 5 second.
The database needs to modify (write):

(a) A data spread over 2 blocks in the same stripe

List all the operations the RAID system is supposed to do to read
the data and modify them taking into account the parity block.

(b) Can you do another write operation at the same time you are performing a)?

(c) Can you do another read operation at the same time you are performing a)?

(d) How long does operation (a) take?

Do the same exercise considering RAID 5 (parity block striped).
Is there a difference?

Assume that each disk has an hardware controller so that it is possible to perform perform parallel read and write from the disks.

Remember that, even if part of the stripe is modified, the parity bit for the stripe has to be recomputed.

---
### B-Trees
---
(a) Insert into a simple binary tree (it is not a b-tree, there are no balancing rules) the following data (respecting the order of arrivals):

<b>2,4,5,6,8,10,9,14,16,18,7,22,1</b>

(b) Insert the same data into a B-Tree 2-3 (<u>2</u> data for each node, <u>3</u> pointers, as seen in class).

(c) Compare the two trees. Can you see a difference? What is the main advantage of the B-tree?
