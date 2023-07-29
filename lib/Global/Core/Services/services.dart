// import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import '../../../firebase_options.dart';
import '../Class/HiveBox.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class Services extends GetxService {
  //i use it for intialize all data i need insted of intialize it in the main funcation
  late Box box;
  late Box? setttingsBox;
  Future<Services> init() async {
    // await Firebase.initializeApp(
    //     options: DefaultFirebaseOptions.currentPlatform);
    await Hive.initFlutter();
    box = await Hive.openBox(HiveBox.authBox);
    setttingsBox = await Hive.openBox(HiveBox.settingsBox);
    // IO.Socket socket = IO.io(
    //     ' https://530e-5-155-51-44.eu.ngrok.io',
    //     IO.OptionBuilder().setTransports(["websocket"]).setQuery(
    //         {'username': 'mhamad'}).build());
    // socket.onConnect((_) {
    //   print('connect');
    //   socket.emit('msg', 'test');
    //   socket.on('event', (data) => print(data));
    //   socket.onDisconnect((_) => print('disconnect'));
    //   socket.on('fromServer', (_) => print(_));
    //   socket.onConnectTimeout((data) => "Connecting Error : $data");
    // });

    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => Services().init());
}
