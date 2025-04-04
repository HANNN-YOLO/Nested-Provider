import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/barangku.dart';
import '../screens/awal.dart';

class Afterawal extends StatelessWidget{
  static const nameroute = "/Afterwal";
  @override
  Widget build(BuildContext context) {
    final link = ModalRoute.of(context)?.settings.arguments as String;
    final linked = Provider.of<Barangku>(context).dumydata.firstWhere((dat)=> dat.id.toString() == link);

    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: NetworkImage("https://i.pinimg.com/474x/5c/bf/89/5cbf892e2d9d4d86f9a5173cf1327021.jpg"),
              fit: BoxFit.cover,
              alignment: Alignment.topRight
            )
          ),
        ),
        backgroundColor: Colors.cyan,
        title: Text(
            "Produk ke ${link}",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: NetworkImage(linked.urlgambar),
                  fit: BoxFit.cover,
                  alignment: Alignment.center
                )
              ),
            ),
            Container(
              child: ListTile(
                title: Text(linked.nama),
                subtitle: Text(linked.deks),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text("Rp ${linked.harga}"),
                    ),
                    Container(
                      child: Text("Tersisa: ${linked.jumlah.toString()}"),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                        onPressed: (){
                        Navigator.of(context).pushReplacementNamed(Awal.nameroute);
                        },
                        child: Text(
                            "Kembali",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        )
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                        onPressed: (){},
                        child: Text(
                            "Ambil",
                        style: TextStyle(
                          color: Colors.white
                        ),
                        )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}