# adv_flutter_ch3

  <h1 align="center"> CHAPTER 3 </h1>
<h2 align = "center"> <i> 1. connectivity_plus package </i> </h2>

The connectivity_plus package in Flutter is a community-maintained plugin that provides a way to access the network connectivity status of a device. This package allows developers to determine if the device is connected to a network and the type of network (Wi-Fi, mobile data, etc.) it's connected to. It's an enhanced version of the original connectivity package, adding new features and improvements based on community feedback.

<h1><b>Key Features</b></h1>

<b>Network Status Monitoring:-</b>
Check the current network status (none, Wi-Fi, mobile).
Monitor network changes in real-time.

<b> Platform Support:-</b>
Works on Android, iOS, macOS, Windows, Linux, and web platforms.

<b> Detailed Connectivity Information:-</b>
Provides detailed information about the connection type and status.

<b> Event Subscription:-</b>
Subscribe to network status changes to handle connectivity changes dynamically within the app.

<img src = "https://github.com/fenishpatel3150/adv_flutter_ch3/assets/143187609/dc79e86f-0a5f-46b5-83e1-e3df2fd9b9f4" width=22% height=35%>
<img src = "https://github.com/fenishpatel3150/adv_flutter_ch3/assets/143187609/8d9a19b9-744a-4504-bf37-8854dcea850f" width=22% height=35%>

https://github.com/fenishpatel3150/adv_flutter_ch3/assets/143187609/99d42913-ca35-4afc-bf72-f883eee79944


<h2 align = "center"> <i> 2. Google Search Page Ui </i> </h2>

The `flutter_inappwebview` package is a powerful plugin for Flutter that provides a feature-rich web view for both Android and iOS. It is designed to enhance web content display capabilities within Flutter applications. Here are some key features and components of the package:

### Key Features
1. **In-App WebView**:
   - Display web content within your Flutter application.
   - Support for navigation controls (back, forward, reload).
   - Handling of various types of web content (HTML, URLs, etc.).

2. **Headless WebView**:
   - Run a WebView in the background without attaching it to the view hierarchy.
   - Useful for scenarios where web content needs to be processed or fetched without user interaction.

3. **WebView Options**:
   - Extensive configuration options for WebView, including JavaScript, caching, media playback, and more.
   - Customizable settings for both Android and iOS to fine-tune the web experience.

4. **JavaScript Handlers**:
   - Communication between Dart and JavaScript code.
   - Define JavaScript handlers in your Dart code to respond to JavaScript calls from the web content.

5. **WebView Events**:
   - Listen to various events like page start, page finish, page error, and more.
   - Ability to handle custom URL schemes, file downloads, and other web-related actions.

6. **Context Menus**:
   - Customizable context menus for web content.
   - Define actions that can be performed when a user long-presses on web elements.

7. **Geolocation Support**:
   - Support for geolocation within web content.
   - Prompt users for location permissions and handle location updates.

8. **HTTP Auth and SSL Pinning**:
   - Support for HTTP authentication and SSL pinning for enhanced security.
   - Manage credentials and secure connections directly within the WebView.

### Usage Example
Here's a basic example of how to use `flutter_inappwebview`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebViewExample(),
    );
  }
}

class WebViewExample extends StatefulWidget {
  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  InAppWebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InAppWebView Example'),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse("https://flutter.dev")),
        onWebViewCreated: (controller) {
          webViewController = controller;
        },
      ),
    );
  }
}
```


<img src = "https://github.com/fenishpatel3150/adv_flutter_ch3/assets/143187609/786a02ab-3807-4f10-9504-d2afbcef686c" width=22% height=35%>
<img src = "https://github.com/fenishpatel3150/adv_flutter_ch3/assets/143187609/b5fb950d-982b-4e46-a787-89c5bb4560b7" width=22% height=35%>
