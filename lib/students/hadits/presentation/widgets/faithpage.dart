import 'package:flutter/material.dart';

class FaithPage extends StatelessWidget {
  const FaithPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          'Faith',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green[400],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Quran Say About Faith",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[400],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.green[50],
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'سورۃ الاخلاص (112:1-4)',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'قُلْ هُوَ اللّهُ أَحَدٌ ۝ اللّهُ الصَّمَدُ ۝ لَمْ يَلِدْ وَلَمْ يُولَدْ ۝ وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ۝',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'ترجمہ: کہو! وہ اللہ ایک ہے۔ اللہ بےنیاز ہے۔ نہ اس نے کسی کو جنا اور نہ وہ پیدا کیا گیا۔ اور نہ اس کا کوئی ہمسر ہے۔',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'five foundations of faith',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildFaithPoint(Icons.account_balance, 'اللہ پر ایمان'),
            _buildFaithPoint(Icons.menu_book, 'فرشتوں پر ایمان'),
            _buildFaithPoint(Icons.library_books, 'کتابوں پر ایمان'),
            _buildFaithPoint(Icons.history, 'رسولوں پر ایمان'),
            _buildFaithPoint(Icons.event, 'آخرت پر ایمان'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildFaithPoint(IconData icon, String text) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Icon(icon, color: Colors.green[400]),
        title: Text(text),
      ),
    );
  }
}
