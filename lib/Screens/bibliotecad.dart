import 'package:centro_informacion/components/appbar.dart';
import 'package:centro_informacion/components/drawer.dart';
import 'package:flutter/material.dart';

import '../services/urllaunch_services.dart';

class biblioteca extends StatelessWidget {
  static String id = 'biblioteca';
  const biblioteca({Key? key}) : super(key: key);

  @override
  static const String _title = 'Biblioteca Digital';
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        drawer: drawer(),
        appBar: appbarapp(_title),
        backgroundColor: Color.fromARGB(255, 209, 224, 224),
        body: _ListView(context),
      ),
    );
  }
}

Widget _ListView(BuildContext context) {
  return ListView(
    //scrollDirection: Axis.vertical, itemCount: 10, itemBuilder: (context,position){return Padding(padding: const EdgeInsets.all(8.0),child: Container(  width: 200.0,height: 150.0, color: Colors.blue, child: Text("Posicion $position"),),); },
    children: <Widget>[
      CardEbooks(),
      CardRevistas(),
      CardRE(),
      const SizedBox(height: 10.0),
      Image.asset("assets/footer.PNG")
    ],
  );
}

final String EbooksText =
    "Tendras acceso a todos nuestros libros electronicos disponibles en nuestra biblioteca digital. ";

Card CardEbooks() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: AssetImage('assets/ebook.jpg'),
          placeholder: AssetImage('assets/Loading.gif'),
          fit: BoxFit.cover,
          height: 260,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text('E-BOOKS',
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          subtitle: Text(EbooksText),
        ),
        const SizedBox(height: 8.0),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          FlatButton(
              onPressed: () async {
                var res = await UrlLaunch_Services().launchUniversalLinkIos(
                    Uri.parse(
                        "http://biblioteca.tese.edu.mx/biblioteca/Biblioteca-Digital1/E-books/E-books.html"));
              },
              child: Text(' Acceder')),
        ])
      ],
    ),
  );
}

final String RevistasText =
    "Tendras acceso a todos nuestros revistas electronicas ";

Card CardRevistas() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: AssetImage('assets/revistas_digitales.jpg'),
          placeholder: AssetImage('assets/Loading.gif'),
          fit: BoxFit.cover,
          height: 260,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text('REVISTAS EN LÍNEA',
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          subtitle: Text(RevistasText),
        ),
        const SizedBox(height: 8.0),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          FlatButton(
              onPressed: () async {
                var res = await UrlLaunch_Services().launchUniversalLinkIos(
                    Uri.parse(
                        "http://biblioteca.tese.edu.mx/biblioteca/Biblioteca-Digital1/Revista%20digital/Revista%20en%20linea.html"));
              },
              child: Text(' Acceder')),
        ])
      ],
    ),
  );
}

final String REText = "Tendras acceso a todos nuestros recursos externos ";

Card CardRE() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: AssetImage('assets/recursos_externos.png'),
          placeholder: AssetImage('assets/Loading.gif'),
          fit: BoxFit.cover,
          height: 260,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text('RECURSOS EXTERNOS',
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          subtitle: Text(REText),
        ),
        const SizedBox(height: 8.0),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          FlatButton(
              onPressed: () async {
                var res = await UrlLaunch_Services().launchUniversalLinkIos(
                    Uri.parse(
                        "http://biblioteca.tese.edu.mx/biblioteca/Biblioteca-Digital1/Enlaces%20externos/Enlaces%20externos.html"));
              },
              child: Text(' Acceder')),
        ])
      ],
    ),
  );
}
