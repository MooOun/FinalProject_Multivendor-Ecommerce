import 'package:circular__mall/views/customers/nav_screens/widgets/banner_widget.dart';
import 'package:circular__mall/views/customers/nav_screens/widgets/category_text.dart';
import 'package:circular__mall/views/customers/nav_screens/widgets/search_widget.dart';
import 'package:circular__mall/views/customers/nav_screens/widgets/welcome_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WelcomeText(),
        SearchInputWidget(),
        BannerWidget(),
        CategoryText(),
      ],
    );
  }
}



