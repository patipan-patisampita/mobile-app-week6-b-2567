import 'package:flutter/material.dart';
import 'package:week4/view/auth/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //==== Image register ====
                Image.asset(
                  'assets/images/signup.png',
                  width: size.width - 50,
                ),
                // =====Text Login====
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.lightBlue,
                        ),
                      )
                    ],
                  ),
                ),
                // ===== Form Sign Up ====
                Form(
                  child: Column(
                    children: [
                      // =====Enter Full Name====
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Enter your full name',
                          label: const Text('Full name'),
                          labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontFamily: "verdana_regular",
                              fontWeight: FontWeight.w400),
                          prefixIcon: const Icon(Icons.person),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      // =====Enter field Email====
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Enter your email or username',
                          label: const Text('Email or username'),
                          labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontFamily: "verdana_regular",
                              fontWeight: FontWeight.w400),
                          prefixIcon: const Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      // =====Enter field password====
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          label: const Text('Password'),
                          labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontFamily: "verdana_regular",
                              fontWeight: FontWeight.w400),
                          prefixIcon: const Icon(Icons.vpn_key_sharp),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility_off,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      // =====Enter confirm password====
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Enter your confirm password',
                          label: const Text('Confirm password'),
                          labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontFamily: "verdana_regular",
                              fontWeight: FontWeight.w400),
                          prefixIcon: const Icon(Icons.vpn_key_sharp),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility_off,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      // =====Button submit login====
                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          height: 55.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.lock_open, color: Colors.white),
                              SizedBox(width: 5.0),
                              Text(
                                "Sign Up - App Accounts",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 2,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                // =====Button Link Register==
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreens()));
                        });
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
