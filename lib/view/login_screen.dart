import 'package:best_buy/res/components/round_button.dart';
import 'package:best_buy/utils/utils.dart';
import 'package:best_buy/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:best_buy/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';

import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);


  TextEditingController _stuffIdController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode stuffIdFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _stuffIdController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    stuffIdFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();

    _obsecurePassword.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final authViewModel = Provider.of<AuthViewModel>(context);



    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: const BoxDecoration(
              color: Color(0xff6C60E0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 36.0, horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Wellcome to Best Buy",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color(0xffF8F8FF),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 55.0,
                          ),
                          TextField(
                            controller: _stuffIdController,
                            keyboardType: TextInputType.number,
                            focusNode: stuffIdFocusNode,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: const Color(0xffE7E4FF),
                                hintText: "Stuff ID",
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.grey[500],
                                ),
                            ),

                            onSubmitted:(value) {
                              Utils.fieldFocusChange(context, stuffIdFocusNode, emailFocusNode);
                              }

                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            focusNode: emailFocusNode,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: const Color(0xffE7E4FF),
                                hintText: "E-mail",
                                prefixIcon: Icon(
                                  Icons.email_rounded,
                                  color: Colors.grey[500],
                                )),
                              onSubmitted:(value) {
                                Utils.fieldFocusChange(context, emailFocusNode, passwordFocusNode);
                              }
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ValueListenableBuilder(
                              valueListenable: _obsecurePassword,
                              builder: (context, value, child){
                                return TextField(
                                  controller: _passwordController,
                                  obscureText: _obsecurePassword.value,
                                  // obscuringCharacter: "*",
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xffE7E4FF),
                                    hintText: "Password",
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.grey[500],
                                    ),
                                    suffixIcon: InkWell(
                                      onTap: (){
                                        _obsecurePassword.value = !_obsecurePassword.value;
                                      },
                                      child: Icon(
                                        _obsecurePassword.value ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined,

                                      ),
                                    ),
                                  ),
                                );
                              }
                          ),

                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "No account? ",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.blue[800],
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, RoutesName.registerScreen);
                                },
                                child: Text(
                                  "Register now",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blue[800],
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 50.0,
                          ),
                          RoundButton(
                              title: 'Login',
                              loading: authViewModel.loading,
                              onPress: (){
                                if(_stuffIdController.text.isEmpty){
                                  Utils.flushBarErrorMessage("Pease Enter Stuff ID", context);
                                }else if(_emailController.text.isEmpty){
                                  Utils.flushBarErrorMessage("Pease Enter Your Email Address", context);
                                }else if(_passwordController.text.isEmpty){
                                  Utils.flushBarErrorMessage("Pease Enter Your Password", context);
                                }else if(_passwordController.text.length <6){
                                  Utils.flushBarErrorMessage("Please Enter 6 digit Password", context);
                                } else{
                                  Map data = {
                                    "staff_id": _stuffIdController.text.toString(),
                                    "email":  _emailController.text.toString(),
                                    "password": _passwordController.text.toString(),
                                  };

                                  authViewModel.loginApi(data, context);
                                }
                              }
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
