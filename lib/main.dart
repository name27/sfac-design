import 'package:flutter/material.dart';
import 'package:widgets/endwidget/badge.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_icon.dart';
import 'package:widgets/util/sfac_text_style.dart';
import 'package:widgets/widget/icon.dart';
import 'package:widgets/widget/input.dart';
import 'package:widgets/widget/search_field.dart';
import 'package:widgets/widget/textarea.dart';

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
                  Divider(
                    thickness: 3,
                  ),
                  const Wrap(
                    children: [
                      Icon(Icons.lock_clock),
                      SFIcon(SfacIcon.dart,size: 50),
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
                  Divider(
                    thickness: 3,
                  ),
                  SFTextArea(controller: TextEditingController(), hintText: '내용을 입력해주세요', maxLines: 2, minLines: 2, writer: '신승호',)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
