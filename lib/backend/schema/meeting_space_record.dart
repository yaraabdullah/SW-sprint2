import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeetingSpaceRecord extends FirestoreRecord {
  MeetingSpaceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "availabilitySchedule" field.
  String? _availabilitySchedule;
  String get availabilitySchedule => _availabilitySchedule ?? '';
  bool hasAvailabilitySchedule() => _availabilitySchedule != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "ID" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "capacity" field.
  int? _capacity;
  int get capacity => _capacity ?? 0;
  bool hasCapacity() => _capacity != null;

  // "pricingDetails" field.
  int? _pricingDetails;
  int get pricingDetails => _pricingDetails ?? 0;
  bool hasPricingDetails() => _pricingDetails != null;

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

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _availabilitySchedule = snapshotData['availabilitySchedule'] as String?;
    _location = snapshotData['location'] as String?;
    _photo = snapshotData['photo'] as String?;
    _name = snapshotData['name'] as String?;
    _id = castToType<int>(snapshotData['ID']);
    _capacity = castToType<int>(snapshotData['capacity']);
    _pricingDetails = castToType<int>(snapshotData['pricingDetails']);
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MeetingSpace');

  static Stream<MeetingSpaceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeetingSpaceRecord.fromSnapshot(s));

  static Future<MeetingSpaceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MeetingSpaceRecord.fromSnapshot(s));

  static MeetingSpaceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeetingSpaceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeetingSpaceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeetingSpaceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeetingSpaceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeetingSpaceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeetingSpaceRecordData({
  String? availabilitySchedule,
  String? location,
  String? photo,
  String? name,
  int? id,
  int? capacity,
  int? pricingDetails,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'availabilitySchedule': availabilitySchedule,
      'location': location,
      'photo': photo,
      'name': name,
      'ID': id,
      'capacity': capacity,
      'pricingDetails': pricingDetails,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeetingSpaceRecordDocumentEquality
    implements Equality<MeetingSpaceRecord> {
  const MeetingSpaceRecordDocumentEquality();

  @override
  bool equals(MeetingSpaceRecord? e1, MeetingSpaceRecord? e2) {
    return e1?.availabilitySchedule == e2?.availabilitySchedule &&
        e1?.location == e2?.location &&
        e1?.photo == e2?.photo &&
        e1?.name == e2?.name &&
        e1?.id == e2?.id &&
        e1?.capacity == e2?.capacity &&
        e1?.pricingDetails == e2?.pricingDetails &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(MeetingSpaceRecord? e) => const ListEquality().hash([
        e?.availabilitySchedule,
        e?.location,
        e?.photo,
        e?.name,
        e?.id,
        e?.capacity,
        e?.pricingDetails,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is MeetingSpaceRecord;
}
