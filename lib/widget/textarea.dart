import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SFTextArea extends StatelessWidget {
  const SFTextArea({
    super.key,
    required this.controller,
    this.writer,
    this.hintText = '',
    this.textStyle = const TextStyle(fontSize: 15, color: Colors.black),
    this.minLines = 11,
    this.maxLines = 11,
    this.readOnly = false,
  });

  //텍스트 필드 컨트롤러
  final TextEditingController controller;

  //작성자 이름
  final String? writer;

  //힌트 텍스트
  final String? hintText;

  //텍스트 스타일
  final TextStyle? textStyle;

  //텍스트필드에 표시될 최소 행 수
  final int? minLines;

  //텍스트필드에 허용되는 최대 행 수
  final int? maxLines;

  //읽기전용 텍스트필드
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: SfacColor.grayScale20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 3),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller,
                minLines: minLines,
                maxLines: maxLines,
                readOnly: readOnly,
                style: textStyle,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: SfacTextStyle.b3R16(color: SfacColor.grayScale30),
                  border: InputBorder.none,
                ),
              ),
              if(writer != null) Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: Row(
                  children: [
                    Text('작성자',style: SfacTextStyle.b5B12(color: SfacColor.grayScale40)),
                    const SizedBox(width: 6),
                    Text(writer!, style: SfacTextStyle.b5B12(color: SfacColor.grayScale60)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}