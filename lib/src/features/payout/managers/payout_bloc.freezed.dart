// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PayoutState {
  ApiStatus get state => throw _privateConstructorUsedError;
  List<Accounts>? get accounts => throw _privateConstructorUsedError;
  Accounts? get selectedAccount => throw _privateConstructorUsedError;
  String? get errMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiStatus state, List<Accounts>? accounts,
            Accounts? selectedAccount, String? errMessage)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiStatus state, List<Accounts>? accounts,
            Accounts? selectedAccount, String? errMessage)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiStatus state, List<Accounts>? accounts,
            Accounts? selectedAccount, String? errMessage)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PayoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutStateCopyWith<PayoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutStateCopyWith<$Res> {
  factory $PayoutStateCopyWith(
          PayoutState value, $Res Function(PayoutState) then) =
      _$PayoutStateCopyWithImpl<$Res, PayoutState>;
  @useResult
  $Res call(
      {ApiStatus state,
      List<Accounts>? accounts,
      Accounts? selectedAccount,
      String? errMessage});

  $AccountsCopyWith<$Res>? get selectedAccount;
}

/// @nodoc
class _$PayoutStateCopyWithImpl<$Res, $Val extends PayoutState>
    implements $PayoutStateCopyWith<$Res> {
  _$PayoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? accounts = freezed,
    Object? selectedAccount = freezed,
    Object? errMessage = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Accounts>?,
      selectedAccount: freezed == selectedAccount
          ? _value.selectedAccount
          : selectedAccount // ignore: cast_nullable_to_non_nullable
              as Accounts?,
      errMessage: freezed == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PayoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountsCopyWith<$Res>? get selectedAccount {
    if (_value.selectedAccount == null) {
      return null;
    }

    return $AccountsCopyWith<$Res>(_value.selectedAccount!, (value) {
      return _then(_value.copyWith(selectedAccount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PayoutStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus state,
      List<Accounts>? accounts,
      Accounts? selectedAccount,
      String? errMessage});

  @override
  $AccountsCopyWith<$Res>? get selectedAccount;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PayoutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? accounts = freezed,
    Object? selectedAccount = freezed,
    Object? errMessage = freezed,
  }) {
    return _then(_$InitialImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      accounts: freezed == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Accounts>?,
      selectedAccount: freezed == selectedAccount
          ? _value.selectedAccount
          : selectedAccount // ignore: cast_nullable_to_non_nullable
              as Accounts?,
      errMessage: freezed == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.state = ApiStatus.initial,
      final List<Accounts>? accounts,
      this.selectedAccount,
      this.errMessage})
      : _accounts = accounts;

  @override
  @JsonKey()
  final ApiStatus state;
  final List<Accounts>? _accounts;
  @override
  List<Accounts>? get accounts {
    final value = _accounts;
    if (value == null) return null;
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Accounts? selectedAccount;
  @override
  final String? errMessage;

  @override
  String toString() {
    return 'PayoutState.initial(state: $state, accounts: $accounts, selectedAccount: $selectedAccount, errMessage: $errMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.selectedAccount, selectedAccount) ||
                other.selectedAccount == selectedAccount) &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      const DeepCollectionEquality().hash(_accounts),
      selectedAccount,
      errMessage);

  /// Create a copy of PayoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiStatus state, List<Accounts>? accounts,
            Accounts? selectedAccount, String? errMessage)
        initial,
  }) {
    return initial(state, accounts, selectedAccount, errMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiStatus state, List<Accounts>? accounts,
            Accounts? selectedAccount, String? errMessage)?
        initial,
  }) {
    return initial?.call(state, accounts, selectedAccount, errMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiStatus state, List<Accounts>? accounts,
            Accounts? selectedAccount, String? errMessage)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(state, accounts, selectedAccount, errMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PayoutState {
  const factory _Initial(
      {final ApiStatus state,
      final List<Accounts>? accounts,
      final Accounts? selectedAccount,
      final String? errMessage}) = _$InitialImpl;

  @override
  ApiStatus get state;
  @override
  List<Accounts>? get accounts;
  @override
  Accounts? get selectedAccount;
  @override
  String? get errMessage;

  /// Create a copy of PayoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PayoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String query) search,
    required TResult Function(Accounts account) selectAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Accounts account)? selectAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Accounts account)? selectAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectAccount value) selectAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectAccount value)? selectAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Search value)? search,
    TResult Function(_SelectAccount value)? selectAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutEventCopyWith<$Res> {
  factory $PayoutEventCopyWith(
          PayoutEvent value, $Res Function(PayoutEvent) then) =
      _$PayoutEventCopyWithImpl<$Res, PayoutEvent>;
}

/// @nodoc
class _$PayoutEventCopyWithImpl<$Res, $Val extends PayoutEvent>
    implements $PayoutEventCopyWith<$Res> {
  _$PayoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$PayoutEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'PayoutEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String query) search,
    required TResult Function(Accounts account) selectAccount,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Accounts account)? selectAccount,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Accounts account)? selectAccount,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectAccount value) selectAccount,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectAccount value)? selectAccount,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Search value)? search,
    TResult Function(_SelectAccount value)? selectAccount,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements PayoutEvent {
  const factory _Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$PayoutEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'PayoutEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String query) search,
    required TResult Function(Accounts account) selectAccount,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Accounts account)? selectAccount,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Accounts account)? selectAccount,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectAccount value) selectAccount,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectAccount value)? selectAccount,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Search value)? search,
    TResult Function(_SelectAccount value)? selectAccount,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements PayoutEvent {
  const factory _Search(final String query) = _$SearchImpl;

  String get query;

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAccountImplCopyWith<$Res> {
  factory _$$SelectAccountImplCopyWith(
          _$SelectAccountImpl value, $Res Function(_$SelectAccountImpl) then) =
      __$$SelectAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Accounts account});

  $AccountsCopyWith<$Res> get account;
}

/// @nodoc
class __$$SelectAccountImplCopyWithImpl<$Res>
    extends _$PayoutEventCopyWithImpl<$Res, _$SelectAccountImpl>
    implements _$$SelectAccountImplCopyWith<$Res> {
  __$$SelectAccountImplCopyWithImpl(
      _$SelectAccountImpl _value, $Res Function(_$SelectAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$SelectAccountImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Accounts,
    ));
  }

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountsCopyWith<$Res> get account {
    return $AccountsCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc

class _$SelectAccountImpl implements _SelectAccount {
  const _$SelectAccountImpl(this.account);

  @override
  final Accounts account;

  @override
  String toString() {
    return 'PayoutEvent.selectAccount(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAccountImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAccountImplCopyWith<_$SelectAccountImpl> get copyWith =>
      __$$SelectAccountImplCopyWithImpl<_$SelectAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String query) search,
    required TResult Function(Accounts account) selectAccount,
  }) {
    return selectAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Accounts account)? selectAccount,
  }) {
    return selectAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Accounts account)? selectAccount,
    required TResult orElse(),
  }) {
    if (selectAccount != null) {
      return selectAccount(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectAccount value) selectAccount,
  }) {
    return selectAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectAccount value)? selectAccount,
  }) {
    return selectAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Search value)? search,
    TResult Function(_SelectAccount value)? selectAccount,
    required TResult orElse(),
  }) {
    if (selectAccount != null) {
      return selectAccount(this);
    }
    return orElse();
  }
}

abstract class _SelectAccount implements PayoutEvent {
  const factory _SelectAccount(final Accounts account) = _$SelectAccountImpl;

  Accounts get account;

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectAccountImplCopyWith<_$SelectAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
