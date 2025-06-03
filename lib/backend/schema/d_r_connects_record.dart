import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DRConnectsRecord extends FirestoreRecord {
  DRConnectsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "DrEmail" field.
  String? _drEmail;
  String get drEmail => _drEmail ?? '';
  bool hasDrEmail() => _drEmail != null;

  // "UserName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "PatientsName" field.
  String? _patientsName;
  String get patientsName => _patientsName ?? '';
  bool hasPatientsName() => _patientsName != null;

  // "PatientsAge" field.
  int? _patientsAge;
  int get patientsAge => _patientsAge ?? 0;
  bool hasPatientsAge() => _patientsAge != null;

  // "PatientsGender" field.
  String? _patientsGender;
  String get patientsGender => _patientsGender ?? '';
  bool hasPatientsGender() => _patientsGender != null;

  void _initializeFields() {
    _drEmail = snapshotData['DrEmail'] as String?;
    _userName = snapshotData['UserName'] as String?;
    _patientsName = snapshotData['PatientsName'] as String?;
    _patientsAge = castToType<int>(snapshotData['PatientsAge']);
    _patientsGender = snapshotData['PatientsGender'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DRConnects');

  static Stream<DRConnectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DRConnectsRecord.fromSnapshot(s));

  static Future<DRConnectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DRConnectsRecord.fromSnapshot(s));

  static DRConnectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DRConnectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DRConnectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DRConnectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DRConnectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DRConnectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDRConnectsRecordData({
  String? drEmail,
  String? userName,
  String? patientsName,
  int? patientsAge,
  String? patientsGender,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DrEmail': drEmail,
      'UserName': userName,
      'PatientsName': patientsName,
      'PatientsAge': patientsAge,
      'PatientsGender': patientsGender,
    }.withoutNulls,
  );

  return firestoreData;
}

class DRConnectsRecordDocumentEquality implements Equality<DRConnectsRecord> {
  const DRConnectsRecordDocumentEquality();

  @override
  bool equals(DRConnectsRecord? e1, DRConnectsRecord? e2) {
    return e1?.drEmail == e2?.drEmail &&
        e1?.userName == e2?.userName &&
        e1?.patientsName == e2?.patientsName &&
        e1?.patientsAge == e2?.patientsAge &&
        e1?.patientsGender == e2?.patientsGender;
  }

  @override
  int hash(DRConnectsRecord? e) => const ListEquality().hash([
        e?.drEmail,
        e?.userName,
        e?.patientsName,
        e?.patientsAge,
        e?.patientsGender
      ]);

  @override
  bool isValidKey(Object? o) => o is DRConnectsRecord;
}
