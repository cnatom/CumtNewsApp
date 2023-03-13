import 'package:flutter/material.dart';

class ContentImage extends StatelessWidget {
  final String url;

  const ContentImage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(url),
    );
  }
}
