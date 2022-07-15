import 'package:centro_informacion/components/appbar.dart';
import 'package:centro_informacion/components/drawer.dart';
import 'package:flutter/material.dart';

import '../services/urllaunch_services.dart';

class redes extends StatelessWidget {
  const redes({Key? key}) : super(key: key);
  static const String _title = 'Redes Sociales';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        drawer: drawer(),
        appBar: appbarapp(_title),
        backgroundColor: Color.fromARGB(255, 209, 224, 224),
        body: _ListView(context),
        /* floatingActionButton: FloatingActionButton(
          onPressed: () async {
            var res = await UrlLaunch_Services().launchURL_api_whasapp();
          },
          backgroundColor: Colors.green,
          heroTag: "¿Tienes alguna duda?",
          child: const Image(
            image: AssetImage('assets/icons/whatsapp.png'),
            fit: BoxFit.cover,
            height: 40,
          ),
          elevation: 10,
        ), */
      ),
    );
  }
}

Widget _ListView(BuildContext context) {
  return ListView(
    //scrollDirection: Axis.vertical, itemCount: 10, itemBuilder: (context,position){return Padding(padding: const EdgeInsets.all(8.0),child: Container(  width: 200.0,height: 150.0, color: Colors.blue, child: Text("Posicion $position"),),); },
    children: <Widget>[
      CardRedes(),
      CardMediosdeContacto(),
    ],
  );
}

final String AdminText = "Implementación de metodologías para la mejora: \n\n\n"
    " -  Creación de perfiles.\n\n"
    " -  Reclutamiento y selección de personal. \n\n"
    " -  Asesoramiento básico en administración y recursos humanos. \n\n"
    " -  Asesoramiento en NOM-035. \n";

Card CardRedes() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: AssetImage('assets/redes.jpg'),
          placeholder: AssetImage('assets/Loading.gif'),
          fit: BoxFit.cover,
          height: 260,
        ),
        const SizedBox(height: 8.0),
      ],
    ),
  );
}

Card CardMediosdeContacto() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    color: Color.fromARGB(255, 255, 255, 255),
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Síguenos',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          subtitle: Text('En redes sociales y entérate de nuestros eventos'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FlatButton(
              child: Image(
                image: AssetImage('assets/social/facebook.png'),
                fit: BoxFit.cover,
                height: 50,
              ),
              onPressed: () async {
                var res = await UrlLaunch_Services().launchUniversalLinkIos(
                    Uri.parse(
                        "https://www.facebook.com/Centro-de-Informaci%C3%B3n-TESE-305742479441231/"));
              },
            ),
            FlatButton(
              child: Image(
                image: AssetImage('assets/social/gmail.png'),
                fit: BoxFit.cover,
                height: 50,
              ),
              onPressed: () async {
                var res = await UrlLaunch_Services().launchUniversalLinkIos(
                    Uri.parse(
                        "https://mail.google.com/mail/u/1/#inbox?compose=VpCqJPswDdxLnsJmlWWbsgkBGpRplCBTlBbgxRcFHwjpfrWRPDqGBBLrzhqhnSNLvvJwPzB"));
              },
            ),
            FlatButton(
              child: Image(
                image: AssetImage('assets/social/twitter.png'),
                fit: BoxFit.cover,
                height: 50,
              ),
              onPressed: () async {
                var res = await UrlLaunch_Services().launchUniversalLinkIos(
                    Uri.parse("https://twitter.com/ci_tese?lang=es"));
              },
            ),
            FlatButton(
              child: Image(
                image: AssetImage('assets/social/youtube.png'),
                fit: BoxFit.cover,
                height: 50,
              ),
              onPressed: () async {
                var res = await UrlLaunch_Services().launchUniversalLinkIos(
                    Uri.parse(
                        "https://www.youtube.com/channel/UCY3eI4MLAB4qdEArBPPTV-Q"));
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
            ),
            //FlatButton(onPressed: () => {}, child: Text('Mas Información')),
            //FlatButton(onPressed: () => {}, child: Text('Cancelar'))
          ],
        )
      ],
    ),
  );
}
