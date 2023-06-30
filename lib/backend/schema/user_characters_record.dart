import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCharactersRecord extends FirestoreRecord {
  UserCharactersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "characterName" field.
  String? _characterName;
  String get characterName => _characterName ?? '';
  bool hasCharacterName() => _characterName != null;

  // "characterRace" field.
  String? _characterRace;
  String get characterRace => _characterRace ?? '';
  bool hasCharacterRace() => _characterRace != null;

  // "characterClass" field.
  String? _characterClass;
  String get characterClass => _characterClass ?? '';
  bool hasCharacterClass() => _characterClass != null;

  // "characterStrength" field.
  int? _characterStrength;
  int get characterStrength => _characterStrength ?? 0;
  bool hasCharacterStrength() => _characterStrength != null;

  // "characterDexterity" field.
  int? _characterDexterity;
  int get characterDexterity => _characterDexterity ?? 0;
  bool hasCharacterDexterity() => _characterDexterity != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _characterName = snapshotData['characterName'] as String?;
    _characterRace = snapshotData['characterRace'] as String?;
    _characterClass = snapshotData['characterClass'] as String?;
    _characterStrength = castToType<int>(snapshotData['characterStrength']);
    _characterDexterity = castToType<int>(snapshotData['characterDexterity']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userCharacters')
          : FirebaseFirestore.instance.collectionGroup('userCharacters');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('userCharacters').doc();

  static Stream<UserCharactersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCharactersRecord.fromSnapshot(s));

  static Future<UserCharactersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCharactersRecord.fromSnapshot(s));

  static UserCharactersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCharactersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCharactersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCharactersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCharactersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCharactersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCharactersRecordData({
  String? uid,
  String? characterName,
  String? characterRace,
  String? characterClass,
  int? characterStrength,
  int? characterDexterity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'characterName': characterName,
      'characterRace': characterRace,
      'characterClass': characterClass,
      'characterStrength': characterStrength,
      'characterDexterity': characterDexterity,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCharactersRecordDocumentEquality
    implements Equality<UserCharactersRecord> {
  const UserCharactersRecordDocumentEquality();

  @override
  bool equals(UserCharactersRecord? e1, UserCharactersRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.characterName == e2?.characterName &&
        e1?.characterRace == e2?.characterRace &&
        e1?.characterClass == e2?.characterClass &&
        e1?.characterStrength == e2?.characterStrength &&
        e1?.characterDexterity == e2?.characterDexterity;
  }

  @override
  int hash(UserCharactersRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.characterName,
        e?.characterRace,
        e?.characterClass,
        e?.characterStrength,
        e?.characterDexterity
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCharactersRecord;
}
