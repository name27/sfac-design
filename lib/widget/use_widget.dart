import 'package:flutter/material.dart';
import 'package:widgets/endwidget/button.dart';
import 'package:widgets/endwidget/navigation_menu.dart';
import 'package:widgets/endwidget/select_main.dart';
import 'package:widgets/endwidget/select_menu.dart';
import 'package:widgets/endwidget/selected_sub.dart';
import 'package:widgets/endwidget/tap.dart';
import 'package:widgets/util/sfac_icon.dart';
import 'package:widgets/widget/icon.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SfButton(onPressed: () {}, child: const Text('기본 child만 준')),
        //탭-위젯
        const SfTab(menu: [Text('탭'), Text('위젯'), Text('으로 받음')], height: 50),
        //네이게이션바 - String
        const SfNavigationMenu(
            menu: ['네비게이션메뉴', 'String', '으로 받음', '교육 과정', '공지 사항', '게시판'],
            height: 50),
        //셀렉트 메인-SelectMenu
        const SfSelectedMain(selectMenu: [
          SelectMenu(icon: SFIcon(SfacIcon.graph), text: '셀렉트메뉴'),
          SelectMenu(text: '셀렉트 메뉴로'),
          SelectMenu(text: '받음'),
          SelectMenu(text: '앱 개발'),
        ], height: 200),
        //셀렉트서브 - String
        const SfSelectedSub(
            selectMenu: ['셀렉트서브', 'String', '으로받음', '웹 개발'], height: 100),
        const Padding(
          padding:  EdgeInsets.symmetric(vertical:20.0),
          child:  Divider(thickness: 15),
        ),
      ],
    );
  }
}
