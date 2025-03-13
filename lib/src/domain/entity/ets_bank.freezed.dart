// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ets_bank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BankEts {
  String? get id => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get kode => throw _privateConstructorUsedError;
  String? get accountNumber => throw _privateConstructorUsedError;
  String? get accountName => throw _privateConstructorUsedError;

  /// Create a copy of BankEts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankEtsCopyWith<BankEts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankEtsCopyWith<$Res> {
  factory $BankEtsCopyWith(BankEts value, $Res Function(BankEts) then) =
      _$BankEtsCopyWithImpl<$Res, BankEts>;
  @useResult
  $Res call(
      {String? id,
      String? nama,
      String? kode,
      String? accountNumber,
      String? accountName});
}

/// @nodoc
class _$BankEtsCopyWithImpl<$Res, $Val extends BankEts>
    implements $BankEtsCopyWith<$Res> {
  _$BankEtsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankEts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? kode = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankEtsImplCopyWith<$Res> implements $BankEtsCopyWith<$Res> {
  factory _$$BankEtsImplCopyWith(
          _$BankEtsImpl value, $Res Function(_$BankEtsImpl) then) =
      __$$BankEtsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? nama,
      String? kode,
      String? accountNumber,
      String? accountName});
}

/// @nodoc
class __$$BankEtsImplCopyWithImpl<$Res>
    extends _$BankEtsCopyWithImpl<$Res, _$BankEtsImpl>
    implements _$$BankEtsImplCopyWith<$Res> {
  __$$BankEtsImplCopyWithImpl(
      _$BankEtsImpl _value, $Res Function(_$BankEtsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankEts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? kode = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
  }) {
    return _then(_$BankEtsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BankEtsImpl implements _BankEts {
  const _$BankEtsImpl(
      {this.id, this.nama, this.kode, this.accountNumber, this.accountName});

  @override
  final String? id;
  @override
  final String? nama;
  @override
  final String? kode;
  @override
  final String? accountNumber;
  @override
  final String? accountName;

  @override
  String toString() {
    return 'BankEts(id: $id, nama: $nama, kode: $kode, accountNumber: $accountNumber, accountName: $accountName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankEtsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.kode, kode) || other.kode == kode) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nama, kode, accountNumber, accountName);

  /// Create a copy of BankEts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankEtsImplCopyWith<_$BankEtsImpl> get copyWith =>
      __$$BankEtsImplCopyWithImpl<_$BankEtsImpl>(this, _$identity);
}

abstract class _BankEts implements BankEts {
  const factory _BankEts(
      {final String? id,
      final String? nama,
      final String? kode,
      final String? accountNumber,
      final String? accountName}) = _$BankEtsImpl;

  @override
  String? get id;
  @override
  String? get nama;
  @override
  String? get kode;
  @override
  String? get accountNumber;
  @override
  String? get accountName;

  /// Create a copy of BankEts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankEtsImplCopyWith<_$BankEtsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
