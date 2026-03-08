import 'package:flutter/material.dart';

class PrayerPage extends StatelessWidget {
  const PrayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text('Prayer', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[400],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Quran Say About Prayer',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 15),
            Card(
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      'سورۃ البقرہ (2:43)',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'وَأَقِيمُوا الصَّلَاةَ وَآتُوا الزَّكَاةَ وَارْكَعُوا مَعَ الرَّاكِعِينَ',
                      style: TextStyle(fontSize: 18),
                    ),
                    const Text(
                      'نماز قائم کرو اور زکوٰۃ دو اور رکوع کرنے والوں کے ساتھ رکوع کرو۔',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Obligations of prayer',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            prayercontainer("Fajir", "فجر"),
            prayercontainer("Zohor", "ظہر"),
            prayercontainer("Asar", "عصر"),
            prayercontainer("Magrib", "مغرب"),
            prayercontainer("Isha", "عشاء"),
            // Qibla duration container
            SizedBox(height: height * 0.01),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: height * 0.23,
                width: width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white12,
                ),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.01),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "قبلہ کی سمت معلوم کرنے کا طریقہ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        textAlign: TextAlign.right, // متن دائیں جانب
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      "مقام (لوکیشن) کی رسائی کی اجازت دیں\n"
                      " اپنا فون سیدھا پکڑیں\n"
                      " اسکرین پر تیر کی نشاندہی پر عمل کریں\n"
                      " جب تیر سیدھا ہو جائے تو آپ قبلہ کی طرف ہیں\n"
                      "اب آپ نماز پڑھ سکتے ہیں",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.right, // متن دائیں جانب
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget prayercontainer(String engtext, String urdutext) {
  return GridView.count(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 1,
    childAspectRatio: 5,
    padding: const EdgeInsets.all(10),
    children: [
      Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          hoverColor: Colors.lightGreen,
          title: Text(engtext, style: TextStyle(fontSize: 20)),
          trailing: Text(urdutext, style: TextStyle(fontSize: 20)),
        ),
      ),

      // Chip(label: Text('فجر'), backgroundColor: Colors.amber),
      // Chip(label: Text('ظہر'), backgroundColor: Colors.orange),
      // Chip(label: Text('عصر'), backgroundColor: Colors.deepOrange),
      // Chip(label: Text('مغرب'), backgroundColor: Colors.red),
      // Chip(label: Text('عشاء'), backgroundColor: Colors.purple),
    ],
  );
}
