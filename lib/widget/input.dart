import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfacInput extends StatelessWidget {
  const SfacInput({super.key,
    this.inputContent,
    this.fillColor,
    required this.hintText,
    this.errorText,
    this.controller,
    this.onChanged,
    this.obscureText = false,
    this.errorTextColor,
    this.helperText,
    this.inputDecorationBorderRadius = 10,
    });

  final TextEditingController? controller; //텍스트 필드 컨트롤러
  final Text? inputContent;
  final Color? fillColor;
  final String? hintText; //힌트 텍스트
  final String? errorText; //에러 텍스트
  final Function(String)? onChanged; //onChanged 이벤트
  final bool obscureText; //텍스트 가림 여부
  final Color? errorTextColor; 
  final String? helperText; //텍스트필드 아래 helperText
  final double inputDecorationBorderRadius; //텍스트필드 모서리둥글게

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(inputContent != null) inputContent!,
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            helperStyle: SfacTextStyle.b4M14(color: SfacColor.grayScale20),
            filled: true,
            fillColor: fillColor,
            helperText: helperText,
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