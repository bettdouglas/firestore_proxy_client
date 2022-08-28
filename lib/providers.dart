import 'dart:typed_data';

import 'package:firestore_proxy_client/file_download_provider.dart';
import 'package:firestore_proxy_client/file_picker_service.dart';
import 'package:firestore_proxy_client/file_upload_provider.dart';
import 'package:firestore_proxy_client/image_upload_provider.dart';
import 'package:firestore_proxy_client/states.dart';
import 'package:firestore_proxy_client/upload_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final uploadDownloadProvider = Provider((ref) => UploadDownloadService());

final fileService = Provider((ref) => FileService());

final fileDownloadProvider =
    StateNotifierProvider<FileDownloadStateNotifier, FileDownloadState>(
  (ref) {
    final fileService = ref.read(uploadDownloadProvider);
    return FileDownloadStateNotifier(fileService: fileService);
  },
);

final fileUploadProvider =
    StateNotifierProvider<FileUploadStateNotifier, FileUploadState>((ref) {
  final fileService = ref.read(uploadDownloadProvider);
  return FileUploadStateNotifier(fileService: fileService);
});

final imageUploadProvider =
    StateNotifierProvider<ImageUploadStateNotifier, ImageUploadState>((ref) {
  final fileService = ref.read(uploadDownloadProvider);
  return ImageUploadStateNotifier(fileService: fileService);
});

final fileToMemoryProvider = FutureProvider.family<Uint8List, String>((
  ref,
  String imageUrl,
) async {
  final file = await ref.read(uploadDownloadProvider).downloadFile(imageUrl);
  return file.readAsBytes();
});
