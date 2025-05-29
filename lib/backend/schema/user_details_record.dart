import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDetailsRecord extends FirestoreRecord {
  UserDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "vehicle_brand" field.
  String? _vehicleBrand;
  String get vehicleBrand => _vehicleBrand ?? '';
  bool hasVehicleBrand() => _vehicleBrand != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "booked_today" field.
  bool? _bookedToday;
  bool get bookedToday => _bookedToday ?? false;
  bool hasBookedToday() => _bookedToday != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _vehicleBrand = snapshotData['vehicle_brand'] as String?;
    _password = snapshotData['password'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _bookedToday = snapshotData['booked_today'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_details');

  static Stream<UserDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserDetailsRecord.fromSnapshot(s));

  static Future<UserDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserDetailsRecord.fromSnapshot(s));

  static UserDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserDetailsRecordData({
  String? email,
  String? uid,
  DateTime? createdTime,
  String? firstName,
  String? lastName,
  String? photoUrl,
  String? displayName,
  String? vehicleBrand,
  String? password,
  String? phoneNumber,
  bool? bookedToday,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'created_time': createdTime,
      'first_name': firstName,
      'last_name': lastName,
      'photo_url': photoUrl,
      'display_name': displayName,
      'vehicle_brand': vehicleBrand,
      'password': password,
      'phone_number': phoneNumber,
      'booked_today': bookedToday,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserDetailsRecordDocumentEquality implements Equality<UserDetailsRecord> {
  const UserDetailsRecordDocumentEquality();

  @override
  bool equals(UserDetailsRecord? e1, UserDetailsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.displayName == e2?.displayName &&
        e1?.vehicleBrand == e2?.vehicleBrand &&
        e1?.password == e2?.password &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.bookedToday == e2?.bookedToday;
  }

  @override
  int hash(UserDetailsRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.createdTime,
        e?.firstName,
        e?.lastName,
        e?.photoUrl,
        e?.displayName,
        e?.vehicleBrand,
        e?.password,
        e?.phoneNumber,
        e?.bookedToday
      ]);

  @override
  bool isValidKey(Object? o) => o is UserDetailsRecord;
}
