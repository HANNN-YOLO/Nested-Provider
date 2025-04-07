import 'package:flutter/material.dart';
import '../providers/barangku.dart';
import '../models/barang.dart';
import '../screens/afterawal.dart';
import 'package:provider/provider.dart';

class tampilan extends StatelessWidget {
  // const tampilan({super.key, required this.dataku});

  // final List<Barang> dataku;
  //
  // final int id;
  // final String nama;
  // final String urlgambar;
  //
  // tampilan(this.id, this.nama, this.urlgambar);

  @override
  Widget build(BuildContext context) {
    final link = Provider.of<Barang>(context);
    // final dataku = data.dumydata;

    return Container(
      color: Colors.grey,
      width: 200,
      padding: EdgeInsets.all(5),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacementNamed(
              Afterawal.nameroute,
              arguments: link.id.toString(),
              // id.toString(),
            );
          },
          child: Container(
            margin: EdgeInsets.all(5),
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(link.urlgambar),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        footer: GridTileBar(
          title: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: 300,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          link.status();
                        },
                        icon:
                            (link.favorito)
                                ? Icon(Icons.favorite)
                                : Icon(Icons.favorite_border_outlined),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        link.nama,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_cart),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
