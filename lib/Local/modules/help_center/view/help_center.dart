import 'package:driver_app/Local/Widget/CustomAppScaffold.dart';
import 'package:flutter/material.dart';

import 'custom/contact_with_us.dart';
import 'custom/faq.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
        pageTitle: "Help Center",
        isBack: true,
        isScroll: true,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [Faq(), ContactWithUs()],
        ));
  }
}
