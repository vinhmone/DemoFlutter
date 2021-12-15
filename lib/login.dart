import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blueAccent,
      ),
      home: const LoginWidget(),
    );
  }
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 60.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign in",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const CustomEditText(
                  titleName: "Email", hint: "Enter your Email"),
              const SizedBox(
                height: 15.0,
              ),
              const CustomEditText(titleName: "Password", hint: "*******"),
              const SizedBox(
                height: 15.0,
              ),
              InkWell(
                onTap: () {},
                child: const FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 0.8,
                alignment: Alignment.centerLeft,
                child: CheckboxListTile(
                  title: const Text(
                    'Remember me',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: true,
                  onChanged: (bool? value) {},
                  contentPadding: EdgeInsets.zero,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              FractionallySizedBox(
                  widthFactor: 0.8,
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        primary: Colors.white),
                    onPressed: () {},
                    child: const Text('Login',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        )),
                  )),
              SizedBox(height: 10),
              const Text(
                "-OR-",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Text(
                "Sign in with",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Container(
                          color: Colors.white,
                          child: Image.asset(
                            'assets/image/facebook.png',
                            scale: 1.0,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Container(
                          color: Colors.white,
                          child: Image.asset(
                            'assets/image/google.png',
                            scale: 1.8,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomEditText extends StatelessWidget {
  final String titleName;
  final String hint;

  const CustomEditText({Key? key, required this.titleName, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleName,
          style: const TextStyle(color: Colors.white),
        ),
        FractionallySizedBox(
          widthFactor: 0.8,
          child: DecoratedBox(
            decoration: const BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  hintText: hint,
                  prefixIcon: Icon(
                      (titleName == "Password") ? Icons.password : Icons.email),
                  hintStyle: const TextStyle(color: Colors.white, fontSize: 12),
                  border: InputBorder.none,
                  iconColor: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
