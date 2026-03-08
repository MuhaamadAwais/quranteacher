import 'package:flutter/material.dart';

class CharityPage extends StatefulWidget {
  const CharityPage({super.key});
  @override
  State<CharityPage> createState() => _CharityPageState();
}

class _CharityPageState extends State<CharityPage> {
  final TextEditingController _wealthController = TextEditingController();
  double zakatAmount = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          'Charity',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.purple[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Quran Say About Charity",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[400],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                color: Colors.purple[50],
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        'سورۃ البقرہ (2:261)',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'مَّثَلُ الَّذِيْنَ يُنْفِقُوْنَ اَمْوَالَهُمْ فِيْ سَبِيْلِ اللّٰهِ كَمَثَلِ حَبَّةٍ اَنْۢبَتَتْ سَبْعَ سَنَابِلَ فِيْ كُلِّ سُنْۢبُلَةٍ مِّائَةُ حَبَّةٍ ؕ وَاللّٰهُ يُضٰعِفُ لِمَنْ يَّشَآءُ ؕ وَاللّٰهُ وَاسِعٌ عَلِيْمٌ',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      const Text(
                        ' "جو لوگ اپنے مال اللہ کی راہ میں خرچ کرتے ہیں، ان کے خرچ کی مثال اس دانے جیسی ہے جس سے سات بالیں نکلیں اور ہر بال میں سو دانے ہوں، اور اللہ جس کے لیے چاہے (اُسے) بڑھا چڑھا کر دیتا ہے، اور اللہ وسعت والا، سب کچھ جاننے والا ہے۔"',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Important Notes:",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              Container(
                height: height * 0.17,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple[50],
                ),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.02),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        "نصاب سے زائد دولت کا 2.5٪ حصہ۔\n        ایک قمری سال کے بعد واجب۔\n صرف بالغ اور عاقل مسلمان کے لیے۔\n    مستحق اور اہل افراد کو دیا جائے ",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Calculate Zakat',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              TextField(
                controller: _wealthController,
                keyboardType: TextInputType.number,
                enableInteractiveSelection: true,
                decoration: const InputDecoration(
                  labelText: 'total amount (PKR)',
                  prefixIcon: Icon(Icons.currency_rupee),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    zakatAmount = (double.tryParse(value) ?? 0) * 0.025;
                  });
                },
              ),
              const SizedBox(height: 20),
              Card(
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        'Your Zakat Amount',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${zakatAmount.toStringAsFixed(0)} PKR',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.purple[400],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
