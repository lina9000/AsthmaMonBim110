import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "sex" field.
  int? _sex;
  int get sex => _sex ?? 0;
  bool hasSex() => _sex != null;

  // "weight" field.
  int? _weight;
  int get weight => _weight ?? 0;
  bool hasWeight() => _weight != null;

  // "hight" field.
  int? _hight;
  int get hight => _hight ?? 0;
  bool hasHight() => _hight != null;

  // "birthdayday" field.
  DateTime? _birthdayday;
  DateTime? get birthdayday => _birthdayday;
  bool hasBirthdayday() => _birthdayday != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "profilepic" field.
  String? _profilepic;
  String get profilepic => _profilepic ?? '';
  bool hasProfilepic() => _profilepic != null;

  // "filler" field.
  int? _filler;
  int get filler => _filler ?? 0;
  bool hasFiller() => _filler != null;

  // "nextfiller" field.
  double? _nextfiller;
  double get nextfiller => _nextfiller ?? 0.0;
  bool hasNextfiller() => _nextfiller != null;

  // "hasasthma" field.
  int? _hasasthma;
  int get hasasthma => _hasasthma ?? 0;
  bool hasHasasthma() => _hasasthma != null;

  // "IsADoctor" field.
  bool? _isADoctor;
  bool get isADoctor => _isADoctor ?? false;
  bool hasIsADoctor() => _isADoctor != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _sex = castToType<int>(snapshotData['sex']);
    _weight = castToType<int>(snapshotData['weight']);
    _hight = castToType<int>(snapshotData['hight']);
    _birthdayday = snapshotData['birthdayday'] as DateTime?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _profilepic = snapshotData['profilepic'] as String?;
    _filler = castToType<int>(snapshotData['filler']);
    _nextfiller = castToType<double>(snapshotData['nextfiller']);
    _hasasthma = castToType<int>(snapshotData['hasasthma']);
    _isADoctor = snapshotData['IsADoctor'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  String? phoneNumber,
  int? sex,
  int? weight,
  int? hight,
  DateTime? birthdayday,
  DateTime? createdTime,
  String? profilepic,
  int? filler,
  double? nextfiller,
  int? hasasthma,
  bool? isADoctor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'phone_number': phoneNumber,
      'sex': sex,
      'weight': weight,
      'hight': hight,
      'birthdayday': birthdayday,
      'created_time': createdTime,
      'profilepic': profilepic,
      'filler': filler,
      'nextfiller': nextfiller,
      'hasasthma': hasasthma,
      'IsADoctor': isADoctor,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.sex == e2?.sex &&
        e1?.weight == e2?.weight &&
        e1?.hight == e2?.hight &&
        e1?.birthdayday == e2?.birthdayday &&
        e1?.createdTime == e2?.createdTime &&
        e1?.profilepic == e2?.profilepic &&
        e1?.filler == e2?.filler &&
        e1?.nextfiller == e2?.nextfiller &&
        e1?.hasasthma == e2?.hasasthma &&
        e1?.isADoctor == e2?.isADoctor;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.phoneNumber,
        e?.sex,
        e?.weight,
        e?.hight,
        e?.birthdayday,
        e?.createdTime,
        e?.profilepic,
        e?.filler,
        e?.nextfiller,
        e?.hasasthma,
        e?.isADoctor
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
