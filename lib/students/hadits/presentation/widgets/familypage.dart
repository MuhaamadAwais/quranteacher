import 'package:flutter/material.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/childrentrainingpage.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Family',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red[400],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Islam Say About Family',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.red[50],
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: const Text(
                        'سورۃ الاسراء (17:23)',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'وَقَضَىٰ رَبُّكَ أَلَّا تَعْبُدُوا إِلَّا إِيَّاهُ وَبِالْوَالِدَيْنِ إِحْسَانًا',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'اور تیرے رب نے فیصلہ فرما دیا کہ اس کے سوا کسی کی عبادت نہ کرو اور ماں باپ کے ساتھ احسان کرو۔',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Family rights:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(height: 10),
            _buildFamilyRight(
              Icons.child_care,
              'اولاد کی تربیت',
              icon2: Icons.done_rounded,
            ),
            _buildFamilyRight(
              Icons.favorite,
              'بیوی کے حقوق',
              icon2: Icons.done_rounded,
            ),
            _buildFamilyRight(
              Icons.man,
              'شوہر کے فرائض',
              icon2: Icons.done_rounded,
            ),
            _buildFamilyRight(
              Icons.elderly,
              'والدین کی خدمت',
              icon2: Icons.done_rounded,
            ),
            _buildFamilyRight(
              Icons.people,
              'رشتہ داروں سے رابطہ',
              icon2: Icons.done_rounded,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChildrenTrainingPage(),
                  ),
                );
              },
              child: _buildFamilyRight(
                Icons.child_care,
                "بچوں کی تربیت",
                icon2: Icons.arrow_forward,
              ),
            ),

            //const SizedBox(height: 10),
            // Row(
            //   children: [
            //     Expanded(
            //       child: ElevatedButton.icon(
            //         onPressed: () {},
            //         icon: const Icon(Icons.person_4_sharp),
            //         label: const Text('نکاح گائیڈ'),
            //         style: ElevatedButton.styleFrom(
            //           backgroundColor: Colors.red[400],
            //         ),
            //       ),
            //     ),
            //     const SizedBox(width: 10),
            //     Expanded(
            //       child: ElevatedButton.icon(
            //         onPressed: () {},
            //         icon: const Icon(Icons.school),
            //         label: const Text('بچوں کی تربیت'),
            //         style: ElevatedButton.styleFrom(
            //           backgroundColor: Colors.red[400],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildFamilyRight(IconData icon, String? text, {IconData? icon2}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Icon(icon, color: Colors.red[400]),
        title: Text(text!),
        // subtitle: const Text('قرآن و سنت سے'),
        trailing: icon2 != null ? Icon(icon2, color: Colors.red[400]) : null,
      ),
    );
  }
}
