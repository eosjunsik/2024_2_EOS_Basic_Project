import 'package:eos_todolist1/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:eos_todolist1/widgets/add_button.dart';
import 'package:eos_todolist1/widgets/todo_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> toDoLists = [];

  @override
  void initState() {
    super.initState();
    toDoLists.addAll(["11111111", "22222222", "33333333"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA4C639).withOpacity(0.1),
        title: Text('EOS ToDoList'),
        leading: Image.asset('assets/images/eos_logo.png'),
        actions: [IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
        }, icon: Icon(Icons.settings_rounded))],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                Container(
                  width: 140,
                  height: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                      child: Image.asset('assets/images/kijae.png', fit: BoxFit.cover,)),
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
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pretendard',
                        ),
                      ),
                      SizedBox(height: 15),
                      Text('몽통회장'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 400,
                  decoration: BoxDecoration(
                    color: Color(0xFFA4C639).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: MediaQuery.of(context).size.width / 2 - 75,
                child: Container(
                  width: 150,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Color(0xFFA4C639).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "To do list",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 40, right: 25),
                child: Container(
                  height: MediaQuery.of(context).size.height - 450,
                  child: ListView.builder(
                    itemCount: toDoLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ToDoItem(
                        title: toDoLists[index],
                        onDelete: () {
                          setState(() {
                            toDoLists.removeAt(index);
                          });
                        },
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                right: 50,
                child: AddButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        String newTask = '';
                        return AlertDialog(
                          title: Text(
                            '할일추가',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: TextField(
                            onChanged: (value) {
                              newTask = value;
                            },
                            decoration: InputDecoration(
                              hintText: '할 일을 입력하세요',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                '취소',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  if (newTask.isNotEmpty) {
                                    toDoLists.add(newTask);
                                  }
                                });
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                '추가',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}