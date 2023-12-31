/**example**/
Data twoway;
Input Protein $ Source $ weight_gain; 
Datalines;
High Beef 73
High Beef 102
High Beef 118
High Beef 104
High Beef 81
High Beef 107
High Beef 100
High Beef 87
High Beef 117
High Beef 111
High Cereal 98
High Cereal 74
High Cereal 56
High Cereal 111
High Cereal 95 
High Cereal 88 
High Cereal 82 
High Cereal 77 
High Cereal 86 
High Cereal 92 
High Pork 94 
High Pork 79 
High Pork 96 
High Pork 98 
High Pork 102 
High Pork 102 
High Pork 108 
High Pork 91 
High Pork 120 
High Pork 105 
Low Beef 90 
Low Beef 76 
Low Beef 90 
Low Beef 64 
Low Beef 86 
Low Beef 51 
Low Beef 72 
Low Beef 90 
Low Beef 95 
Low Beef 78 
Low Cereal 107 
Low Cereal 95 
Low Cereal 97 
Low Cereal 80 
Low Cereal 98 
Low Cereal 74 
Low Cereal 74 
Low Cereal 67 
Low Cereal 89 
Low Cereal 58 
Low Pork 49 
Low Pork 82 
Low Pork 73 
Low Pork 86 
Low Pork 81 
Low Pork 97 
Low Pork 106
Low Pork 70 
Low Pork 61 
Low Pork 82 
;
Run;
proc anova data=twoway;
class Protein Source;
model weight_gain=Protein Source Protein*Source; 
run;
quit;