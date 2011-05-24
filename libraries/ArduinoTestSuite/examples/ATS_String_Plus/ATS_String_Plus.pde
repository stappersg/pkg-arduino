#include <ArduinoTestSuite.h>

void setup()
{
  ATS_begin("Arduino", "String Operator+() Test");
  
  char buf[200]; for (int i = 0; i < 199; i++) buf[i] = 'X'; buf[199] = 0;
  String t = String(buf);
  String t2 = t + t;
  String s = t2 + t2;
  String s2(t2);
  
  ATS_PrintTestStatus("operator+", t2.length() == 398);
  ATS_PrintTestStatus("operator+ gives null on failure", !s);
  ATS_PrintTestStatus("operands unchanged", t.equals(buf));
  ATS_PrintTestStatus("string copy", s2.length() == 398);

  ATS_end();  
}

void loop() {}
