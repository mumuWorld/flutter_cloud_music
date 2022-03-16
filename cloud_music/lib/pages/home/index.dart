import 'package:flutter/material.dart';
import 'package:cloud_music/widgets/page_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageContent(name: '首页'),
    );
  }
}
