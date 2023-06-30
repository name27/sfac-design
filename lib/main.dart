import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/types/gf_social_type.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_icon.dart';
import 'package:widgets/util/sfac_text_style.dart';
import 'package:widgets/widget/accordion.dart';
import 'package:widgets/widget/badge.dart';
import 'package:widgets/widget/breadcrumb.dart';
import 'package:widgets/widget/button.dart';
import 'package:widgets/widget/card.dart';
import 'package:widgets/widget/cards.dart';
import 'package:widgets/widget/image_card.dart';
import 'package:widgets/widget/input.dart';
import 'package:widgets/widget/keyword.dart';
import 'package:widgets/widget/search_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text('테스트중'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SfacInput(inputContent: Text('Input',style: SfacTextStyle.b4B14(color: SfacColor.primary80),),hintText: 'Input(텍스트필드)', controller: TextEditingController(),helperText: '나 Input(텍스트필드)',),
                  const Divider(
                    thickness: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SfacSearchField(controller: TextEditingController(), hintText: 'Search용 텍스트필드', outlineWidth: 2),
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SfBadge(child: Text('추워', style: SfacTextStyle.b5R12(color: Colors.white),),backgroundColor: SfacColor.primary80,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SfBadge(child: Text('추워요'),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SfBadge(child: Text('겨울왕국', style: SfacTextStyle.b5R12(color: SfacColor.primary60)),outlineColor: SfacColor.primary40, backgroundColor: SfacColor.primary5,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SfBadge(child: Text('똑똑똑엘사?', style: SfacTextStyle.b5R12(color: Colors.white)), backgroundColor: SfacColor.red,),
                        )
                        // Padding(
                        //   padding: EdgeInsets.all(8.0),
                        //   child: SfacBadge(keyWord: '추워'),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.all(8.0),
                        //   child: SfacBadge(keyWord: '추워요',keyWordColor: SfacColor.grayScale60, backgroundColor: SfacColor.grayScale5,),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.all(8.0),
                        //   child: SfacBadge(keyWord: '겨울왕국',keyWordColor: SfacColor.primary60,backgroundColor: SfacColor.grayScale5,outlineColor: SfacColor.primary40,),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.all(8.0),
                        //   child: SfacBadge(keyWord: '똑똑똑엘사?',backgroundColor: SfacColor.red,),
                        // ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                // Keyword(keyword: [Text('안녕'),Text('키워드')]),
                  Button(
                    onPressed: () {},
                    child: Text('버튼1'),
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  Wrap(
                    children: [
                      SfacIcon.dart(),
                      SfacIcon.phone(),
                      SfacIcon.laptop(),
                      SfacIcon.palette(),
                      SfacIcon.lock(),
                      SfacIcon.graph(),
                      SfacIcon.robot(),
                      SfacIcon.gamepad(),
                      SfacIcon.imojiO(),
                      SfacIcon.imojiX(),
                      SfacIcon.halo(),
                      SfacIcon.speaker(),
                      SfacIcon.fire(),
                      SfacIcon.hand(),
                      SfacIcon.coverbox(),
                      SfacIcon.block(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SfacIcon.rewind(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SfacIcon.reduce(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SfacIcon.expand(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SfacIcon.backarrow(),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  // Cards(
                  //   width: 250,
                  //   title: Column(
                  //     children: [
                  //       Row(
                  //         children: [
                  //           CircleAvatar(
                  //             backgroundImage:
                  //                 NetworkImage('https://picsum.photos/200/300'),
                  //           ),
                  //           Text('스나이퍼팩토리 / 매니저')
                  //         ],
                  //       ),
                  //       Text(
                  //         'Lorem lpsum is simply dummy to asdfsdafasdfasdfasdfsafsaff',
                  //         maxLines: 1,
                  //         overflow: TextOverflow.ellipsis,
                  //       )
                  //     ],
                  //   ),
                  //   subtitle: Text(
                  //       'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
                  // ),
                  // Divider(
                  //   thickness: 3,
                  // ),
                  // Cards(
                  //   width: 250,
                  //   keyword:
                  //       ['무료강의', '사업계획서', '모집중'].map((e) => Text(e)).toList(),
                  //   image: Image.network(
                  //     'https://picsum.photos/200/300',
                  //     fit: BoxFit.cover,
                  //     width: 250,
                  //     height: 100,
                  //   ),
                  //   imageBottomRadius: 30,
                  //   imageTopRadius: 30,
                  //   title: Text('AI 서비스 완성! AI + 웹 개발 취업캠프(프론트엔드&백엔드)'),
                  //   subtitle:
                  //       Text('하루만에 살펴보는 전문가1인 창업 및 기술 사업화에 필요한 사업계획서 작성방법'),
                  // ),
                  // SfCard(
                  //   child: Row(
                  //     children: [
                  //       ImageCard(
                  //         image: Image.network('https://picsum.photos/200/300',height: 150,width: 150,fit: BoxFit.cover,),
                  //       ),
                  //       Column(children: [
                  //         Text('title'),
                  //         Text('subtitle')
                  //       ],)
                  //     ],
                  //   ),
                  // ),
                  // Accordion(
                  //     defaultIcon: Icon(Icons.play_arrow),
                  //     selectedIcon: Icon(Icons.keyboard_arrow_down),
                  //     title: Text('Flutter 모바일 어플리케이션 개발 경험이 전혀 없는데 들어도 되나요?'),
                  //     content: Text(
                  //         '네 가능합니다.\nFLutter 모바일 어플리케이션 개발 과정은 코딩, 앱 개발 경험이 없는 분들도 기초부터 차근차근 배우실 수 있도록 구성되어 있습니다.')),
                  // Divider(),
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
                  // Divider(),
                  // Cards(
                  //   keyword:
                  //       ['무료강의', '사업계획서', '모집중'].map((e) => Text(e)).toList(),
                  //   title: Text(
                  //       'Lorem lpsum is simply dummy to asdfsdafasd fasdfasdfsafsaff'),
                  //   subtitle: Text(
                  //       'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
                  //   bottom: Text('댓글'),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
