#if 0

Exercise 1

#Find where the standard library headers are kept on your system. List 
#their names. Are any nonstandard headers kept together with the standard ones? 
#Can any nonstandard headers be
#included using the <> notation?

echo "#if 0" >> $0
find /usr/lib64/gcc/ >> $0
echo "#endif" >> $0


#endif
