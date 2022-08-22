// import 'package:firestore_proxy_client/editor/contents.dart';
// import 'package:firestore_proxy_client/editor/toolbar.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:super_editor/super_editor.dart';
// import 'package:super_editor_markdown/super_editor_markdown.dart';
// import 'package:zefyrka/zefyrka.dart';

// class MarkdownExamplePage extends StatefulWidget {
//   const MarkdownExamplePage({Key? key}) : super(key: key);

//   @override
//   State<MarkdownExamplePage> createState() => _MarkdownExamplePageState();
// }

// class _MarkdownExamplePageState extends State<MarkdownExamplePage> {
//   /// Mutable InMemory Document that responds to editor actions and can be modified.
//   /// its a flutter ChangeNotifier under the hood
//   late MutableDocument doc;

//   /// responsible for making changes to [doc].
//   late DocumentEditor docEditor;

//   /// The [composer] provides access to the user's current
//   /// selection within the document, which dictates the
//   /// content that is altered by the toolbar's options.
//   late DocumentComposer _documentComposer;

//   OverlayEntry? _textFormatBarOverlayEntry;

//   /// The [FocusNode] attached to the editor to which this toolbar applies.
//   late FocusNode _focusNode;

//   late ScrollController _scrollController;

//   final GlobalKey _docLayoutKey = GlobalKey();

//   /// [anchor] is a [ValueNotifier] so that [EditorToolbar] can
//   /// reposition itself as the [Offset] value changes.
//   final _textSelectionAnchor = ValueNotifier<Offset?>(null);

//   late CommonEditorOperations _docOps;

//   final _darkBackground = const Color(0xFF222222);
//   final _lightBackground = Colors.white;
//   bool _isLight = true;

//   late ZefyrController _controller;

//   @override
//   void initState() {
//     doc = MutableDocument(
//       nodes: [
//         ParagraphNode(
//           id: DocumentEditor.createNodeId(),
//           text: AttributedText(text: 'This is a header'),
//           metadata: {
//             'blockType': header1Attribution,
//           },
//         ),
//         ParagraphNode(
//           id: DocumentEditor.createNodeId(),
//           text: AttributedText(text: 'This is the first paragraph'),
//         ),
//       ],
//     );
//     doc.addListener(_hideOrShowToolbar);
//     docEditor = DocumentEditor(document: doc);
//     _documentComposer = DocumentComposer();
//     _documentComposer.addListener(_hideOrShowToolbar);
//     _docOps = CommonEditorOperations(
//       editor: docEditor,
//       composer: _documentComposer,
//       documentLayoutResolver: () =>
//           _docLayoutKey.currentState as DocumentLayout,
//     );
//     _focusNode = FocusNode();
//     _scrollController = ScrollController()..addListener(_hideOrShowToolbar);
//     _controller = ZefyrController(readDocument());
//     super.initState();
//   }

//   // ZefyrController

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ZefyrToolbar.basic(controller: _controller),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(38.0),
//             child: ZefyrEditor(
//               controller: _controller,
//               readOnly: true,
//             ),
//           ),
//         ),
//         Row(
//           children: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.save),
//             ),
//           ],
//         ),
//       ],
//     );

//     return Column(
//       children: [
//         Expanded(
//           child: SuperEditor(
//             editor: docEditor,
//             composer: _documentComposer,

//             /// a focus node for the entire editor
//             focusNode: _focusNode,
//             scrollController: _scrollController,
//             documentLayoutKey: _docLayoutKey,
//             componentBuilders: [
//               ...defaultComponentBuilders,
//             ],
//             documentOverlayBuilders: [
//               DefaultCaretOverlayBuilder(
//                 CaretStyle().copyWith(color: Colors.black),
//               ),
//             ],
//             selectionStyle: _isLight
//                 ? defaultSelectionStyle
//                 : SelectionStyles(
//                     selectionColor: Colors.red.withOpacity(0.3),
//                   ),
//             stylesheet: defaultStylesheet,
//             gestureMode: _gestureMode,
//             inputSource: _inputSource,
//             keyboardActions: _inputSource == DocumentInputSource.ime
//                 ? defaultImeKeyboardActions
//                 : defaultKeyboardActions,
//             androidToolbarBuilder: (_) => AndroidTextEditingFloatingToolbar(
//               onCutPressed: _cut,
//               onCopyPressed: _copy,
//               onPastePressed: _paste,
//               onSelectAllPressed: _selectAll,
//             ),
//             iOSToolbarBuilder: (_) => IOSTextEditingFloatingToolbar(
//               onCutPressed: _cut,
//               onCopyPressed: _copy,
//               onPastePressed: _paste,
//             ),
//           ),
//         ),
//         Container(
//           // margin: const EdgeInsets.only(bo0: 30),
//           color: Colors.black,
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Consumer(
//                 builder: (context, ref, child) {
//                   final isBold = ref.watch(boldStateProvider);
//                   return IconButton(
//                     onPressed: () {
//                       ref.read(boldStateProvider.notifier).state = !isBold;
//                     },
//                     icon: Icon(
//                       Icons.format_bold,
//                       color: isBold ? Colors.green : Colors.white,
//                     ),
//                   );
//                 },
//               ),
//               Consumer(
//                 builder: (context, ref, child) {
//                   final isItalic = ref.watch(italicStateProvider);
//                   return IconButton(
//                     onPressed: () {
//                       ref.read(italicStateProvider.notifier).state = !isItalic;
//                     },
//                     icon: Icon(
//                       Icons.format_italic,
//                       color: isItalic ? Colors.green : Colors.white,
//                     ),
//                   );
//                 },
//               ),
//               Consumer(
//                 builder: (context, ref, child) {
//                   final isUnderline = ref.watch(underlineStateProvider);
//                   return IconButton(
//                     onPressed: () {
//                       ref.read(underlineStateProvider.notifier).state =
//                           !isUnderline;
//                     },
//                     icon: Icon(
//                       Icons.format_underline,
//                       color: isUnderline ? Colors.green : Colors.white,
//                     ),
//                   );
//                 },
//               ),
//               IconButton(
//                 onPressed: () {
//                   // get current active node
//                   final selection = _documentComposer.selection;
//                   print(selection);
//                   doc.insertNodeAt(
//                     doc.nodes.length,
//                     ListItemNode.unordered(
//                       id: DocumentEditor.createNodeId(),
//                       text: AttributedText(),
//                     ),
//                   );
//                   _focusNode.requestFocus();
//                 },
//                 icon: Icon(
//                   Icons.format_list_bulleted,
//                   color: Colors.white,
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {
//                   // get current active node
//                   final selection = _documentComposer.selection;
//                   print(selection);
//                   doc.insertNodeAt(
//                     doc.nodes.length,
//                     ListItemNode.ordered(
//                       id: DocumentEditor.createNodeId(),
//                       text: AttributedText(),
//                     ),
//                   );
//                 },
//                 icon: Icon(
//                   Icons.format_list_numbered,
//                   color: Colors.white,
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {
//                   // get current active node
//                   final serializedDocument = serializeDocumentToMarkdown(doc);
//                   print(serializedDocument);
//                   Document document = deserializeMarkdownToDocument(
//                     serializedDocument,
//                   );
//                   final nodes = document.nodes;
//                   MutableDocument(nodes: nodes);
//                 },
//                 icon: Icon(
//                   Icons.save,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }

//   void _showEditorToolbar() {
//     if (_textFormatBarOverlayEntry == null) {
//       // Create an overlay entry to build the editor toolbar.
//       // TODO: add an overlay to the Editor widget to avoid using the
//       //       application overlay
//       _textFormatBarOverlayEntry ??= OverlayEntry(
//         builder: (context) {
//           return EditorToolbar(
//             anchor: _textSelectionAnchor,
//             editorFocusNode: _focusNode,
//             editor: docEditor,
//             composer: _documentComposer,
//             closeToolbar: _hideEditorToolbar,
//           );
//         },
//       );

//       // Display the toolbar in the application overlay.
//       final overlay = Overlay.of(context)!;
//       overlay.insert(_textFormatBarOverlayEntry!);
//     }

//     // Schedule a callback after this frame to locate the selection
//     // bounds on the screen and display the toolbar near the selected
//     // text.
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       if (_textFormatBarOverlayEntry == null) {
//         return;
//       }

//       final docBoundingBox = (_docLayoutKey.currentState as DocumentLayout)
//           .getRectForSelection(_documentComposer.selection!.base,
//               _documentComposer.selection!.extent)!;
//       final docBox =
//           _docLayoutKey.currentContext!.findRenderObject() as RenderBox;
//       final overlayBoundingBox = Rect.fromPoints(
//         docBox.localToGlobal(docBoundingBox.topLeft),
//         docBox.localToGlobal(docBoundingBox.bottomRight),
//       );

//       _textSelectionAnchor.value = overlayBoundingBox.topCenter;
//     });
//   }

//   void _hideEditorToolbar() {
//     // Null out the selection anchor so that when it re-appears,
//     // the bar doesn't momentarily "flash" at its old anchor position.
//     _textSelectionAnchor.value = null;

//     if (_textFormatBarOverlayEntry != null) {
//       // Remove the toolbar overlay and null-out the entry.
//       // We null out the entry because we can't query whether
//       // or not the entry exists in the overlay, so in our
//       // case, null implies the entry is not in the overlay,
//       // and non-null implies the entry is in the overlay.
//       _textFormatBarOverlayEntry!.remove();
//       _textFormatBarOverlayEntry = null;
//     }

//     // Ensure that focus returns to the editor.
//     //
//     // I tried explicitly unfocus()'ing the URL textfield
//     // in the toolbar but it didn't return focus to the
//     // editor. I'm not sure why.
//     _focusNode.requestFocus();
//   }

//   void _hideOrShowToolbar() {
//     /// Check if there's a selection
//     final selection = _documentComposer.selection;

//     if (selection == null) {
//       // Nothing is selected. We don't want to show a toolbar
//       // in this case.
//       _hideEditorToolbar();

//       return;
//     }

//     if (selection.base.nodeId != selection.extent.nodeId) {
//       // More than one node is selected. We don't want to show
//       // a toolbar in this case.
//       _hideEditorToolbar();

//       return;
//     }

//     if (selection.isCollapsed) {
//       // We only want to show the toolbar when a span of text
//       // is selected. Therefore, we ignore collapsed selections.
//       _hideEditorToolbar();

//       return;
//     }
// //  get the selected node
//     final selectedNode = doc.getNodeById(selection.extent.nodeId);

//     // if (selectedNode is TextNode) {
//     //   print("Showing text format toolbar");
//     //   // Show the editor's toolbar for text styling.
//     //   _showEditorToolbar();
//     //   return;
//     // } else {
//     //   // The currently selected content is not a paragraph. We don't
//     //   // want to show a toolbar in this case.
//     //   _hideEditorToolbar();
//     // }
//   }

//   DocumentGestureMode get _gestureMode {
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return DocumentGestureMode.android;
//       case TargetPlatform.iOS:
//         return DocumentGestureMode.iOS;
//       case TargetPlatform.fuchsia:
//       case TargetPlatform.linux:
//       case TargetPlatform.macOS:
//       case TargetPlatform.windows:
//         return DocumentGestureMode.mouse;
//     }
//   }

//   DocumentInputSource get _inputSource {
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//       case TargetPlatform.iOS:
//       case TargetPlatform.fuchsia:
//       case TargetPlatform.linux:
//       case TargetPlatform.macOS:
//       case TargetPlatform.windows:
//         return DocumentInputSource.ime;
//       // return DocumentInputSource.keyboard;
//     }
//   }

//   void _cut() => _docOps.cut();
//   void _copy() => _docOps.copy();
//   void _paste() => _docOps.paste();
//   void _selectAll() => _docOps.selectAll();

//   bool get _isMobile => _gestureMode != DocumentGestureMode.mouse;
// }

// final boldStateProvider = StateProvider((ref) => false);
// final italicStateProvider = StateProvider((ref) => false);
// final underlineStateProvider = StateProvider((ref) => false);

// final docEditorProvider = StateProvider((ref) {
//   final myDoc = MutableDocument(
//     nodes: [
//       ParagraphNode(
//         id: DocumentEditor.createNodeId(),
//         text: AttributedText(text: 'This is a header'),
//         metadata: {
//           'blockType': header1Attribution,
//         },
//       ),
//       ParagraphNode(
//         id: DocumentEditor.createNodeId(),
//         text: AttributedText(text: 'This is the first paragraph'),
//       ),
//     ],
//   );

// // With a MutableDocument, create a DocumentEditor, which knows how
// // to apply changes to the MutableDocument.
//   final docEditor = DocumentEditor(document: myDoc);
//   return docEditor;
// });
