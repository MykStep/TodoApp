import 'package:flutter/material.dart';
import './models/global.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Todo App'),
    );
  }
}


class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: MaterialApp(
        color: Colors.yellow,
        home: DefaultTabController(
          length: 4,
          child: new Scaffold(
            body: Stack(
                children: <Widget>[
                  TabBarView(
                children: [
                  new Container(
                    color: darkGreyColor,
                  ),
                  new Container(color: Colors.orange,),
                  new Container(
                    color: Colors.lightGreen,
                  ),
                  new Container(
                    color: Colors.red,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 50),
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft : Radius.circular(50),
                    bottomRight: Radius.circular(50)
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Intray",
                      style: intrayTitleStyle,
                      ),
                    Container()
                  ],
                )
              ),
              Container(
                height: 56,
                width: 56,
                margin: EdgeInsets.only(top: 120, left: (MediaQuery.of(context).size.width*0.5)-28),
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  backgroundColor: redColor,
                  onPressed: null,
                ),
              )
              ],
            ),
            appBar: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                ),
                Tab(
                  icon: new Icon(Icons.rss_feed),
                ),
                Tab(
                  icon: new Icon(Icons.perm_identity),
                ),
                Tab(icon: new Icon(Icons.settings),)
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Color(0x80000000),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: redColor,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
