#!/usr/bin/bash
# This tests HOME, END, LEFT and RIGHT keys in a cxInput (input text field)

# if the value of a cxInput is "set", then ensure
# that we get that value back out
./test_cxInput.pl "A:" "a"
value=`cat test_cxInput.log`
if [ "$value" != "a" ]; then
   echo "Test 1 - Failed. (value:$value:)"
fi

# if the value of a cxInput is "set", then ensure
# that we get that value back out (changed from test #1)
./test_cxInput.pl "A:" "b"
value=`cat test_cxInput.log`
if [ "$value" != "b" ]; then
   echo "Test 2 - Failed. (value:$value:)"
fi

# test that if you set it with a blank that it truly is
# a blank
./test_cxInput.pl "A:" ""
value=`cat test_cxInput.log`
if [ "$value" != "" ]; then
   echo "Test 3 - Failed. (value:$value:)"
fi

# test what happens if you enter more characters than
# what's in the field
./test_cxInput.pl "A:" "1234"
value=`cat test_cxInput.log`
if [ "$value" != "124" ]; then
   echo "Test 4 - Failed. (value:$value:)"
fi

# test the HOME key
./test_cxInput.pl "A:" "#HOME#ABC" 
value=`cat test_cxInput.log`
if [ "$value" != "ABC" ]; then
   echo "Test 5 - Failed. (value:$value:)"
fi

# test the HOME key (as first char)
./test_cxInput.pl "A:" "A#HOME#BC"
value=`cat test_cxInput.log`
if [ "$value" != "BC" ]; then
   echo "Test 6 - Failed. (should be:BC: from:A#HOME#BC: was:$value:)"
fi

# test the HOME key (as a sequence in the middle)
./test_cxInput.pl "A:" "111#HOME#ABC"
value=`cat test_cxInput.log`
if [ "$value" != "ABC" ]; then
   echo "Test 7 - Failed. (should be:ABC: from:111#HOMEABC: was:$value:)"
fi

# test the BACKSPACE key 
./test_cxInput.pl "A:" "ABC#BACK#D"
value=`cat test_cxInput.log`
if [ "$value" != "AD" ]; then
   echo "Test 8 - Failed. (should be:AD: from:ABC#BACK#D: was:$value:)"
fi

# test the RIGHT key 
./test_cxInput.pl "A:" "ABC#HOME##RIGHT##RIGHT#D"
value=`cat test_cxInput.log`
if [ "$value" != "ABD" ]; then
   echo "Test 9 - Failed. (should be:ABD: from:ABC#HOME##RIGHT##RIGHT#D: was:$value:)"
fi

# test the BACKSPACE key 
./test_cxInput.pl "A:" "ABC#LEFT##BACK#"
value=`cat test_cxInput.log`
if [ "$value" != "BC" ]; then
   echo "Test 10 - Failed. (should be:BC: from:ABC#LEFT##BACK#: was:$value:)"
fi

echo "Note: If one or more tests do not pass, be sure to:"
echo "      'cvsupdate'/'make install' of the library/'make clean'/'make' "
echo "      then re-try running 'doit'."
