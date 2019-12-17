# Power Distributuion Board
Power Distribution Board: Provides protection on the low voltage circuitry

This Board has an input of 12V and provides 3 Output pins for 12V and 5 outpins of 5V with a minimum total output current of 10A. All the output pins have Undervoltage/Overvoltage Protection and Reverse Input Protection. PDB uses the following IC's:

- [LT4363](https://www.digikey.ca/products/en?keywords=LT4363CMS-2%23PBF)
- [AP65550FN-7](https://www.digikey.ca/product-detail/en/diodes-incorporated/AP65550FN-7/AP65550FN-7DICT-ND/5147405)

Here's a look at the most recent version of the Board:

![PDB](PCB_FINAL.JPG)

Name | Sch Lib | Footprint Lib
---|---|---
Inductor|1264EY-3R3N=P3|IND-6mm
LED green| 150060VS75000 |LED
2 pin header|0768250002|MOLEX_2_pin_MEGAFIT
5V buck|AP65550FN-7|DFN-10
10pF|C0805C100K5RAC7800|CAPC1613X09N
0.1uF/100nF|CL10A104KA8NNNC|CAPC1613X09N
1uF|CL21B105KBFVPNE|CAPC1613X09N
22uF|CL31B226KPHNNNE|CAPC1613X09N
100k|ERA-6AEB104V|R0805
124k|ERA-6AEB1243V|R0805
47nF|GCM188R71H473KA55D|CAPC1613X09N
10uF|GRM21BR71A106KA73L|CAPC1613X09N
N-channel mosfet|IRLR2908TRLPBF|DPAK
LT4363|LT4363CMS-2#PBF|TSOP65P490X110-12N
10mOhm|PE2512FKE7W0R01L|R2512
5k|PNM0805E5001BST5|R0805
Red LED|QTLP600CRTR|LED
2.2k|RC0805FR-072K2L|R0805
10Ohm|RL1220S-100-F|R0805
42.2k|RMCF1210FT42R2|R0805
1k|RNCF0805DTE1K00|R0805
10k|RNCF0805DTE10K0|R0805
20k|RNCF0805DTE20K0|R0805
22.1k|RNCF0805DTE22K1|R0805
TVS diode|SMAJ58A-13-F|DIODE_TVS
