import 'package:belajargetx2/Home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'add_matpel.dart';
import 'edit_kelas.dart';
import 'inDec_screen.dart';
import 'list_screen.dart';
import 'nilai_awal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: ()=>MyApp()),
        GetPage(name: "/editkelas", page: ()=> EditKelas()),
        GetPage(name: "/indec", page: ()=>InDecScreen()),
        GetPage(name: "/listsc", page: ()=>listScreen()),
        GetPage(name: "/matpel", page: ()=>addMatpel()),
        GetPage(name: "/snack", page: ()=>Snack()),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Snack(),
    );
  }

}