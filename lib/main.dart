import 'package:flutter/material.dart';
import 'package:test1/clippath.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() =>MyAppState();
}

class MyAppState extends State {
  bool visibility1=true;
  bool visibility2=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight + 200),
            child: ClipPath(
              clipper: ClipPath1(),
              child: Container(
                color: Colors.purple,
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'FullName',
                      prefixIcon: const Icon(Icons.person),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.purple),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      hintText: '+20##########',
                      prefixIcon: const Icon(Icons.phone_android),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.purple),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Example@gmail.com',
                      prefixIcon: const Icon(Icons.email),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.purple),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'password',
                      hintText: '*******',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {setState(() {
                            visibility1=!visibility1;
                          });}, icon:  Icon(visibility1?Icons.visibility:Icons.visibility_off)),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.purple),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    obscureText: visibility1,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Conform password',
                      hintText: '*******',
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {setState(() {
                            visibility2=!visibility2;
                          });}, icon:  Icon(visibility2?Icons.visibility:Icons.visibility_off)),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.purple),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    obscureText: visibility2,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed:(){},
                    minWidth: double.infinity,
                    height: 50,
                    color: Colors.purple,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: const Text('Register',style: TextStyle(color: Colors.white),),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed:(){},
                    minWidth: double.infinity,
                    height: 50,
                    color: Colors.purple,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: const Text('Login',style: TextStyle(color: Colors.white),),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
