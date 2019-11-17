import 'package:flutter/material.dart';
import 'package:files_management_app_05/utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'files_managemnet_app_05',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Category'),
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
  TextEditingController _textEditingController = TextEditingController();
  String value = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //Gesture Detector with following code makes keyboard dismiss when clicking another place

        //https://stackoverflow.com/questions/51652897/how-to-hide-soft-input-keyboard-on-flutter-after-clicking-outside-textfield-anyw?rq=1
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
                child: Row(
                  children: <Widget>[
                    Text('Find your files'),
                    Spacer(),
                    //'Command + Click' to inspect the following widget
                    addIcon,
                    emailIcon,
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _textEditingController,
                      onSubmitted: (text) {
                        value = text;
                        _textEditingController.text = "";
                        print(_textEditingController.text);
                      },
                      textInputAction: TextInputAction.search,
                      decoration: searchBarDecoration,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
