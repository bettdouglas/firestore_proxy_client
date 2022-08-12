import 'package:file_picker/file_picker.dart';
import 'package:firestore_proxy_client/states.dart';
import 'package:firestore_proxy_client/upload_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageUploadStateNotifier extends StateNotifier<ImageUploadState> {
  ImageUploadStateNotifier({
    required this.fileService,
  }) : super(const ImageUploadState.initial());

  final UploadDownloadService fileService;

  Future upload(PlatformFile file) async {
    state = ImageUploadState.uploading(file: file, percentage: 0);
    try {
      final fileBytes = file.bytes!;
      final fileName = file.name;
      final url = await fileService.uploadFile(
        fileBytes,
        fileName,
        onUploadProgress: (percentage) {
          state =
              ImageUploadState.uploading(file: file, percentage: percentage);
        },
      );
      state = ImageUploadState.uploaded(file: file, downloadUrl: url);
    } catch (e) {
      state = ImageUploadState.error(e.toString());
    }
  }
}
