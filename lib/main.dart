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
        fontFamily: "Pretendard", // 수정: 폰트 패밀리 이름만 사용
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFA4C639).withOpacity(0.1),
          title: Text('EOS Todolist'),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/eos_logo.png'),
          )
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.lightGreen.withOpacity(0.3),
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 10,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/eos_logo.png'),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('EOS'),
                    Text(
                      '김준식',
                      style: TextStyle(
                        fontWeight: FontWeight.w700, // 수정: FontWeight 사용
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text('최강한화 내년엔 비상하리'),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              color: Color(0xFFA4C639).withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
  }
}
