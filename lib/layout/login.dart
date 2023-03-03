import 'package:flutter/material.dart';
import 'package:test1/layout/animatedlist.dart';
import 'package:test1/layout/register.dart';
import 'package:test1/shared/components/components.dart';

import '../shared/constants/constants.dart';
import 'clippath.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formLKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 200),
          child: ClipPath(
            clipper: ClipPath1(),
            child: Container(
              color: Colors.purple,
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
            ),
          )),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key:formLKey ,
            child: Column(
              children: [
                defaultTextFormField(
                    label: 'Email',
                    hint:'Example@gmail.com',
                    prefix:const Icon(Icons.email),
                    w_border_enable: 2,
                    col_border_enable: Colors.purple,
                    w_border_focuse: 2,
                    col_border_focuse: Colors.purple,
                    borderRadiusFoc: 20,
                    keyboardType:TextInputType.emailAddress,
                    validator:(input) => input!.isValidEmail() ? null : "Check your email"
                ),
                const SizedBox(
                  height: 10,
                ),
                defaultTextFormField(
                    label: 'Password',
                    hint:'********',
                    prefix:const Icon(Icons.lock),
                    suffix:IconButton(
                        onPressed: () {setState(() {
                          visibility1=!visibility1;
                        });}, icon:  Icon(visibility1?Icons.visibility:Icons.visibility_off)) ,
                    w_border_enable: 2,
                    col_border_enable: Colors.purple,
                    w_border_focuse: 2,
                    col_border_focuse: Colors.purple,
                    borderRadiusFoc: 20,
                    keyboardType: TextInputType.visiblePassword,
                    visibility:visibility1,
                    validator:(input){if(input!.length<8){
                      return 'Password too short' ;
                    }
                    else if(input.isEmpty){
                      return 'Enter your password';
                    }
                    return null;
                    },
                    helpText: 'password must have one char at least'
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed:(){if(formLKey.currentState!.validate()) {navigateTo( AnimatedListScreen(), context);}},
                  minWidth: double.infinity,
                  height: 50,
                  color: Colors.purple,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: const Text('Login',style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed:(){navigateTo(const Register(), context);},
                  minWidth: double.infinity,
                  height: 50,
                  color: Colors.purple,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: const Text('Register',style: TextStyle(color: Colors.white),),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
