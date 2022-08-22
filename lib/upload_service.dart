import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as pp;
import 'package:url_launcher/url_launcher.dart';

const _host = 'https://unitech-file-server-gskgoc2hxq-ez.a.run.app';

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
    if (!await launchUrl(uri)) {
      throw 'Could not lauch $url';
    }
  }

  String fullImageUrl(String url) => '$_host/files/$url';
}
