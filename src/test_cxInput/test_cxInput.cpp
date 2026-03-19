// Copyright (c) 2026 E. Oulashin
#include <cxUtils.h>
#include <cxInput.h>
#include <string>
#include <fstream>
#include <iostream>

using namespace std;

int main(int argc, char* argv[]) {
   cx::init();

   string initial;
   if (argc == 2) {
      initial=argv[1];
   }

   cxInput input1(NULL, 0, 0, 5, "A:");
   // input1.setValue(initial);
   input1.showModal();
   cx::cleanup();

   // now output what we set the value to
   ofstream log("test_cxInput.log", ios::out | ios::trunc); // writing/truncating
   log << input1.getValue();
   log.close();

   return(0);
}
