import 'package:api_test/ApiManager.dart';
import 'package:api_test/Data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter API Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<WelcomeNode> _nodeModel;

  @override
  void initState() {
    _nodeModel = API_manager().getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("api testing"),
        ),
        body: Container(
          child: FutureBuilder<WelcomeNode>(
            future: _nodeModel,
            builder: (context, snapshot) {
              if(snapshot.hasData)
                {
                  return ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.limeAccent,
                        height: 200,
                        child: Row(
                          children: <Widget>[
                            Image.network(snapshot.data.displayUrl[index].toString())
                          ],
                        ),
                      ),
                    );
                  });
                }
              else{
                return
                    Center(child: CircularProgressIndicator());
              }
            },
          ),
        )
    );
  }
}
