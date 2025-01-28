import 'package:chatapp/domain/constants/app_colors.dart';
import 'package:chatapp/repository/screens/profile/profile_screen.dart';
import 'package:chatapp/repository/screens/widgets/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController=TextEditingController();
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );
  @override
  Widget build(BuildContext context) {
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "Enter Code",
              fontsize: 24,
              fontfamily: "bold",
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            UiHelper.CustomText(
                text: "We have sent you an SMS with the code", fontsize: 14),
            UiHelper.CustomText(
                text: "to 03307475761", fontsize: 14),
            SizedBox(height: 20,),
            Pinput(controller:otpController ,
            onCompleted: (value){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
            },
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: focusedPinTheme,
            submittedPinTheme: submittedPinTheme,),

          ],
        ),
      ),
      floatingActionButton: TextButton(onPressed: (){}, child: Text(
        "Resend OTP",

        style: TextStyle(
          fontSize: 16,
          color: Theme.of(context).brightness==Brightness.dark?AppColors.textDark:AppColors.textLight,

          ),
        ),

        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
