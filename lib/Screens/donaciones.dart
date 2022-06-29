import 'package:centro_informacion/Screens/youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/appbar.dart';
import '../services/urllaunch_services.dart';

class donaciones extends StatelessWidget {
  const donaciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return playerdonations(title: 'Donaciones');
  }
}

class playerdonations extends StatefulWidget {
  playerdonations({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<playerdonations> createState() => _playerdonationsState();
}

class _playerdonationsState extends State<playerdonations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarapp(widget.title),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/donacionlibros.jpg"),
          const SizedBox(height: 35.0),
          Center(
              child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange),
              //padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              //textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => youtube_player(
                          "https://www.youtube.com/watch?v=uXk2MLNRbl8")));
            },
            child: Text("Tutorial para realizar una donacion de libros"),
          )),
          ElevatedButton(
              onPressed: () async {
                var res = await UrlLaunch_Services().launchUniversalLinkIos(
                    Uri.parse(
                        "https://www.myebooks.com/collections/tese?page=1"));
              },
              child: Text("Realizar Donacion")),
          const SizedBox(height: 50.0),
          Image.asset("assets/footer.PNG")
        ],
      ),
    );
  }
}
