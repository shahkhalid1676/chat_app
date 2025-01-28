import 'package:chatapp/domain/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String Imgurl}) {
    return Image.asset("assets/images/$Imgurl",fit: BoxFit.fill,);
  }

  static CustomText(
      {required String text,
      required double fontsize,
      String? fontfamily,
      FontWeight? fontWeight}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize, fontWeight: fontWeight, fontFamily: fontfamily),
    );
  }

  static customButton({
    required VoidCallback callback,
    required String buttonName,
    Color? buttonColor,
  }) {
    return SizedBox(
      height: 52,
      width: 327,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonLightMode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonName,
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required TextInputType textinputtype,
    required BuildContext context,
  }) {
    return Container(
      height: 46,
      width: 337,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.containerDarkMode
            : AppColors.containerLightMode,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: TextFormField(
          controller: controller,
          keyboardType: textinputtype,
          decoration: InputDecoration(
              hintText: text,
              border: InputBorder.none,
              hintStyle: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.hintDarkColor
                      : AppColors.hintLightColor,
                  fontSize: 15)),
        ),
      ),
    );
  }
}
