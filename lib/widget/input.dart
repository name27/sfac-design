import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfacInput extends StatelessWidget {
  const SfacInput({super.key,
    this.onchanged,
    this.inputContent,
    this.fillColor,
    required this.hintText,
    this.errorText,
    required this.controller,
    this.onChanged,
    this.obscureText = false,
    this.errorTextColor,
    this.helperText,
    this.inputDecorationBorderRadius = 10,
    });

  final TextEditingController controller; //텍스트 필드 컨트롤러
  //onChanged: input 칸의 내용이 바로바로 바뀔 때
  final Function(String)? onchanged;
  final Text? inputContent;   //텍스트필드 위에 Text
  final Color? fillColor; //텍스트필드 색상
  final String? hintText; //힌트 텍스트
  final String? errorText; //에러 텍스트
  final Function(String)? onChanged; //onChanged 이벤트
  final bool obscureText; //텍스트 가림 여부
  final Color? errorTextColor; //error텍스트 색
  final String? helperText; //텍스트필드 아래 helperText
  final double inputDecorationBorderRadius; //텍스트필드 모서리둥글게

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(inputContent != null) Padding(
          padding: const EdgeInsets.only(left: 10,bottom: 3),
          child: inputContent!,
        ),
        TextFormField(
          onChanged: onchanged,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: SfacTextStyle.b4M14(color: SfacColor.grayScale20),
            filled: true,
            fillColor: fillColor,
            helperText: helperText,
            helperStyle: SfacTextStyle.b5R12(color: SfacColor.grayScale40),
            errorText: errorText,
            //에러text가 있을 경우 에러 글자수에 따라 에러색을 다르게 해야하나 말아야하나..
            errorStyle: SfacTextStyle.b5R12(
            color: SfacColor.red),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(inputDecorationBorderRadius)
            )
          ),
        ),
      ],
    );
  }
}