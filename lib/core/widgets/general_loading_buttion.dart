import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GeneralLoadingButtion extends StatelessWidget {
  const GeneralLoadingButtion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      minWidth: double.infinity,
      height: 50,
      color: const Color(0xffC49E85),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            "Please Wait ....",
            style: AppTextStyle.poppinsstyle16.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
