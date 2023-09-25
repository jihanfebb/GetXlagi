import 'package:belajargetx2/Home_controller.dart';
// import 'package:belajargetx2/Second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditKelas extends StatelessWidget {
  const EditKelas({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text ('Edit Kelas'),
        actions: [
          IconButton(onPressed: () {
            Get.bottomSheet(Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              width: 1000,
              height: 100,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.toNamed("/indec");
                        }, child: Text('Increase/Decrease')),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed("/listsc");
                        }, child: Text('List screen')),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ));
          }, icon: Icon(Icons.edit_note_outlined))
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: TextField(
              controller: hc.namaController,
              decoration: InputDecoration(
                  labelText: 'input nama'
              ),
              onSubmitted: (value) {
                Get.snackbar('nilai dari variabel nama adalah: ', hc.nama,
                    snackPosition: SnackPosition.TOP,
                    duration: Duration(seconds: 2));
                hc.GantiNilai(hc.namaController.text);
                // Get.defaultDialog(
                //   title: "nama yang di input",
                //   middleText: hc.namaController.text,
                //   onConfirm: (){
                //     Get.to(SecondScreen(), arguments: hc.namaController.text);
                //   });
              },
            ),
          ),
          SizedBox(height: 10),
          // Obx(()=> Text(hc.nama.value)),
          GetBuilder<HomeController>(builder: (hc){
            return Text(hc.nama);
          }),
      ]),
    );
  }
}