import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localizationinflutter/world_languages.dart';


void main() {
  runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
        translations: WorldLanguage(), //Language class from world_languages.dart
        locale: Locale('en', 'US'), // translations will be displayed in that locale
        fallbackLocale: Locale('es', 'ES'),
        // specify the fallback locale in case an invalid locale is selected.
      )
  );
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var textValue = 'English';
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            title:Text("Language Translation"),
            backgroundColor: Colors.deepOrangeAccent
        ),
        body: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(15),
            child: Column(
                children:[

                  Text("hello".tr),
                  Text("going".tr),
                  Text("email".trParams({
                    'name':'John',
                    'email':'johnabc@gmail.com'
                  })),
                  Text("desk".tr),


                  Row(
                    children: [
                      Expanded(child: Text('$textValue',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Outfit",
                            fontWeight: FontWeight.w600,
                            color: Colors.black),),),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                      ),
                    ],
                  ),


                ]
            )
        )
    );
  }

  void toggleSwitch(bool value) {

    if(value == true)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Spanish';
        var locale = Locale('es', 'ES');
        Get.updateLocale(locale);
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'English';
        var locale = Locale('en', 'US');
        Get.updateLocale(locale);
      });
      print('Switch Button is OFF');
    }
  }



}