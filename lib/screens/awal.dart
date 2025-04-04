import 'package:flutter/material.dart';
import '../models/barang.dart';
import 'package:try_nested/screens/afterawal.dart';
import 'package:provider/provider.dart';
import '/providers/barangku.dart';
import '../widgets/datagrid.dart';
import '../widgets/berasalawal.dart';

class Awal extends StatelessWidget {
  static const nameroute = "/Awal";

  @override
  Widget build(BuildContext context) {
    // final List<Barang> mydata = List.generate(50, (index) {
    //   return Barang(
    //     id: index,
    //     nama: faker.person.name(),
    //     urlgambar: "https://picsum.photos/id/$index/200/300",
    //     deks: faker.lorem.sentence(),
    //     jumlah: 0 + index,
    //     harga: 10000 + Random().nextInt(500000000),
    //   );
    // });

    final data = Provider.of<Barangku>(context);
    final dataku = data.dumydata;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: NetworkImage(
                "https://i.pinimg.com/736x/c5/8d/3e/c58d3e008e9f1650234287a0077c33fb.jpg",
              ),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        title: Text("Shop Shiki", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          // Pencarian
          Container(
            padding: EdgeInsets.all(10),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  height: 100,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan),
                      ),
                      hintText: "Masukkan Pencarian",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                    ),
                    onPressed: () {},
                    child: Text("Cari", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          // Tombol Promo
          Container(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Kiri
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Gratis Ongkir",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Only Makassar",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                // Kanan
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Diskon 50%",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_cart),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Grid Produk
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: builder(),
            ),
          ),
        ],
      ),
    );
  }
}
