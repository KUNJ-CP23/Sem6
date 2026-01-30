{\rtf1\ansi\ansicpg1252\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Monaco;}
{\colortbl;\red255\green255\blue255;\red211\green83\blue92;\red23\green23\blue23;\red202\green202\blue202;
\red79\green123\blue61;\red140\green211\blue254;\red194\green126\blue101;\red212\green212\blue212;\red167\green197\blue152;
\red70\green137\blue204;\red99\green159\blue215;\red54\green192\blue160;}
{\*\expandedcolortbl;;\cssrgb\c86667\c41569\c43529;\cssrgb\c11765\c11765\c11765;\cssrgb\c83137\c83137\c83137;
\cssrgb\c37647\c54510\c30588;\cssrgb\c61176\c86275\c99608;\cssrgb\c80784\c56863\c47059;\cssrgb\c86275\c86275\c86275;\cssrgb\c70980\c80784\c65882;
\cssrgb\c33725\c61176\c83922;\cssrgb\c45490\c69020\c87451;\cssrgb\c23922\c78824\c69020;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 #!/bin/bash\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 # PartA 1\cf4 \cb1 \strokec4 \
\
\cf5 \cb3 \strokec5 # echo "To find the value of one number raised to the power of another."\cf4 \cb1 \strokec4 \
\
\cf5 \cb3 \strokec5 # for i in \{1..5\}: do\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 #     echo " Number $i"\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 # done\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 read \cf6 \strokec6 -p\cf4 \strokec4  \cf7 \strokec7 "Enter the base"\cf4 \strokec4  base\cb1 \
\cb3 read \cf6 \strokec6 -p\cf4 \strokec4  \cf7 \strokec7 "Enter the power"\cf4 \strokec4  power\cb1 \
\cb3 ans\cf8 \strokec8 =\cf9 \strokec9 1\cf4 \strokec4  \cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf10 \cb3 \strokec10 for\cf4 \strokec4  \cf8 \strokec8 ((\cf4 \strokec4 i\cf8 \strokec8 =\cf9 \strokec9 1\cf8 \strokec8 ;\cf4 \strokec4  i\cf8 \strokec8 <=\cf4 \strokec4 power\cf8 \strokec8 ;\cf4 \strokec4  i\cf8 \strokec8 ++))\cf4 \cb1 \strokec4 \
\cf10 \cb3 \strokec10 do\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     ans\cf8 \strokec8 =\cf11 \strokec11 $((ans \cf8 \strokec8 *\cf11 \strokec11  base)\cf8 \strokec8 )\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf10 \cb3 \strokec10 done\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf12 \cb3 \strokec12 echo\cf4 \strokec4  \cf7 \strokec7 "Answer: $ans"\cf4 \cb1 \strokec4 \
}