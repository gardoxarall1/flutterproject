import 'package:flutter/material.dart';
import 'package:new1/presentation/views/buttom_app_bar.dart';
import 'package:new1/presentation/widgets/custom_buttons.dart';
import 'package:new1/presentation/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  var _email;
  var _password;
  @override
  void initState() {
    super.initState();
    _email = "";
    _password = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("My app"),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          height: double.infinity, // Parent Size
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              // image: AssetImage("assets/img1.jpg"),
              image: NetworkImage(
                  "https://images.pexels.com/photos/13415959/pexels-photo-13415959.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.cover,
            ),
          ),
          //height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                  fontFamily: "island",
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: CustomTextField(
                  title: "Email",
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
              ),
              CustomTextField(
                title: "password",
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              CustomButtons(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BottomAppBarNavigation()));
                },
              )
            ],
          ),
        ));
  }
}
