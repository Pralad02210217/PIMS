import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'display.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late Color mycolor;
  late Size mediaSize;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  final String defaultUsername = "admin";
  final String defaultPassword = "admin";
  String errorMessage = "";

  @override
  Widget build(BuildContext context) {
    mycolor = Theme.of(context).primaryColor;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Containers for Images
            Container(
              constraints:
                  BoxConstraints(maxHeight: 200, maxWidth: double.infinity),
                  decoration: BoxDecoration(
                    color: mycolor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.zero,
                      bottomLeft: Radius.elliptical(700, 590),
                      bottomRight: Radius.elliptical(700, 590),
                    ),
                    image: DecorationImage(
                      image: AssetImage('Images/basketball_Login.jpeg'),
                      fit: BoxFit.fitWidth,
                      colorFilter: ColorFilter.mode(
                          mycolor.withOpacity(0.4), BlendMode.dstATop),
                    ),
                  ),
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  // Setting The Text
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xFF0028A8),
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Email Address
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset('Images/email.svg'),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  // Password
                  TextField(
                    controller: passwordController,
                    obscureText: !isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset('Images/password.svg'),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            isPasswordVisible
                                ? 'Images/password_show.svg'
                                : 'Images/password_hide.svg',
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 50),

                  // Login Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff0028a8),
                            Color(0xff2a54d5),
                            Color(0xff0028a8),
                          ],
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Check if entered credentials match the default username and password
                          if (usernameController.text == defaultUsername &&
                              passwordController.text == defaultPassword) {
                            // Navigate to the main app after successful login
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyApp(),
                              ),
                            );
                          } else {
                            Fluttertoast.showToast(
                              msg: "Wrong username or password",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                            );
                            // // Show error message if credentials are incorrect
                            // setState(() {
                            //   errorMessage = "Incorrect username or password";
                            // });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  // Add space between buttons and "Or"
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Or',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),
                  // Sign up using google button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your sign up with Google action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(188, 255, 255, 255),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'Images/Google.png',
                            height: 25, // Adjust the height as needed
                            width: 25, // Adjust the width as needed
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Sign Up with Google',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  // Error Message
                  if (errorMessage.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        errorMessage,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
