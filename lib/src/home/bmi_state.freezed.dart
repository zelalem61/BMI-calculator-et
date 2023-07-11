
part of 'bmi_state.dart';

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BmiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Bmi bmi) calculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Bmi bmi)? calculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Bmi bmi)? calculated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Calculated value) calculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Calculated value)? calculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

abstract class $BmiStateCopyWith<$Res> {
  factory $BmiStateCopyWith(BmiState value, $Res Function(BmiState) then) =
      _$BmiStateCopyWithImpl<$Res, BmiState>;
}

class _$BmiStateCopyWithImpl<$Res, $Val extends BmiState>
    implements $BmiStateCopyWith<$Res> {
  _$BmiStateCopyWithImpl(this._value, this._then);

  final $Val _value;
  final $Res Function($Val) _then;
}

abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

class __$$_InitialCopyWithImpl<$Res>
    extends _$BmiStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}


class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BmiState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Bmi bmi) calculated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Bmi bmi)? calculated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Bmi bmi)? calculated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Calculated value) calculated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BmiState {
  const factory _Initial() = _$_Initial;
}

abstract class _$$_CalculatedCopyWith<$Res> {
  factory _$$_CalculatedCopyWith(
          _$_Calculated value, $Res Function(_$_Calculated) then) =
      __$$_CalculatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Bmi bmi});
}

class __$$_CalculatedCopyWithImpl<$Res>
    extends _$BmiStateCopyWithImpl<$Res, _$_Calculated>
    implements _$$_CalculatedCopyWith<$Res> {
  __$$_CalculatedCopyWithImpl(
      _$_Calculated _value, $Res Function(_$_Calculated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bmi = null,
  }) {
    return _then(_$_Calculated(
      null == bmi
          ? _value.bmi
          : bmi 
              as Bmi,
    ));
  }
}


class _$_Calculated implements _Calculated {
  _$_Calculated(this.bmi);

  @override
  final Bmi bmi;

  @override
  String toString() {
    return 'BmiState.calculated(bmi: $bmi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Calculated &&
            (identical(other.bmi, bmi) || other.bmi == bmi));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bmi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculatedCopyWith<_$_Calculated> get copyWith =>
      __$$_CalculatedCopyWithImpl<_$_Calculated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Bmi bmi) calculated,
  }) {
    return calculated(bmi);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Bmi bmi)? calculated,
  }) {
    return calculated?.call(bmi);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Bmi bmi)? calculated,
    required TResult orElse(),
  }) {
    if (calculated != null) {
      return calculated(bmi);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Calculated value) calculated,
  }) {
    return calculated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return calculated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (calculated != null) {
      return calculated(this);
    }
    return orElse();
  }
}

abstract class _Calculated implements BmiState {
  factory _Calculated(final Bmi bmi) = _$_Calculated;

  Bmi get bmi;
  @JsonKey(ignore: true)
  _$$_CalculatedCopyWith<_$_Calculated> get copyWith =>
      throw _privateConstructorUsedError;
}
