import 'package:shared_preferences/shared_preferences.dart';

class Subject {
  String subjectCode;
  String subjectName;
  String subjectTeacher;
  String subjectRoom;
  SharedPreferences _prefs;

  int _numberOfClasses;
  int _numberOfClassesAttended;

  int get numberOfClassesAttended => _numberOfClassesAttended;
  int get numberOfClasses => _numberOfClasses;

  _setSavedData() async {
    _prefs = await SharedPreferences.getInstance();
    _prefs.setInt('${subjectCode}_noc', _numberOfClasses);
    _prefs.setInt('${subjectCode}_noca', _numberOfClassesAttended);
  }

  _getSavedData() async {
    _prefs = await SharedPreferences.getInstance();
    _numberOfClasses = _prefs.getInt('${subjectCode}_noc') ?? 0;
    _numberOfClassesAttended = _prefs.getInt('${subjectCode}_noca') ?? 0;
  }

  Subject(this.subjectCode, this.subjectName, this.subjectTeacher,
      this.subjectRoom) {
    _getSavedData();
  }

  void registerPresent() {
    _numberOfClasses++;
    _numberOfClassesAttended++;
    _setSavedData();
  }

  void registerAbsent() {
    _numberOfClasses++;
    _setSavedData();
  }
}

class Subjects {
  static Subject tVLSI =
      new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject tDSP =
      new Subject('ECEN3202', 'Digital Signal Processing', 'KD', 'CB-512');
  static Subject tOptical =
      new Subject('ECEN3241', 'Fiber Optic Communication', 'AD', 'CB-512');
  static Subject tNetworking = new Subject(
      'ECEN3231', 'Computer Communication and Networking', 'AD', 'CB-512');
  static Subject tOOP = new Subject(
      'CSEN3004', 'Object Oriented Programming using C++', 'KD', 'CB-512');
  static Subject tPOM =
      new Subject('HMTS3201', 'Principles Of Management', 'KD', 'CB-512');
  static Subject tPD =
      new Subject('ECEN3221', 'Personality Development', 'KGT', 'CB-512');
  static Subject lDSPLab =
      new Subject('ECEN3212', 'Digital Signal Processing Lab', 'KD', 'CB-512');
  static Subject lVLSILab =
      new Subject('ECEN3211', 'Digital VLSI Design Lab', 'KD', 'CB-512');
  static Subject lCKTLab =
      new Subject('ECEN3221', 'Electronics Circuit Design Lab', 'KD', 'CB-512');
  static Subject lOOPLab =
      new Subject('CSEN3014', 'OOPs Laboratory', 'KD', 'CB-512');
  static Subject free = new Subject('CSEN3204', 'No classes right now', 'KD', 'CB-512');

  static List<Subject> subjects = <Subject>[
    tVLSI,
    tDSP,
    tOptical,
    tNetworking,
    tOOP,
    tPOM,
    tPD,
    lDSPLab,
    lVLSILab,
    lCKTLab,
    lOOPLab
  ];
}
