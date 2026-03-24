import 'package:flutter/material.dart';
import 'package:quranteacher/students/topcommon_container.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/sessionhistory.dart';

class AttendanceHistoryScreen extends StatelessWidget {
  AttendanceHistoryScreen({super.key});

  // Ye data attendance save karne ke baad yahan aayega
  final List<SessionHistory> historyData = [
    SessionHistory(
      className: 'Surah Al-Fatiha',
      classTitle: 'Juz 1 - Ayat 1-7',
      date: '24 Mar 2026',
      totalStudents: 15,
      presentStudents: 12,
      time: '4:00 PM',
    ),
    SessionHistory(
      className: 'Surah Al-Baqarah',
      classTitle: 'Juz 2 - Ayat 1-5',
      date: '23 Mar 2026',
      totalStudents: 15,
      presentStudents: 14,
      time: '5:00 PM',
    ),
    SessionHistory(
      className: 'Surah Al-Imran',
      classTitle: 'Juz 3 - Ayat 1-10',
      date: '22 Mar 2026',
      totalStudents: 15,
      presentStudents: 10,
      time: '4:30 PM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      // appBar: AppBar(
      //   title: Text(
      //     'Attendance History',
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      //   backgroundColor: Colors.indigo,
      //   foregroundColor: Colors.white,
      //   actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      // ),
      body: Column(
        children: [
          //top container
          TopcommonContainer(title: "Attendance History"),
          // Total Stats
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.teal[300]!],
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStat(
                  '  Total \nClasses',
                  '${historyData.length}',
                  Icons.class_,
                ),
                _buildStat('    Avg \nAttendance', '86%', Icons.trending_up),
                _buildStat('    Total\n Students', '45', Icons.people),
              ],
            ),
          ),

          // History List
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Saved Sessions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Clear All History')));
                },
                label: Text(
                  "Clear All",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(Icons.delete, color: Colors.white),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: historyData.length,
              itemBuilder: (context, index) {
                final session = historyData[index];
                final percentage =
                    (session.presentStudents / session.totalStudents * 100)
                        .toStringAsFixed(0);

                return Card(
                  elevation: 6,
                  margin: EdgeInsets.only(bottom: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [Colors.white, Colors.grey[50]!],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(20),
                      leading: CircleAvatar(
                        backgroundColor: Colors.teal[300],
                        child: Icon(Icons.book, color: Colors.white, size: 28),
                      ),
                      title: Text(
                        session.className,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 4),
                          Text(
                            session.classTitle,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            '${session.date} | ${session.time}',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  '$percentage% (${session.presentStudents}/${session.totalStudents})',
                                  style: TextStyle(
                                    color: Colors.green[700],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        // Detailed student list screen
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              '${session.className} details! 👨‍🎓',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        SizedBox(height: 8),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
