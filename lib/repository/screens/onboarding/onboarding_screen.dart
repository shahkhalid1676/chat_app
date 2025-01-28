import 'package:chatapp/domain/constants/cubits/theme_cubit.dart';
import 'package:chatapp/repository/screens/login/login_screen.dart';
import 'package:chatapp/repository/screens/widgets/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                BlocProvider.of<ThemeCubit>(context).toggleTheme();
              },
              icon: Icon(Icons.dark_mode_outlined))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImage(Imgurl: "Illustration (1).png"),
              SizedBox(
                height: 20,
              ),
              UiHelper.CustomText(
                  text: "Connect easily with ",
                  fontsize: 12,
                  fontWeight: FontWeight.bold,
                  fontfamily: "bold"),
              UiHelper.CustomText(
                  text: "your family and friends  ",
                  fontsize: 12,
                  fontWeight: FontWeight.bold,
                  fontfamily: "bold"),
              UiHelper.CustomText(
                  text: "over countries ",
                  fontsize: 12,
                  fontWeight: FontWeight.bold,
                  fontfamily: "bold"),
            ],
          ),
        ),
      ),
      floatingActionButton: UiHelper.customButton(callback: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()
        )
        );
      }, buttonName: "Start Messaging"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
