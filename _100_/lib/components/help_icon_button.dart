import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpIconButton extends StatelessWidget {
  const HelpIconButton({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        if (!await canLaunch(url)) {
          throw 'Could not open $url';
        }

        await launch(url);
      },
      icon: Icon(Icons.help),
    );
  }
}
