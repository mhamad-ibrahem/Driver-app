import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(String url, String method) async {
  final Uri uri = Uri(scheme: method, path: url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw "cant lunch url";
  }
}
