// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Accounts _$AccountsFromJson(Map<String, dynamic> json) {
  return _Accounts.fromJson(json);
}

/// @nodoc
mixin _$Accounts {
  String? get id => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this Accounts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Accounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountsCopyWith<Accounts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsCopyWith<$Res> {
  factory $AccountsCopyWith(Accounts value, $Res Function(Accounts) then) =
      _$AccountsCopyWithImpl<$Res, Accounts>;
  @useResult
  $Res call({String? id, String? nama, String? phone, String? email});
}

/// @nodoc
class _$AccountsCopyWithImpl<$Res, $Val extends Accounts>
    implements $AccountsCopyWith<$Res> {
  _$AccountsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Accounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? phone = freezed,
    Object? email = freezed,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountsImplCopyWith<$Res>
    implements $AccountsCopyWith<$Res> {
  factory _$$AccountsImplCopyWith(
          _$AccountsImpl value, $Res Function(_$AccountsImpl) then) =
      __$$AccountsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? nama, String? phone, String? email});
}

/// @nodoc
class __$$AccountsImplCopyWithImpl<$Res>
    extends _$AccountsCopyWithImpl<$Res, _$AccountsImpl>
    implements _$$AccountsImplCopyWith<$Res> {
  __$$AccountsImplCopyWithImpl(
      _$AccountsImpl _value, $Res Function(_$AccountsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Accounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(_$AccountsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountsImpl implements _Accounts {
  const _$AccountsImpl({this.id, this.nama, this.phone, this.email});

  factory _$AccountsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountsImplFromJson(json);

  @override
  final String? id;
  @override
  final String? nama;
  @override
  final String? phone;
  @override
  final String? email;

  @override
  String toString() {
    return 'Accounts(id: $id, nama: $nama, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, phone, email);

  /// Create a copy of Accounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountsImplCopyWith<_$AccountsImpl> get copyWith =>
      __$$AccountsImplCopyWithImpl<_$AccountsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountsImplToJson(
      this,
    );
  }
}

abstract class _Accounts implements Accounts {
  const factory _Accounts(
      {final String? id,
      final String? nama,
      final String? phone,
      final String? email}) = _$AccountsImpl;

  factory _Accounts.fromJson(Map<String, dynamic> json) =
      _$AccountsImpl.fromJson;

  @override
  String? get id;
  @override
  String? get nama;
  @override
  String? get phone;
  @override
  String? get email;

  /// Create a copy of Accounts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountsImplCopyWith<_$AccountsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
