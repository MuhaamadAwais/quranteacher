import 'package:flutter/material.dart';
import 'package:quranteacher/roleselector.dart';

Future<void> showLogoutDialog(BuildContext context) async {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (dialogContext) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: Row(
          children: [
            Icon(Icons.logout, color: Colors.red),
            SizedBox(width: 10),
            Text("Logout"),
          ],
        ),
        content: Text(
          "Should you logout this?",
          style: TextStyle(fontSize: 15),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext);
            },
            child: Text("Cancel", style: TextStyle(color: Colors.grey[700])),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            onPressed: () {
              Navigator.pop(dialogContext);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => Roleselector()),
                (route) => false,
              );
            },
            child: Text("Logout", style: TextStyle(color: Colors.white)),
          ),
        ],
      );
    },
  );
}
