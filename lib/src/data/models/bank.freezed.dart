// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bank _$BankFromJson(Map<String, dynamic> json) {
  return _Bank.fromJson(json);
}

/// @nodoc
mixin _$Bank {
  String? get id => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get kode => throw _privateConstructorUsedError;

  /// Serializes this Bank to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankCopyWith<Bank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCopyWith<$Res> {
  factory $BankCopyWith(Bank value, $Res Function(Bank) then) =
      _$BankCopyWithImpl<$Res, Bank>;
  @useResult
  $Res call({String? id, String? nama, String? kode});
}

/// @nodoc
class _$BankCopyWithImpl<$Res, $Val extends Bank>
    implements $BankCopyWith<$Res> {
  _$BankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? kode = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankImplCopyWith<$Res> implements $BankCopyWith<$Res> {
  factory _$$BankImplCopyWith(
          _$BankImpl value, $Res Function(_$BankImpl) then) =
      __$$BankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? nama, String? kode});
}

/// @nodoc
class __$$BankImplCopyWithImpl<$Res>
    extends _$BankCopyWithImpl<$Res, _$BankImpl>
    implements _$$BankImplCopyWith<$Res> {
  __$$BankImplCopyWithImpl(_$BankImpl _value, $Res Function(_$BankImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? kode = freezed,
  }) {
    return _then(_$BankImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankImpl implements _Bank {
  const _$BankImpl({this.id, this.nama, this.kode});

  factory _$BankImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankImplFromJson(json);

  @override
  final String? id;
  @override
  final String? nama;
  @override
  final String? kode;

  @override
  String toString() {
    return 'Bank(id: $id, nama: $nama, kode: $kode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.kode, kode) || other.kode == kode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, kode);

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankImplCopyWith<_$BankImpl> get copyWith =>
      __$$BankImplCopyWithImpl<_$BankImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankImplToJson(
      this,
    );
  }
}

abstract class _Bank implements Bank {
  const factory _Bank(
      {final String? id, final String? nama, final String? kode}) = _$BankImpl;

  factory _Bank.fromJson(Map<String, dynamic> json) = _$BankImpl.fromJson;

  @override
  String? get id;
  @override
  String? get nama;
  @override
  String? get kode;

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankImplCopyWith<_$BankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
