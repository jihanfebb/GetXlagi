import 'package:belajargetx2/Home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class listScreen extends StatelessWidget {
  const listScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('list page'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            TextField(
              controller: hc.namaSiswa,
              decoration: InputDecoration(label: Text("Input nama")),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  hc.AddList(hc.namaSiswa.text);
                }, child: Text("Sumbit")),
          ],
        ),
      ),
    );
  }
}
