import 'dart:typed_data';

import 'package:firestore_proxy_client/file_picker_service.dart';
import 'package:firestore_proxy_client/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zefyrka/zefyrka.dart';

class ZefyrkaImageEmbedBuilder {
  final FileService fileService;

  ZefyrkaImageEmbedBuilder(this.fileService);

  Widget call(BuildContext context, EmbedNode node) {
    if (node.value.type == "hr") {
      final theme = ZefyrTheme.of(context)!;
      return Divider(
        height: theme.paragraph.style.fontSize! * theme.paragraph.style.height!,
        thickness: 2,
        color: Colors.grey.shade200,
      );
    }
    if (node.value.type == "image") {
      final filename = node.value.data["source"] as String?;
      return Align(
        alignment: Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 300),
          child: filename == null
              ? _buildMissedImage()
              : _buildExistsImage(filename),
        ),
      );
    }

    /// add video handler for instance
    throw UnimplementedError(
        'Embeddable type "${node.value.type}" is not supported by default embed '
        'builder of ZefyrEditor. You must pass your own builder function to '
        'embedBuilder property of ZefyrEditor or ZefyrField widgets.');
  }

  Widget _buildExistsImage(String filename) {
    return Consumer(
      builder: (context, ref, child) {
        return Padding(
          padding: const EdgeInsets.all(28.0),
          child: Image.network(
            ref.read(uploadDownloadProvider).fullImageUrl(filename),
            width: double.infinity,
          ),
        );
      },
    );
  }

  Widget _buildMissedImage() {
    return Container(
      width: 320,
      height: 240,
      color: Colors.grey.shade50,
      child: const Center(
        child: Icon(Icons.close, color: Colors.grey),
      ),
    );
  }
}

typedef UrlReturningImageUploadFn = Future<String> Function(Uint8List);
