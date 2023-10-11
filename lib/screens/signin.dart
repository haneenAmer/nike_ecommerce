import 'package:flutter/material.dart';
import 'package:nike_ecommerce/constants/colors.dart';
import 'package:nike_ecommerce/screens/navbar.dart';
import 'package:nike_ecommerce/screens/sign_in_wih_google/sign_up.dart';
import 'package:nike_ecommerce/widgets/widgts.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final String? validUsername = 'admin';
  final String? validPassword = '12345678';
  String? username = '';
  String? password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(children: [
            Positioned(
              bottom: 500,
              child: CustomPaint(
                size: const Size(400, 250),
                painter: HalfCirclePainter(
                    const Color.fromARGB(255, 255, 230, 138).withOpacity(0.5)),
              ),
            ),
            Positioned(
              bottom: 500,
              left: 200,
              child: CustomPaint(
                size: const Size(300, 300),
                painter:
                    HalfCirclePainter(AppColors.mainamber.withOpacity(0.5)),
              ),
            ),
            Column(
              children: [
                /// welcome back
                const Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Login Account',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Icon(Icons.person_2_outlined)
                        ],
                      ),
                      Text('Welcom Back Haneen Amer')
                    ],
                  ),
                ),

                /// store name

                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Nike',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 50),
                      ),
                      Text(
                        ' Shop',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.mainamber,
                            fontSize: 50),
                      ),
                    ],
                  ),
                ),

                /// form
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
                  child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Form(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.all(12.0),

                                  /// ser name txt field
                                  child: TextFormField(
                                      onChanged: (value) {
                                        setState(() {
                                          username = value;
                                        });
                                      },
                                      validator: (value) {
                                        if (value == '') {
                                          return 'Please enter username';
                                        }
                                      },
                                      decoration: const InputDecoration(
                                          hintText: 'user name',
                                          labelText: 'user name',
                                          prefixIcon: Icon(
                                            Icons.person,
                                          ),
                                          errorStyle: TextStyle(fontSize: 16.0),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.red),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9.0)))))),

                              /// passwor section
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: TextFormField(
                                  onChanged: (value) {
                                    setState(() {
                                      password = value;
                                    });
                                  },
                                  validator: (value) {
                                    if (value == '') {
                                      return 'Please enter username';
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    hintText: 'Password',
                                    labelText: 'Password',
                                    prefixIcon: Icon(
                                      Icons.key,
                                      color: Colors.grey,
                                    ),
                                    errorStyle: TextStyle(fontSize: 18.0),
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.red),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9.0))),
                                  ),
                                ),
                              ),
                              const Text('Forget Password!'),
                              const SizedBox(
                                height: 30,
                              ),

                              /// log in button
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: TextButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                AppColors.mainamber),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    NavBar()));
                                      },
                                      child: const Text(
                                        'Login ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      )),
                ),

                /// or sign up with
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 120,
                      color: const Color.fromARGB(255, 217, 217, 217),
                    ),
                    Builder(builder: (context) {
                      return const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Or Sign up with',
                          style: TextStyle(
                            color: AppColors.maingrey,
                          ),
                        ),
                      );
                    }),
                    Container(
                      height: 1,
                      width: 120,
                      color: const Color.fromARGB(255, 217, 217, 217),
                    ),
                  ],
                ),

                /// face  - google - apple
                const SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: signIn,
                          child: signUpWith('assets/google.svg')),
                      signUpWith('assets/facebook.svg'),
                      signUpWith('assets/apple.svg'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                /// create account
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not registered yet ? '),
                    Text(
                      'create account ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
