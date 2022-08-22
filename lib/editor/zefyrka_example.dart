import 'package:flutter/material.dart';
import 'package:zefyrka/zefyrka.dart';

class ZefyrEditorExample extends StatefulWidget {
  const ZefyrEditorExample({Key? key}) : super(key: key);

  @override
  State<ZefyrEditorExample> createState() => _ZefyrEditorExampleState();
}

class _ZefyrEditorExampleState extends State<ZefyrEditorExample> {
  @override
  void initState() {
    _controller = ZefyrController();
    super.initState();
  }

  late ZefyrController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ZefyrToolbar.basic(controller: _controller),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(38.0),
            child: ZefyrEditor(
              controller: _controller,
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.save),
            ),
          ],
        ),
      ],
    );
  }
}
