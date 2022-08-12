import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as pp;
import 'package:url_launcher/url_launcher.dart';

const _host = 'http://localhost:8080';

class UploadDownloadService {
  final _dio = Dio(
    BaseOptions(baseUrl: _host),
  );

  Future<String> uploadFile(
    Uint8List bytes,
    String name, {
    Function(int)? onUploadProgress,
  }) async {
    final fileName = p.basename(name);
    var formData = FormData.fromMap({
      'filename': MultipartFile.fromBytes(bytes),
      'file_name': fileName,
    });
    final response = await _dio.post<String>(
      '/files/file_upload',
      data: formData,
      onSendProgress: (count, total) {
        final percentage = ((count / total) * 100).toInt();
        onUploadProgress?.call(percentage);
      },
    );
    return response.data!;
  }

  Future<File> downloadFile(
    String url, {
    Function(int)? onReceiveProgress,
  }) async {
    final documentsDir = await pp.getTemporaryDirectory();
    final savePath = p.join(documentsDir.path, url);
    await _dio.download(
      '/files/$url',
      savePath,
      onReceiveProgress: (count, total) {
        final percentage = ((count / total) * 100).toInt();
        onReceiveProgress?.call(percentage);
      },
    );
    return File(savePath);
  }

  Future<void> viewFile(String url) async {
    final uri = Uri.parse('$_host/files/$url');
    // final uri = Uri.parse(
    //   'https://storage.cloud.google.com/innostrategies_net_bucket/7b979ff9-865a-4905-9e3b-24b01a9ac672-The%20ONE%20Thing%20by%20Gary%20Keller%20(z-lib.org).epub,',
    // );
    if (!await launchUrl(uri)) {
      throw 'Could not lauch $url';
    }
  }

  String fullImageUrl(String url) => '$_host/files/$url';
}
