import 'package:file_picker/file_picker.dart';
import 'package:firestore_proxy_client/editor/image_embed_builder.dart';
import 'package:firestore_proxy_client/main.dart';
import 'package:firestore_proxy_client/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zefyrka/zefyrka.dart';

import '../providers.dart';

class ZefyrEditorExample extends ConsumerStatefulWidget {
  const ZefyrEditorExample({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ZefyrEditorExampleState();
}

class _ZefyrEditorExampleState extends ConsumerState<ZefyrEditorExample> {
  @override
  void initState() {
    _controller = ZefyrController();
    super.initState();
  }

  late ZefyrController _controller;

  @override
  Widget build(BuildContext context) {
    final imageUploadState = ref.watch(imageUploadProvider);
    ref.listen<ImageUploadState>(imageUploadProvider, (previous, next) {
      next.maybeWhen(
        orElse: () {},
        uploaded: (file, url) {
          final delta = _controller.document.insert(
            _controller.selection.baseOffset,
            BlockEmbed.image(url),
          );
          print(delta);
        },
        error: (msg) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(msg),
              backgroundColor: Colors.red[200],
            ),
          );
        },
      );
    });

    return Column(
      children: [
        ZefyrToolbar.basic(controller: _controller),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(38.0),
            child: ZefyrEditor(
              controller: _controller,
              embedBuilder: ZefyrkaImageEmbedBuilder(ref.read(fileService)),
            ),
          ),
        ),
        imageUploadState.maybeWhen(
          orElse: () => SizedBox(),
          uploaded: (file, downloadUrl) => Text('Image successfully uploaded'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.save),
            ),
            Consumer(
              builder: (context, ref, child) {
                return IconButton(
                  onPressed: () async {
                    final file = await ref.read(fileService).chooseImageWeb();
                    if (file != null) {
                      ref.read(imageUploadProvider.notifier).upload(file);
                    }
                  },
                  icon: const Icon(Icons.image),
                );
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: imageUploadState.maybeWhen(
            orElse: () => const SizedBox(),
            uploading: (file, percentage) =>
                ProgressBar(percentage: percentage),
          ),
        ),
      ],
    );
  }
}
