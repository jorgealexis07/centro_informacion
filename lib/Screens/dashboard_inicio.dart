import 'package:centro_informacion/components/appbar.dart';
import 'package:centro_informacion/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class dashInicio extends StatefulWidget {
  dashInicio({Key? key}) : super(key: key);
  static String id = '/home';
  @override
  State<dashInicio> createState() => _dashInicioState();
}

class _dashInicioState extends State<dashInicio> {
  static const String _title = 'Centro de informacion';
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
        /*floatingActionButton: FloatingActionButton(
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
        ),*/
      ),
    );
  }

  Widget _ListView(BuildContext context) {
    return ListView(
      //scrollDirection: Axis.vertical, itemCount: 10, itemBuilder: (context,position){return Padding(padding: const EdgeInsets.all(8.0),child: Container(  width: 200.0,height: 150.0, color: Colors.blue, child: Text("Posicion $position"),),); },
      children: <Widget>[
        const ListTile(
          title: Text('BIENVENIDOS COMUNIDAD TESE',
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        // Extended image
        ExtendedImage.asset(
          'assets/CI_main.jpeg',
          // cache: true, (by default caches image)
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        ),
        CardimgMain(),
        const SizedBox(height: 10.0),
        Image.asset("assets/footer.PNG")
      ],
    );
  }

  Card CardimgMain() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: AssetImage('assets/CI_books_main.jpeg'),
            placeholder: AssetImage('assets/Loading.gif'),
            fit: BoxFit.cover,
            height: 260,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('¡Conoce los recursos que tenemos para ti!',
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
