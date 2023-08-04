import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PersonaPage extends StatefulWidget {
  const PersonaPage({super.key});

  @override
  State<PersonaPage> createState() => _PersonaPageState();
}

class _PersonaPageState extends State<PersonaPage> {

  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
    ..loadRequest(Uri.parse("https://withpersona.com/verify?inquiry-template-id=itmpl_s3ww6GGWFxR4a9NkKdp1mhJh&environment-id=env_WNZtCqRpKqrAnMwxMbt57ELC"))
    ..setJavaScriptMode(JavaScriptMode.unrestricted);
  } //


  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: _controller );
  }

}
