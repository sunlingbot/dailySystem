import 'package:flutter/material.dart';
import 'navigation_icon_view.dart';
import '../global_config.dart';
import '../home/home_page.dart';
import '../idea/idea_page.dart';
import '../market/market_page.dart';
import '../notice/notice_page.dart';
import '../my/my_page.dart';

class Index extends StatefulWidget {

  @override
  State<Index> createState() => new _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin{
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  //创建一个空的设置状态值的写法
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      //初始化导航栏的图标和标题
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text("新闻"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.all_inclusive),
        title: new Text("想法"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add_shopping_cart),
        title: new Text("评论"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add_alert),
        title: new Text("通知"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.perm_identity),
        title: new Text("用户"),
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    _pageList = <StatefulWidget>[
      new HomePage(),
      new IdeaPage(),
      new MarketPage(),
      new NoticePage(),
      new MyPage()
    ];
    _currentPage = _pageList[_currentIndex];
  }

  void _rebuild() {
    setState((){});
  }

  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }

  @override
  //声明定义一个底部导航的工具栏
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
        items: _navigationViews
            .map((NavigationIconView navigationIconView) => navigationIconView.item)
            .toList(),  // 添加图标 icon 按钮
      currentIndex: _currentIndex, //当前点击的索引值
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed, //设置底部导航工具栏的类型：fixed 固定
      onTap: (int index) { //添加点击事件
        setState((){ //点击之后，需要触发的逻辑事件
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      }
    );

    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
            child: _currentPage // 动态的展示我们当前的页面
        ),
        bottomNavigationBar: bottomNavigationBar,  // 底部工具栏
      ),
      theme: GlobalConfig.themeData  // 设置主题颜色，默认黑色
    );
  }

}