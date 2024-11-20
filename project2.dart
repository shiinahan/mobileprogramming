import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const kalkulator());
}

class kalkulator extends StatelessWidget {
  const kalkulator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController pi = TextEditingController();
  TextEditingController r = TextEditingController();
  TextEditingController hasil = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aplikasi kalkulator gen-z"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Wrap(
          //   runSpacing: 20,
          //   children: [
          //     TextField(
          //       controller: bilangan1,
          //       decoration: InputDecoration(
          //           label: Text("masukkan bilangan pertama"),
          //           border: OutlineInputBorder()),
          //     ),
          //     TextField(
          //       controller: bilangan2,
          //       decoration: InputDecoration(
          //           label: Text("masukkan bilangan kedua"),
          //           border: OutlineInputBorder()),
          //     ),
          //     TextField(
          //       controller: hasil,
          //       decoration: InputDecoration(
          //           label: Text("hasil"), border: OutlineInputBorder()),
          //     ),
          //     Row(
          //       children: [
          //         ElevatedButton(
          //           onPressed: () {
          //             setState(() {
          //               int inputnilai1 = int.parse(bilangan1.text);
          //               int inputnilai2 = int.parse(bilangan2.text);
          //               int hasilnilai = inputnilai1 * inputnilai2;
          //               hasil.text = hasilnilai.toString();
          //             });
          //           },
          //           child: Text("ini perkalian"),
          //         ),
          //         ElevatedButton(
          //           onPressed: () {
          //             setState(() {
          //               int inputnilai1 = int.parse(bilangan1.text);
          //               int inputnilai2 = int.parse(bilangan2.text);
          //               int hasilnilai = inputnilai1 + inputnilai2;
          //               hasil.text = hasilnilai.toString();
          //             });
          //           },
          //           child: Text("ini penjumlahan"),
          //         ),
          //         ElevatedButton(
          //           onPressed: () {
          //             setState(() {
          //               int inputnilai1 = int.parse(bilangan1.text);
          //               int inputnilai2 = int.parse(bilangan2.text);
          //               int hasilnilai = inputnilai1 - inputnilai2;
          //               hasil.text = hasilnilai.toString();
          //             });
          //           },
          //           child: Text("ini pengurangan"),
          //         ),
          //         ElevatedButton(
          //           onPressed: () {
          //             setState(() {
          //             double inputnilai1 = double.parse(bilangan1.text);
          //             double inputnilai2 = double.parse(bilangan2.text);
          //             double hasilnilai = inputnilai1 / inputnilai2;
          //             hasil.text = hasilnilai.toString();
          //             });
          //           },
          //           child: Text("ini pembagian"),
          //         ),
          //       ],
          //     )
          //   ],
          // ),
          runSpacing: 20,
          children: [
            TextField(
              controller: pi,
              decoration: InputDecoration(
                  label: Text("masukkan bilangan pertama"),
                  border: OutlineInputBorder()),
            ),
            TextField(
              controller: r,
              decoration: InputDecoration(
                  label: Text("masukkan bilangan kedua"),
                  border: OutlineInputBorder()),
            ),
            TextField(
              controller: hasil,
              decoration: InputDecoration(
                  label: Text("hasil"), border: OutlineInputBorder()),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double pi1 = double.parse(pi.text);
                      double r1 = double.parse(r.text);
                      double hasilnilai = pi1 * pow(r1, 2);
                      hasil.text = hasilnilai.toString();
                    });
                  },
                  child: Text("Luas"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double pi1 = double.parse(pi.text);
                      double r1 = double.parse(r.text);
                      double hasilnilai = 2 * pi1 * r1;
                      hasil.text = hasilnilai.toString();
                    });
                  },
                  child: Text("Keliling"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double pi1 = double.parse(pi.text);
                      double r1 = double.parse(r.text);
                      double hasilnilai = (4/3) * pi1 * pow(r1, 3);
                      hasil.text = hasilnilai.toString();
                    });
                  },
                  child: Text("Volume Lingkaran"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double pi1 = double.parse(pi.text);
                      double r1 = double.parse(r.text);
                      double hasilnilai = 4 * pi1 * pow(r1, 2);
                      hasil.text = hasilnilai.toString();
                    });
                  },
                  child: Text("ini pembagian"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
