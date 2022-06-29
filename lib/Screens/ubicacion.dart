import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../services/urllaunch_services.dart';

class ubicacion extends StatelessWidget {
  const ubicacion({Key? key}) : super(key: key);

  final String AdressCI = "Av. Tecnológico s/n \n"
      "Col. Valle de Anáhuac\n"
      "CP 55210 \n"
      "Ecatepec de Morelos, Estado de México \n"
      "Tels.: 55 5000 2353, 55 5000 2300 \n";
  @override
  Widget build(BuildContext context) {
    final String _title = "Ubicación ";
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
                    'Centro de información TESE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Text(
                  'Tecnológico de Estudios Superiores de Ecatepec',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                const SizedBox(height: 15.0),
                Text(AdressCI),
                const SizedBox(height: 15.0),
                Image.asset("assets/mapa_tese.PNG")
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
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.web_sharp, 'WEB_SITE'),
      ],
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: appbarapp(_title),
        body: ListView(
          children: <Widget>[
            Image.asset(
              "assets/tese.jpg",
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
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
              var select_url;
              if (label == "ROUTE") {
                select_url =
                    "https://www.google.com/maps/place/TecNM+-+Tecnol%C3%B3gico+de+Estudios+Superiores+de+Ecatepec/@19.5102753,-99.0423489,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1fa94a2bf91f9:0x700d93a5d515a259!8m2!3d19.5102753!4d-99.0401602";
              } else if (label == "WEB_SITE") {
                select_url =
                    "http://biblioteca.tese.edu.mx/tese2010/cidefault.aspx?id_a=b1";
              }
              var res = await UrlLaunch_Services()
                  .launchUniversalLinkIos(Uri.parse(select_url));
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
