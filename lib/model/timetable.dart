import 'subjects.dart';

Map<int, Subject> table = {
  //Monday
  1: Subjects.lDSPLab,
  2: Subjects.lDSPLab,
  3: Subjects.lDSPLab,
  4: Subjects.tDSP,
  5: Subjects.tNetworking,
  6: Subjects.tVLSI,
  7: Subjects.lOOPLab,
  8: Subjects.lOOPLab,
  9: Subjects.lOOPLab,
  //Tuesday
  10: Subjects.tOOP,
  11: Subjects.tNetworking,
  12: Subjects.tDSP,
  13: Subjects.lVLSILab,
  14: Subjects.lVLSILab,
  15: Subjects.lVLSILab,
  //Wednesday
  19: Subjects.tOptical,
  20: Subjects.tDSP,
  21: Subjects.tPD,
  22: Subjects.tNetworking,
  23: Subjects.tVLSI,
  24: Subjects.tOptical,
  //Thursday
  28: Subjects.tVLSI,
  29: Subjects.tNetworking,
  30: Subjects.tOOP,
  31: Subjects.tPOM,
  32: Subjects.tPOM,
  //Friday
  37: Subjects.tOptical,
  38: Subjects.tOptical,
  39: Subjects.tOOP,
  40: Subjects.lCKTLab,
  41: Subjects.lCKTLab,
  42: Subjects.lCKTLab,
  //
  46: Subjects.free
};

int getMapNumber(DateTime time){
  int dayNumber = time.weekday;

  int minutesSinceMidnight = time.hour*60+time.minute;
  int periodNumber;
  if(minutesSinceMidnight >= 540 && minutesSinceMidnight <= 705/*11:45*/){
    periodNumber = (minutesSinceMidnight-540/*9:00*/)~/55+1;
  }else if(minutesSinceMidnight >= 745/*12:25*/ && minutesSinceMidnight <= 1075){
    periodNumber = (minutesSinceMidnight-580/*9:00 + 40min break*/)~/55+1;
  }

  return periodNumber==null ? 46 : (dayNumber-1)*9+periodNumber;
}
