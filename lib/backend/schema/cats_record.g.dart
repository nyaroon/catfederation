// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cats_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CatsRecord> _$catsRecordSerializer = new _$CatsRecordSerializer();

class _$CatsRecordSerializer implements StructuredSerializer<CatsRecord> {
  @override
  final Iterable<Type> types = const [CatsRecord, _$CatsRecord];
  @override
  final String wireName = 'CatsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CatsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userAssociation;
    if (value != null) {
      result
        ..add('userAssociation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.catPhoto;
    if (value != null) {
      result
        ..add('catPhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.catName;
    if (value != null) {
      result
        ..add('catName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.catType;
    if (value != null) {
      result
        ..add('catType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.catAge;
    if (value != null) {
      result
        ..add('catAge')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.catBio;
    if (value != null) {
      result
        ..add('catBio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CatsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CatsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userAssociation':
          result.userAssociation = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'catPhoto':
          result.catPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'catName':
          result.catName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'catType':
          result.catType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'catAge':
          result.catAge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'catBio':
          result.catBio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CatsRecord extends CatsRecord {
  @override
  final DocumentReference<Object?>? userAssociation;
  @override
  final String? catPhoto;
  @override
  final String? catName;
  @override
  final String? catType;
  @override
  final int? catAge;
  @override
  final String? catBio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CatsRecord([void Function(CatsRecordBuilder)? updates]) =>
      (new CatsRecordBuilder()..update(updates))._build();

  _$CatsRecord._(
      {this.userAssociation,
      this.catPhoto,
      this.catName,
      this.catType,
      this.catAge,
      this.catBio,
      this.ffRef})
      : super._();

  @override
  CatsRecord rebuild(void Function(CatsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CatsRecordBuilder toBuilder() => new CatsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatsRecord &&
        userAssociation == other.userAssociation &&
        catPhoto == other.catPhoto &&
        catName == other.catName &&
        catType == other.catType &&
        catAge == other.catAge &&
        catBio == other.catBio &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, userAssociation.hashCode),
                            catPhoto.hashCode),
                        catName.hashCode),
                    catType.hashCode),
                catAge.hashCode),
            catBio.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CatsRecord')
          ..add('userAssociation', userAssociation)
          ..add('catPhoto', catPhoto)
          ..add('catName', catName)
          ..add('catType', catType)
          ..add('catAge', catAge)
          ..add('catBio', catBio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CatsRecordBuilder implements Builder<CatsRecord, CatsRecordBuilder> {
  _$CatsRecord? _$v;

  DocumentReference<Object?>? _userAssociation;
  DocumentReference<Object?>? get userAssociation => _$this._userAssociation;
  set userAssociation(DocumentReference<Object?>? userAssociation) =>
      _$this._userAssociation = userAssociation;

  String? _catPhoto;
  String? get catPhoto => _$this._catPhoto;
  set catPhoto(String? catPhoto) => _$this._catPhoto = catPhoto;

  String? _catName;
  String? get catName => _$this._catName;
  set catName(String? catName) => _$this._catName = catName;

  String? _catType;
  String? get catType => _$this._catType;
  set catType(String? catType) => _$this._catType = catType;

  int? _catAge;
  int? get catAge => _$this._catAge;
  set catAge(int? catAge) => _$this._catAge = catAge;

  String? _catBio;
  String? get catBio => _$this._catBio;
  set catBio(String? catBio) => _$this._catBio = catBio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CatsRecordBuilder() {
    CatsRecord._initializeBuilder(this);
  }

  CatsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userAssociation = $v.userAssociation;
      _catPhoto = $v.catPhoto;
      _catName = $v.catName;
      _catType = $v.catType;
      _catAge = $v.catAge;
      _catBio = $v.catBio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CatsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CatsRecord;
  }

  @override
  void update(void Function(CatsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CatsRecord build() => _build();

  _$CatsRecord _build() {
    final _$result = _$v ??
        new _$CatsRecord._(
            userAssociation: userAssociation,
            catPhoto: catPhoto,
            catName: catName,
            catType: catType,
            catAge: catAge,
            catBio: catBio,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
