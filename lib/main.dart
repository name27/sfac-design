import 'package:flutter/material.dart';
import 'package:widgets/endwidget/select_menu.dart';
import 'package:widgets/pullwidget/badge.dart';
import 'package:widgets/pullwidget/breadcrumb.dart';
import 'package:widgets/pullwidget/button.dart';
import 'package:widgets/pullwidget/card.dart';
import 'package:widgets/pullwidget/tap.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_icon.dart';
import 'package:widgets/util/sfac_text_style.dart';
import 'package:widgets/widget/icon.dart';
import 'package:widgets/widget/input.dart';
import 'package:widgets/widget/search_field.dart';
import 'package:widgets/widget/textarea.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets/pullwidget/accordion.dart';
import 'package:widgets/pullwidget/avatar.dart';
import 'package:widgets/endwidget/image_card.dart';
import 'package:widgets/endwidget/navigation_menu.dart';
import 'package:widgets/endwidget/select_main.dart';
import 'package:widgets/endwidget/selected_sub.dart';
import 'package:widgets/endwidget/combo_box.dart';
import 'package:widgets/widget/toast.dart';
import 'package:widgets/widget/use_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 100),
                        SFAvatar(
                          size: 360,
                        ),
                        SizedBox(height: 100),
                        SFAvatar(
                          child: Icon(
                            Icons.abc,
                            size: 240,
                          ),
                          size: 360,
                          borderColor: Colors.blue,
                          borderWidth: 8,
                          backgroundColor: Color.fromARGB(255, 205, 232, 255),
                        ),
                        SizedBox(height: 100),
                        SFAvatar(
                          size: 360,
                          borderWidth: 8,
                          borderColor: Colors.blue,
                          child: Image.network(
                            'https://picsum.photos/300/300',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 380.0),
                    child: SFCard(
                      leading: SFAvatar(
                        size: 128,
                        borderColor: Colors.blue,
                        borderWidth: 8,
                      ),
                      title: Text(
                        '스나이퍼팩토리',
                        style: SfacTextStyle.b2B18(),
                      ),
                    ),
                  ),
                  SFTextArea(
                    controller: null,
                    writer: '마르코',
                  ),
                  Center(
                    child: SfAccordion(
                        title: Text('ㄴㅁㅇㄹsadasddㅇㄻㄴㅇㄹ',
                            style: TextStyle(fontSize: 32)),
                        content: Text(
                            'asdmksadjknsdfajnkdsfjnkgfdjkgklghasdasndjklsadasfklrjufduifsihfshj')),
                  ),
                  TestWidget(),
                  SFCard(
                    leading: SfBadge(child: Text('홈')),
                    title: Text(
                      'ListTile 커스텀 위젯 만들기',
                      style: SfacTextStyle.b1B20(),
                    ),
                    trailing: SFButton(
                      width: 120,
                      child: Text('제출하기'),
                      onPressed: () {},
                    ),
                  ),
                  SFSelectedMain(
                      width: 245,
                      height: 100,
                      onTap: (index) {
                        print(index);
                      },
                      selectMenu: const [
                        SFSelectMenu(
                            icon: SFIcon(SfacIcon.dart), text: '커뮤니티 전체'),
                        SFSelectMenu(
                            icon: SFIcon(SfacIcon.laptop), text: '웹개발'),
                        SFSelectMenu(text: '앱개발'),
                        SFSelectMenu(
                            icon: SFIcon(SfacIcon.graph), text: 'BigData'),
                        SFSelectMenu(
                            icon: SFIcon(SfacIcon.palette), text: 'UI/UX'),
                        SFSelectMenu(
                            icon: SFIcon(SfacIcon.lock), text: '해킹/보안'),
                        SFSelectMenu(icon: SFIcon(SfacIcon.robot), text: 'AI'),
                        SFSelectMenu(
                            icon: SFIcon(SfacIcon.gamepad), text: '게임개발')
                      ]),
                  SfacInput(
                    inputContent: Text(
                      'Input',
                      style: SfacTextStyle.b4B14(color: SfacColor.primary80),
                    ),
                    hintText: 'Input(텍스트필드)',
                    controller: TextEditingController(),
                    helperText: '나 Input(텍스트필드)',
                  ),
                  const Divider(thickness: 3),
                  SFComboBox(
                    boxScorllPhysics: const BouncingScrollPhysics(),
                    width: 250,
                    height: 350,
                    onTap: (p0) {
                      print(p0);
                    },
                    selectMenu: const [
                      SFSelectMenu(
                          icon: SFIcon(SfacIcon.dart), text: '커뮤니티 전체'),
                      SFSelectMenu(icon: SFIcon(SfacIcon.laptop), text: '웹개발'),
                      SFSelectMenu(text: '앱개발'),
                      SFSelectMenu(
                          icon: SFIcon(SfacIcon.graph), text: 'BigData'),
                      SFSelectMenu(
                          icon: SFIcon(SfacIcon.palette), text: 'UI/UX'),
                      SFSelectMenu(icon: SFIcon(SfacIcon.lock), text: '해킹/보안'),
                      SFSelectMenu(icon: SFIcon(SfacIcon.robot), text: 'AI'),
                      SFSelectMenu(icon: SFIcon(SfacIcon.gamepad), text: '게임개발')
                    ],
                  ),
                  const SFBreadcrumb(menu: ['교육과정', '심화과정', '과정']),
                  Text('Input', style: SfacTextStyle.b1B20()),
                  const SizedBox(height: 10),
                  SfacInput(
                    inputContent: Text(
                      'Input',
                      style: SfacTextStyle.b4B14(color: SfacColor.primary80),
                    ),
                    hintText: 'Input(텍스트필드)',
                    controller: TextEditingController(),
                    helperText: '나 Input(텍스트필드)',
                  ),
                  const SizedBox(height: 10),
                  const Divider(thickness: 5),
                  const SizedBox(height: 10),
                  Text('Searchfield', style: SfacTextStyle.b1B20()),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SfacSearchField(
                        controller: TextEditingController(),
                        hintText: 'Search용 텍스트필드',
                        outlineWidth: 2),
                  ),
                  const SizedBox(height: 10),
                  const Divider(thickness: 5),
                  const SizedBox(height: 10),
                  Text('Badge', style: SfacTextStyle.b1B20()),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    children: [
                      SfBadge(
                        backgroundColor: SfacColor.primary80,
                        child: Text(
                          '무료강의',
                          style: SfacTextStyle.b5R12(color: Colors.white),
                        ),
                      ),
                      const SfBadge(
                        child: Text('무료강의'),
                      ),
                      SfBadge(
                        outlineColor: SfacColor.primary40,
                        backgroundColor: SfacColor.primary5,
                        child: Text('무료강의',
                            style: SfacTextStyle.b5R12(
                                color: SfacColor.primary60)),
                      ),
                      SfBadge(
                        backgroundColor: SfacColor.red,
                        child: Text('무료강의?',
                            style: SfacTextStyle.b5R12(color: Colors.white)),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(thickness: 5),
                  const SizedBox(height: 10),
                  Text('Icons', style: SfacTextStyle.b1B20()),
                  const SizedBox(height: 10),
                  const Wrap(
                    children: [
                      Icon(Icons.lock_clock),
                      SFIcon(SfacIcon.dart, size: 50),
                      SFIcon(SfacIcon.phone),
                      SFIcon(SfacIcon.laptop),
                      SFIcon(SfacIcon.palette),
                      SFIcon(SfacIcon.lock),
                      SFIcon(SfacIcon.graph),
                      SFIcon(SfacIcon.robot),
                      SFIcon(SfacIcon.gamepad),
                      SFIcon(SfacIcon.imojiO),
                      SFIcon(SfacIcon.imojiX),
                      SFIcon(SfacIcon.halo),
                      SFIcon(SfacIcon.speaker),
                      SFIcon(SfacIcon.fire),
                      SFIcon(SfacIcon.hand),
                      SFIcon(SfacIcon.coverbox),
                      SFIcon(SfacIcon.block),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SFIcon(SfacIcon.rewind),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SFIcon(SfacIcon.reduce),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SFIcon(SfacIcon.coverbox),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SFIcon(SfacIcon.expand),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  SFTextArea(
                    controller: TextEditingController(),
                    hintText: '내용을 입력해주세요',
                    maxLines: 2,
                    minLines: 2,
                    writer: '신승호',
                  ),
                  const SizedBox(height: 10),
                  const Divider(thickness: 5),
                  const SizedBox(height: 10),
                  Text('Button', style: SfacTextStyle.b1B20()),
                  const SizedBox(height: 10),
                  Text(
                    'Primary',
                    style: SfacTextStyle.b1B20(),
                  ),
                  const SizedBox(height: 10),
                  Builder(
                    builder: (BuildContext context) => SFButton(
                      child: const Text('로그인1'),
                      backgroundColor: SfacColor.primary100,
                      textColor: Colors.white,
                      onPressed: () {
                        // ToastOverlay.show(
                        //   context,
                        //   SFCard(
                        //     backgroundColor: Colors.white,
                        //     width: 360,
                        //     title: Text('로그인 실패'),
                        //     content: Text('틀린 회원정보입니다. 다시 로그인해주세요'),
                        //     heightSpacing: 5,
                        //     widthSpacing: 5,
                        //     right: SFButton(
                        //       height: 30,
                        //       width: 80,
                        //       textColor: SfacColor.primary60,
                        //       backgroundColor: SfacColor.primary5,
                        //       outlineColor: SfacColor.primary60,
                        //       child: Text('확인'),
                        //       onPressed: () {},
                        //     ),
                        //   ),
                        // );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text('Destructive', style: SfacTextStyle.b1B20()),
                  SFButton(
                    onPressed: () {
                      //  showToast(context, '틀린 회원정보입니다. 다시 로그인해주세요');
                      // ToastOverlay.show(
                      //   context,
                      //   SFCard(
                      //     backgroundColor: Colors.white,
                      //     width: 360,
                      //     title: Text('로그인 실패'),
                      //     content: Text('틀린 회원정보입니다. 다시 로그인해주세요'),
                      //     heightSpacing: 5,
                      //     widthSpacing: 5,
                      //     right: SFButton(
                      //       height: 30,
                      //       width: 80,
                      //       textColor: SfacColor.primary60,
                      //       backgroundColor: SfacColor.primary5,
                      //       outlineColor: SfacColor.primary60,
                      //       child: Text('확인'),
                      //       onPressed: () {},
                      //     ),
                      //   ),
                      // );
                      //  ToastOverlay.show(
                      //       context,
                      //       SFCard(
                      //         backgroundColor: Colors.white,
                      //         width: 360,
                      //         title: Text('로그인 실패'),
                      //         content: Text('틀린 회원정보입니다. 다시 로그인해주세요'),
                      //         heightSpacing: 5,
                      //         widthSpacing: 5,
                      //         right: SFButton(
                      //           height: 30,
                      //           width: 80,
                      //           textColor: SfacColor.primary60,
                      //           backgroundColor: SfacColor.primary5,
                      //           outlineColor: SfacColor.primary60,
                      //           child: Text('확인'),
                      //           onPressed: () {},
                      //         ),
                      //       ),
                      //     );
                    },
                    backgroundColor: SfacColor.red,
                    textColor: Colors.white,
                    child: const Text('로그인2'),
                  ),
                  const SizedBox(height: 10),
                  Text('Link', style: SfacTextStyle.b1B20()),
                  Row(
                    children: [
                      Text('링크 : '),
                      SFButton(
                        onPressed: () {},
                        isLink: true,
                        child:
                            Text('https://sadfsdafs,fsd.fdsflsdf.ds/fdsf,.sdf'),
                      )
                    ],
                  ),
                  SFButton(
                    onPressed: () {},
                    isLink: true,
                    child: const Text('로그인3'),
                  ),
                  const SizedBox(height: 10),
                  Text('Disabled', style: SfacTextStyle.b1B20()),
                  const SFButton(
                    onPressed: null,
                    child: Text('로그인'),
                  ),
                  const SizedBox(height: 10),
                  Text('Outline', style: SfacTextStyle.b1B20()),
                  SFButton(
                    onPressed: () {},
                    backgroundColor: Colors.lightBlueAccent,
                    outlineColor: Colors.black,
                    child: const Text('스나이퍼팩토리'),
                  ),
                  const SizedBox(height: 10),
                  Text('Ghost', style: SfacTextStyle.b1B20()),
                  SFButton(
                    onPressed: () {},
                    textColor: Colors.blue,
                    backgroundColor: Colors.transparent,
                    hoverbackgroundColor: Colors.lightBlueAccent,
                    child: const Text('로그인'),
                  ),
                  const SizedBox(height: 10),
                  Text('Secondary', style: SfacTextStyle.b1B20()),
                  const SFButton(
                    onPressed: null,
                    disabledTextColor: Colors.black,
                    child: Text('로그인'),
                  ),
                  const SizedBox(height: 10),
                  Text('As Child', style: SfacTextStyle.b1B20()),
                  const SFButton(
                    onPressed: null,
                    disabledTextColor: Colors.black,
                    width: 100,
                    child: Text('로그인'),
                  ),
                  const SizedBox(height: 10),
                  const Divider(thickness: 5),
                  const SizedBox(height: 10),
                  Text('Select', style: SfacTextStyle.b1B20()),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Selected-Main'),
                      SFSelectedMain(
                          width: 245,
                          height: 100,
                          onTap: (index) {
                            print(index);
                          },
                          selectMenu: const [
                            SFSelectMenu(
                                icon: SFIcon(SfacIcon.dart), text: '커뮤니티 전체'),
                            SFSelectMenu(
                                icon: SFIcon(SfacIcon.laptop), text: '웹개발'),
                            SFSelectMenu(text: '앱개발'),
                            SFSelectMenu(
                                icon: SFIcon(SfacIcon.graph), text: 'BigData'),
                            SFSelectMenu(
                                icon: SFIcon(SfacIcon.palette), text: 'UI/UX'),
                            SFSelectMenu(
                                icon: SFIcon(SfacIcon.lock), text: '해킹/보안'),
                            SFSelectMenu(
                                icon: SFIcon(SfacIcon.robot), text: 'AI'),
                            SFSelectMenu(
                                icon: SFIcon(SfacIcon.gamepad), text: '게임개발')
                          ]),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Selected-Sub'),
                      SFSelectedSub(
                          width: 245,
                          height: 150,
                          onTap: (index) {
                            print(index);
                          },
                          selectMenu: const ['앱개발', '앱 개발', '웹 개발', '띠용']),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(thickness: 5),
                  const SizedBox(height: 10),
                  Text('Accordion', style: SfacTextStyle.b1B20()),
                  const SizedBox(height: 10),
                  const SfAccordion(
                    title: Text(
                        '스나이퍼팩토리 Flutter 모바일 어플리케이션 개발 경험이 전혀 없는데 들어도 되나요?'),
                    content: Text(
                        '네 가능합니다.\nFLutter 모바일 어플리케이션 개발 과정은 코딩, 앱 개발 경험이 없는 분들도 기초부터 차근차근 배우실 수 있도록 구성되어 있습니다.'),
                  ),
                  const SizedBox(height: 10),
                  const Divider(thickness: 5),
                  const SizedBox(height: 10),
                  Text('Card', style: SfacTextStyle.b1B20()),
                  const SizedBox(height: 10),
                  SFCard(
                    outlineWidth: 0,
                    margin: 0,
                    outlineColor: Colors.transparent,
                    width: 245,
                    cardHeader: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://picsum.photos/200/100',
                        width: 245,
                        height: 145,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: const Text('AI 서비스 완성! AI 웹 개발 취업 캠프(프론트엔드&백엔드)'),
                    content: const Text(
                        '하루만에 살펴보는 전문가 1인창업 및 기술 사업화에 필요한 사업계획서 작성방법, 스나이퍼팩토리에서 한 번 알아볼까요?'),
                  ),
                  const SizedBox(height: 15),
                  SFCard(
                    width: 350,
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://picsum.photos/100/120',
                        width: 100,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: const Text('AI 서비스 완성! AI 웹 개발 취업 캠프(프론트엔드&백엔드)'),
                    content: const Text(
                        '하루만에 살펴보는 전문가 1인창업 및 기술 사업화에 필요한 사업계획서 작성방법, 스나이퍼 팩토리에서 한 번 알아볼까요?'),
                  ),
                  SFCard(
                    outlineWidth: 0,
                    margin: 0,
                    outlineColor: Colors.transparent,
                    width: 450,
                    leading: SFImageCard(
                      image: Image.network(
                        'https://picsum.photos/100/100',
                        width: 245,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: const Text('AI 서비스 완성! AI 웹 개발 취업 캠프(프론트엔드&백엔드)'),
                    content: const Text(
                        '하루만에 살펴보는 전문가 1인창업 및 기술 사업화에 필요한 사업계획서 작성방법,알아볼까요?'),
                  ),
                  const SizedBox(height: 15),
                  SFCard(
                    outlineWidth: 0,
                    margin: 0,
                    outlineColor: Colors.transparent,
                    width: 245,
                    cardHeader: SFImageCard(
                      image: Image.network(
                        'https://picsum.photos/200/300',
                        width: 245,
                        height: 145,
                        fit: BoxFit.cover,
                      ),
                      bottomRadius: 0,
                    ),
                    title: const Text('AI 서비스 완성! AI 웹 개발 취업 캠프(프론트엔드&백엔드)'),
                    content: const Text(
                        '하루만에 살펴보는 전문가 1인창업 및 기술 사업화에 필요한 사업계획서 작성방법,알아볼까요?'),
                    cardFooter: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                            spacing: 3,
                            children: ['무료강의', 'KITRI', '사업계획서', '모집중']
                                .map((e) => SfBadge(child: Text(e)))
                                .toList()),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SFAvatar(
                                    child: Image.network(
                                  'https://picsum.photos/200/200',
                                  fit: BoxFit.cover,
                                )),
                                const SizedBox(width: 5),
                                Text(
                                  '스나이퍼팩토리',
                                  style: SfacTextStyle.b5R12(
                                      color: SfacColor.primary60),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Text(
                              '2023,05,20',
                              style: SfacTextStyle.b5R12(
                                  color: SfacColor.grayScale40),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  SFCard(
                    outlineWidth: 0,
                    margin: 0,
                    outlineColor: Colors.transparent,
                    width: 220,
                    cardHeader: SFImageCard(
                      image: Image.network(
                        'https://picsum.photos/200/200',
                        width: 220,
                        height: 125,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: const Text(
                      'Lorem lpsum is simply dummy to asdfsdafasdfasdfasdfsafsaffasd',
                      overflow: TextOverflow.ellipsis,
                    ),
                    content: const Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
                  ),
                  const SizedBox(height: 10),
                  SFCard(
                    width: 350,
                    cardHeader: Row(
                      children: [
                        SFAvatar(
                          child: SvgPicture.asset('assets/svg/logo.svg'),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '스나이퍼팩토리',
                          style:
                              SfacTextStyle.b5B12(color: SfacColor.primary60),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.circle,
                            size: 5,
                            color: SfacColor.grayScale60,
                          ),
                        ),
                        Text(
                          '매니저',
                          style:
                              SfacTextStyle.b5M12(color: SfacColor.grayScale60),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.circle,
                            size: 5,
                            color: SfacColor.grayScale60,
                          ),
                        ),
                        Text(
                          '2023/08/28',
                          style:
                              SfacTextStyle.b5M12(color: SfacColor.grayScale60),
                        ),
                      ],
                    ),
                    title: const Text(
                      'Lorem Ipsum is simply dummy text of the printing',
                    ),
                    content: const Text(
                        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remainin...'''),
                    cardFooter: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                              spacing: 10,
                              children: ['무료강의', 'KITRI', '사업계획서', '모집중']
                                  .map((e) => SfBadge(
                                        child: Text(e),
                                      ))
                                  .toList()),
                          const SizedBox(height: 5),
                          const Text('댓글 0개'),
                        ]),
                  ),
                  const SizedBox(height: 10),
                  SFCard(
                    height: 150,
                    leading: SFImageCard(
                      image: Image.network(
                        'https://picsum.photos/100/200',
                        fit: BoxFit.cover,
                        width: 100,
                        height: 150,
                      ),
                    ),
                    cardHeader: const SfBadge(child: Text('07분')),
                    title: const Text('[DAY1] 1 프런트엔드와 백엔드'),
                    content: const Text('[수강기간]\n2023.03.03~2023.12.12'),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text('수강하기'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  SFCard(
                    leading: SFAvatar(
                        child: SvgPicture.asset('assets/svg/logo.svg')),
                    title: const Row(children: [
                      Text('김관우'),
                      SizedBox(width: 5),
                      Icon(
                        Icons.circle,
                        size: 5,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '수강생',
                        style: TextStyle(color: SfacColor.grayScale40),
                      )
                    ]),
                    content: const Text('이거로 합시다 나히잉스'),
                    trailing: const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.red,
                          ),
                          Text('20203/06/29')
                        ]),
                  ),
                  const SizedBox(height: 10),
                  const Divider(thickness: 5),
                  const SizedBox(height: 10),
                  Text('Tap', style: SfacTextStyle.b1B20()),
                  const SizedBox(height: 10),
                  SFTab(
                      onTap: (p0) {
                        print(p0);
                      },
                      menu: ['과제방', '커뮤니티', '미션', '퀴즈']
                          .map((e) => Text(e))
                          .toList(),
                      height: 50),
                  const SizedBox(height: 10),
                  SFNavigationMenu(
                      onTap: (p0) {
                        print(p0);
                      },
                      height: 50,
                      menu: ['교육 과정', '공지 사항', '게시판'])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
