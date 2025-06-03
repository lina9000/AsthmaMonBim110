import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _FVCInT = prefs.getInt('ff_FVCInT') ?? _FVCInT;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _username = 'please edit the profile';
  String get username => _username;
  set username(String value) {
    _username = value;
  }

  String _Useremail = '';
  String get Useremail => _Useremail;
  set Useremail(String value) {
    _Useremail = value;
  }

  bool _Gender = false;
  bool get Gender => _Gender;
  set Gender(bool value) {
    _Gender = value;
  }

  int _Height = 0;
  int get Height => _Height;
  set Height(int value) {
    _Height = value;
  }

  DateTime? _birthday = DateTime.fromMillisecondsSinceEpoch(1740168000000);
  DateTime? get birthday => _birthday;
  set birthday(DateTime? value) {
    _birthday = value;
  }

  String _drsemail = '';
  String get drsemail => _drsemail;
  set drsemail(String value) {
    _drsemail = value;
  }

  DateTime? _dateofsymptem;
  DateTime? get dateofsymptem => _dateofsymptem;
  set dateofsymptem(DateTime? value) {
    _dateofsymptem = value;
  }

  String _photopath = '';
  String get photopath => _photopath;
  set photopath(String value) {
    _photopath = value;
  }

  List<String> _symptemtempverisble = [];
  List<String> get symptemtempverisble => _symptemtempverisble;
  set symptemtempverisble(List<String> value) {
    _symptemtempverisble = value;
  }

  void addToSymptemtempverisble(String value) {
    symptemtempverisble.add(value);
  }

  void removeFromSymptemtempverisble(String value) {
    symptemtempverisble.remove(value);
  }

  void removeAtIndexFromSymptemtempverisble(int index) {
    symptemtempverisble.removeAt(index);
  }

  void updateSymptemtempverisbleAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    symptemtempverisble[index] = updateFn(_symptemtempverisble[index]);
  }

  void insertAtIndexInSymptemtempverisble(int index, String value) {
    symptemtempverisble.insert(index, value);
  }

  DateTime? _SymptemDateandtime =
      DateTime.fromMillisecondsSinceEpoch(1743530700000);
  DateTime? get SymptemDateandtime => _SymptemDateandtime;
  set SymptemDateandtime(DateTime? value) {
    _SymptemDateandtime = value;
  }

  DateTime? _recallsympetmdate =
      DateTime.fromMillisecondsSinceEpoch(1743558240000);
  DateTime? get recallsympetmdate => _recallsympetmdate;
  set recallsympetmdate(DateTime? value) {
    _recallsympetmdate = value;
  }

  bool _doeshaveasthma = false;
  bool get doeshaveasthma => _doeshaveasthma;
  set doeshaveasthma(bool value) {
    _doeshaveasthma = value;
  }

  int _Integrerofage = 0;
  int get Integrerofage => _Integrerofage;
  set Integrerofage(int value) {
    _Integrerofage = value;
  }

  String _TempCommentStorage = '';
  String get TempCommentStorage => _TempCommentStorage;
  set TempCommentStorage(String value) {
    _TempCommentStorage = value;
  }

  bool _asthma = false;
  bool get asthma => _asthma;
  set asthma(bool value) {
    _asthma = value;
  }

  int _ACTQ1Value = 0;
  int get ACTQ1Value => _ACTQ1Value;
  set ACTQ1Value(int value) {
    _ACTQ1Value = value;
  }

  int _ACTQ3Value = 0;
  int get ACTQ3Value => _ACTQ3Value;
  set ACTQ3Value(int value) {
    _ACTQ3Value = value;
  }

  int _ACTQ2Value = 0;
  int get ACTQ2Value => _ACTQ2Value;
  set ACTQ2Value(int value) {
    _ACTQ2Value = value;
  }

  int _ACTQ4Value = 0;
  int get ACTQ4Value => _ACTQ4Value;
  set ACTQ4Value(int value) {
    _ACTQ4Value = value;
  }

  int _ACTQ5Value = 0;
  int get ACTQ5Value => _ACTQ5Value;
  set ACTQ5Value(int value) {
    _ACTQ5Value = value;
  }

  int _ACTFinalScore = 0;
  int get ACTFinalScore => _ACTFinalScore;
  set ACTFinalScore(int value) {
    _ACTFinalScore = value;
  }

  String _MedicationName = 'Enter Medication Name';
  String get MedicationName => _MedicationName;
  set MedicationName(String value) {
    _MedicationName = value;
  }

  String _Doseage = 'Enter dosage (e.g., 10mg)';
  String get Doseage => _Doseage;
  set Doseage(String value) {
    _Doseage = value;
  }

  int _PEF = 0;
  int get PEF => _PEF;
  set PEF(int value) {
    _PEF = value;
  }

  int _FEV1Int = 0;
  int get FEV1Int => _FEV1Int;
  set FEV1Int(int value) {
    _FEV1Int = value;
  }

  int _FVCInT = 0;
  int get FVCInT => _FVCInT;
  set FVCInT(int value) {
    _FVCInT = value;
    prefs.setInt('ff_FVCInT', value);
  }

  int _Ratio = 0;
  int get Ratio => _Ratio;
  set Ratio(int value) {
    _Ratio = value;
  }

  List<String> _Dayformedication = [];
  List<String> get Dayformedication => _Dayformedication;
  set Dayformedication(List<String> value) {
    _Dayformedication = value;
  }

  void addToDayformedication(String value) {
    Dayformedication.add(value);
  }

  void removeFromDayformedication(String value) {
    Dayformedication.remove(value);
  }

  void removeAtIndexFromDayformedication(int index) {
    Dayformedication.removeAt(index);
  }

  void updateDayformedicationAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Dayformedication[index] = updateFn(_Dayformedication[index]);
  }

  void insertAtIndexInDayformedication(int index, String value) {
    Dayformedication.insert(index, value);
  }

  List<String> _TimeOfDateForMedication = [];
  List<String> get TimeOfDateForMedication => _TimeOfDateForMedication;
  set TimeOfDateForMedication(List<String> value) {
    _TimeOfDateForMedication = value;
  }

  void addToTimeOfDateForMedication(String value) {
    TimeOfDateForMedication.add(value);
  }

  void removeFromTimeOfDateForMedication(String value) {
    TimeOfDateForMedication.remove(value);
  }

  void removeAtIndexFromTimeOfDateForMedication(int index) {
    TimeOfDateForMedication.removeAt(index);
  }

  void updateTimeOfDateForMedicationAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    TimeOfDateForMedication[index] = updateFn(_TimeOfDateForMedication[index]);
  }

  void insertAtIndexInTimeOfDateForMedication(int index, String value) {
    TimeOfDateForMedication.insert(index, value);
  }

  String _SpecialInstructionsForMedication = '';
  String get SpecialInstructionsForMedication =>
      _SpecialInstructionsForMedication;
  set SpecialInstructionsForMedication(String value) {
    _SpecialInstructionsForMedication = value;
  }

  bool _TookMed = false;
  bool get TookMed => _TookMed;
  set TookMed(bool value) {
    _TookMed = value;
  }

  String _currentpatientID = '';
  String get currentpatientID => _currentpatientID;
  set currentpatientID(String value) {
    _currentpatientID = value;
  }

  String _CurrentPatientNameFull = '';
  String get CurrentPatientNameFull => _CurrentPatientNameFull;
  set CurrentPatientNameFull(String value) {
    _CurrentPatientNameFull = value;
  }

  bool _IsDr = false;
  bool get IsDr => _IsDr;
  set IsDr(bool value) {
    _IsDr = value;
  }

  bool _permenatfalse = false;
  bool get permenatfalse => _permenatfalse;
  set permenatfalse(bool value) {
    _permenatfalse = value;
  }

  int _pernamnet0 = 0;
  int get pernamnet0 => _pernamnet0;
  set pernamnet0(int value) {
    _pernamnet0 = value;
  }

  bool _Deleteon = false;
  bool get Deleteon => _Deleteon;
  set Deleteon(bool value) {
    _Deleteon = value;
  }

  List<int> _ActscoreLIst = [];
  List<int> get ActscoreLIst => _ActscoreLIst;
  set ActscoreLIst(List<int> value) {
    _ActscoreLIst = value;
  }

  void addToActscoreLIst(int value) {
    ActscoreLIst.add(value);
  }

  void removeFromActscoreLIst(int value) {
    ActscoreLIst.remove(value);
  }

  void removeAtIndexFromActscoreLIst(int index) {
    ActscoreLIst.removeAt(index);
  }

  void updateActscoreLIstAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    ActscoreLIst[index] = updateFn(_ActscoreLIst[index]);
  }

  void insertAtIndexInActscoreLIst(int index, int value) {
    ActscoreLIst.insert(index, value);
  }

  List<DateTime> _ACtDateList = [];
  List<DateTime> get ACtDateList => _ACtDateList;
  set ACtDateList(List<DateTime> value) {
    _ACtDateList = value;
  }

  void addToACtDateList(DateTime value) {
    ACtDateList.add(value);
  }

  void removeFromACtDateList(DateTime value) {
    ACtDateList.remove(value);
  }

  void removeAtIndexFromACtDateList(int index) {
    ACtDateList.removeAt(index);
  }

  void updateACtDateListAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    ACtDateList[index] = updateFn(_ACtDateList[index]);
  }

  void insertAtIndexInACtDateList(int index, DateTime value) {
    ACtDateList.insert(index, value);
  }

  String _ACTChartURL =
      'https://firebasestorage.googleapis.com/v0/b/asthma-montemplate-o84nw2.firebasestorage.app/o/hourglass-line-outline-icon-for-website-and-mobile-app-on-grey-background-free-vector.jpg?alt=media&token=9361b348-4c37-4218-a1b2-ee9c469a9df2';
  String get ACTChartURL => _ACTChartURL;
  set ACTChartURL(String value) {
    _ACTChartURL = value;
  }

  String _AcTChatrURl =
      'https://firebasestorage.googleapis.com/v0/b/asthma-montemplate-o84nw2.firebasestorage.app/o/hourglass-line-outline-icon-for-website-and-mobile-app-on-grey-background-free-vector.jpg?alt=media&token=9361b348-4c37-4218-a1b2-ee9c469a9df2';
  String get AcTChatrURl => _AcTChatrURl;
  set AcTChatrURl(String value) {
    _AcTChatrURl = value;
  }

  List<String> _TestSateList = [];
  List<String> get TestSateList => _TestSateList;
  set TestSateList(List<String> value) {
    _TestSateList = value;
  }

  void addToTestSateList(String value) {
    TestSateList.add(value);
  }

  void removeFromTestSateList(String value) {
    TestSateList.remove(value);
  }

  void removeAtIndexFromTestSateList(int index) {
    TestSateList.removeAt(index);
  }

  void updateTestSateListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    TestSateList[index] = updateFn(_TestSateList[index]);
  }

  void insertAtIndexInTestSateList(int index, String value) {
    TestSateList.insert(index, value);
  }

  List<double> _FVcScoreList = [];
  List<double> get FVcScoreList => _FVcScoreList;
  set FVcScoreList(List<double> value) {
    _FVcScoreList = value;
  }

  void addToFVcScoreList(double value) {
    FVcScoreList.add(value);
  }

  void removeFromFVcScoreList(double value) {
    FVcScoreList.remove(value);
  }

  void removeAtIndexFromFVcScoreList(int index) {
    FVcScoreList.removeAt(index);
  }

  void updateFVcScoreListAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    FVcScoreList[index] = updateFn(_FVcScoreList[index]);
  }

  void insertAtIndexInFVcScoreList(int index, double value) {
    FVcScoreList.insert(index, value);
  }

  List<double> _FEVScoeList = [];
  List<double> get FEVScoeList => _FEVScoeList;
  set FEVScoeList(List<double> value) {
    _FEVScoeList = value;
  }

  void addToFEVScoeList(double value) {
    FEVScoeList.add(value);
  }

  void removeFromFEVScoeList(double value) {
    FEVScoeList.remove(value);
  }

  void removeAtIndexFromFEVScoeList(int index) {
    FEVScoeList.removeAt(index);
  }

  void updateFEVScoeListAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    FEVScoeList[index] = updateFn(_FEVScoeList[index]);
  }

  void insertAtIndexInFEVScoeList(int index, double value) {
    FEVScoeList.insert(index, value);
  }

  String _FVCchartURL =
      'https://firebasestorage.googleapis.com/v0/b/asthma-montemplate-o84nw2.firebasestorage.app/o/hourglass-line-outline-icon-for-website-and-mobile-app-on-grey-background-free-vector.jpg?alt=media&token=9361b348-4c37-4218-a1b2-ee9c469a9df2';
  String get FVCchartURL => _FVCchartURL;
  set FVCchartURL(String value) {
    _FVCchartURL = value;
  }

  String _FEVOneChartURL =
      'https://firebasestorage.googleapis.com/v0/b/asthma-montemplate-o84nw2.firebasestorage.app/o/hourglass-line-outline-icon-for-website-and-mobile-app-on-grey-background-free-vector.jpg?alt=media&token=9361b348-4c37-4218-a1b2-ee9c469a9df2';
  String get FEVOneChartURL => _FEVOneChartURL;
  set FEVOneChartURL(String value) {
    _FEVOneChartURL = value;
  }

  String _CurrentPatientsIniteials = '';
  String get CurrentPatientsIniteials => _CurrentPatientsIniteials;
  set CurrentPatientsIniteials(String value) {
    _CurrentPatientsIniteials = value;
  }

  List<double> _RatioChartList = [];
  List<double> get RatioChartList => _RatioChartList;
  set RatioChartList(List<double> value) {
    _RatioChartList = value;
  }

  void addToRatioChartList(double value) {
    RatioChartList.add(value);
  }

  void removeFromRatioChartList(double value) {
    RatioChartList.remove(value);
  }

  void removeAtIndexFromRatioChartList(int index) {
    RatioChartList.removeAt(index);
  }

  void updateRatioChartListAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    RatioChartList[index] = updateFn(_RatioChartList[index]);
  }

  void insertAtIndexInRatioChartList(int index, double value) {
    RatioChartList.insert(index, value);
  }

  String _RatioChartURL =
      'https://firebasestorage.googleapis.com/v0/b/asthma-montemplate-o84nw2.firebasestorage.app/o/hourglass-line-outline-icon-for-website-and-mobile-app-on-grey-background-free-vector.jpg?alt=media&token=9361b348-4c37-4218-a1b2-ee9c469a9df2';
  String get RatioChartURL => _RatioChartURL;
  set RatioChartURL(String value) {
    _RatioChartURL = value;
  }

  String _FVCWEBURL = '';
  String get FVCWEBURL => _FVCWEBURL;
  set FVCWEBURL(String value) {
    _FVCWEBURL = value;
  }

  String _FEVWebURL = '';
  String get FEVWebURL => _FEVWebURL;
  set FEVWebURL(String value) {
    _FEVWebURL = value;
  }

  String _RatioWebURL = '';
  String get RatioWebURL => _RatioWebURL;
  set RatioWebURL(String value) {
    _RatioWebURL = value;
  }

  String _URltestcase = '';
  String get URltestcase => _URltestcase;
  set URltestcase(String value) {
    _URltestcase = value;
  }

  double _FEVdoub = 0.0;
  double get FEVdoub => _FEVdoub;
  set FEVdoub(double value) {
    _FEVdoub = value;
  }

  double _FVCdoub = 0.0;
  double get FVCdoub => _FVCdoub;
  set FVCdoub(double value) {
    _FVCdoub = value;
  }

  double _Ratiodoub = 0.0;
  double get Ratiodoub => _Ratiodoub;
  set Ratiodoub(double value) {
    _Ratiodoub = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
