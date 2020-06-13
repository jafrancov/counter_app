import 'package:counter_app/src/utils/cupertino_icons_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key: key);
    final String title;

    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _counter = 0;

    void _incrementCounter() {
        setState(() {
            _counter++;
        });
    }

    void _decrementCounter() {
        setState(() {
            _counter--;
        });
    }

    void _restartCounter() {
        setState(() {
            _counter = 0;
        });
    }

    @override
    Widget build(BuildContext context) {
        return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
                middle: Text(widget.title),
            ),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'Clicks:',
                              style: TextStyle(fontSize: 25.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4.0, 0, 20.0),
                          child: Text('$_counter',
                              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                                CupertinoButton(
                                    color: CupertinoColors.activeBlue,
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(getCupertinoIconData('plus')),
                                    onPressed: _incrementCounter,
                                ),
                                SizedBox(
                                    width: 20.0,
                                ),
                                CupertinoButton(
                                    color: CupertinoColors.activeBlue,
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(getCupertinoIconData('refresh')),
                                    onPressed: _restartCounter,
                                ),
                                SizedBox(
                                    width: 20.0,
                                ),
                                CupertinoButton(
                                    color: CupertinoColors.activeBlue,
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(getCupertinoIconData('minus')),
                                    onPressed: _decrementCounter,
                                )
                            ],
                        ),
                    ],
                ),
            ),
        );
    }
}
