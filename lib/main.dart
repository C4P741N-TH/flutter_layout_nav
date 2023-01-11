import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Members',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Members"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  context: context,
                  color: Colors.white,
                  stuid: "Student-ID 633410022-5",
                  name: "Prompiriya Phasuchathunyaphat",
                  mobile: "0812345678",
                  pic: "assets/images/prompiriya.jpg"),
              Card(
                  context: context,
                  color: Colors.white,
                  stuid: "Student-ID 633410080-1",
                  name: "Nakharin Trisi",
                  mobile: "0812345678",
                  pic: "assets/images/nanping.jpg"),
              Card(
                  context: context,
                  color: Colors.white,
                  stuid: "Student-ID 633410075-4",
                  name: "Jansuda Khanawapee",
                  mobile: "0812345678",
                  pic: "assets/images/jansuda.jpg"),
              Card(
                  context: context,
                  color: Colors.white,
                  stuid: "Student-ID 633410037-2",
                  name: "Anusorn Sangngam",
                  mobile: "0812345678",
                  pic: "assets/images/anusorn.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String name,
      required String mobile,
      required String pic,
      required String stuid}) {
    return Container(
      width: 400,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Profile(
                        name: name,
                        mobile: mobile,
                        pic: pic,
                        stuid: stuid,
                      )));
        },
        child: Column(
          children: [
            Image.asset(
              pic,
              width: 200,
              fit: BoxFit.cover,
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: color,
                child: Center(child: Text(name))),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  Profile(
      {required this.name,
      required this.mobile,
      required this.pic,
      required this.stuid});
  String name;
  String mobile;
  String pic;
  String stuid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(children: [Text(stuid), Text(name), Text(mobile)]),
    );
  }
}
