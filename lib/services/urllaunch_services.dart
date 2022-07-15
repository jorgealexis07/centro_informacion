import 'package:url_launcher/url_launcher.dart';

class UrlLaunch_Services {
  launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  launchUniversalLinkIos(Uri url) async {
    final bool nativeAppLaunchSucceeded = await launchUrl(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    );
    if (!nativeAppLaunchSucceeded) {
      await launchUrl(
        url,
        mode: LaunchMode.inAppWebView,
      );
    }
  }

  launchUniversalMailIos() async {
    final url = Uri(
      scheme: 'mailto',
      path: 'biblioteca@tese.edu.mx',
      query: 'subject=Hello&body=Test',
    );
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      // ignore: avoid_print
      print("Can't launch $url");
    }
  }
}
