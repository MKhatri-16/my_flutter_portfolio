// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_stack_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationStackItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() portfolio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? portfolio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? portfolio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationStackItemPortfolio value) portfolio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationStackItemPortfolio value)? portfolio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationStackItemPortfolio value)? portfolio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStackItemCopyWith<$Res> {
  factory $NavigationStackItemCopyWith(
          NavigationStackItem value, $Res Function(NavigationStackItem) then) =
      _$NavigationStackItemCopyWithImpl<$Res, NavigationStackItem>;
}

/// @nodoc
class _$NavigationStackItemCopyWithImpl<$Res, $Val extends NavigationStackItem>
    implements $NavigationStackItemCopyWith<$Res> {
  _$NavigationStackItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavigationStackItemPortfolioImplCopyWith<$Res> {
  factory _$$NavigationStackItemPortfolioImplCopyWith(
          _$NavigationStackItemPortfolioImpl value,
          $Res Function(_$NavigationStackItemPortfolioImpl) then) =
      __$$NavigationStackItemPortfolioImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigationStackItemPortfolioImplCopyWithImpl<$Res>
    extends _$NavigationStackItemCopyWithImpl<$Res,
        _$NavigationStackItemPortfolioImpl>
    implements _$$NavigationStackItemPortfolioImplCopyWith<$Res> {
  __$$NavigationStackItemPortfolioImplCopyWithImpl(
      _$NavigationStackItemPortfolioImpl _value,
      $Res Function(_$NavigationStackItemPortfolioImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigationStackItemPortfolioImpl
    implements NavigationStackItemPortfolio {
  const _$NavigationStackItemPortfolioImpl();

  @override
  String toString() {
    return 'NavigationStackItem.portfolio()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationStackItemPortfolioImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() portfolio,
  }) {
    return portfolio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? portfolio,
  }) {
    return portfolio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? portfolio,
    required TResult orElse(),
  }) {
    if (portfolio != null) {
      return portfolio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationStackItemPortfolio value) portfolio,
  }) {
    return portfolio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationStackItemPortfolio value)? portfolio,
  }) {
    return portfolio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationStackItemPortfolio value)? portfolio,
    required TResult orElse(),
  }) {
    if (portfolio != null) {
      return portfolio(this);
    }
    return orElse();
  }
}

abstract class NavigationStackItemPortfolio implements NavigationStackItem {
  const factory NavigationStackItemPortfolio() =
      _$NavigationStackItemPortfolioImpl;
}
