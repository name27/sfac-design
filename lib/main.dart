import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets/endwidget/accordion.dart';
import 'package:widgets/endwidget/avatar.dart';
import 'package:widgets/endwidget/badge.dart';
import 'package:widgets/endwidget/button.dart';
import 'package:widgets/endwidget/card.dart';
import 'package:widgets/endwidget/image_card.dart';
import 'package:widgets/endwidget/select_main.dart';
import 'package:widgets/endwidget/selected_sub.dart';
import 'package:widgets/endwidget/title_subtitle.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_icon.dart';
import 'package:widgets/util/sfac_text_style.dart';

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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Primary',
                    style: SfacTextStyle.b1B20(),
                  ),
                  const SizedBox(height: 10),
                  SfButton(
                    child: const Text('로그인'),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 10),
                  Text('Destructive', style: SfacTextStyle.b1B20()),
                  SfButton(
                    onPressed: () {},
                    backgroundColor: SfacColor.red,
                    child: const Text('로그인'),
                  ),
                  const SizedBox(height: 10),
                  Text('Link', style: SfacTextStyle.b1B20()),
                  SfButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: SfacColor.primary60,
                    child: const Text('로그인'),
                  ),
                  const SizedBox(height: 10),
                  Text('Disabled', style: SfacTextStyle.b1B20()),
                  const SfButton(
                    onPressed: null,
                    backgroundColor: Colors.white,
                    foregroundColor: SfacColor.primary60,
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
                    backgroundColor: Colors.transparent,
                    foregroundColor: SfacColor.primary60,
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
                        onTap: (p0) {
                          print(p0);
                        },
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SfacIcon.dart(),
                              const Text('커뮤니티 전체'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SfacIcon.dart(),
                              const Text('커뮤니티 전체'),
                            ],
                          )
                        ],
                      ),
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
                          onTap: (p0) {
                            print(p0);
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
                  SizedBox(
                    width: 245,
                    child: Column(
                      children: [
                        SfImageCard(
                          image: Image.network(
                            'https://picsum.photos/200/100',
                            width: 245,
                            height: 145,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const SfTitleSubtitle(
                          spaceing: 5,
                          title: 'AI 서비스 완성! AI 웹 개발 취업 캠프(프론트엔드&백엔드)',
                          subtitle:
                              '하루만에 살펴보는 전문가 1인창업 및 기술 사업화에 필요한 사업계획서 작성방법,알아볼까요?',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(children: [
                      SfImageCard(
                        image: Image.network(
                          'https://picsum.photos/200/100',
                          width: 200,
                          height: 145,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const SizedBox(
                          width: 150,
                          child: SfTitleSubtitle(
                            spaceing: 5,
                            title: 'AI 서비스 완성! AI 웹 개발 취업 캠프(프론트엔드&백엔드)',
                            subtitle:
                                '하루만에 살펴보는 전문가 1인창업 및 기술 사업화에 필요한 사업계획서 작성방법,알아볼까요?',
                          )),
                    ]),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 245,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SfImageCard(
                          image: Image.network(
                            'https://picsum.photos/200/300',
                            width: 245,
                            height: 145,
                            fit: BoxFit.cover,
                          ),
                          bottomRadius: 0,
                        ),
                        const SizedBox(height: 10),
                        const SfTitleSubtitle(
                          title: 'AI 서비스 완성! AI 웹 개발 취업 캠프(프론트엔드&백엔드)',
                          subtitle:
                              '하루만에 살펴보는 전문가 1인창업 및 기술 사업화에 필요한 사업계획서 작성방법,알아볼까요?',
                        ),
                        const SizedBox(height: 5),
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
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 220,
                    child: Column(
                      children: [
                        SfImageCard(
                          image: Image.network(
                            'https://picsum.photos/200/200',
                            width: 220,
                            height: 125,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const SfTitleSubtitle(
                          title:
                              'Lorem lpsum is simply dummy to asdfsdafasdfasdfasdfsafsaff',
                          titleOverflow: TextOverflow.ellipsis,
                          subtitle:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SfCard(
                    width: 300, // 넓이 조절
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SfAvatar(
                              size: 30,
                              child: SvgPicture.asset('assets/svg/logo.svg'),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '스나이퍼팩토리',
                              style: SfacTextStyle.b5B12(
                                  color: SfacColor.primary60),
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
                              style: SfacTextStyle.b5M12(
                                  color: SfacColor.grayScale60),
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
                              style: SfacTextStyle.b5M12(
                                  color: SfacColor.grayScale60),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const SfTitleSubtitle(
                            title:
                                'Lorem Ipsum is simply dummy text of the printing',
                            subtitle:
                                '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remainin...'''),
                        const SizedBox(height: 5),
                        Wrap(
                            spacing: 3,
                            children: ['무료강의', 'KITRI', '사업계획서', '모집중']
                                .map((e) => SfBadge(
                                      child: Text(e),
                                    ))
                                .toList()),
                        const SizedBox(height: 5),
                        const Text('댓글 0개'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SfCard(
                    height: 100,
                    child: Row(
                      children: [
                        SfImageCard(
                          image: Image.network(
                            'https://picsum.photos/250/200',
                            fit: BoxFit.cover,
                            width: 90,
                            height: 100,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SfBadge(child: Text('07분분')),
                            SfTitleSubtitle(
                              title: '[DAY1] 1 프런트엔드와 백엔드',
                              subtitle: '[수강기간]\n2023.03.03~2023.12.12',
                              spaceing: 15,
                            )
                          ],
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(),
                            SfBadge(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              child: Text('수강하기'),
                            )
                          ],
                        )
                      ],
                    ),
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
