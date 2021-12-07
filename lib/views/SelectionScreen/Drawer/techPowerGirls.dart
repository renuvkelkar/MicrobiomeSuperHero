
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class TechPowerGirls extends StatefulWidget {
  @override
  _TechPowerGirlsState createState() => _TechPowerGirlsState();
}

class _TechPowerGirlsState extends State<TechPowerGirls> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.red,
        title: Text("About Developers"),
      ),
      body:
      WebView(
        initialUrl: "https://techpowergirls.net/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
