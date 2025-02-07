import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';

class HiveScreen extends StatefulWidget {
  const HiveScreen({super.key});

  @override
  State<HiveScreen> createState() => _HiveScreenState();
}

class _HiveScreenState extends State<HiveScreen> {

    final hiveBox=Hive.box('myBox');


    // read

    void read()async{
        hiveBox.put(1,'shakil');
        
    }
    // write
    void write()async{
        
    }
    // delete

    void delete()async{
        
    }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Hive')),
        body: Column(
          children:  [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child:Text("write")),
                 ElevatedButton(onPressed: (){}, child:Text("Read")),
                  ElevatedButton(onPressed: (){}, child:Text("write")),
                
                ],
            )
          ],
        ));
  }
}
