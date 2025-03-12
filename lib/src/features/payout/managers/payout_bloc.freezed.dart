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
  NotificationType get notificationType => throw _privateConstructorUsedError;
  String? get errMessage => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ApiStatus state,
            List<Accounts>? accounts,
            Accounts? selectedAccount,
            NotificationType notificationType,
            String? errMessage,
            String? amount)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ApiStatus state,
            List<Accounts>? accounts,
            Accounts? selectedAccount,
            NotificationType notificationType,
            String? errMessage,
            String? amount)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ApiStatus state,
            List<Accounts>? accounts,
            Accounts? selectedAccount,
            NotificationType notificationType,
            String? errMessage,
            String? amount)?
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
      NotificationType notificationType,
      String? errMessage,
      String? amount});

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
    Object? notificationType = null,
    Object? errMessage = freezed,
    Object? amount = freezed,
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
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      errMessage: freezed == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
      NotificationType notificationType,
      String? errMessage,
      String? amount});

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
    Object? notificationType = null,
    Object? errMessage = freezed,
    Object? amount = freezed,
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
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      errMessage: freezed == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
      this.notificationType = NotificationType.whatsapp,
      this.errMessage,
      this.amount})
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
  @JsonKey()
  final NotificationType notificationType;
  @override
  final String? errMessage;
  @override
  final String? amount;

  @override
  String toString() {
    return 'PayoutState.initial(state: $state, accounts: $accounts, selectedAccount: $selectedAccount, notificationType: $notificationType, errMessage: $errMessage, amount: $amount)';
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
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      const DeepCollectionEquality().hash(_accounts),
      selectedAccount,
      notificationType,
      errMessage,
      amount);

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
    required TResult Function(
            ApiStatus state,
            List<Accounts>? accounts,
            Accounts? selectedAccount,
            NotificationType notificationType,
            String? errMessage,
            String? amount)
        initial,
  }) {
    return initial(
        state, accounts, selectedAccount, notificationType, errMessage, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ApiStatus state,
            List<Accounts>? accounts,
            Accounts? selectedAccount,
            NotificationType notificationType,
            String? errMessage,
            String? amount)?
        initial,
  }) {
    return initial?.call(
        state, accounts, selectedAccount, notificationType, errMessage, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ApiStatus state,
            List<Accounts>? accounts,
            Accounts? selectedAccount,
            NotificationType notificationType,
            String? errMessage,
            String? amount)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(state, accounts, selectedAccount, notificationType,
          errMessage, amount);
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
      final NotificationType notificationType,
      final String? errMessage,
      final String? amount}) = _$InitialImpl;

  @override
  ApiStatus get state;
  @override
  List<Accounts>? get accounts;
  @override
  Accounts? get selectedAccount;
  @override
  NotificationType get notificationType;
  @override
  String? get errMessage;
  @override
  String? get amount;

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
    required TResult Function(String amount) setAmount,
    required TResult Function(NotificationType notificationType)
        setNotificationType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Accounts account)? selectAccount,
    TResult? Function(String amount)? setAmount,
    TResult? Function(NotificationType notificationType)? setNotificationType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Accounts account)? selectAccount,
    TResult Function(String amount)? setAmount,
    TResult Function(NotificationType notificationType)? setNotificationType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectAccount value) selectAccount,
    required TResult Function(_SetAmount value) setAmount,
    required TResult Function(_SetNotificationType value) setNotificationType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectAccount value)? selectAccount,
    TResult? Function(_SetAmount value)? setAmount,
    TResult? Function(_SetNotificationType value)? setNotificationType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Search value)? search,
    TResult Function(_SelectAccount value)? selectAccount,
    TResult Function(_SetAmount value)? setAmount,
    TResult Function(_SetNotificationType value)? setNotificationType,
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
    required TResult Function(String amount) setAmount,
    required TResult Function(NotificationType notificationType)
        setNotificationType,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Accounts account)? selectAccount,
    TResult? Function(String amount)? setAmount,
    TResult? Function(NotificationType notificationType)? setNotificationType,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Accounts account)? selectAccount,
    TResult Function(String amount)? setAmount,
    TResult Function(NotificationType notificationType)? setNotificationType,
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
    required TResult Function(_SetAmount value) setAmount,
    required TResult Function(_SetNotificationType value) setNotificationType,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectAccount value)? selectAccount,
    TResult? Function(_SetAmount value)? setAmount,
    TResult? Function(_SetNotificationType value)? setNotificationType,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Search value)? search,
    TResult Function(_SelectAccount value)? selectAccount,
    TResult Function(_SetAmount value)? setAmount,
    TResult Function(_SetNotificationType value)? setNotificationType,
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
    required TResult Function(String amount) setAmount,
    required TResult Function(NotificationType notificationType)
        setNotificationType,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Accounts account)? selectAccount,
    TResult? Function(String amount)? setAmount,
    TResult? Function(NotificationType notificationType)? setNotificationType,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Accounts account)? selectAccount,
    TResult Function(String amount)? setAmount,
    TResult Function(NotificationType notificationType)? setNotificationType,
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
    required TResult Function(_SetAmount value) setAmount,
    required TResult Function(_SetNotificationType value) setNotificationType,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectAccount value)? selectAccount,
    TResult? Function(_SetAmount value)? setAmount,
    TResult? Function(_SetNotificationType value)? setNotificationType,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Search value)? search,
    TResult Function(_SelectAccount value)? selectAccount,
    TResult Function(_SetAmount value)? setAmount,
    TResult Function(_SetNotificationType value)? setNotificationType,
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
    required TResult Function(String amount) setAmount,
    required TResult Function(NotificationType notificationType)
        setNotificationType,
  }) {
    return selectAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Accounts account)? selectAccount,
    TResult? Function(String amount)? setAmount,
    TResult? Function(NotificationType notificationType)? setNotificationType,
  }) {
    return selectAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Accounts account)? selectAccount,
    TResult Function(String amount)? setAmount,
    TResult Function(NotificationType notificationType)? setNotificationType,
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
    required TResult Function(_SetAmount value) setAmount,
    required TResult Function(_SetNotificationType value) setNotificationType,
  }) {
    return selectAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectAccount value)? selectAccount,
    TResult? Function(_SetAmount value)? setAmount,
    TResult? Function(_SetNotificationType value)? setNotificationType,
  }) {
    return selectAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Search value)? search,
    TResult Function(_SelectAccount value)? selectAccount,
    TResult Function(_SetAmount value)? setAmount,
    TResult Function(_SetNotificationType value)? setNotificationType,
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

/// @nodoc
abstract class _$$SetAmountImplCopyWith<$Res> {
  factory _$$SetAmountImplCopyWith(
          _$SetAmountImpl value, $Res Function(_$SetAmountImpl) then) =
      __$$SetAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$SetAmountImplCopyWithImpl<$Res>
    extends _$PayoutEventCopyWithImpl<$Res, _$SetAmountImpl>
    implements _$$SetAmountImplCopyWith<$Res> {
  __$$SetAmountImplCopyWithImpl(
      _$SetAmountImpl _value, $Res Function(_$SetAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$SetAmountImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetAmountImpl implements _SetAmount {
  const _$SetAmountImpl(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'PayoutEvent.setAmount(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAmountImplCopyWith<_$SetAmountImpl> get copyWith =>
      __$$SetAmountImplCopyWithImpl<_$SetAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String query) search,
    required TResult Function(Accounts account) selectAccount,
    required TResult Function(String amount) setAmount,
    required TResult Function(NotificationType notificationType)
        setNotificationType,
  }) {
    return setAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Accounts account)? selectAccount,
    TResult? Function(String amount)? setAmount,
    TResult? Function(NotificationType notificationType)? setNotificationType,
  }) {
    return setAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Accounts account)? selectAccount,
    TResult Function(String amount)? setAmount,
    TResult Function(NotificationType notificationType)? setNotificationType,
    required TResult orElse(),
  }) {
    if (setAmount != null) {
      return setAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectAccount value) selectAccount,
    required TResult Function(_SetAmount value) setAmount,
    required TResult Function(_SetNotificationType value) setNotificationType,
  }) {
    return setAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectAccount value)? selectAccount,
    TResult? Function(_SetAmount value)? setAmount,
    TResult? Function(_SetNotificationType value)? setNotificationType,
  }) {
    return setAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Search value)? search,
    TResult Function(_SelectAccount value)? selectAccount,
    TResult Function(_SetAmount value)? setAmount,
    TResult Function(_SetNotificationType value)? setNotificationType,
    required TResult orElse(),
  }) {
    if (setAmount != null) {
      return setAmount(this);
    }
    return orElse();
  }
}

abstract class _SetAmount implements PayoutEvent {
  const factory _SetAmount(final String amount) = _$SetAmountImpl;

  String get amount;

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetAmountImplCopyWith<_$SetAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetNotificationTypeImplCopyWith<$Res> {
  factory _$$SetNotificationTypeImplCopyWith(_$SetNotificationTypeImpl value,
          $Res Function(_$SetNotificationTypeImpl) then) =
      __$$SetNotificationTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationType notificationType});
}

/// @nodoc
class __$$SetNotificationTypeImplCopyWithImpl<$Res>
    extends _$PayoutEventCopyWithImpl<$Res, _$SetNotificationTypeImpl>
    implements _$$SetNotificationTypeImplCopyWith<$Res> {
  __$$SetNotificationTypeImplCopyWithImpl(_$SetNotificationTypeImpl _value,
      $Res Function(_$SetNotificationTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationType = null,
  }) {
    return _then(_$SetNotificationTypeImpl(
      null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationType,
    ));
  }
}

/// @nodoc

class _$SetNotificationTypeImpl implements _SetNotificationType {
  const _$SetNotificationTypeImpl(this.notificationType);

  @override
  final NotificationType notificationType;

  @override
  String toString() {
    return 'PayoutEvent.setNotificationType(notificationType: $notificationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNotificationTypeImpl &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationType);

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNotificationTypeImplCopyWith<_$SetNotificationTypeImpl> get copyWith =>
      __$$SetNotificationTypeImplCopyWithImpl<_$SetNotificationTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String query) search,
    required TResult Function(Accounts account) selectAccount,
    required TResult Function(String amount) setAmount,
    required TResult Function(NotificationType notificationType)
        setNotificationType,
  }) {
    return setNotificationType(notificationType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String query)? search,
    TResult? Function(Accounts account)? selectAccount,
    TResult? Function(String amount)? setAmount,
    TResult? Function(NotificationType notificationType)? setNotificationType,
  }) {
    return setNotificationType?.call(notificationType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String query)? search,
    TResult Function(Accounts account)? selectAccount,
    TResult Function(String amount)? setAmount,
    TResult Function(NotificationType notificationType)? setNotificationType,
    required TResult orElse(),
  }) {
    if (setNotificationType != null) {
      return setNotificationType(notificationType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Search value) search,
    required TResult Function(_SelectAccount value) selectAccount,
    required TResult Function(_SetAmount value) setAmount,
    required TResult Function(_SetNotificationType value) setNotificationType,
  }) {
    return setNotificationType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Search value)? search,
    TResult? Function(_SelectAccount value)? selectAccount,
    TResult? Function(_SetAmount value)? setAmount,
    TResult? Function(_SetNotificationType value)? setNotificationType,
  }) {
    return setNotificationType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Search value)? search,
    TResult Function(_SelectAccount value)? selectAccount,
    TResult Function(_SetAmount value)? setAmount,
    TResult Function(_SetNotificationType value)? setNotificationType,
    required TResult orElse(),
  }) {
    if (setNotificationType != null) {
      return setNotificationType(this);
    }
    return orElse();
  }
}

abstract class _SetNotificationType implements PayoutEvent {
  const factory _SetNotificationType(final NotificationType notificationType) =
      _$SetNotificationTypeImpl;

  NotificationType get notificationType;

  /// Create a copy of PayoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetNotificationTypeImplCopyWith<_$SetNotificationTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
