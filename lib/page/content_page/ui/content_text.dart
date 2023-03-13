import 'package:flutter/material.dart';

import '../../../config.dart';
class ContentText extends StatelessWidget {
  final String text;
  const ContentText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: const TextStyle(fontSize: Config.fontSizeMain),);
  }
}
