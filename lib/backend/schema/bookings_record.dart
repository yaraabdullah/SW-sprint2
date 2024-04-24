import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "HowManyPeople" field.
  int? _howManyPeople;
  int get howManyPeople => _howManyPeople ?? 0;
  bool hasHowManyPeople() => _howManyPeople != null;

  // "HowManyHours" field.
  int? _howManyHours;
  int get howManyHours => _howManyHours ?? 0;
  bool hasHowManyHours() => _howManyHours != null;

  // "Time" field.
  double? _time;
  double get time => _time ?? 0.0;
  bool hasTime() => _time != null;

  // "Date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "SpaceName" field.
  String? _spaceName;
  String get spaceName => _spaceName ?? '';
  bool hasSpaceName() => _spaceName != null;

  // "bid" field.
  DocumentReference? _bid;
  DocumentReference? get bid => _bid;
  bool hasBid() => _bid != null;

  // "spaceID" field.
  String? _spaceID;
  String get spaceID => _spaceID ?? '';
  bool hasSpaceID() => _spaceID != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as DocumentReference?;
    _howManyPeople = castToType<int>(snapshotData['HowManyPeople']);
    _howManyHours = castToType<int>(snapshotData['HowManyHours']);
    _time = castToType<double>(snapshotData['Time']);
    _date = snapshotData['Date'] as String?;
    _spaceName = snapshotData['SpaceName'] as String?;
    _bid = snapshotData['bid'] as DocumentReference?;
    _spaceID = snapshotData['spaceID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  DocumentReference? userID,
  int? howManyPeople,
  int? howManyHours,
  double? time,
  String? date,
  String? spaceName,
  DocumentReference? bid,
  String? spaceID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'HowManyPeople': howManyPeople,
      'HowManyHours': howManyHours,
      'Time': time,
      'Date': date,
      'SpaceName': spaceName,
      'bid': bid,
      'spaceID': spaceID,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.howManyPeople == e2?.howManyPeople &&
        e1?.howManyHours == e2?.howManyHours &&
        e1?.time == e2?.time &&
        e1?.date == e2?.date &&
        e1?.spaceName == e2?.spaceName &&
        e1?.bid == e2?.bid &&
        e1?.spaceID == e2?.spaceID;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.userID,
        e?.howManyPeople,
        e?.howManyHours,
        e?.time,
        e?.date,
        e?.spaceName,
        e?.bid,
        e?.spaceID
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
