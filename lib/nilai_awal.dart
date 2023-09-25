import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajargetx2/Home_controller.dart';

class Snack extends StatelessWidget {
  const Snack({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = HomeController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text("Nilai Awal Get X",style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: () {
            Get.bottomSheet(
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () => Get.toNamed("/editkelas"),
                          child:const Text("Edit Kelas")),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () => Get.toNamed("/listsc"),
                          child:const Text("Tambah Nama Siswa")),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () => Get.toNamed("/matpel"),
                          child:const Text("Tambah Matpel")),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
            );
          },icon:const Icon(Icons.edit_note_outlined))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              color: Colors.orange,
              child:const Text("XII RPL 2",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20)),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              color: Colors.yellow,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => Text("Jumlah Siswa : ${hc.angka}")),
                  Row(
                    children: [
                      IconButton(onPressed: () {hc.addAngka();}, icon: const Icon(Icons.add)),
                      IconButton(onPressed: () {hc.removeAngka();}, icon: const Icon(Icons.remove)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              color: Colors.yellow,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => Text(hc.tog.value ? "Open" : "Closed")),
                  Obx(() => Switch(
                      value: hc.tog.value,
                      activeColor: hc.tog.value == true ? Colors.green : Colors.red,
                      inactiveThumbColor: Colors.red,
                      onChanged: (value) => HomeController().setTog(value)
                  ))
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              color: Colors.purple,
              child:const Text("Nama Siswa",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20)),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                color: Colors.yellow,
                child:Obx(() =>
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount:hc.siswaName.length,
                        itemBuilder:(context,index) => Text(hc.siswaName[index],style:const TextStyle(fontSize: 16))
                    )
                )
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(5),
              color: Colors.purple,
              child:const Text("Mata Pelajaran",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20)),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                color: Colors.yellow,
                child:Obx(() =>
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount:hc.ListMatpel.length,
                        itemBuilder:(context,index) {
                          String namaKey = hc.ListMatpel.keys.elementAt(index);
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${namaKey}",style:const TextStyle(fontSize: 16)),
                              Text("${hc.ListMatpel[namaKey]}",style:const TextStyle(fontSize: 16))
                            ],
                          );
                        })
                )
            ),
          ],
        ),
      ),

    );
  }
}