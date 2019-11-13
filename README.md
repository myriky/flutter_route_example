# flutter_simple_router

example for simple routing

<img width="200" alt="스크린샷 2019-11-13 오후 2 42 26" src="https://user-images.githubusercontent.com/581861/68736507-30784880-0624-11ea-8b9c-18302ef8b3b0.png"> <img width="200" alt="스크린샷 2019-11-13 오후 2 42 30" src="https://user-images.githubusercontent.com/581861/68736508-30784880-0624-11ea-9daa-b8cdca9f147b.png"> <img width="200" alt="스크린샷 2019-11-13 오후 2 42 32" src="https://user-images.githubusercontent.com/581861/68736509-30784880-0624-11ea-8f9b-e8a28cd754ee.png"> <img width="200" alt="스크린샷 2019-11-13 오후 2 42 35" src="https://user-images.githubusercontent.com/581861/68736510-3110df00-0624-11ea-9a87-08712eb0cfe1.png"> <img width="200" alt="스크린샷 2019-11-13 오후 2 44 54" src="https://user-images.githubusercontent.com/581861/68736511-3110df00-0624-11ea-84c5-46976f0fd2ed.png">

```dart
Navigator.pushNamed(context, "/screen_a");
Navigator.pushNamed(context, "/screen_a/안녕하세요");
Navigator.pushNamed(context, "/screen_b");
Navigator.pushNamed(context, "/screen_b?param1=1&param2=2");
Navigator.pushNamed(context, "/screen_b", arguments: {"param1": "hi", "param2": "hello"});
Navigator.pushNamed(context, "/screen_c/123");
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
