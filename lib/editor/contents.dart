import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:zefyrka/zefyrka.dart';

NotusDocument readDocument() {
  final contents =
      '''[{"insert":"Zefyr 1.0 early dev build"},{"insert":"\n","attributes":{"heading":1}},{"insert":{"_type":"hr","_inline":false}},{"insert":"\nThis example is built from an early dev version of Zefyr editor to be released as the first stable 1.0. The code for this build currently lives in the 1.0-dev branch of the Zefyr git repository."},{"insert":"\n","attributes":{"block":"quote"}},{"insert":"This version started as a refactoring of the rendering layer which had many limitations and prevented implementation of quite a few feature requests. But after some time it kind of naturally turned into an almost complete rewrite of the package. There are good news and bad news in this regard.\nThe bad news is that there are going to be breaking changes and quite a few of them. Though there will be an Upgrading Guide when we get closer to the release of 1.0 which should help with migration.\nThe good news is that this version already includes several improvements comparing to the current 0.x version of Zefyr package. It now allows to embed the editor into a custom scrollable, make it expanding to fill it's parent and fixes the issue with hintText in ZefyrField and InputDecoration.\nPlus it now matches cursor rendering with that of the built-in Flutter text fields.\nAlso code blocks now have line numbers:\nvoid main(List<String> args) {"},{"insert":"\n","attributes":{"block":"code"}},{"insert":"  print(\"This is Zefyr Editor\");"},{"insert":"\n","attributes":{"block":"code"}},{"insert":"}"},{"insert":"\n","attributes":{"block":"code"}},{"insert":"Ah, and Zefyr has much better support for desktop platforms (tested on macOS only at this point) as well as the Web. Though the last one is still far from stable and is limited by some issues within the Flutter Web implementation itself.\n"}]''';

  final doc = NotusDocument.fromJson(jsonDecode(contents));
  return doc;
}
