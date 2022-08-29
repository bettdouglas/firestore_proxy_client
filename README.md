# firestore_proxy_client

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Buidling the web app
```flutter build web --web-renderer canvaskit```

## Deploying to Firebase Hosting
```firebase init```

This is required to make the project deployable to to Firebase Hosting.

```firebase deploy```

This is required will deploy the specified website. Once it's done, you'll receive a hosting URL in the form 
```Hosting URL: https://*******.web.app```


### Adding custom widgets into Zefyrka

To add custom widgets into Zefyrka, we need to specify an embedBuilder which allows rendering of widgets based on the `EmbedNode` value type. 

Here is an example of how to load an image from some server somewhere. 
```dart
    Widget customEmbedBuider(BuildContext context, EmbedNode node) {
        if (node.value.type == "image") {
            final sourceUrl = node.value.data["source"] as String?;
            return Align(
                alignment: Alignment.centerLeft,
                child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 300),
                child: filename == null
                    ? _buildMissedImage()
                    : Image.network(sourceUrl),
                ),
            );
        }
    }
```

If we add support for video loading, and say the node value type equals `video`
we can return a video_player widget like
```dart
Widget customEmbedBuider(BuildContext context, EmbedNode node) {
    if (node.value.type == "image") {
        final sourceUrl = node.value.data["source"] as String?;
        return Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 300),
            child: filename == null
                ? _buildMissedImage()
                : Image.network(sourceUrl),
            ),
        );
    }
    if (node.value.type == "video") {
      final videoUrl = node.value.data["source"] as String?;
      return Align(
        alignment: Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 300),
          child: filename == null
              ? _buildMissedImage()
              : VideoPlayerWidget(url: videoUrl),
        ),
      );
    }
}
```

Once we have defined a custom embedBuilderDeletegate, we can plug it into the Zefyrka constructor like 
```dart

Widget customEmbedBuider(BuildContext context, EmbedNode node) {
    // your code here
}

return ZefyrEditor(
        controller: _controller,
        embedBuilder: customEmbedBuider,
    );
```