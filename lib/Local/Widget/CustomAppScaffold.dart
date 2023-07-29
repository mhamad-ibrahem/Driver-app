import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Core/Constant/TextStyles.dart';
import 'CustomBackButton.dart';

class CustomAppScaffold extends StatelessWidget {
  const CustomAppScaffold({
    super.key,
    this.ispadding,
    this.color,
    required this.pageTitle,
    required this.isBack,
    required this.isScroll,
    required this.widget,
    this.floatingButton,
  });
  final Color? color;
  final String pageTitle;
  final Widget widget;
  final bool isBack;
  final bool isScroll;
  final bool? ispadding;
  final Widget? floatingButton;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: floatingButton,
      backgroundColor: color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          pageTitle,
          style: purpleTextStyle(false),
        ),
        centerTitle: true,
        leading: isBack ? const CustomBackButton() : null,
      ),
      body: Padding(
        padding: EdgeInsets.all(ispadding == null ? 20 : 0),
        child: isScroll
            ? SingleChildScrollView(
                physics: const BouncingScrollPhysics(), child: widget)
            : widget,
      ),
    ));
  }
}
