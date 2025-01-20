import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final bool secure;
  final void Function(String)? onChanged;

  const CustomTextField(
      {super.key, required this.label, this.secure = false, this.onChanged});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool hidePass = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.blockHeight! * 3),
      child: TextFormField(
        onChanged: widget.onChanged,
        validator: (value) {
          if (value!.isEmpty) {
            return "Field Must Be Required";
          } else {
            return null;
          }
        },
        cursorColor: AppColors.primaryColor,
        obscureText: hidePass,
        decoration: InputDecoration(
          suffixIcon: widget.secure == true
              ? hidePass == true
                  ? showIcon(Icons.visibility_outlined)
                  : showIcon(Icons.visibility_off_outlined)
              : null,
          labelText: widget.label,
          labelStyle:
              AppTextStyle.poppinsstyle16.copyWith(color: AppColors.lightGrey),
          enabledBorder: customOutlinBorder(AppColors.lightGrey),
          errorBorder: customOutlinBorder(AppColors.red),
          focusedBorder: customOutlinBorder(AppColors.lightGrey),
          focusedErrorBorder: customOutlinBorder(AppColors.lightGrey),
        ),
      ),
    );
  }

  IconButton showIcon(IconData icon) {
    return IconButton(
        onPressed: () {
          hidePass = !hidePass;
          setState(() {});
        },
        icon: Icon(
          icon,
          color: AppColors.lightGrey,
        ));
  }

  OutlineInputBorder customOutlinBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(width: 1, color: color));
  }
}
