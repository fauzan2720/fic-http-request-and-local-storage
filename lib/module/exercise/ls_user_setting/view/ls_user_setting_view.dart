import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LsUserSettingView extends StatefulWidget {
  const LsUserSettingView({Key? key}) : super(key: key);

  Widget build(context, LsUserSettingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsUserSetting"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /*
              TODO: --
              Ini sangat mudah, cukup ambil nilai storage-nya dan atur sebagai
              value dari SwitchListTile.
              Berikut adalah contoh-nya:
              */
              SwitchListTile(
                value: mainStorage.get("dev_mode") ?? false,
                title: const Text("Dev mode"),
                onChanged: (value) {
                  var current = mainStorage.get("dev_mode") ?? false;
                  mainStorage.put("dev_mode", !current);
                  controller.setState(() {});
                },
              ),

              /*
              1. Ok, dengan contoh di atas, buatlah beberapa pengaturan
              dengan SwitchListTile!
              ! Pastikan key yang digunakan berbeda!
              ! sesuaikan label-nya

              - Dark mode
              - Login as Admin
              - Experimental mode
              - Offline mode
              - Cache mode

              2. Coba ubah ke5 switchlist tile yang baru dibuat menjadi:
              - Dark mode => true
              - Login as Admin => false
              - Experimental mode => true
              - Offline mode => false
              - Cache mode => true

              Jika perubahan yang kamu lakukan tidak mempengarungi
              Switch yang lainnya, maka task ini selesai!
              */
              SwitchListTile(
                value: mainStorage.get("dark_mode") ?? true,
                title: const Text("Dark Mode"),
                onChanged: (value) {
                  var current = mainStorage.get("dark_mode") ?? true;
                  mainStorage.put("dark_mode", !current);
                  controller.setState(() {});
                },
              ),
              SwitchListTile(
                value: mainStorage.get("login_as_admin") ?? false,
                title: const Text("Login as Admin"),
                onChanged: (value) {
                  var current = mainStorage.get("login_as_admin") ?? false;
                  mainStorage.put("login_as_admin", !current);
                  controller.setState(() {});
                },
              ),
              SwitchListTile(
                value: mainStorage.get("experimental_mode") ?? true,
                title: const Text("Experimental mode"),
                onChanged: (value) {
                  var current = mainStorage.get("experimental_mode") ?? true;
                  mainStorage.put("experimental_mode", !current);
                  controller.setState(() {});
                },
              ),
              SwitchListTile(
                value: mainStorage.get("offline_mode") ?? false,
                title: const Text("Offline mode"),
                onChanged: (value) {
                  var current = mainStorage.get("offline_mode") ?? false;
                  mainStorage.put("offline_mode", !current);
                  controller.setState(() {});
                },
              ),
              SwitchListTile(
                value: mainStorage.get("cache_mode") ?? true,
                title: const Text("Cache mode"),
                onChanged: (value) {
                  var current = mainStorage.get("cache_mode") ?? true;
                  mainStorage.put("cache_mode", !current);
                  controller.setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LsUserSettingView> createState() => LsUserSettingController();
}
