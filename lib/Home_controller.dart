import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  static final HomeController _instance = HomeController._internal();

  HomeController._internal();

  factory HomeController() {
    return _instance;
  }

  // HomeController._internal();

  TextEditingController namaController =TextEditingController();
  TextEditingController namaSiswa =TextEditingController();
  TextEditingController namaMatpel =TextEditingController();
  TextEditingController jnsMatpel =TextEditingController();

  RxBool isOpen= RxBool(true);
  RxBool isClose= RxBool(false);

  RxInt count = RxInt(0);
  RxList<String> siswaName = RxList<String>([]);
  RxMap<String, String> ListMatpel = RxMap<String, String>({});

  // simple state
    String nama='';

    void GantiNilai(String mn){
      nama=mn;
      update();
  }

    // RxBool isOpen = RxBool(true);

    void setIsOpen(bool Open){
      isOpen(Open);
      print(isOpen.value);
    }

    RxInt x = 0.obs;

    void tambah(){
      x.value++;
    }

    void kurang(){
      x.value--;
    }

    void AddList (String nama) {
      siswaName.add(nama);
      print(siswaName.value);
  }

    void addMapel(String namaMapel, String kodeMapel) {
      ListMatpel[namaMapel] = kodeMapel;
    }

    void tambahKeList(String nama) {
      siswaName.add(nama);
      namaSiswa.text ='';
      print(namaSiswa.value);
    }

    void addSiswa(String nama) {
      siswaName.add(nama);
      namaSiswa.text ='';
      print(namaSiswa.value);
    }

    void removeSiswa(int index) {
      siswaName.removeAt(index);
    }

    void addMatpel(String nmMatpel, String jnsMatpel) {
      ListMatpel[nmMatpel] = jnsMatpel;
      print(ListMatpel.value);
    }

  RxInt angka = RxInt(1);
  void addAngka () {
    if(tog.value) return;
    if(angka.value == 35){
      tog(true);
      return;
    }
    angka.value++;
  }

  void removeAngka () {
    if(tog.value) return;
    if(angka.value - 1 <= 0) return;
    angka.value--;
  }

  RxBool tog = RxBool(false);
  void setTog (bool toggle) {
    tog(toggle);
  }
}