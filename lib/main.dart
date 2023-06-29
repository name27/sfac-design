import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';
import 'package:widgets/widget/accordion.dart';
import 'package:widgets/widget/avatar.dart';
import 'package:widgets/widget/badge.dart';
import 'package:widgets/widget/breadcrumb.dart';
import 'package:widgets/widget/button.dart';
import 'package:widgets/widget/card.dart';
import 'package:widgets/widget/cards.dart';
import 'package:widgets/widget/image_card.dart';
import 'package:widgets/widget/select_main.dart';
import 'package:widgets/widget/selected_sub.dart';

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
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('첫줄'),
                  SfButton(child: Text('로그인'), onPressed: null),
                  SelectedSub(
                    direction: Axis.horizontal,
                    text: ['앱 개발', '웹 개발', 'ㅎㅎ'],
                    height: 100,
                    onTap: (p0) {
                      print(p0);
                    },
                  ),
                  SelectedMain(
                    height: 355,
                    focusedBackgroundColor: Colors.black,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [Icon(Icons.abc), Text('커뮤니티 전체')],
                      ),
                      Text('게시글'),
                      Text('ㅎㅎ')
                    ],
                    onTap: (p0) {
                      print(p0);
                    },
                  ),
                  ImageCard(
                    child: SvgPicture.asset('assets/svg/logo.svg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SfAvatar(
                      backgroundColor: SfacColor.grayScale30,
                      child: SvgPicture.asset('assets/svg/logo.svg'),
                    ),
                  ),
                  SfCard(
                    child: ListTile(
                      leading: CircleAvatar(),
                      title: Row(
                        children: [
                          Text('김관우'),
                          Text('수강생'),
                        ],
                      ),
                      subtitle: Text(
                        'https://github.com/=2ahUKEwijlqnd-eT_AhVcl1YBHd23AdsQ0pQJegQIDBAB&biw=144....',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [Icon(Icons.circle), Text('20203/08/24')]),
                    ),
                  ),
                  SfCard(
                    outlineWidth: 5,
                    width: 200,
                    child: Column(
                      children: [
                        ImageCard(
                          child: Image.network(
                            'https://picsum.photos/200/300',
                            fit: BoxFit.cover,
                            width: 200,
                            height: 100,
                          ),
                        ),
                        Text(
                          'AI 서비스 완성! AI 웹 개발 취업 캠프(프론트엔드&백엔드)',
                          style: SfacTextStyle.b3B16(),
                        ),
                        Text(
                          '하루만에 살펴보는 전문가 1인창업 및 기술 사업화에 필요한 사업계획서 작성방법,알아볼까요?',
                          style:
                              SfacTextStyle.b5M12(color: SfacColor.grayScale30),
                        )
                      ],
                    ),
                  ),
                  SfacBadge(
                    child: Center(child: Text('무료강의')),
                    backgroundColor: Colors.yellow,
                    width: 150,
                    outlineColor: Colors.black,
                    borderRadius: 30,
                  ),
                  GFButton(onPressed: () {}),
                  Cards(
                    image: Image.network(
                      'https://picsum.photos/200/300',
                      fit: BoxFit.cover,
                      width: 150,
                      height: 100,
                    ),
                  ),
                  Breadcrumb(
                    title: Text('교육과정'),
                    subtitle: Text('교육과정2'),
                  ),
                  Cards(
                    width: 250,
                    title: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage('https://picsum.photos/200/300'),
                            ),
                            Text('스나이퍼팩토리 / 매니저')
                          ],
                        ),
                        Text(
                          'Lorem lpsum is simply dummy to asdfsdafasdfasdfasdfsafsaff',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                    subtitle: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  Cards(
                    width: 250,
                    keyword:
                        ['무료강의', '사업계획서', '모집중'].map((e) => Text(e)).toList(),
                    image: Image.network(
                      'https://picsum.photos/200/300',
                      fit: BoxFit.cover,
                      width: 250,
                      height: 100,
                    ),
                    imageBottomRadius: 30,
                    imageTopRadius: 30,
                    title: Text('AI 서비스 완성! AI + 웹 개발 취업캠프(프론트엔드&백엔드)'),
                    subtitle:
                        Text('하루만에 살펴보는 전문가1인 창업 및 기술 사업화에 필요한 사업계획서 작성방법'),
                  ),
                  SfCard(
                    child: Row(
                      children: [
                        ImageCard(
                          child: Image.network(
                            'https://picsum.photos/200/300',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          children: [Text('title'), Text('subtitle')],
                        )
                      ],
                    ),
                  ),
                  Accordion(
                      defaultIcon: Icon(Icons.play_arrow),
                      selectedIcon: Icon(Icons.keyboard_arrow_down),
                      title: Text('Flutter 모바일 어플리케이션 개발 경험이 전혀 없는데 들어도 되나요?'),
                      content: Text(
                          '네 가능합니다.\nFLutter 모바일 어플리케이션 개발 과정은 코딩, 앱 개발 경험이 없는 분들도 기초부터 차근차근 배우실 수 있도록 구성되어 있습니다.')),
                  Divider(),
                  // SizedBox(
                  //   width: 250,
                  //   child: SfCard(
                  //     margin: 30,
                  //     child: Column(
                  //       children: [
                  //         Row(
                  //           children: [
                  //             CircleAvatar(
                  //               backgroundImage: NetworkImage(
                  //                   'https://picsum.photos/200/300'),
                  //             ),
                  //             Text('스나이퍼팩토리 / 매니저')
                  //           ],
                  //         ),
                  //         Cards(
                  //           keyword: ['무료강의', '사업계획서', '모집중']
                  //               .map((e) => Text(e))
                  //               .toList(),
                  //           title: Text(
                  //               'Lorem lpsum is simply dummy to asdfsdafasdfasdfasdfsafsaff'),
                  //           subtitle: Text(
                  //               'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
                  //           bottom: Text('댓글'),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Divider(),
                  Cards(
                    keyword:
                        ['무료강의', '사업계획서', '모집중'].map((e) => Text(e)).toList(),
                    title: Text(
                        'Lorem lpsum is simply dummy to asdfsdafasd fasdfasdfsafsaff'),
                    subtitle: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
                    bottom: Text('댓글'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
