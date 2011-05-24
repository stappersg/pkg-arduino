#include <ArduinoTestSuite.h>

void setup()
{
  ATS_begin("Arduino", "String Tests");

  String s1 = "abc";
  String s1b = "abc";
  String s2 = "ab";
  String s3 = "a";
  String s4 = "";
  String s5 = "c";
  String s6 = "def";
  
  ATS_PrintTestStatus("string ==", s1 == s1);
  ATS_PrintTestStatus("string ==", s1 == s1b);
  ATS_PrintTestStatus("string ==", !(s1 == s2));
  ATS_PrintTestStatus("string ==", s1 == "abc");
  ATS_PrintTestStatus("string ==", !(s1 == "def"));
  ATS_PrintTestStatus("string !=", !(s1 != s1));
  ATS_PrintTestStatus("string !=", !(s1 != s1b));
  ATS_PrintTestStatus("string !=", s1 != s2);
  ATS_PrintTestStatus("string !=", !(s1 != "abc"));
  ATS_PrintTestStatus("string !=", s1 != "def");
  
  ATS_PrintTestStatus("string >", !(s1 > s1));
  ATS_PrintTestStatus("string >", !(s1 > s1b));
  ATS_PrintTestStatus("string >", s1 > s2);
  ATS_PrintTestStatus("string >", s2 > s3);
  ATS_PrintTestStatus("string >", s6 > s1);
  ATS_PrintTestStatus("string >", s3 > s4);
  ATS_PrintTestStatus("string >", !(s2 > s1));
  ATS_PrintTestStatus("string >", !(s3 > s2));
  ATS_PrintTestStatus("string >", !(s1 > s6));
  ATS_PrintTestStatus("string >", !(s4 > s3));
  
  ATS_end();
}

void loop() {}
