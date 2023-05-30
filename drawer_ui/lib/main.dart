import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Zoom(),
    );
  }
}

final ZoomDrawerController z = ZoomDrawerController();

class Zoom extends StatefulWidget {
  const Zoom({Key? key}) : super(key: key);

  @override
  _ZoomState createState() => _ZoomState();
}

class _ZoomState extends State<Zoom> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: z,
      borderRadius: 24,
      style: DrawerStyle.defaultStyle,
      // showShadow: true,
      openCurve: Curves.fastOutSlowIn,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      duration: const Duration(milliseconds: 500),
      // angle: 0.0,
      menuBackgroundColor: Colors.indigo,
      mainScreen: const Body(),
      menuScreen: Theme(
        data: ThemeData.dark(),
        child: Scaffold(
          backgroundColor: Colors.indigo,
          body: Padding(
            padding: EdgeInsets.only(left: 25),
            child: Center(
              child: TextButton(
                onPressed: () {
                  final navigator = Navigator.of(
                    context,
                  );
                  z.close?.call()?.then(
                        (value) => navigator.push(
                          MaterialPageRoute(
                            builder: (_) => TestPage(),
                          ),
                        ),
                      );
                },
                child: Text(
                  "Push Page",
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 100),
    value: -1.0,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool get isPanelVisible {
    final AnimationStatus status = controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          onPressed: () {
            controller.fling(velocity: isPanelVisible ? -1.0 : 1.0);
          },
          icon: AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: controller.view,
          ),
        ),
      ),
      body: TwoPanels(
        controller: controller,
      ),
    );
  }
}

class TwoPanels extends StatefulWidget {
  final AnimationController controller;

  const TwoPanels({Key? key, required this.controller}) : super(key: key);

  @override
  _TwoPanelsState createState() => _TwoPanelsState();
}

class _TwoPanelsState extends State<TwoPanels> with TickerProviderStateMixin {
  static const _headerHeight = 32.0;
  late TabController tabController = TabController(length: 3, vsync: this);
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..addListener(() {
      print("SlideValue: ${_controller.value} - ${_controller.status}");
    });
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  Animation<RelativeRect> getPanelAnimation(BoxConstraints constraints) {
    final _height = constraints.biggest.height;
    final _backPanelHeight = _height - _headerHeight;
    const _frontPanelHeight = -_headerHeight;

    return RelativeRectTween(
      begin: RelativeRect.fromLTRB(
        0.0,
        _backPanelHeight,
        0.0,
        _frontPanelHeight,
      ),
      end: const RelativeRect.fromLTRB(0.0, 100, 0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: widget.controller, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    tabController.dispose();
    super.dispose();
  }

  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    final ThemeData theme = Theme.of(context);
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: const Text("Backdrop"),
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                z.toggle!();
              },
            ),
            bottom: TabBar(
              controller: tabController,
              tabs: const [
                Tab(
                  //icon: Icon(Icons.home_filled),
                  text: 'lll',
                ),
                Tab(
                  icon: Icon(Icons.home_filled),
                  //text: 'lll',
                ),
                Tab(
                  icon: Icon(Icons.home_filled),
                  text: 'lll',
                )
              ],
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: [
              Container(
                color: theme.primaryColor,
                child: const Center(
                  child: Text(
                    "Back Panel",
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                ),
              ),
              Container(
                color: Colors.pink,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Back Panel",
                        style: TextStyle(fontSize: 24.0, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextButton(
                        onPressed: () {
                          if (_controller.status == AnimationStatus.completed) {
                            _controller.reverse();
                          } else {
                            _controller.forward();
                          }

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => TestPage(),
                            ),
                          );
                        },
                        child: Text("Push"),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SlideTransition(
                        position: _offsetAnimation,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FlutterLogo(size: 150.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.brown,
                child: const Center(
                  child: Text(
                    "Back Panel",
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
        PositionedTransition(
          rect: getPanelAnimation(constraints),
          child: Material(
            elevation: 12.0,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: _headerHeight,
                  child: Center(
                    child: Text(
                      "Shop Here",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      "Front Panel",
                      style: TextStyle(fontSize: 24.0, color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Test Page !"),
      ),
    );
  }
}
