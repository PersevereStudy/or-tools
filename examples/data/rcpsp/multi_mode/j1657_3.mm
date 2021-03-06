************************************************************************
file with basedata            : md249_.bas
initial value random generator: 1816937520
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  127
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       17        3       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           5  12
   3        3          3           7  10  14
   4        3          3           5   8  10
   5        3          3           6   7  11
   6        3          3           9  13  17
   7        3          1          13
   8        3          2          12  17
   9        3          2          14  16
  10        3          3          11  16  17
  11        3          1          13
  12        3          2          15  16
  13        3          1          15
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       0    7    5    7
         2     4       3    0    4    6
         3    10       0    4    3    2
  3      1     2       9    0    6    9
         2     8       6    0    6    9
         3    10       0    7    4    8
  4      1     4       5    0    5   10
         2     5       0    7    4    6
         3     7       0    6    3    3
  5      1     1       4    0    7    4
         2     3       0    3    4    3
         3     8       0    1    3    3
  6      1     3       4    0   10    8
         2     4       0    9   10    8
         3     6       0    6   10    8
  7      1     7       9    0    8    8
         2     8       3    0    3    7
         3     8       0    9    2    6
  8      1     5       0    6   10   10
         2     9       0    2   10    7
         3    10       5    0   10    6
  9      1     5       0    9    7    8
         2     6       0    8    7    4
         3     9       0    7    7    3
 10      1     2      10    0    5    6
         2     4       0    3    3    5
         3     4       0    1    5    5
 11      1     5       5    0    5    8
         2     5       0    7    7    9
         3    10       0    6    3    8
 12      1     1       0    5    7    8
         2     2       0    4    6    6
         3     7       8    0    6    3
 13      1     4       6    0    9    9
         2     7       0    6    6    7
         3     9       0    6    4    7
 14      1     2       0    6    8    2
         2     4       2    0    4    2
         3     8       0    5    3    1
 15      1     1       0    7    3   10
         2     1       9    0    3   10
         3     2       9    0    3    9
 16      1     2       9    0    9    7
         2    10       7    0    8    6
         3    10       0    4    8    5
 17      1     1       7    0    8    6
         2     9       0    1    5    5
         3     9       6    0    5    4
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
    7   12  114  121
************************************************************************
