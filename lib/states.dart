import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'states.freezed.dart';

@freezed
class FileUploadState with _$FileUploadState {
  const factory FileUploadState.initial() = _Initial;
  const factory FileUploadState.uploading({
    required PlatformFile file,
    required int percentage,
  }) = _Uploading;
  const factory FileUploadState.uploaded({
    required PlatformFile file,
    required String downloadUrl,
  }) = _Uploaded;
  const factory FileUploadState.error(String error) = _Error;
}

@freezed
class FileDownloadState with _$FileDownloadState {
  const factory FileDownloadState.initial() = _DownloadInitial;
  const factory FileDownloadState.downloading({
    required int percentage,
  }) = _Downloading;
  const factory FileDownloadState.downloaded({
    required String url,
    required File file,
  }) = _Downloaded;
  const factory FileDownloadState.error(String error) = _DownloadError;
}

@freezed
class ImageUploadState with _$ImageUploadState {
  const factory ImageUploadState.initial() = _ImageInitial;
  const factory ImageUploadState.uploading({
    required PlatformFile file,
    required int percentage,
  }) = _ImageUploading;
  const factory ImageUploadState.uploaded({
    required PlatformFile file,
    required String downloadUrl,
  }) = _ImageUploaded;
  const factory ImageUploadState.error(String error) = _ImageUploadError;
}
