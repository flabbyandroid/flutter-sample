import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application__demo/models/all_data.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async' show Future;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        // primarySwatch: Color(0xFFFFBF00), //////////////////////////
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // String prefSessionToken;
  // int id;
  // late final AllData allTheData;
  List _items = [];
  late List<DetailRider> detailRiderModel;
  late Future<List<DetailRider>> _futureDetailRider;
  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('load_json/in_data.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["data"];
      print(_items);
      print(_items[0]);
      // _futureDetailRider = _items;
      // detailRiderModel = _items;
    });
  }

  @override
  void initState() {
    super.initState();
    print('jkj testtt');
    loadAllTheData();
    // readJson();
    print('test again');
    // _futureDetailRider =
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
        // title: Text("Demo App"),
      ),
      body: Container(
        // padding: EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Select Child Plan',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Row(),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget futureWidget() {
  //   return new FutureBuilder(
  //     future: loadAllTheData(),
  //     builder: (context, snapshot) {
  //       if (snapshot.hasData) {
  //         return new Container(
  //           child: Row(
  //             children: <Widget>[
  //               ListView.builder(itemBuilder: (BuildContext context, index) {
  //                 return Column(
  //                   children: <Widget>[
  //                     InkWell(
  //                       onTap: () {},
  //                       child: Text(
  //                         snapshot
  //                             .data.category.categorylist[index].categoryTitle,
  //                       ),
  //                     )
  //                   ],
  //                 );
  //               })
  //             ],
  //           ),
  //         );
  //       }
  //     },
  //   );
  // }

  Future<String> _loadCategoryfromAssets() async {
    return await rootBundle.loadString('load_json/in_data.json');
  }

  Future loadAllTheData() async {
    await wait(1);
    // String jsonString = await _loadCategoryfromAssets();
    final String jsonString =
        await rootBundle.loadString('load_json/in_data.json');
    final jsonResponse = json.decode(jsonString);
    AllData allData = AllData.fromJson(jsonResponse);
    print(allData.data[1]);
    // print(jsonResponse);
    // print(allData.categorylist[0].categoryPost[0].postTitle);
  }

  Future wait(int seconds) {
    return new Future.delayed(Duration(seconds: seconds), () => {});
  }
}
