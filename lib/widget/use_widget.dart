import 'package:flutter/material.dart';
import 'package:widgets/endwidget/navigation_menu.dart';
import 'package:widgets/endwidget/select_main.dart';
import 'package:widgets/endwidget/select_menu.dart';
import 'package:widgets/endwidget/selected_sub.dart';
import 'package:widgets/pullwidget/breadcrumb.dart';
import 'package:widgets/pullwidget/button.dart';
import 'package:widgets/pullwidget/tap.dart';
import 'package:widgets/util/sfac_icon.dart';
import 'package:widgets/widget/icon.dart';
import 'package:widgets/widget/textarea.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SFTextArea(
          width: 150,
          maxLines: 5,
          minLines: 5,
          hintText: '스나이퍼팩토리 TextArea입니다',
          writer: 'SFAC',
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 130.0, horizontal: 10),
          child: SFBreadcrumb(
            menu: ['Sniperfactory', 'Depth 2', 'Depth3'],
          ),
        ),
        SFTab(
            onTap: (index) {
              print(index);
            },
            menu: const [
              Text('과제방'),
              Text('과제방'),
            ],
            height: 50),
        SFButton(onPressed: () {}, child: const Text('기본 child만 준')),
        //탭-위젯
        SFTab(
            onTap: (p0) {},
            menu: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.chat),
                  Text('탭'),
                ],
              ),
              Text('위젯'),
              Text('으로 받음')
            ],
            height: 50),
        //네이게이션바 - String
        const SFNavigationMenu(
            menu: ['네비게이션메뉴', 'String', '으로 받음', '교육 과정', '공지 사항', '게시판'],
            height: 50),
        //셀렉트 메인-SelectMenu
        const SFSelectedMain(selectMenu: [
          SFSelectMenu(icon: SFIcon(SfacIcon.graph), text: '셀렉트메뉴'),
          SFSelectMenu(text: '셀렉트 메뉴로'),
          SFSelectMenu(text: '받음'),
          SFSelectMenu(text: '앱 개발'),
        ], height: 200),
        //셀렉트서브 - String
        const SFSelectedSub(
            selectMenu: ['셀렉트서브', 'String', '으로받음', '웹 개발'], height: 100),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Divider(thickness: 15),
        ),
      ],
    );
  }
}
