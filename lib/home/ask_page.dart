import 'package:flutter/material.dart';
import '../global_config.dart';
//创建提问界面类AskPage，继承自StatefulWidget
class AskPage extends StatefulWidget {
  @override
  //添加状态实现类
  AskPageState createState() => new AskPageState();
}
class AskPageState extends State<AskPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold( //脚手架组件
        appBar: new AppBar( //页面头部
          title: new Container(
            child: new Row(
              children: <Widget>[
                new FlatButton.icon(
                  onPressed: (){
                    Navigator.of(context).pop(); //传参
                  },
                  icon: new Icon(Icons.clear, color: Colors.white70),
                  label: new Text(""),
                ),
                new Expanded(
                  child: new Container(
                    child: new Text("提问"),
                  )
                ),
                new FlatButton(
                  onPressed: (){},
                  child: new Text("下一步", style: new TextStyle(color: Colors.white12))
                )
              ],
            ),
          )
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                child: new TextField(
                  decoration: new InputDecoration(
                      hintText: "请输入标题",
                      hintStyle: new TextStyle(color: Colors.white70)
                  ),
                ),
                margin: const EdgeInsets.all(16.0),
              )

            ],
          ),
        )
      )
    );
  }
}