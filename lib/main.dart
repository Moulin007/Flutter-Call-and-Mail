import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Call Mail Example ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: ' Contact Us '),
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


  void customLaunch(command) async{
    if(await canLaunch(command))
      {
        await launch(command);
      }
    else{
      print("$command not found");
    }
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.redAccent,
        title: Text(widget.title),
      ),
      body: Center(

        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

           Text("Contact us for more!"),

            SizedBox(height: MediaQuery.of(context).size.height/20,),
            
            InkWell(
              onTap: (){
                customLaunch("ramanihiteshc@gmail.com");
              },
              child: Container(
                width: MediaQuery.of(context).size.width/2.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0,3)
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                      "E- Mail",
                  textAlign: TextAlign.center,),
                ),
              ),
            ),


            SizedBox(height: MediaQuery.of(context).size.height/20,),

            InkWell(
              onTap: (){
                customLaunch("tel:+918320563229");
              },
              child: Container(
                width: MediaQuery.of(context).size.width/2.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0,3)
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Telephone",
                    textAlign: TextAlign.center,),
                ),
              ),
            )
            
          ],
        ),
      )
    );
  }
}
