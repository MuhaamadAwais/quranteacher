//student_attendance_screen.dart
import 'package:flutter/material.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/studentattancemodel.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class StudentAttendanceScreen extends StatefulWidget {
  const StudentAttendanceScreen({super.key});

  @override
  State<StudentAttendanceScreen> createState() =>
      _StudentAttendanceScreenState();
}

class _StudentAttendanceScreenState extends State<StudentAttendanceScreen> {
  List<Studentattancemodel> myAttendance = [
    Studentattancemodel(
      id: '1',
      name: 'Ahmed Ali',
      rollNo: 'ST001',
      group: 'Juz 1',
      badge: 'Basic Quran',
      isPresent: true,
      date: DateTime(2026, 3, 23),
    ),
    Studentattancemodel(
      id: '1',
      name: 'Ahmed Ali',
      rollNo: 'ST001',
      group: 'Juz 1',
      badge: 'Basic Quran',
      isPresent: true,
      date: DateTime(2026, 3, 22),
    ),
    Studentattancemodel(
      id: '1',
      name: 'Ahmed Ali',
      rollNo: 'ST001',
      group: 'Juz 2',
      badge: 'Basic Quran',
      isPresent: false,
      date: DateTime(2026, 3, 21),
    ),
    Studentattancemodel(
      id: '1',
      name: 'Ahmed Ali',
      rollNo: 'ST001',
      group: 'Juz 1',
      badge: 'Basic Quran',
      isPresent: true,
      date: DateTime(2026, 3, 20),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final presentCount = myAttendance.where((s) => s.isPresent).length;
    final total = myAttendance.length;
    final percentage = total > 0
        ? (presentCount / total * 100).toStringAsFixed(1)
        : '0';

    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        children: [
          // App bar
          const TopcommonContainer(title: 'My Attendance'),

          // Expanded ListView for everything else
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Stats Cards
                Container(
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 33, 61, 243),
                        Color.fromARGB(255, 66, 72, 245),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(blurRadius: 20, color: Colors.black12),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildStatCard(
                        presentCount.toString(),
                        'Present',
                        Icons.check_circle,
                        Colors.green,
                      ),
                      _buildStatCard(
                        (total - presentCount).toString(),
                        'Absent',
                        Icons.cancel,
                        Colors.red,
                      ),
                      _buildStatCard(
                        '$percentage%',
                        'Overall',
                        Icons.trending_up,
                        Colors.orange,
                      ),
                    ],
                  ),
                ),

                // Profile Card
                Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    height: height * 0.15,
                    width: width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color.fromARGB(100, 164, 162, 164),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: width * 0.04),
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.blue[100],
                          child: const Icon(Icons.person, size: 40),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Ahmed Ali',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'ST001 | Juz 1 |\n Basic Quran Badge',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // History Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Attendance History',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Chip(label: Text('${myAttendance.length} sessions')),
                  ],
                ),
                const SizedBox(height: 16),

                // Attendance ListView.builder
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: myAttendance.length,
                  itemBuilder: (context, index) {
                    final record = myAttendance[index];
                    return Card(
                      margin: const EdgeInsets.only(bottom: 12),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(20),
                        leading: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: record.isPresent ? Colors.green : Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            record.isPresent ? Icons.check : Icons.close,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        title: Text(
                          '${record.group} - ${record.rollNo}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '${record.rollNo} | ${record.date.day} ${['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'][record.date.month - 1]}',
                        ),
                        trailing: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            record.isPresent ? 'Present' : 'Absent',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
    String value,
    String label,
    IconData icon,
    Color color,
  ) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color, size: 30),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(label, style: const TextStyle(color: Colors.white70)),
      ],
    );
  }
}
