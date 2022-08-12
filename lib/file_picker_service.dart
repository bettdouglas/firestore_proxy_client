import 'dart:io';

import 'package:file_picker/file_picker.dart';

class FileService {
  Future<File?> chooseFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      return File(result.files.single.path!);
    }
    return null;
  }

  Future<PlatformFile?> chooseFileWeb() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      return result.files.first;
    }
    return null;
  }

  Future<File?> chooseImage() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result != null) {
      return File(result.files.single.path!);
    }
    return null;
  }

  Future<PlatformFile?> chooseImageWeb() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result != null) {
      return result.files.single;
    }
    return null;
  }
}
