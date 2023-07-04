import 'package:flutter/material.dart';
import 'package:widgets/endwidget/badge.dart';
import 'package:widgets/endwidget/select_menu.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_icon.dart';
import 'package:widgets/util/sfac_text_style.dart';
import 'package:widgets/widget/icon.dart';
import 'package:widgets/widget/input.dart';
import 'package:widgets/widget/search_field.dart';
import 'package:widgets/widget/test_toast.dart';
import 'package:widgets/widget/textarea.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets/endwidget/accordion.dart';
import 'package:widgets/endwidget/avatar.dart';
import 'package:widgets/endwidget/button.dart';
import 'package:widgets/endwidget/card.dart';
import 'package:widgets/endwidget/image_card.dart';
import 'package:widgets/endwidget/navigation_menu.dart';
import 'package:widgets/endwidget/select_main.dart';
import 'package:widgets/endwidget/selected_sub.dart';
import 'package:widgets/endwidget/tap.dart';
import 'package:widgets/endwidget/breadcrumb.dart';
import 'package:widgets/endwidget/combo_box.dart';

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
                  SfSelectedMain(
                      width: 245,
                      height: 100,
                      onTap: (index) {
                        print(index);
                      },
                      selectMenu: const [
                        SelectMenu(
                            icon: SFIcon(SfacIcon.dart), text: '커뮤니티 전체'),
                        SelectMenu(icon: SFIcon(SfacIcon.laptop), text: '웹개발'),
                        SelectMenu(text: '앱개발'),
                        SelectMenu(
                            icon: SFIcon(SfacIcon.graph), text: 'BigData'),
                        SelectMenu(
                            icon: SFIcon(SfacIcon.palette), text: 'UI/UX'),
                        SelectMenu(icon: SFIcon(SfacIcon.lock), text: '해킹/보안'),
                        SelectMenu(icon: SFIcon(SfacIcon.robot), text: 'AI'),
                        SelectMenu(icon: SFIcon(SfacIcon.gamepad), text: '게임개발')
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
                  ComboBox(
                    boxScorllPhysics: BouncingScrollPhysics(),
                    width: 250,
                    height: 350,
                    onTap: (p0) {
                      print(p0);
                    },
                    selectMenu: const [
                      SelectMenu(icon: SFIcon(SfacIcon.dart), text: '커뮤니티 전체'),
                      SelectMenu(icon: SFIcon(SfacIcon.laptop), text: '웹개발'),
                      SelectMenu(text: '앱개발'),
                      SelectMenu(icon: SFIcon(SfacIcon.graph), text: 'BigData'),
                      SelectMenu(icon: SFIcon(SfacIcon.palette), text: 'UI/UX'),
                      SelectMenu(icon: SFIcon(SfacIcon.lock), text: '해킹/보안'),
                      SelectMenu(icon: SFIcon(SfacIcon.robot), text: 'AI'),
                      SelectMenu(icon: SFIcon(SfacIcon.gamepad), text: '게임개발')
                    ],
                  ),
                  const SfBreadcrumb(menu: ['교육과정', '심화과정', '과정'], height: 50),
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
                    builder: (BuildContext context) => SfButton(
                      child: const Text('로그인1'),
                      onPressed: () {
                        Alert();
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(content: Text("My amazing message! O.o")));
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text('Destructive', style: SfacTextStyle.b1B20()),
                  SfButton(
                    onPressed: () {
                      // Fluttertoast.showToast(
                      //     msg: "This is Center Short Toast",
                      //     gravity: ToastGravity.CENTER,
                      //     timeInSecForIosWeb: 1,
                      //     backgroundColor: Colors.red,
                      //     textColor: Colors.white,
                      //     fontSize: 16.0);
                    },
                    backgroundColor: SfacColor.red,
                    child: const Text('로그인'),
                  ),
                  const SizedBox(height: 10),
                  Text('Link', style: SfacTextStyle.b1B20()),
                  SfButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: SfacColor.primary60,
                    ishover: true,
                    child: const Text('로그인'),
                  ),
                  const SizedBox(height: 10),
                  Text('Disabled', style: SfacTextStyle.b1B20()),
                  const SfButton(
                    onPressed: null,
                    child: Text('로그인'),
                  ),
                  const SizedBox(height: 10),
                  Text('Outline', style: SfacTextStyle.b1B20()),
                  SfButton(
                    onPressed: () {},
                    backgroundColor: SfacColor.primary5,
                    foregroundColor: SfacColor.primary60,
                    outlineColor: SfacColor.primary40,
                    child: const Text('로그인'),
                  ),
                  const SizedBox(height: 10),
                  Text('Ghost', style: SfacTextStyle.b1B20()),
                  SfButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: SfacColor.primary60,
                    ishover: true,
                    hoverBackgroundColor: SfacColor.primary10,
                    child: const Text('로그인'),
                  ),
                  const SizedBox(height: 10),
                  Text('Secondary', style: SfacTextStyle.b1B20()),
                  const SfButton(
                    onPressed: null,
                    disabledForegroundColor: Colors.black,
                    child: Text('로그인'),
                  ),
                  const SizedBox(height: 10),
                  Text('As Child', style: SfacTextStyle.b1B20()),
                  const SfButton(
                    onPressed: null,
                    disabledForegroundColor: Colors.black,
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
                      SfSelectedMain(
                          width: 245,
                          height: 100,
                          onTap: (index) {
                            print(index);
                          },
                          selectMenu: const [
                            SelectMenu(
                                icon: SFIcon(SfacIcon.dart), text: '커뮤니티 전체'),
                            SelectMenu(
                                icon: SFIcon(SfacIcon.laptop), text: '웹개발'),
                            SelectMenu(text: '앱개발'),
                            SelectMenu(
                                icon: SFIcon(SfacIcon.graph), text: 'BigData'),
                            SelectMenu(
                                icon: SFIcon(SfacIcon.palette), text: 'UI/UX'),
                            SelectMenu(
                                icon: SFIcon(SfacIcon.lock), text: '해킹/보안'),
                            SelectMenu(
                                icon: SFIcon(SfacIcon.robot), text: 'AI'),
                            SelectMenu(
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
                      SfSelectedSub(
                          width: 245,
                          height: 100,
                          onTap: (index) {
                            print(index);
                          },
                          menu: const ['앱개발', '앱 개발']),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(thickness: 5),
                  const SizedBox(height: 10),
                  Text('Accordion', style: SfacTextStyle.b1B20()),
                  const SizedBox(height: 10),
                  const SfAccordion(
                    title: Text('Flutter 모바일 어플리케이션 개발 경험이 전혀 없는데 들어도 되나요?'),
                    content: Text(
                        '네 가능합니다.\nFLutter 모바일 어플리케이션 개발 과정은 코딩, 앱 개발 경험이 없는 분들도 기초부터 차근차근 배우실 수 있도록 구성되어 있습니다.'),
                  ),
                  const SizedBox(height: 10),
                  const Divider(thickness: 5),
                  const SizedBox(height: 10),
                  Text('Card', style: SfacTextStyle.b1B20()),
                  const SizedBox(height: 10),
                  SfCard(
                    outlineWidth: 0,
                    margin: 0,
                    outlineColor: Colors.transparent,
                    width: 245,
                    top: SfImageCard(
                      image: Image.network(
                        'https://picsum.photos/200/100',
                        width: 245,
                        height: 145,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: const Text('AI 서비스 완성! AI 웹 개발 취업 캠프(프론트엔드&백엔드)'),
                    subtitle: const Text(
                        '하루만에 살펴보는 전문가 1인창업 및 기술 사업화에 필요한 사업계획서 작성방법,알아볼까요?'),
                  ),
                  const SizedBox(height: 15),
                  SfCard(
                    width: 350,
                    left: SfImageCard(
                      image: Image.network(
                        'https://picsum.photos/100/120',
                        width: 100,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: const Text('AI 서비스 완성! AI 웹 개발 취업 캠프(프론트엔드&백엔드)'),
                    subtitle: const Text(
                        '하루만에 살펴보는 전문가 1인창업 및 기술 사업화에 필요한 사업계획서 작성방법,알아볼까요?'),
                  ),
                  SfCard(
                    outlineWidth: 0,
                    margin: 0,
                    outlineColor: Colors.transparent,
                    widthSpacing: 15,
                    left: SfImageCard(
                      image: Image.network(
                        'https://picsum.photos/100/100',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: const Text('AI 서비스 완성! AI 웹 개발 취업 캠프(프론트엔드&백엔드)'),
                    subtitle: const Text(
                        '하루만에 살펴보는 전문가 1인창업 및 기술 사업화에 필요한 사업계획서 작성방법,알아볼까요?'),
                  ),
                  const SizedBox(height: 15),
                  SfCard(
                    outlineWidth: 0,
                    margin: 0,
                    outlineColor: Colors.transparent,
                    width: 245,
                    top: SfImageCard(
                      image: Image.network(
                        'https://picsum.photos/200/300',
                        width: 245,
                        height: 145,
                        fit: BoxFit.cover,
                      ),
                      bottomRadius: 0,
                    ),
                    title: const Text('AI 서비스 완성! AI 웹 개발 취업 캠프(프론트엔드&백엔드)'),
                    subtitle: const Text(
                        '하루만에 살펴보는 전문가 1인창업 및 기술 사업화에 필요한 사업계획서 작성방법,알아볼까요?'),
                    bottom: Column(
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
                                SfAvatar(
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
                  SfCard(
                    outlineWidth: 0,
                    margin: 0,
                    outlineColor: Colors.transparent,
                    width: 220,
                    top: SfImageCard(
                      image: Image.network(
                        'https://picsum.photos/200/200',
                        width: 220,
                        height: 125,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: const Text(
                      'Lorem lpsum is simply dummy to asdfsdafasdfasdfasdfsafsaff',
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: const Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
                  ),
                  const SizedBox(height: 10),
                  SfCard(
                    width: 350,
                    top: Row(
                      children: [
                        SfAvatar(
                          size: 30,
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
                    subtitle: const Text(
                        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remainin...'''),
                    bottom: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                              spacing: 3,
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
                  SfCard(
                    height: 150,
                    widthSpacing: 10,
                    left: SfImageCard(
                      image: Image.network(
                        'https://picsum.photos/100/200',
                        fit: BoxFit.cover,
                        width: 100,
                        height: 150,
                      ),
                    ),
                    top: const SfBadge(child: Text('07분')),
                    title: const Text('[DAY1] 1 프런트엔드와 백엔드'),
                    subtitle: const Text('[수강기간]\n2023.03.03~2023.12.12'),
                    right: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text('수강하기'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  SfCard(
                    heightSpacing: 2,
                    left: SfAvatar(
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
                    subtitle: const Text('이거로 합시다 나히잉스'),
                    right: const Column(
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
                  SfTab(
                      menu: ['과제방', '커뮤니티', '미션', '퀴즈']
                          .map((e) => Text(e))
                          .toList(),
                      height: 50),
                  const SizedBox(height: 10),
                  const SfNavigationMenu(
                      height: 50, menu: ['교육 과정', '공지 사항', '게시판'])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
