# QUICK START - CALL FROM WPS

## Test Case A

```
python xml_gen.py 1987 1987 12 > application.xml
```

WPS :
```
Parameter= votemper
WorkingArea= None
DepthLayers= [0,10,50,100,500,1000,2000]
```

### result 3

```
Commit : deploy1/ac9ef40 examples in documentation and some test results

Input data are available in S3 storge
Output in /share/tmp/wps/wp6_wf_id/0000002-141217143923159-oozie-oozi-W
Elapsed Time : 40 min

Cumulative information from all tasks :
bm---------------

Input Data
|  byte in memory  :  15803755308
|  # grid point    :  3950938827
`  # sea point     :  1138079291

Output Data
|  byte in memory  :  3050172624
|  # grid point    :  387437694
`  # sea point     :  122588408

Max Memory         :  2219646976

Init         : (ms) 243333 - 6 %
i/o read     : (ms) 274641 - 7 %
computation  : (ms) 391702 - 9 %
i/o write    : (ms) 244031 - 6 %
benchmarking : (ms) 141479 - 3 %
wrap         : (ms) 2906910 - 69 %
tot          :  (s) 4202.096
```

### result 2

```
Commit : deploy1/3ead231 improvement to gather benchmarking info

Input data are available as local files in sandbox
Output in /share/tmp/wps/wp6_wf_id/0000036-141201235331088-oozie-oozi-W
Elapsed Time : 45 min

Cumulative information from all tasks :
bm---------------

Input Data
|  byte in memory  :  15803755308
|  # grid point    :  3950938827
`  # sea point     :  1138079291

Output Data
|  byte in memory  :  3050172624
|  # grid point    :  387437694
`  # sea point     :  122588408

Max Memory         :  2226032640

Init         : (ms) 247635 - 7 %
i/o read     : (ms) 195620 - 6 %
computation  : (ms) 376646 - 11 %
i/o write    : (ms) 248363 - 7 %
benchmarking : (ms) 72787 - 2 %
wrap         : (ms) 2414485 - 68 %
tot          :  (s) 3555.536
```

### result 1

```
Commit : deploy1/df84e60 correction in generation of applicatio.xml to filter bm.txt

Input data are available as local files in sandbox
Output in /share/tmp/wps/wp6_wf_id/0000016-141201235331088-oozie-oozi-W
Elapsed Time : 35 min 

Information from one single task :
bm---------------

Input Data
|  byte in memory  :  8657226864
|  # grid point    :  2164306716
`  # sea point     :  628942730

Output Data
|  byte in memory  :  1545640320
|  # grid point    :  199371156
`  # sea point     :  63082664

Max Memory         :  1964818432

Init         : (ms) 222655 - 10 %
i/o read     : (ms) 139816 - 6 %
computation  : (ms) 197388 - 8 %
i/o write    : (ms) 123627 - 5 %
benchmarking : (ms) 67700 - 3 %
wrap         : (ms) 1581392 - 68 %
tot          :  (s) 2332.578
```

## Test Case B

```
python xml_gen.py 1987 1987 12 > application.xml
```

WPS :
```
Parameter= votemper
WorkingArea= [  [[12.75, 13.0], [44.5, 45.5]] , [[12.9,13.8],[44.3,45]] ]
DepthLayers= [0,10,50,100,500,1000,2000]
```

### result 3

```
Commit : deploy1/ac9ef40 examples in documentation and some test results

Input data are available in S3 storge
Output in /share/tmp/wps/wp6_wf_id/0000003-141217143923159-oozie-oozi-W
Elapsed Time : 32 min

Cumulative information from all tasks :
bm---------------

Input Data
|  byte in memory  :  36814932
|  # grid point    :  9203733
`  # sea point     :  1466345

Output Data
|  byte in memory  :  7105968
|  # grid point    :  902610
`  # sea point     :  233776

Max Memory         :  1630146560

Init         : (ms) 236929 - 7 %
i/o read     : (ms) 30074 - 1 %
computation  : (ms) 7259 - 0 %
i/o write    : (ms) 49108 - 2 %
benchmarking : (ms) 430 - 0 %
wrap         : (ms) 2867110 - 90 %
tot          :  (s) 3190.91
```

### result 2

```
Commit : deploy1/3ead231 improvement to gather benchmarking info

Input data are available as local files in sandbox
Output in /share/tmp/wps/wp6_wf_id/0000035-141201235331088-oozie-oozi-W
Elapsed Time : 29 min

Cumulative information from all tasks :
bm---------------

Input Data
|  byte in memory  :  36814932
|  # grid point    :  9203733
`  # sea point     :  1466345

Output Data
|  byte in memory  :  7105968
|  # grid point    :  902610
`  # sea point     :  233776

Max Memory         :  1633038336

Init         : (ms) 265751 - 10 %
i/o read     : (ms) 28594 - 1 %
computation  : (ms) 6852 - 0 %
i/o write    : (ms) 33148 - 1 %
benchmarking : (ms) 340 - 0 %
wrap         : (ms) 2435866 - 88 %
tot          :  (s) 2770.551
```

### result 1

```
Commit : deploy1/df84e60 correction in generation of applicatio.xml to filter bm.txt

Input data are available as local files in sandbox
Output in /share/tmp/wps/wp6_wf_id/0000015-141201235331088-oozie-oozi-W
Elapsed Time : 25 min

Information from one single task :
bm---------------

Input Data
|  byte in memory  :  20167056
|  # grid point    :  5041764
`  # sea point     :  848354

Output Data
|  byte in memory  :  3601152
|  # grid point    :  464508
`  # sea point     :  120316

Max Memory         :  1473949696

Init         : (ms) 208567 - 13 %
i/o read     : (ms) 12930 - 1 %
computation  : (ms) 3510 - 0 %
i/o write    : (ms) 12868 - 1 %
benchmarking : (ms) 89 - 0 %
wrap         : (ms) 1378039 - 85 %
tot          :  (s) 1616.003
```

## Test Case C

```
python xml_gen.py 1987 2012 12 > application.xml
```

WPS :
```
Parameter= votemper
WorkingArea= None
DepthLayers= [0,10,50,100,500,1000,2000]
```