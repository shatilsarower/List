import 'package:flutter/material.dart';
import 'package:lecture9/Classess/My_Use_Data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<dynamic> userName = [
  //   'Sms',
  //   'Karim',
  //   'Babel',
  //   'Kabul',
  //   'Name1',
  // ];
  List<MyUserdata> usrData = [
    MyUserdata(
      username: 'Shatil',
      userPhone: '01771734215',
      userEmail: 'sshatil233@gmail.com',
    ),
    MyUserdata(
      username: 'Shatil',
      userPhone: '01771734215',
      userEmail: 'sshatil233@gmail.com',
    ),
    MyUserdata(
      username: 'Shatil',
      userPhone: '01771734215',
      userEmail: 'sshatil233@gmail.com',
    ),
    MyUserdata(
      username: 'Shatil',
      userPhone: '01771734215',
      userEmail: 'sshatil233@gmail.com',
    ),
    MyUserdata(
      username: 'Shatil',
      userPhone: '01771734215',
      userEmail: 'sshatil233@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                usrData.add(
                  MyUserdata(
                    username: 'New',
                    userPhone: '0133333333',
                    userEmail: 'sms.gmail.com',
                  ),
                );
              });
            },
            icon: const Icon(Icons.add),
          ),
        ],
        //title: const Text('App'),
      ),
      drawer: const Drawer(),
      body: InkWell(
        child: Container(
          child: ListView.builder(
            itemCount: usrData.length,
            itemBuilder: (context, index) {
              return Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.transparent,
                margin: const EdgeInsets.only(bottom: 2),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        usrData[index].username!,
                      ),
                      Text(
                        usrData[index].userEmail!,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
