import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicationRecord extends FirestoreRecord {
  MedicationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "TypeOfMedication" field.
  String? _typeOfMedication;
  String get typeOfMedication => _typeOfMedication ?? '';
  bool hasTypeOfMedication() => _typeOfMedication != null;

  // "DosageOfMedication" field.
  String? _dosageOfMedication;
  String get dosageOfMedication => _dosageOfMedication ?? '';
  bool hasDosageOfMedication() => _dosageOfMedication != null;

  // "SpecialInstructiontion" field.
  String? _specialInstructiontion;
  String get specialInstructiontion => _specialInstructiontion ?? '';
  bool hasSpecialInstructiontion() => _specialInstructiontion != null;

  // "UserId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "DateOfMedictation" field.
  List<String>? _dateOfMedictation;
  List<String> get dateOfMedictation => _dateOfMedictation ?? const [];
  bool hasDateOfMedictation() => _dateOfMedictation != null;

  // "TimeOfMedication" field.
  List<String>? _timeOfMedication;
  List<String> get timeOfMedication => _timeOfMedication ?? const [];
  bool hasTimeOfMedication() => _timeOfMedication != null;

  // "WasThisTaken" field.
  bool? _wasThisTaken;
  bool get wasThisTaken => _wasThisTaken ?? false;
  bool hasWasThisTaken() => _wasThisTaken != null;

  // "WhenWasThisTaken" field.
  DateTime? _whenWasThisTaken;
  DateTime? get whenWasThisTaken => _whenWasThisTaken;
  bool hasWhenWasThisTaken() => _whenWasThisTaken != null;

  // "IsMedication" field.
  bool? _isMedication;
  bool get isMedication => _isMedication ?? false;
  bool hasIsMedication() => _isMedication != null;

  // "WasTakenlist" field.
  List<String>? _wasTakenlist;
  List<String> get wasTakenlist => _wasTakenlist ?? const [];
  bool hasWasTakenlist() => _wasTakenlist != null;

  // "Specificttimetaken" field.
  String? _specificttimetaken;
  String get specificttimetaken => _specificttimetaken ?? '';
  bool hasSpecificttimetaken() => _specificttimetaken != null;

  void _initializeFields() {
    _typeOfMedication = snapshotData['TypeOfMedication'] as String?;
    _dosageOfMedication = snapshotData['DosageOfMedication'] as String?;
    _specialInstructiontion = snapshotData['SpecialInstructiontion'] as String?;
    _userId = snapshotData['UserId'] as String?;
    _dateOfMedictation = getDataList(snapshotData['DateOfMedictation']);
    _timeOfMedication = getDataList(snapshotData['TimeOfMedication']);
    _wasThisTaken = snapshotData['WasThisTaken'] as bool?;
    _whenWasThisTaken = snapshotData['WhenWasThisTaken'] as DateTime?;
    _isMedication = snapshotData['IsMedication'] as bool?;
    _wasTakenlist = getDataList(snapshotData['WasTakenlist']);
    _specificttimetaken = snapshotData['Specificttimetaken'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Medication');

  static Stream<MedicationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicationRecord.fromSnapshot(s));

  static Future<MedicationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicationRecord.fromSnapshot(s));

  static MedicationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicationRecordData({
  String? typeOfMedication,
  String? dosageOfMedication,
  String? specialInstructiontion,
  String? userId,
  bool? wasThisTaken,
  DateTime? whenWasThisTaken,
  bool? isMedication,
  String? specificttimetaken,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TypeOfMedication': typeOfMedication,
      'DosageOfMedication': dosageOfMedication,
      'SpecialInstructiontion': specialInstructiontion,
      'UserId': userId,
      'WasThisTaken': wasThisTaken,
      'WhenWasThisTaken': whenWasThisTaken,
      'IsMedication': isMedication,
      'Specificttimetaken': specificttimetaken,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicationRecordDocumentEquality implements Equality<MedicationRecord> {
  const MedicationRecordDocumentEquality();

  @override
  bool equals(MedicationRecord? e1, MedicationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.typeOfMedication == e2?.typeOfMedication &&
        e1?.dosageOfMedication == e2?.dosageOfMedication &&
        e1?.specialInstructiontion == e2?.specialInstructiontion &&
        e1?.userId == e2?.userId &&
        listEquality.equals(e1?.dateOfMedictation, e2?.dateOfMedictation) &&
        listEquality.equals(e1?.timeOfMedication, e2?.timeOfMedication) &&
        e1?.wasThisTaken == e2?.wasThisTaken &&
        e1?.whenWasThisTaken == e2?.whenWasThisTaken &&
        e1?.isMedication == e2?.isMedication &&
        listEquality.equals(e1?.wasTakenlist, e2?.wasTakenlist) &&
        e1?.specificttimetaken == e2?.specificttimetaken;
  }

  @override
  int hash(MedicationRecord? e) => const ListEquality().hash([
        e?.typeOfMedication,
        e?.dosageOfMedication,
        e?.specialInstructiontion,
        e?.userId,
        e?.dateOfMedictation,
        e?.timeOfMedication,
        e?.wasThisTaken,
        e?.whenWasThisTaken,
        e?.isMedication,
        e?.wasTakenlist,
        e?.specificttimetaken
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicationRecord;
}
