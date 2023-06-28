import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:widgets/widget/accordion.dart';
import 'package:widgets/widget/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: GFAppBar(
          title: Icon(Icons.abc),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                GFBadge(),
                GFButton(onPressed: () {}),
                Cards(
                  width: 250,
                  title: Text('AI 서비스 완성! AI + 웹 개발 취업캠프(프론트엔드&백엔드)'),
                  subtitle: Text('하루만에 살펴보는 전문가1인 창업 및 기술 사업화에 필요한 사업계획서 작성방법'),
                ),
                Accordion(
                    defaultIcon: Icon(Icons.play_arrow),
                    selectedIcon: Icon(Icons.keyboard_arrow_down),
                    title: Text('Flutter 모바일 어플리케이션 개발 경험이 전혀 없는데 들어도 되나요?'),
                    content: Text(
                        '네 가능합니다.\nFLutter 모바일 어플리케이션 개발 과정은 코딩, 앱 개발 경험이 없는 분들도 기초부터 차근차근 배우실 수 있도록 구성되어 있습니다.'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
