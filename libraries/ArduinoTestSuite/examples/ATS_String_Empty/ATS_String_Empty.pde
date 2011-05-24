#include <ArduinoTestSuite.h>

void setup()
{
  ATS_begin("Arduino", "String Empty Test");

  String s1;
  String s2("");
  String s3((char *) NULL);
  String s3b(s3);
  
  ATS_PrintTestStatus("no constructor", s1 ? true : false);
  ATS_PrintTestStatus("empty string constructor", s2 ? true : false);
  ATS_PrintTestStatus("null constructor", !s3);
  ATS_PrintTestStatus("from null String", !s3b);
  
  String s4("asdf"); s4 = "";  
  String s5("asdf"); s5 = (const char *) NULL;
  String s6; s6 = "";
  String s7(""); s7 = (const char *) NULL;
  
  ATS_PrintTestStatus("equals empty", s4 ? true : false);
  ATS_PrintTestStatus("equals null", !s5);
  ATS_PrintTestStatus("equals empty", s6 ? true : false);
  ATS_PrintTestStatus("equals null", !s7);
  
  String s8((char *) NULL); s8.reserve(0);
  ATS_PrintTestStatus("reserve(0)", s8 ? true : false);
  
  char buf[1024]; for (int i = 0; i < 1023; i++) buf[i] = 'X'; buf[1023] = 0;
  String s9(buf);
  
  ATS_PrintTestStatus("too big", !s9);
  
  ATS_end();
}

void loop() {}












