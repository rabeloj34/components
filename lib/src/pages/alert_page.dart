import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
  //const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Pages'),
      ),

      body: Center(

        child: ElevatedButton(
          child:Text('Mostrar alerta') ,
          onPressed: () => _mostrarAlerta(context),
          style: ElevatedButton.styleFrom(
            primary: Colors.red[800],
            shape: StadiumBorder()
          ),
        ),

      ),

      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add_location),
        onPressed: (){
          Navigator.pop(context);
        },
      ),

    );
  }

  void _mostrarAlerta(BuildContext context) {

    showDialog(
      
      context: context,
      barrierDismissible: true,
      builder: (context) {

        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              Text('Contenido de la alerta '),
              FlutterLogo(size:100)
          ],
          ),
          
          actions: [
            TextButton(child: Text('ok'),
            onPressed: () {
                Navigator.of(context).pop();
            }
            ),
            TextButton(child: Text('Cancelar'), 
            onPressed:  (){
              Navigator.of(context).pop();
            }, )

          ],

        ) ;
      }

    );


  }
}