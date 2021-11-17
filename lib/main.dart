import 'package:autogen/controllers/slide_controller.dart';
import 'package:autogen/ui/landing/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'locales/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final SlideButton slideController = Get.put(SlideButton());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      translations: StringTranslations(),
      locale: Locale("uz", "UZ"),
      fallbackLocale: Locale("uz", "UZ"),
      home: LandingScreen(),
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
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Text(
        'theBest'.tr,
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
