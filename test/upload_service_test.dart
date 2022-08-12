import 'dart:io';

import 'package:firestore_proxy_client/upload_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late UploadDownloadService fileService;
  late File fileToUpload;

  setUpAll(() async {
    fileService = UploadDownloadService();
    fileToUpload = File('pubspec.yaml');
  });

  tearDownAll(() {});

  test('can upload a file', () async {
    final bytes = await fileToUpload.readAsBytes();

    final url = await fileService.uploadFile(
      bytes,
      fileToUpload.path,
      onUploadProgress: (percentage) {
        print(percentage);
      },
    );
    expect(url, isNotNull);
  });

  test('can download a file', () async {
    final bytes = await fileToUpload.readAsBytes();

    final url = await fileService.uploadFile(bytes, fileToUpload.path);
    final file = await fileService.downloadFile(
      url,
      onReceiveProgress: (percentage) {
        print(percentage);
      },
    );
    expect(file, isNotNull);
  });
}
