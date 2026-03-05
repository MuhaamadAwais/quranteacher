import 'package:flutter/material.dart';

class ChildrenTrainingPage extends StatefulWidget {
  const ChildrenTrainingPage({super.key});

  @override
  State<ChildrenTrainingPage> createState() => _ChildrenTrainingPageState();
}

class _ChildrenTrainingPageState extends State<ChildrenTrainingPage> {
  bool _box1Expanded = false;
  bool _box2Expanded = false;
  bool _box3Expanded = false;
  bool _box4Expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Children Training',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.teal[400],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Title
            const Text(
              'اسلام میں بچوں کی تربیت',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            // Container 1 - نماز
            _buildSimpleContainer(
              title: 'نماز کی تربیت',
              icon: Icons.mosque,
              color: Colors.green,
              detail: '''بچوں کو 7 سال کی عمر سے نماز کا حکم دیں
10 سال کی عمر میں نافرمانی پر ہلکی مار جائز ہے

طریقہ:
• پہلے کھیل میں سکھائیں
• والدین پہلے خود ادا کریں
• مسجد لے جائیں
• انعام دیں (میٹھی چیزیں، تعریف)

: "7 سال میں حکم، 10 سال میں مار"''',
              isExpanded: _box1Expanded,
              onTap: () => setState(() => _box1Expanded = !_box1Expanded),
            ),

            const SizedBox(height: 15),

            // Container 2 - اخلاق
            _buildSimpleContainer(
              title: 'اخلاق بنائیں',
              icon: Icons.favorite,
              color: Colors.orange,
              detail: '''روزانہ سکھائیں:
• سچ بولنا 
• بوڑوں کی عزت
• دوسروں کی مدد کرنا
عملی:
• غلطی معاف کرنا سکھائیں
• "شکریاادا کرنا 
• مسکرانا سکھائیں
 ''',
              isExpanded: _box2Expanded,
              onTap: () => setState(() => _box2Expanded = !_box2Expanded),
            ),

            const SizedBox(height: 15),

            // Container 3 - قرآن
            _buildSimpleContainer(
              title: 'قرآن سکھائیں',
              icon: Icons.book,
              color: Colors.blue,
              detail: '''عمر 4-5 سال سے شروع کریں

پہلے:
1. سورۃ الفاتحہ
2. 5 چھوٹی سورتیں  
3. روزانہ 5 منٹ

اہم:
• ترجمہ سمجھائیں
• استاد رکھیں
• تجوید سیکھیں
• حافظ بنائیں

فائدہ: 80% قرآن سمجھ آئے گا''',
              isExpanded: _box3Expanded,
              onTap: () => setState(() => _box3Expanded = !_box3Expanded),
            ),

            const SizedBox(height: 15),

            // Container 4 - موبائل
            _buildSimpleContainer(
              title: 'حضرت محمد ﷺ کی سیرت',
              icon: Icons.menu_book,
              color: Colors.lightGreen,
              detail: '''موضوعات:
• پیدائش اور ابتدائی زندگی
• نبوت کا آغاز
• ہجرت اور مدینہ میں زندگی
• غزوات اور امن کی کوششیں
• اخلاق اور معاشرتی اصول

اہم سبق:
• صبر اور استقامت
• عدل اور انصاف
• دوسروں کے ساتھ حسن سلوک
• تعلیم اور علم کی اہمیت
• اللہ پر توکل اور عبادت کی پابندی''',
              isExpanded: _box4Expanded,
              onTap: () => setState(() => _box4Expanded = !_box4Expanded),
            ),
            const SizedBox(height: 30),

            // Daily Routine Button
            // ElevatedButton.icon(
            //   onPressed: () {
            //     showDialog(
            //       context: context,
            //       builder: (context) => AlertDialog(
            //         title: const Text('روزانہ شیڈول'),
            //         content: const Column(
            //           mainAxisSize: MainAxisSize.min,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text('🌅 صبح 6: فجر + قرآن'),
            //             Text('📚 صبح 8: پڑھائی'),
            //             Text('🏃 دوپہر 4: کھیل'),
            //             Text('🕌 شام 8: مغرب'),
            //             Text('😴 رات 10: سونا'),
            //           ],
            //         ),
            //         actions: [
            //           TextButton(
            //             onPressed: () => Navigator.pop(context),
            //             child: const Text('ٹھیک ہے'),
            //           ),
            //         ],
            //       ),
            //     );
            //   },
            //   icon: const Icon(Icons.schedule),
            //   label: const Text('روزانہ روٹین دیکھیں'),
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.teal[400]!,
            //     minimumSize: const Size(double.infinity, 55),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildSimpleContainer({
    required String title,
    required IconData icon,
    required Color color,
    required String detail,
    required bool isExpanded,
    required VoidCallback onTap,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          // Header
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
              ),
              child: Row(
                children: [
                  Icon(icon, color: color, size: 30),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                  ),
                  Icon(
                    isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: color,
                  ),
                ],
              ),
            ),
          ),

          // Expandable Content
          if (isExpanded)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: Text(
                detail,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.7,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
        ],
      ),
    );
  }
}
