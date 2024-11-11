<<<<<<< HEAD
import 'package:eos_todolist1/screens/home_screen.dart';
=======
>>>>>>> 52b824f1192b00c0b4d0d76b57fc0e47ce0c86da
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EOS ToDoList',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        fontFamily: 'Pretendard',
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

<<<<<<< HEAD

=======
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA4C639).withOpacity(0.1),
        title: Text('EOS ToDoList'),
        leading: Image.asset('assets/images/eos_logo.png'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 10,
                      color: Colors.grey,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/eos_logo.png'),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '김준식',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text('최강한화 내년에는 비상하리')
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 500,
            color: Color(0xFFA4C639).withOpacity(0.1),
          )
        ],
      ),
    );
  }
}
>>>>>>> 52b824f1192b00c0b4d0d76b57fc0e47ce0c86da
