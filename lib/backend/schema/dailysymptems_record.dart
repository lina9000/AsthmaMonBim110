import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailysymptemsRecord extends FirestoreRecord {
  DailysymptemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "UID" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "dateofsyptem" field.
  DateTime? _dateofsyptem;
  DateTime? get dateofsyptem => _dateofsyptem;
  bool hasDateofsyptem() => _dateofsyptem != null;

  // "symptems" field.
  List<String>? _symptems;
  List<String> get symptems => _symptems ?? const [];
  bool hasSymptems() => _symptems != null;

  // "SymptemComments" field.
  String? _symptemComments;
  String get symptemComments => _symptemComments ?? '';
  bool hasSymptemComments() => _symptemComments != null;

  // "ACTscore" field.
  int? _aCTscore;
  int get aCTscore => _aCTscore ?? 0;
  bool hasACTscore() => _aCTscore != null;

  // "ACTDate" field.
  DateTime? _aCTDate;
  DateTime? get aCTDate => _aCTDate;
  bool hasACTDate() => _aCTDate != null;

  // "FVC" field.
  int? _fvc;
  int get fvc => _fvc ?? 0;
  bool hasFvc() => _fvc != null;

  // "FEV1" field.
  int? _fev1;
  int get fev1 => _fev1 ?? 0;
  bool hasFev1() => _fev1 != null;

  // "PEF" field.
  int? _pef;
  int get pef => _pef ?? 0;
  bool hasPef() => _pef != null;

  // "Ratio" field.
  int? _ratio;
  int get ratio => _ratio ?? 0;
  bool hasRatio() => _ratio != null;

  // "TestResultDate" field.
  DateTime? _testResultDate;
  DateTime? get testResultDate => _testResultDate;
  bool hasTestResultDate() => _testResultDate != null;

  // "FVCdoub" field.
  double? _fVCdoub;
  double get fVCdoub => _fVCdoub ?? 0.0;
  bool hasFVCdoub() => _fVCdoub != null;

  // "FEV1DOUb" field.
  double? _fEV1DOUb;
  double get fEV1DOUb => _fEV1DOUb ?? 0.0;
  bool hasFEV1DOUb() => _fEV1DOUb != null;

  // "RationBoub" field.
  double? _rationBoub;
  double get rationBoub => _rationBoub ?? 0.0;
  bool hasRationBoub() => _rationBoub != null;

  void _initializeFields() {
    _uid = snapshotData['UID'] as String?;
    _dateofsyptem = snapshotData['dateofsyptem'] as DateTime?;
    _symptems = getDataList(snapshotData['symptems']);
    _symptemComments = snapshotData['SymptemComments'] as String?;
    _aCTscore = castToType<int>(snapshotData['ACTscore']);
    _aCTDate = snapshotData['ACTDate'] as DateTime?;
    _fvc = castToType<int>(snapshotData['FVC']);
    _fev1 = castToType<int>(snapshotData['FEV1']);
    _pef = castToType<int>(snapshotData['PEF']);
    _ratio = castToType<int>(snapshotData['Ratio']);
    _testResultDate = snapshotData['TestResultDate'] as DateTime?;
    _fVCdoub = castToType<double>(snapshotData['FVCdoub']);
    _fEV1DOUb = castToType<double>(snapshotData['FEV1DOUb']);
    _rationBoub = castToType<double>(snapshotData['RationBoub']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dailysymptems');

  static Stream<DailysymptemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DailysymptemsRecord.fromSnapshot(s));

  static Future<DailysymptemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DailysymptemsRecord.fromSnapshot(s));

  static DailysymptemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DailysymptemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DailysymptemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DailysymptemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DailysymptemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DailysymptemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDailysymptemsRecordData({
  String? uid,
  DateTime? dateofsyptem,
  String? symptemComments,
  int? aCTscore,
  DateTime? aCTDate,
  int? fvc,
  int? fev1,
  int? pef,
  int? ratio,
  DateTime? testResultDate,
  double? fVCdoub,
  double? fEV1DOUb,
  double? rationBoub,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UID': uid,
      'dateofsyptem': dateofsyptem,
      'SymptemComments': symptemComments,
      'ACTscore': aCTscore,
      'ACTDate': aCTDate,
      'FVC': fvc,
      'FEV1': fev1,
      'PEF': pef,
      'Ratio': ratio,
      'TestResultDate': testResultDate,
      'FVCdoub': fVCdoub,
      'FEV1DOUb': fEV1DOUb,
      'RationBoub': rationBoub,
    }.withoutNulls,
  );

  return firestoreData;
}

class DailysymptemsRecordDocumentEquality
    implements Equality<DailysymptemsRecord> {
  const DailysymptemsRecordDocumentEquality();

  @override
  bool equals(DailysymptemsRecord? e1, DailysymptemsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.uid == e2?.uid &&
        e1?.dateofsyptem == e2?.dateofsyptem &&
        listEquality.equals(e1?.symptems, e2?.symptems) &&
        e1?.symptemComments == e2?.symptemComments &&
        e1?.aCTscore == e2?.aCTscore &&
        e1?.aCTDate == e2?.aCTDate &&
        e1?.fvc == e2?.fvc &&
        e1?.fev1 == e2?.fev1 &&
        e1?.pef == e2?.pef &&
        e1?.ratio == e2?.ratio &&
        e1?.testResultDate == e2?.testResultDate &&
        e1?.fVCdoub == e2?.fVCdoub &&
        e1?.fEV1DOUb == e2?.fEV1DOUb &&
        e1?.rationBoub == e2?.rationBoub;
  }

  @override
  int hash(DailysymptemsRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.dateofsyptem,
        e?.symptems,
        e?.symptemComments,
        e?.aCTscore,
        e?.aCTDate,
        e?.fvc,
        e?.fev1,
        e?.pef,
        e?.ratio,
        e?.testResultDate,
        e?.fVCdoub,
        e?.fEV1DOUb,
        e?.rationBoub
      ]);

  @override
  bool isValidKey(Object? o) => o is DailysymptemsRecord;
}
