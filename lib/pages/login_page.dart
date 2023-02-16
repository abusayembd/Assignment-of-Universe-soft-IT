import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_work_universe_soft_it/providers/auth_provider.dart';
import 'package:interview_work_universe_soft_it/router/route_manager.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  bool _obscureText = true;
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white70,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Color(0xff187949),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              const Center(
                child: Text(
                  "Sign in to your account",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff707673)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Email",
                              style: TextStyle(
                                  color: Color(0xffa9adab),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700)),
                          Icon(
                            Icons.star_rate_sharp,
                            color: Colors.red,
                            size: 6.0,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      controller: _emailTextController,
                      decoration: InputDecoration(
                        hintText: "Email or Phone Number",
                        hintStyle: const TextStyle(color: Color(0xffA7AAA8)),
                        fillColor: const Color(0xffE8F6EF),
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 18.0, horizontal: 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          // ignore: prefer_const_constructors
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xffe0efe8),
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          gapPadding: 0.0,
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xffe0efe8),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Password",
                              style: TextStyle(
                                  color: Color(0xffa9adab),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700)),
                          Icon(
                            Icons.star_rate_sharp,
                            color: Colors.red,
                            size: 6.0,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      controller: _passwordTextController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        hintText: "***********",
                        hintStyle: const TextStyle(color: Color(0xffA7AAA8)),
                        fillColor: const Color(0xffE8F6EF),
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 18.0, horizontal: 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          // ignore: prefer_const_constructors
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          // ignore: prefer_const_constructors
                          borderSide: BorderSide(
                            color: const Color(0xffe0efe8),
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          gapPadding: 0.0,
                          borderRadius: BorderRadius.circular(8),
                          // ignore: prefer_const_constructors
                          borderSide: BorderSide(
                            color: const Color(0xffe0efe8),
                            width: 2,
                          ),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xff555957),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11.0),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.0,
                      child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: const Color(0xff02a652),
                        value: isChecked,
                        onChanged: (value) {
                          isChecked = !isChecked;
                          setState(() {});
                        },
                      ),
                    ),
                    const Text(
                      "Remember me",
                      style: TextStyle(color: Color(0xff909391)),
                    )
                  ],
                ),
              ),
              Consumer<AuthProvider>(
                builder: (context, authProvider, _) => authProvider.hasError
                    ? Text(
                        "${authProvider.errorMessage}",
                        style: const TextStyle(color: Colors.red),
                      )
                    : Container(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 18.0, horizontal: 18.0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff187949))),
                    onPressed: () async {
                      String username = _emailTextController.text;
                      String password = _passwordTextController.text;
                      bool isLoginSucceed = await Provider.of<AuthProvider>(
                              context,
                              listen: false)
                          .login(username, password);
                      if (isLoginSucceed) {
                        context.goNamed(RouteNames.massagesPage);
                      }
                    },
                    child: Consumer<AuthProvider>(
                        builder: (context, authProvider, _) =>
                            authProvider.isLoading
                                ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : const Text("Sign in")),
                  ),
                ),
              ),
              const Text(
                "Forgot the password ?",
                style: TextStyle(
                    color: Color(0xff187949), fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                        color: Color(0xff187949), fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
