import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cats_record.g.dart';

abstract class CatsRecord implements Built<CatsRecord, CatsRecordBuilder> {
  static Serializer<CatsRecord> get serializer => _$catsRecordSerializer;

  DocumentReference? get userAssociation;

  String? get catPhoto;

  String? get catName;

  String? get catType;

  int? get catAge;

  String? get catBio;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CatsRecordBuilder builder) => builder
    ..catPhoto = ''
    ..catName = ''
    ..catType = ''
    ..catAge = 0
    ..catBio = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cats');

  static Stream<CatsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CatsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CatsRecord._();
  factory CatsRecord([void Function(CatsRecordBuilder) updates]) = _$CatsRecord;

  static CatsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCatsRecordData({
  DocumentReference? userAssociation,
  String? catPhoto,
  String? catName,
  String? catType,
  int? catAge,
  String? catBio,
}) {
  final firestoreData = serializers.toFirestore(
    CatsRecord.serializer,
    CatsRecord(
      (c) => c
        ..userAssociation = userAssociation
        ..catPhoto = catPhoto
        ..catName = catName
        ..catType = catType
        ..catAge = catAge
        ..catBio = catBio,
    ),
  );

  return firestoreData;
}
