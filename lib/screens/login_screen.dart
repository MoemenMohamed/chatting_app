import 'package:flutter/material.dart';

import '../widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade300,
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 2,),
            Image(
              image: AssetImage("assets/images/chat_icon.png"),
              width: 100,
              height: 100,
            ),
            Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldCustom(
                  hintText: "Email",
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldCustom(
                  hintText: "Password",
                )),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 50),
                  backgroundColor: Colors.cyan.shade900,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("don't have an account?"),
                TextButton(onPressed: (){}, child: Text("Register"))
              ],
            )
            ,Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
