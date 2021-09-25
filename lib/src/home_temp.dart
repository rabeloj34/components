import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  //const name({Key? key}) : super(key: key);
  final options = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components App"),
      ),
      body: ListView(
        //children: _createItems(),
        children: _createItemsCorta(),
      ),
    );
  }

  List<Widget> _createItems() {

    List<Widget> list = [];


    for (String opt in options) {
       
        final aux = ListTile(
          title: Text(opt),
        ); 
       
       list..add(aux)
           ..add(Divider());
    }

    return list;
  }

  List<Widget> _createItemsCorta(){

    var widgets = options.map((opt){

        return Column(
          children: [
            ListTile(
              title: Text(opt + "??"),
              subtitle: Text("aasa"),
              trailing: Icon(Icons.keyboard_arrow_right),
              leading: Icon(Icons.ac_unit),
              onTap: (){},
            ),
            Divider(),
          ],
        );

    }).toList();

   return widgets;
  }
}
