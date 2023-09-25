import 'package:belajargetx2/Home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class addMatpel extends StatelessWidget {
  const addMatpel({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.put(HomeController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: hc.namaMatpel,
              decoration: InputDecoration(label: Text("Input Nama")),
            ),
            TextField(
              controller: hc.jnsMatpel,
              decoration: InputDecoration(label: Text("Input Kode")),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  hc.addMapel(
                      hc.namaMatpel.text, hc.jnsMatpel.text);
                },
                child: Text("Submit")),
            Expanded(
              child: Obx(
                    () => ListView.builder(
                    itemCount: hc.ListMatpel.length,
                    itemBuilder: (context, index) {
                      String key = hc.ListMatpel.keys.elementAt(index);
                      return ListTile(
                        title: Text('${hc.ListMatpel[key]}'),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}