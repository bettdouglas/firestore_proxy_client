// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileUploadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlatformFile file, int percentage) uploading,
    required TResult Function(PlatformFile file, String downloadUrl) uploaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadStateCopyWith<$Res> {
  factory $FileUploadStateCopyWith(
          FileUploadState value, $Res Function(FileUploadState) then) =
      _$FileUploadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileUploadStateCopyWithImpl<$Res>
    implements $FileUploadStateCopyWith<$Res> {
  _$FileUploadStateCopyWithImpl(this._value, this._then);

  final FileUploadState _value;
  // ignore: unused_field
  final $Res Function(FileUploadState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$FileUploadStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FileUploadState.initial()';
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
    required TResult Function(PlatformFile file, int percentage) uploading,
    required TResult Function(PlatformFile file, String downloadUrl) uploaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
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
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FileUploadState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_UploadingCopyWith<$Res> {
  factory _$$_UploadingCopyWith(
          _$_Uploading value, $Res Function(_$_Uploading) then) =
      __$$_UploadingCopyWithImpl<$Res>;
  $Res call({PlatformFile file, int percentage});
}

/// @nodoc
class __$$_UploadingCopyWithImpl<$Res>
    extends _$FileUploadStateCopyWithImpl<$Res>
    implements _$$_UploadingCopyWith<$Res> {
  __$$_UploadingCopyWithImpl(
      _$_Uploading _value, $Res Function(_$_Uploading) _then)
      : super(_value, (v) => _then(v as _$_Uploading));

  @override
  _$_Uploading get _value => super._value as _$_Uploading;

  @override
  $Res call({
    Object? file = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_$_Uploading(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PlatformFile,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Uploading implements _Uploading {
  const _$_Uploading({required this.file, required this.percentage});

  @override
  final PlatformFile file;
  @override
  final int percentage;

  @override
  String toString() {
    return 'FileUploadState.uploading(file: $file, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Uploading &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality()
                .equals(other.percentage, percentage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(percentage));

  @JsonKey(ignore: true)
  @override
  _$$_UploadingCopyWith<_$_Uploading> get copyWith =>
      __$$_UploadingCopyWithImpl<_$_Uploading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlatformFile file, int percentage) uploading,
    required TResult Function(PlatformFile file, String downloadUrl) uploaded,
    required TResult Function(String error) error,
  }) {
    return uploading(file, percentage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
  }) {
    return uploading?.call(file, percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(file, percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Error value) error,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Error value)? error,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class _Uploading implements FileUploadState {
  const factory _Uploading(
      {required final PlatformFile file,
      required final int percentage}) = _$_Uploading;

  PlatformFile get file;
  int get percentage;
  @JsonKey(ignore: true)
  _$$_UploadingCopyWith<_$_Uploading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadedCopyWith<$Res> {
  factory _$$_UploadedCopyWith(
          _$_Uploaded value, $Res Function(_$_Uploaded) then) =
      __$$_UploadedCopyWithImpl<$Res>;
  $Res call({PlatformFile file, String downloadUrl});
}

/// @nodoc
class __$$_UploadedCopyWithImpl<$Res>
    extends _$FileUploadStateCopyWithImpl<$Res>
    implements _$$_UploadedCopyWith<$Res> {
  __$$_UploadedCopyWithImpl(
      _$_Uploaded _value, $Res Function(_$_Uploaded) _then)
      : super(_value, (v) => _then(v as _$_Uploaded));

  @override
  _$_Uploaded get _value => super._value as _$_Uploaded;

  @override
  $Res call({
    Object? file = freezed,
    Object? downloadUrl = freezed,
  }) {
    return _then(_$_Uploaded(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PlatformFile,
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Uploaded implements _Uploaded {
  const _$_Uploaded({required this.file, required this.downloadUrl});

  @override
  final PlatformFile file;
  @override
  final String downloadUrl;

  @override
  String toString() {
    return 'FileUploadState.uploaded(file: $file, downloadUrl: $downloadUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Uploaded &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality()
                .equals(other.downloadUrl, downloadUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(downloadUrl));

  @JsonKey(ignore: true)
  @override
  _$$_UploadedCopyWith<_$_Uploaded> get copyWith =>
      __$$_UploadedCopyWithImpl<_$_Uploaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlatformFile file, int percentage) uploading,
    required TResult Function(PlatformFile file, String downloadUrl) uploaded,
    required TResult Function(String error) error,
  }) {
    return uploaded(file, downloadUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
  }) {
    return uploaded?.call(file, downloadUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(file, downloadUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Error value) error,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Error value)? error,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class _Uploaded implements FileUploadState {
  const factory _Uploaded(
      {required final PlatformFile file,
      required final String downloadUrl}) = _$_Uploaded;

  PlatformFile get file;
  String get downloadUrl;
  @JsonKey(ignore: true)
  _$$_UploadedCopyWith<_$_Uploaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$FileUploadStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FileUploadState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlatformFile file, int percentage) uploading,
    required TResult Function(PlatformFile file, String downloadUrl) uploaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FileUploadState {
  const factory _Error(final String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FileDownloadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int percentage) downloading,
    required TResult Function(String url, File file) downloaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int percentage)? downloading,
    TResult Function(String url, File file)? downloaded,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int percentage)? downloading,
    TResult Function(String url, File file)? downloaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadInitial value) initial,
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_DownloadError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadInitial value)? initial,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadInitial value)? initial,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDownloadStateCopyWith<$Res> {
  factory $FileDownloadStateCopyWith(
          FileDownloadState value, $Res Function(FileDownloadState) then) =
      _$FileDownloadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileDownloadStateCopyWithImpl<$Res>
    implements $FileDownloadStateCopyWith<$Res> {
  _$FileDownloadStateCopyWithImpl(this._value, this._then);

  final FileDownloadState _value;
  // ignore: unused_field
  final $Res Function(FileDownloadState) _then;
}

/// @nodoc
abstract class _$$_DownloadInitialCopyWith<$Res> {
  factory _$$_DownloadInitialCopyWith(
          _$_DownloadInitial value, $Res Function(_$_DownloadInitial) then) =
      __$$_DownloadInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DownloadInitialCopyWithImpl<$Res>
    extends _$FileDownloadStateCopyWithImpl<$Res>
    implements _$$_DownloadInitialCopyWith<$Res> {
  __$$_DownloadInitialCopyWithImpl(
      _$_DownloadInitial _value, $Res Function(_$_DownloadInitial) _then)
      : super(_value, (v) => _then(v as _$_DownloadInitial));

  @override
  _$_DownloadInitial get _value => super._value as _$_DownloadInitial;
}

/// @nodoc

class _$_DownloadInitial implements _DownloadInitial {
  const _$_DownloadInitial();

  @override
  String toString() {
    return 'FileDownloadState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DownloadInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int percentage) downloading,
    required TResult Function(String url, File file) downloaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int percentage)? downloading,
    TResult Function(String url, File file)? downloaded,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int percentage)? downloading,
    TResult Function(String url, File file)? downloaded,
    TResult Function(String error)? error,
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
    required TResult Function(_DownloadInitial value) initial,
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_DownloadError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadInitial value)? initial,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadInitial value)? initial,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DownloadInitial implements FileDownloadState {
  const factory _DownloadInitial() = _$_DownloadInitial;
}

/// @nodoc
abstract class _$$_DownloadingCopyWith<$Res> {
  factory _$$_DownloadingCopyWith(
          _$_Downloading value, $Res Function(_$_Downloading) then) =
      __$$_DownloadingCopyWithImpl<$Res>;
  $Res call({int percentage});
}

/// @nodoc
class __$$_DownloadingCopyWithImpl<$Res>
    extends _$FileDownloadStateCopyWithImpl<$Res>
    implements _$$_DownloadingCopyWith<$Res> {
  __$$_DownloadingCopyWithImpl(
      _$_Downloading _value, $Res Function(_$_Downloading) _then)
      : super(_value, (v) => _then(v as _$_Downloading));

  @override
  _$_Downloading get _value => super._value as _$_Downloading;

  @override
  $Res call({
    Object? percentage = freezed,
  }) {
    return _then(_$_Downloading(
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Downloading implements _Downloading {
  const _$_Downloading({required this.percentage});

  @override
  final int percentage;

  @override
  String toString() {
    return 'FileDownloadState.downloading(percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Downloading &&
            const DeepCollectionEquality()
                .equals(other.percentage, percentage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(percentage));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadingCopyWith<_$_Downloading> get copyWith =>
      __$$_DownloadingCopyWithImpl<_$_Downloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int percentage) downloading,
    required TResult Function(String url, File file) downloaded,
    required TResult Function(String error) error,
  }) {
    return downloading(percentage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int percentage)? downloading,
    TResult Function(String url, File file)? downloaded,
    TResult Function(String error)? error,
  }) {
    return downloading?.call(percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int percentage)? downloading,
    TResult Function(String url, File file)? downloaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadInitial value) initial,
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_DownloadError value) error,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadInitial value)? initial,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadError value)? error,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadInitial value)? initial,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadError value)? error,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class _Downloading implements FileDownloadState {
  const factory _Downloading({required final int percentage}) = _$_Downloading;

  int get percentage;
  @JsonKey(ignore: true)
  _$$_DownloadingCopyWith<_$_Downloading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DownloadedCopyWith<$Res> {
  factory _$$_DownloadedCopyWith(
          _$_Downloaded value, $Res Function(_$_Downloaded) then) =
      __$$_DownloadedCopyWithImpl<$Res>;
  $Res call({String url, File file});
}

/// @nodoc
class __$$_DownloadedCopyWithImpl<$Res>
    extends _$FileDownloadStateCopyWithImpl<$Res>
    implements _$$_DownloadedCopyWith<$Res> {
  __$$_DownloadedCopyWithImpl(
      _$_Downloaded _value, $Res Function(_$_Downloaded) _then)
      : super(_value, (v) => _then(v as _$_Downloaded));

  @override
  _$_Downloaded get _value => super._value as _$_Downloaded;

  @override
  $Res call({
    Object? url = freezed,
    Object? file = freezed,
  }) {
    return _then(_$_Downloaded(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_Downloaded implements _Downloaded {
  const _$_Downloaded({required this.url, required this.file});

  @override
  final String url;
  @override
  final File file;

  @override
  String toString() {
    return 'FileDownloadState.downloaded(url: $url, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Downloaded &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadedCopyWith<_$_Downloaded> get copyWith =>
      __$$_DownloadedCopyWithImpl<_$_Downloaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int percentage) downloading,
    required TResult Function(String url, File file) downloaded,
    required TResult Function(String error) error,
  }) {
    return downloaded(url, file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int percentage)? downloading,
    TResult Function(String url, File file)? downloaded,
    TResult Function(String error)? error,
  }) {
    return downloaded?.call(url, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int percentage)? downloading,
    TResult Function(String url, File file)? downloaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(url, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadInitial value) initial,
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_DownloadError value) error,
  }) {
    return downloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadInitial value)? initial,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadError value)? error,
  }) {
    return downloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadInitial value)? initial,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadError value)? error,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(this);
    }
    return orElse();
  }
}

abstract class _Downloaded implements FileDownloadState {
  const factory _Downloaded(
      {required final String url, required final File file}) = _$_Downloaded;

  String get url;
  File get file;
  @JsonKey(ignore: true)
  _$$_DownloadedCopyWith<_$_Downloaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DownloadErrorCopyWith<$Res> {
  factory _$$_DownloadErrorCopyWith(
          _$_DownloadError value, $Res Function(_$_DownloadError) then) =
      __$$_DownloadErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_DownloadErrorCopyWithImpl<$Res>
    extends _$FileDownloadStateCopyWithImpl<$Res>
    implements _$$_DownloadErrorCopyWith<$Res> {
  __$$_DownloadErrorCopyWithImpl(
      _$_DownloadError _value, $Res Function(_$_DownloadError) _then)
      : super(_value, (v) => _then(v as _$_DownloadError));

  @override
  _$_DownloadError get _value => super._value as _$_DownloadError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_DownloadError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DownloadError implements _DownloadError {
  const _$_DownloadError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FileDownloadState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadErrorCopyWith<_$_DownloadError> get copyWith =>
      __$$_DownloadErrorCopyWithImpl<_$_DownloadError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int percentage) downloading,
    required TResult Function(String url, File file) downloaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int percentage)? downloading,
    TResult Function(String url, File file)? downloaded,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int percentage)? downloading,
    TResult Function(String url, File file)? downloaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadInitial value) initial,
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_DownloadError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadInitial value)? initial,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadInitial value)? initial,
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_DownloadError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DownloadError implements FileDownloadState {
  const factory _DownloadError(final String error) = _$_DownloadError;

  String get error;
  @JsonKey(ignore: true)
  _$$_DownloadErrorCopyWith<_$_DownloadError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageUploadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlatformFile file, int percentage) uploading,
    required TResult Function(PlatformFile file, String downloadUrl) uploaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageInitial value) initial,
    required TResult Function(_ImageUploading value) uploading,
    required TResult Function(_ImageUploaded value) uploaded,
    required TResult Function(_ImageUploadError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageInitial value)? initial,
    TResult Function(_ImageUploading value)? uploading,
    TResult Function(_ImageUploaded value)? uploaded,
    TResult Function(_ImageUploadError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageInitial value)? initial,
    TResult Function(_ImageUploading value)? uploading,
    TResult Function(_ImageUploaded value)? uploaded,
    TResult Function(_ImageUploadError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploadStateCopyWith<$Res> {
  factory $ImageUploadStateCopyWith(
          ImageUploadState value, $Res Function(ImageUploadState) then) =
      _$ImageUploadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageUploadStateCopyWithImpl<$Res>
    implements $ImageUploadStateCopyWith<$Res> {
  _$ImageUploadStateCopyWithImpl(this._value, this._then);

  final ImageUploadState _value;
  // ignore: unused_field
  final $Res Function(ImageUploadState) _then;
}

/// @nodoc
abstract class _$$_ImageInitialCopyWith<$Res> {
  factory _$$_ImageInitialCopyWith(
          _$_ImageInitial value, $Res Function(_$_ImageInitial) then) =
      __$$_ImageInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ImageInitialCopyWithImpl<$Res>
    extends _$ImageUploadStateCopyWithImpl<$Res>
    implements _$$_ImageInitialCopyWith<$Res> {
  __$$_ImageInitialCopyWithImpl(
      _$_ImageInitial _value, $Res Function(_$_ImageInitial) _then)
      : super(_value, (v) => _then(v as _$_ImageInitial));

  @override
  _$_ImageInitial get _value => super._value as _$_ImageInitial;
}

/// @nodoc

class _$_ImageInitial implements _ImageInitial {
  const _$_ImageInitial();

  @override
  String toString() {
    return 'ImageUploadState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ImageInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlatformFile file, int percentage) uploading,
    required TResult Function(PlatformFile file, String downloadUrl) uploaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
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
    required TResult Function(_ImageInitial value) initial,
    required TResult Function(_ImageUploading value) uploading,
    required TResult Function(_ImageUploaded value) uploaded,
    required TResult Function(_ImageUploadError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageInitial value)? initial,
    TResult Function(_ImageUploading value)? uploading,
    TResult Function(_ImageUploaded value)? uploaded,
    TResult Function(_ImageUploadError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageInitial value)? initial,
    TResult Function(_ImageUploading value)? uploading,
    TResult Function(_ImageUploaded value)? uploaded,
    TResult Function(_ImageUploadError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ImageInitial implements ImageUploadState {
  const factory _ImageInitial() = _$_ImageInitial;
}

/// @nodoc
abstract class _$$_ImageUploadingCopyWith<$Res> {
  factory _$$_ImageUploadingCopyWith(
          _$_ImageUploading value, $Res Function(_$_ImageUploading) then) =
      __$$_ImageUploadingCopyWithImpl<$Res>;
  $Res call({PlatformFile file, int percentage});
}

/// @nodoc
class __$$_ImageUploadingCopyWithImpl<$Res>
    extends _$ImageUploadStateCopyWithImpl<$Res>
    implements _$$_ImageUploadingCopyWith<$Res> {
  __$$_ImageUploadingCopyWithImpl(
      _$_ImageUploading _value, $Res Function(_$_ImageUploading) _then)
      : super(_value, (v) => _then(v as _$_ImageUploading));

  @override
  _$_ImageUploading get _value => super._value as _$_ImageUploading;

  @override
  $Res call({
    Object? file = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_$_ImageUploading(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PlatformFile,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ImageUploading implements _ImageUploading {
  const _$_ImageUploading({required this.file, required this.percentage});

  @override
  final PlatformFile file;
  @override
  final int percentage;

  @override
  String toString() {
    return 'ImageUploadState.uploading(file: $file, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageUploading &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality()
                .equals(other.percentage, percentage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(percentage));

  @JsonKey(ignore: true)
  @override
  _$$_ImageUploadingCopyWith<_$_ImageUploading> get copyWith =>
      __$$_ImageUploadingCopyWithImpl<_$_ImageUploading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlatformFile file, int percentage) uploading,
    required TResult Function(PlatformFile file, String downloadUrl) uploaded,
    required TResult Function(String error) error,
  }) {
    return uploading(file, percentage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
  }) {
    return uploading?.call(file, percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(file, percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageInitial value) initial,
    required TResult Function(_ImageUploading value) uploading,
    required TResult Function(_ImageUploaded value) uploaded,
    required TResult Function(_ImageUploadError value) error,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageInitial value)? initial,
    TResult Function(_ImageUploading value)? uploading,
    TResult Function(_ImageUploaded value)? uploaded,
    TResult Function(_ImageUploadError value)? error,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageInitial value)? initial,
    TResult Function(_ImageUploading value)? uploading,
    TResult Function(_ImageUploaded value)? uploaded,
    TResult Function(_ImageUploadError value)? error,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class _ImageUploading implements ImageUploadState {
  const factory _ImageUploading(
      {required final PlatformFile file,
      required final int percentage}) = _$_ImageUploading;

  PlatformFile get file;
  int get percentage;
  @JsonKey(ignore: true)
  _$$_ImageUploadingCopyWith<_$_ImageUploading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageUploadedCopyWith<$Res> {
  factory _$$_ImageUploadedCopyWith(
          _$_ImageUploaded value, $Res Function(_$_ImageUploaded) then) =
      __$$_ImageUploadedCopyWithImpl<$Res>;
  $Res call({PlatformFile file, String downloadUrl});
}

/// @nodoc
class __$$_ImageUploadedCopyWithImpl<$Res>
    extends _$ImageUploadStateCopyWithImpl<$Res>
    implements _$$_ImageUploadedCopyWith<$Res> {
  __$$_ImageUploadedCopyWithImpl(
      _$_ImageUploaded _value, $Res Function(_$_ImageUploaded) _then)
      : super(_value, (v) => _then(v as _$_ImageUploaded));

  @override
  _$_ImageUploaded get _value => super._value as _$_ImageUploaded;

  @override
  $Res call({
    Object? file = freezed,
    Object? downloadUrl = freezed,
  }) {
    return _then(_$_ImageUploaded(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PlatformFile,
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageUploaded implements _ImageUploaded {
  const _$_ImageUploaded({required this.file, required this.downloadUrl});

  @override
  final PlatformFile file;
  @override
  final String downloadUrl;

  @override
  String toString() {
    return 'ImageUploadState.uploaded(file: $file, downloadUrl: $downloadUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageUploaded &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality()
                .equals(other.downloadUrl, downloadUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(downloadUrl));

  @JsonKey(ignore: true)
  @override
  _$$_ImageUploadedCopyWith<_$_ImageUploaded> get copyWith =>
      __$$_ImageUploadedCopyWithImpl<_$_ImageUploaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlatformFile file, int percentage) uploading,
    required TResult Function(PlatformFile file, String downloadUrl) uploaded,
    required TResult Function(String error) error,
  }) {
    return uploaded(file, downloadUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
  }) {
    return uploaded?.call(file, downloadUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(file, downloadUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageInitial value) initial,
    required TResult Function(_ImageUploading value) uploading,
    required TResult Function(_ImageUploaded value) uploaded,
    required TResult Function(_ImageUploadError value) error,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageInitial value)? initial,
    TResult Function(_ImageUploading value)? uploading,
    TResult Function(_ImageUploaded value)? uploaded,
    TResult Function(_ImageUploadError value)? error,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageInitial value)? initial,
    TResult Function(_ImageUploading value)? uploading,
    TResult Function(_ImageUploaded value)? uploaded,
    TResult Function(_ImageUploadError value)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class _ImageUploaded implements ImageUploadState {
  const factory _ImageUploaded(
      {required final PlatformFile file,
      required final String downloadUrl}) = _$_ImageUploaded;

  PlatformFile get file;
  String get downloadUrl;
  @JsonKey(ignore: true)
  _$$_ImageUploadedCopyWith<_$_ImageUploaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageUploadErrorCopyWith<$Res> {
  factory _$$_ImageUploadErrorCopyWith(
          _$_ImageUploadError value, $Res Function(_$_ImageUploadError) then) =
      __$$_ImageUploadErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_ImageUploadErrorCopyWithImpl<$Res>
    extends _$ImageUploadStateCopyWithImpl<$Res>
    implements _$$_ImageUploadErrorCopyWith<$Res> {
  __$$_ImageUploadErrorCopyWithImpl(
      _$_ImageUploadError _value, $Res Function(_$_ImageUploadError) _then)
      : super(_value, (v) => _then(v as _$_ImageUploadError));

  @override
  _$_ImageUploadError get _value => super._value as _$_ImageUploadError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_ImageUploadError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageUploadError implements _ImageUploadError {
  const _$_ImageUploadError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ImageUploadState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageUploadError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ImageUploadErrorCopyWith<_$_ImageUploadError> get copyWith =>
      __$$_ImageUploadErrorCopyWithImpl<_$_ImageUploadError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlatformFile file, int percentage) uploading,
    required TResult Function(PlatformFile file, String downloadUrl) uploaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlatformFile file, int percentage)? uploading,
    TResult Function(PlatformFile file, String downloadUrl)? uploaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageInitial value) initial,
    required TResult Function(_ImageUploading value) uploading,
    required TResult Function(_ImageUploaded value) uploaded,
    required TResult Function(_ImageUploadError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageInitial value)? initial,
    TResult Function(_ImageUploading value)? uploading,
    TResult Function(_ImageUploaded value)? uploaded,
    TResult Function(_ImageUploadError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageInitial value)? initial,
    TResult Function(_ImageUploading value)? uploading,
    TResult Function(_ImageUploaded value)? uploaded,
    TResult Function(_ImageUploadError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ImageUploadError implements ImageUploadState {
  const factory _ImageUploadError(final String error) = _$_ImageUploadError;

  String get error;
  @JsonKey(ignore: true)
  _$$_ImageUploadErrorCopyWith<_$_ImageUploadError> get copyWith =>
      throw _privateConstructorUsedError;
}
