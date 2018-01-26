class Subject {

  String subjectCode;
  String subjectName;
  String subjectTeacher;
  String subjectRoom;
  int _numberOfClasses = 0;
  int _numberOFClassesAttended = 0;

  int get numberOfClassesAttended => _numberOFClassesAttended;
  int get numberOfClasses => _numberOfClasses;
  Subject(this.subjectCode, this.subjectName, this.subjectTeacher, this.subjectRoom);

  void registerPresent() {
    _numberOfClasses++;
    _numberOFClassesAttended++;
  }

  void registerAbsent() {
    _numberOfClasses++;
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
  static Subject free = new Subject('', 'No classes right now', '', '');

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
