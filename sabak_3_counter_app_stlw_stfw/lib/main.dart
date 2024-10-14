import 'package:flutter/material.dart';
import 'package:sabak_3_counter_app_stlw_stfw/core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme().myLightTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme().myLightTheme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: MyTheme().myLightTheme.appBarTheme.backgroundColor,
        title: Text(
          'Тапшырма 1',
          style: MyTheme().myLightTheme.textTheme.displayLarge,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 325,
              height: 54,
              decoration: BoxDecoration(
                  color: const Color(0xffaaaaaa), borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Cан: $count',
                  style: MyTheme().myLightTheme.textTheme.displayLarge,
                ),
              ),
            ),
            const SizedBox(
              height: 41,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      count--;
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xff0D61AE),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.remove,
                      color: MyTheme().myLightTheme.iconTheme.color,
                      size: MyTheme().myLightTheme.iconTheme.size,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xff0D61AE),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.add,
                      color: MyTheme().myLightTheme.iconTheme.color,
                      size: MyTheme().myLightTheme.iconTheme.size,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
