import 'package:chatapp/repository/screens/login/otp_screen.dart';
import 'package:chatapp/repository/screens/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
                text: "Enter Your Phone Number",
                fontsize: 24,
                fontWeight: FontWeight.bold),
            UiHelper.CustomText(
              text: "Please confirm your country code and enter ",
              fontsize: 14,
            ),
            UiHelper.CustomText(
              text: "your phone number",
              fontsize: 14,
            ),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomTextField(
                controller: phoneController,
                text: "PhoneNumber",
                textinputtype: TextInputType.number,
                context: context)
          ],
        ),
      ),
      floatingActionButton:
          UiHelper.customButton(callback: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>OtpScreen()
            )
            );
          }, buttonName: "Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
