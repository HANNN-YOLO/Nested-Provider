import 'package:flutter/cupertino.dart';
import '../models/barang.dart';
import 'package:faker/faker.dart';
import 'dart:math';

class Barangku with ChangeNotifier{

  final List<Barang> mydata = List.generate(50, (index) {
    return Barang(
      id: index,
      nama: faker.person.name(),
      urlgambar: "https://picsum.photos/id/$index/200/300",
      deks: faker.lorem.sentence(),
      jumlah: 0 + index,
      harga: 10000 + Random().nextInt(500000000),
    );
  });

  List<Barang> get dumydata{
    return mydata;
  }

  // void status(){
  //   favorito = favorito;
  // }
}