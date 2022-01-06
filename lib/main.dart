import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        borderSide: BorderSide(color: Color(0x0ffbbbbb), width: 2));
    const linkTextStyle= TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xff0079d0)
    );

    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 81,
                ),
                const SizedBox(
                  width: 103,
                  height: 80,
                  child: Image(image: AssetImage('assets/dart-logo 1.png')),
                ),
                const SizedBox(
                  height: 19,
                ),
                const Text(
                  'Введите логин в виде 10 цифр номера телефона',
                  style:
                  TextStyle(fontSize: 16, color: Color(0x99000000)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFECEFF1),
                    hintText: '+7',
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Телефон',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFECEFF1),
                    hintText: '*****',
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Пароль',
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                SizedBox(
                    width: 154,
                    height: 42,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Войти'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff0079d0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.0),
                          ),
                        ))),
                const SizedBox(
                  height: 32,
                ),
                InkWell(
                    child: const Text(
                      'Регистрация',
                      style: linkTextStyle,),
                    onTap: () {}),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                    child: const Text(
                      'Забыли пароль?',
                      style: linkTextStyle,
                    ),
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
