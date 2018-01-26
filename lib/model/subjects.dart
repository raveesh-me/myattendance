class Subject{
  String subjectCode;
  String subjectName;
  String subjectTeacher;
  String room;
  int _numberOfClasses = 0;
  int _numberOFClassesAttended = 0;

  int get numberOfClassesAttended => _numberOFClassesAttended;
  int get numberOfClasses => _numberOfClasses;
  Subject(this.subjectCode, this.subjectName, this.subjectTeacher, this.room);

  void registerPresent(){
    _numberOfClasses++;
    _numberOFClassesAttended++;
  }
  void registerAbsent(){
    _numberOfClasses++;
  }

}

class Subjects{
  static Subject tVLSI = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject tDSP = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject tOptical = new Subject('ECEN3201', 'Digital VLSI Design', 'AD', 'CB-512');
  static Subject tNetworking = new Subject('ECEN3201', 'Digital VLSI Design', 'AD', 'CB-512');
  static Subject tOOP = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject tPOM = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject tPD = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject lDSPLab = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject lVLSILab = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject lCKTLab = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');
  static Subject lOOPLab = new Subject('ECEN3201', 'Digital VLSI Design', 'KD', 'CB-512');

  static List<Subject> subjects = <Subject>[
    tVLSI, tDSP, tOptical, tNetworking, tOOP, tPOM, tPD,
    lDSPLab, lVLSILab, lCKTLab, lOOPLab
  ];
}