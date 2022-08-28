import 'package:file_picker/file_picker.dart';
import 'package:firestore_proxy_client/editor/zefyrka_example.dart';
import 'package:firestore_proxy_client/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:firestore_proxy_client/providers.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File/Image Upload Example',
      theme: ThemeData.light().copyWith(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'File Upload'),
              Tab(text: 'Image Upload'),
              Tab(text: 'Mardown Example'),
            ],
            labelColor: Colors.black,
          ),
        ),
        body: Column(
          children: const [
            Expanded(
              child: TabBarView(
                children: [
                  FileUploadWidget(),
                  ImageUploadWidget(),
                  ZefyrEditorExample(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FileUploadWidget extends ConsumerStatefulWidget {
  const FileUploadWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FileUploadWidgetState();
}

class _FileUploadWidgetState extends ConsumerState<FileUploadWidget> {
  PlatformFile? pickedFile;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(fileUploadProvider);
    ref.listen<FileUploadState>(fileUploadProvider, (previous, next) {
      next.maybeWhen(
        orElse: () {},
        error: (error) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error),
            backgroundColor: Colors.red,
          ),
        ),
      );
    });
    ref.listen<FileDownloadState>(fileDownloadProvider, (previous, next) {
      next.maybeWhen(
        orElse: () {},
        downloaded: (url, file) => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('File Successfully downloaded'),
            backgroundColor: Colors.red,
          ),
        ),
        error: (error) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error),
            backgroundColor: Colors.red,
          ),
        ),
      );
    });
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Select a file to upload'),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            icon: const Icon(Icons.store_mall_directory),
            onPressed: () async {
              final file = await ref.read(fileService).chooseFileWeb();
              if (file != null) {
                setState(() {
                  pickedFile = file;
                });
              }
            },
            label: const Text('Choose PDF file'),
          ),
          const SizedBox(height: 20),
          if (pickedFile != null) Text(pickedFile!.name),
          const SizedBox(height: 20),
          state.maybeWhen(
            orElse: () => pickedFile != null
                ? ElevatedButton.icon(
                    onPressed: () async {
                      ref.read(fileUploadProvider.notifier).upload(pickedFile!);
                    },
                    icon: const Icon(Icons.upload_file),
                    label: const Text('Upload File'),
                  )
                : const SizedBox(),
            uploaded: (file, downloadUrl) => ElevatedButton.icon(
              onPressed: () async {
                ref
                    .read(fileDownloadProvider.notifier)
                    .downloadFile(downloadUrl);
              },
              icon: const Icon(Icons.upload_file),
              label: const Text('Download Uploaded File'),
            ),
          ),
          ...state.maybeWhen(
            orElse: () => [],
            uploaded: (file, downloadUrl) => [
              const SizedBox(height: 20),
              Text(downloadUrl),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: state.maybeWhen(
              orElse: () => const SizedBox(),
              uploading: (file, percentage) =>
                  ProgressBar(percentage: percentage),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageUploadWidget extends ConsumerStatefulWidget {
  const ImageUploadWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ImageUploadWidgetState();
}

class _ImageUploadWidgetState extends ConsumerState<ImageUploadWidget> {
  PlatformFile? pickedImageFile;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(imageUploadProvider);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Select a file to upload'),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            icon: const Icon(Icons.store_mall_directory),
            onPressed: () async {
              final file = await ref.read(fileService).chooseImageWeb();
              if (file != null) {
                setState(() {
                  pickedImageFile = file;
                });
              }
            },
            label: const Text('Choose image to upload'),
          ),
          const SizedBox(height: 20),
          if (pickedImageFile != null)
            Image.memory(
              pickedImageFile!.bytes!,
              width: MediaQuery.of(context).size.width / 2,
            ),
          const SizedBox(height: 20),
          state.maybeWhen(
            orElse: () => pickedImageFile != null
                ? ElevatedButton.icon(
                    onPressed: () async {
                      ref
                          .read(imageUploadProvider.notifier)
                          .upload(pickedImageFile!);
                    },
                    icon: const Icon(Icons.upload_file),
                    label: const Text('Upload File'),
                  )
                : const SizedBox(),
            uploaded: (file, downloadUrl) => ElevatedButton.icon(
              onPressed: () async {
                ref
                    .read(fileDownloadProvider.notifier)
                    .downloadFile(downloadUrl);
              },
              icon: const Icon(Icons.upload_file),
              label: const Text('Download Uploaded Image'),
            ),
          ),
          ...state.maybeWhen(
            orElse: () => [],
            uploaded: (file, downloadUrl) => [
              const SizedBox(height: 20),
              Text(downloadUrl),
              const SizedBox(height: 20),
              const Text('Uploaded Image'),
              Image.network(
                ref.read(uploadDownloadProvider).fullImageUrl(downloadUrl),
                width: MediaQuery.of(context).size.width / 3,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: state.maybeWhen(
              orElse: () => const SizedBox(),
              uploading: (file, percentage) =>
                  ProgressBar(percentage: percentage),
            ),
          ),
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.percentage,
  }) : super(key: key);

  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            flex: percentage,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 100 - percentage,
            child: Container(
              color: Colors.brown,
            ),
          ),
        ],
      ),
    );
  }
}
