import 'package:assignment_5/cart.dart';
import 'package:assignment_5/product.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  int foundNumber() {
    int? countt = 0;
    for (var i = 0; i < product.length; i++) {
      if (product[i]['count'] > 0) {
        // countt = (countt! + product[i]['count']) as int?;
        countt = countt! + 1;
      }
    }
    return countt!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: product.length,
          itemBuilder: (context, index) {
            int c = product[index]['count'];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("product ${index.toString()}"),
                subtitle: Text("\$${product[index]["price"]}"),
                trailing: SingleChildScrollView(
                  child: SizedBox(
                    // height: 180,
                    child: Column(
                      children: [
                        Text("Counter: ${c.toString()}"),
                        ElevatedButton(
                            onPressed: () {
                              if (c < 5) {
                                product[index]['count']++;
                                c = c + 1;
                                // count = count + 1;

                                setState(() {});
                              } else {
                                _showAlertDialog("product ${index.toString()}");
                              }
                            },
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int cou = foundNumber();

          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CartPage(
                      count: cou,
                    )),
          );
        },
        child: const Icon(
          Icons.shopping_cart,
        ),
      ),
    );
  }

  _showAlertDialog(String text) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                const Text(
                  "Congratulations!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('You\'ve Brought 5 $text'),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text('ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
