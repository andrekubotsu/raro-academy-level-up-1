import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:level_up_1/widgets/brazil_flag_widget.dart';
import 'package:level_up_1/widgets/japan_flag_widget.dart';
import 'package:level_up_1/widgets/switzer_flag_widget.dart';
import 'package:level_up_1/widgets/usa_flag_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LevelUP 1',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.grey[600],
        accentColor: Colors.grey[700],
      ),
      home: MyHomePage(title: 'Desafio LevelUP1 - Raro Academy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool changeViewMode = true;
  void _changeView() {
    setState(() {
      changeViewMode = !changeViewMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: changeViewMode
            ? SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    JapanFlagWidget(),
                    BrazilFlagWidget(),
                    UsaFlagWidget(),
                    SwitzerFlagWidget(),
                  ],
                ),
              )
            : GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  JapanFlagWidget(),
                  BrazilFlagWidget(),
                  UsaFlagWidget(),
                  SwitzerFlagWidget(),
                ],
              ),
        floatingActionButton: FloatingActionButton(
            onPressed: _changeView,
            tooltip: 'Change view mode',
            child: Icon(Icons.view_module_rounded)));
  }
}
