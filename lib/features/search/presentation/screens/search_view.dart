import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Text(
        "Search Page",
        style: AppTextStyle.poppinsstyle28,
      ));
  }
}