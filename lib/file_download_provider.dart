import 'package:firestore_proxy_client/states.dart';
import 'package:firestore_proxy_client/upload_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class FileDownloadStateNotifier extends StateNotifier<FileDownloadState> {
  FileDownloadStateNotifier({
    required this.fileService,
  }) : super(const FileDownloadState.initial());

  final UploadDownloadService fileService;

  Future downloadFile(String url) async {
    // state = const FileDownloadState.downloading(percentage: 0);
    // try {
    //   final file = await fileService.downloadFile(
    //     url,
    //     onReceiveProgress: (percentage) {
    //       state = FileDownloadState.downloading(percentage: percentage);
    //     },
    //   );
    //   state = FileDownloadState.downloaded(url: url, file: file);
    // } catch (e) {
    //   state = FileDownloadState.error(e.toString());
    // }
    await fileService.viewFile(url);
  }
}
