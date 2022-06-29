import 'package:centro_informacion/components/appbar.dart';
import 'package:flutter/material.dart';

import '../services/urllaunch_services.dart';

class museo_pluma extends StatelessWidget {
  const museo_pluma({Key? key}) : super(key: key);

  final String AdressMuseum = "Av. Tecnológico s/n \n"
      "Col. Valle de Anáhuac\n"
      "CP 55210 \n"
      "Ecatepec de Morelos, Ecatepec de Morelos, Estado de México \n"
      "Tels.: 55 5000 2353, 55 5000 2300 \n";
  @override
  Widget build(BuildContext context) {
    final String _title = "Museo de la pluma";
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
                    'Museo de la Pluma.\nIng. Jesús Humberto Rodríguez Lozano',
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
                Text(AdressMuseum),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Horarios y costos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Abierto al público de lunes a viernes de 9 a 18 hrs.\nsábados de 8 a 14 hrs. \nEntrada libre',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                const SizedBox(height: 15.0),
                Image.asset("assets/mapa_museum.png")
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

    final Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
          'Datos generales - '
          'Peculiar colección en la que se incluyen plumas de varios estilos, materiales y formas. El acervo supera las ocho mil plumas, de las cuales son exhibidas cerca de dos mil. Mediante utensilios elaborados con huesos de animales, que fueron utilizados primitivamente, plumas de ave y tinteros, el propietario original y coleccionista ingeniero Humberto Rodríguez Lozano logra recrear la historia de la pluma. Entre las plumas de personajes conocidos se encuentran las de Octavio Paz, Carlos Monsiváis, Manuel M. Ponce, un manguillo de Gabriela Mistral y unas plumillas de Salvador Dalí. También se incluye las utilizadas en momentos históricos, como una de Lázaro Cárdenas con la que firmó la expropiación petrolera; otras con las que se firmaron las Constituciones de 1857 y 1917; la más grande y la más pequeña del mundo, o bien una que viajó al espacio. El museo se localiza en el edificio del Centro de Información del Tecnológico de Estudios Superiores de Ecatepec (TESE).',
          softWrap: true,
          textAlign: TextAlign.justify),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: appbarapp(_title),
        body: ListView(
          children: <Widget>[
            Image.network(
              'https://sic.cultura.gob.mx/galeria_imagen/559c05fbde128PLUMA_PRESIDENTE_2_MUSEO.JPG',
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
              var select_url;
              if (label == "ROUTE") {
                select_url =
                    "https://www.google.com/maps/place/Museo+De+La+Pluma/@19.5105525,-99.0422936,17z/data=!3m1!4b1!4m5!3m4!1s0x85d1fa94a6ce4a2d:0x2ae37eda39251882!8m2!3d19.5102307!4d-99.0401463";
              } else if (label == "WEB_SITE") {
                select_url =
                    "https://sic.cultura.gob.mx/ficha.php?table=museo&table_id=712";
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
