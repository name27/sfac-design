import 'package:flutter/material.dart';
import 'package:widgets/util/sfac_color.dart';
import 'package:widgets/util/sfac_text_style.dart';

class SfacSearchField extends StatelessWidget {
  const SfacSearchField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.onchanged,
      this.onSubmitted,
      required this.outlineWidth});

  //텍스트 필드 컨트롤러
  final TextEditingController controller;

  //힌트텍스트
  final String hintText;

  //onChanged: input 칸의 내용이 바로바로 바뀔 때
  final Function(String)? onchanged;

  //onSubmitted: 키보드의 입력완료를 눌렀을 때
  final Function(String)? onSubmitted;

  //테두리 굵기
  final double outlineWidth;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(decorationThickness: 0),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        hintText: hintText,
        hintStyle: SfacTextStyle.b4R14(color: SfacColor.grayScale20),
        suffixIcon: const Icon(Icons.search),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: SfacColor.primary30, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: SfacColor.grayScale20),
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      onChanged: onchanged,
      onSubmitted: onSubmitted,
    );
  }
}
