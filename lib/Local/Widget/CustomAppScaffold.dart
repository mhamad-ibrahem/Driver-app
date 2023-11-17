import 'package:flutter/material.dart';
import '../Shared/custom_app_bar.dart';

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
    this.isPurple = false,
  });
  final Color? color;
  final String pageTitle;
  final Widget widget;
  final bool isBack;
  final bool isScroll;
  final bool isPurple;
  final bool? ispadding;
  final Widget? floatingButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: floatingButton,
      backgroundColor: color,
      appBar:
          customAppBar(title: pageTitle, isPurple: isPurple, isBack: isBack),
      body: Padding(
        padding: EdgeInsets.all(ispadding == null ? 20 : 0),
        child: isScroll
            ? SingleChildScrollView(
                physics: const BouncingScrollPhysics(), child: widget)
            : widget,
      ),
    );
  }
}
