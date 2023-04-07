import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../button_box.dart';
import '../text_field.dart';



class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    const loadingState=false;
    

    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 200, 242, 249),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: height * 0.4,
              alignment: Alignment.center,
              child: const Text(
                'Get Started!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: height * 0.6,
                  padding: EdgeInsets.only(
                    right: width * 0.1,
                    left: width * 0.1,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.05),
                      ),
                      TextInputWidget(
                        controller: TextEditingController(),
                        texthint: "Enter User Name",
                        textInputType: TextInputType.name,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.5 * 0.05),
                      ),
                      TextInputWidget(
                        controller: TextEditingController(),
                        texthint: "Enter Email",
                        textInputType: TextInputType.emailAddress,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.5 * 0.05),
                      ),
                      TextInputWidget(
                        controller: TextEditingController(),
                        texthint: "Enter Password",
                        textInputType: TextInputType.text,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.5 * 0.05),
                      ),
                      TextInputWidget(
                        controller:
                            TextEditingController(),
                        texthint: "Confirm Password",
                        textInputType: TextInputType.text,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.5 * 0.1),
                      ),
                      loadingState
                          // ignore: dead_code
                          ? const SpinKitSpinningLines(
                              color: Colors.lightBlue,
                              size: 32,
                            )
                          : Row(
                              children: [
                                GestureDetector(
                                  onTap: (){},
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: width * 0.55,
                                    padding: EdgeInsets.symmetric(
                                      // horizontal: width * 0.2,
                                      vertical: height * 0.5 * 0.04,
                                    ),
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16),
                                      ),
                                    ),
                                    child: const Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.08)),
                                GestureDetector(
                                    onTap: (){},
                                    child: const ButtonBox(
                                        imagePath: 'lib/images/google.png')),
                              ],
                            ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already Have An Account?',
                              style: TextStyle(color: Colors.black),
                            ),
                            const Padding(padding: EdgeInsets.only(right: 8)),
                            GestureDetector(
                              onTap: () {
                                
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
