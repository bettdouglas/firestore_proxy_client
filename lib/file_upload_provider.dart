import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:firestore_proxy_client/states.dart';
import 'package:firestore_proxy_client/upload_service.dart';

class FileUploadStateNotifier extends StateNotifier<FileUploadState> {
  FileUploadStateNotifier({
    required this.fileService,
  }) : super(const FileUploadState.initial());

  final UploadDownloadService fileService;

  Future upload(PlatformFile file) async {
    state = FileUploadState.uploading(file: file, percentage: 0);
    try {
      final fileBytes = file.bytes!;
      final fileName = file.name;
      final url = await fileService.uploadFile(
        fileBytes,
        fileName,
        onUploadProgress: (percentage) {
          state = FileUploadState.uploading(file: file, percentage: percentage);
        },
      );
      state = FileUploadState.uploaded(file: file, downloadUrl: url);
    } catch (e) {
      state = FileUploadState.error(e.toString());
    }
  }
}
