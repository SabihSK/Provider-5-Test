import 'package:checkprovider/notifer/text_notifer.dart';
import 'package:checkprovider/view/change.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TextChange(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Work(),
    );
  }
}

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  TextEditingController myController = TextEditingController();

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   myController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "sdf",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(controller: myController),
              // ElevatedButton(
              //   onPressed: () {
              //     // context.read<TextChange>().updateText("I am updated text");
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => TextScreen(),
              //       ),
              //     );
              //   },
              //   child: Text("Next Page"),
              // ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<TextChange>().updateText(myController.text);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TextScreen()));
                },
                child: Text("See the change"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
