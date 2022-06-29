import 'package:centro_informacion/Screens/bibliotecad.dart';
import 'package:centro_informacion/Screens/catalogo_online.dart';
import 'package:centro_informacion/Screens/dashboard_inicio.dart';
import 'package:centro_informacion/Screens/donaciones.dart';
import 'package:centro_informacion/Screens/museo.dart';
import 'package:centro_informacion/Screens/redes_sociales.dart';
import 'package:centro_informacion/Screens/ubicacion.dart';
import 'package:centro_informacion/inicio.dart';
import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: Container(
        color: Color.fromARGB(255, 247, 99, 14),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 99, 14),
              ),
              child: Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image.asset(
                      'assets/logo_centro_informacion.png',
                      width: 110,
                      height: 110,
                    ),
                    elevation: 10,
                  ),
                  const SizedBox(height: 5),
                  Text("www.biblioteca.tese.edu.mx")
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text('Inicio',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => dashInicio()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.monetization_on_outlined,
                color: Colors.white,
              ),
              title: Text('Donaciones',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                //Navigator.pushNamed(context, ProfilePage.id);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => donaciones()),
                );
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.museum,
                color: Colors.white,
              ),
              title: Text('Museo de la pluma',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                /* Navigator.pushNamed(context, DirectorioEmpresarial.id); */
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => museo_pluma()),
                );
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.person_add_sharp,
                color: Colors.white,
              ),
              title: Text('Redes Sociales',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                /* Navigator.pushNamed(context, Publicidad.id); */
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => redes()),
                );
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              title: Text('Ubicacion',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                /* Navigator.pushNamed(context, Mod_Servicios.id); */
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ubicacion()),
                );
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.laptop_chromebook_sharp,
                color: Colors.white,
              ),
              title: Text('Catalogo en línea',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                /* Navigator.pushNamed(context, Mod_Servicios.id); */
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => catalogo()),
                );
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.book_online_outlined,
                color: Colors.white,
              ),
              title: Text('Biblioteca digital',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                /* Navigator.pushNamed(context, Mod_Servicios.id); */
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => biblioteca()),
                );
              },
            ),
            const SizedBox(height: 60),
            Divider(
              height: 8.0,
              color: Colors.white,
              indent: 16.0,
              endIndent: 16.0,
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text('Salir',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              onTap: () {
                /* Navigator.pushNamed(context, Login.id); */
                /*
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );*/
              },
            ),
          ],
        ),
      ),
    );
  }
}
