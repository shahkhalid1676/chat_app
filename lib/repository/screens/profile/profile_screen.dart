import 'package:chatapp/repository/screens/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.light
                ? CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage("assets/images/Change Avatar.png"),
                  )
                : CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/Avatar.png"),
                  ),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomTextField(
                controller: firstNameController,
                text: "First Name(Required)",
                textinputtype: TextInputType.text,
                context: context),
            SizedBox(
              height: 13,
            ),
            UiHelper.CustomTextField(
                controller: lastNameController,
                text: "Last Name(Required)",
                textinputtype: TextInputType.text,
                context: context),
            SizedBox(height: 50,),

          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(callback: (){}, buttonName: "Save"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
