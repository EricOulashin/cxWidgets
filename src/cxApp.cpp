// Copyright (c) 2026 E. Oulashin
#include "cxApp.h"
// Note: This is not complete!

namespace cx {

cxApp::cxApp()
{
}

cxApp::~cxApp()
{
}

long cxApp::mainLoop()
{
   return(cxID_EXIT);
}

long cxApp::onRun()
{
   return(cxID_EXIT);
}

long cxApp::run()
{
   return(onRun());
}

long cxApp::onInit()
{
   return(cxID_EXIT);
}

long cxApp::onExit()
{
   return(cxID_EXIT);
}

std::string cxApp::cxTypeStr() const
{
   return("cxApp");
} // cxTypeStr

} // namespace cx