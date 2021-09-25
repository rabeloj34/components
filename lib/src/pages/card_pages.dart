import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  //const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card Page'),
        ),
        body: ListView(padding: EdgeInsets.all(10.0), children: [
          _createCard1(),
          SizedBox(height: 30.0),
          _createCard2(),
        ]));
  }

  Widget _createCard1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('titulo'),
            subtitle: Text('esto e sun ejemplo de lo que estamos probando '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('ok'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget _createCard2() {

  //     return Card(

  //       child: Column(
  //         children: [

  //           FadeInImage(
  //             placeholder: AssetImage('assets/jar-loading.gif'), 
  //             image: NetworkImage('https://libreshot.com/wp-content/uploads/2020/10/green-pasture_D71_9372-free-image.jpg'),
  //             height: 250,
  //             fit: BoxFit.cover,
  //             ),

  //             Text('Imagen 1'), 

  //           // Image(
              
  //           //   image: NetworkImage('https://libreshot.com/wp-content/uploads/2020/10/green-pasture_D71_9372-free-image.jpg'),
            
  //           // )
  //         ],
  //       ),
  //     );
  // }

   Widget _createCard2() {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          // Image(
          //   image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner')
          )
        ],
      ),
    );


    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );

  }




}
