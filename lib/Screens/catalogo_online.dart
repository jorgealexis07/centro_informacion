import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../services/urllaunch_services.dart';

class catalogo extends StatelessWidget {
  const catalogo({Key? key}) : super(key: key);

  final String AdressMuseum = "Av. Tecnológico s/n \n"
      "Col. Valle de Anáhuac\n"
      "CP 55210 \n"
      "Ecatepec de Morelos, Ecatepec de Morelos, Estado de México \n"
      "Tels.: 55 5000 2353, 55 5000 2300 \n";
  @override
  Widget build(BuildContext context) {
    final String _title = "Catalogo en línea";
    final Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Catalogo en línea',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Text(
                  'Centro de información TESE',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                const SizedBox(height: 15.0),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
        ],
      ),
    );

    final Color color = Theme.of(context).primaryColor;
    final String valor;
    final Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonColumn(color, Icons.web_sharp, 'CATALOGO ONLINE'),
      ],
    );

    final Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
          'Datos generales - '
          'Aqui podras acceder a nuestro catalogo online del Centro de Información del Tecnológico de Estudios Superiores de Ecatepec (TESE).',
          softWrap: true,
          textAlign: TextAlign.justify),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: appbarapp(_title),
        body: ListView(
          children: <Widget>[
            Image.asset(
              "assets/imgcatalogo.jpg",
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            const SizedBox(height: 10.0),
            Image.asset("assets/footer.PNG")
          ],
        ),
      ),
    );
  }

  //icondata
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
            onPressed: () async {
              var res = await UrlLaunch_Services().launchUniversalLinkIos(
                  Uri.parse("http://opac.tese.edu.mx/CatalogoBasico/"));
            },
            icon: Icon(icon, color: color)),
        //Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
