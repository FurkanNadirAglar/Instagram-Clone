import 'package:flutter/material.dart';
import 'package:flutter_instagram/Screens/sing.dart';
import 'package:flutter_instagram/main.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
              image: DecorationImage(
                  image: NetworkImage(
                    "https://t3.ftcdn.net/jpg/03/44/47/26/360_F_344472693_fckhVAOo6HFgTAbciAIo1x6VBm4xPWYv.jpg",
                  ),
                  fit: BoxFit.fill)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 20),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle_rounded),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Lütfen Kullanıcı Adı Giriniz',
                      hintText: 'Kullanıcı Adı',
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 20),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Lütfen Mail Giriniz',
                      hintText: 'Mail',
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontSize: 20),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal)),
                        labelText: 'Lütfen Şifre Giriniz',
                        hintText: 'Şifre',
                      ),
                      obscureText: true),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 20),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_iphone_outlined),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Lütfen Telefon Numaranızı Giriniz',
                      hintText: 'Telefon Numarası',
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyApp()),
                              );
                            },
                            child: Text(
                              'KAYIT OL',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ],
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
