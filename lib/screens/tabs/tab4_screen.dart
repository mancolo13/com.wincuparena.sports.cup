import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final scorers = [
      {'pos': '1', 'name': 'Erling Haaland', 'team': 'Man City', 'goals': '9'},
      {'pos': '2', 'name': 'Kylian Mbappe', 'team': 'Real Madrid', 'goals': '7'},
      {'pos': '3', 'name': 'Vinicius Junior', 'team': 'Real Madrid', 'goals': '6'},
      {'pos': '4', 'name': 'Bukayo Saka', 'team': 'Arsenal', 'goals': '5'},
      {'pos': '5', 'name': 'Harry Kane', 'team': 'Bayern', 'goals': '5'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Standings'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
              ),
              child: const Text('Cup Top Scorers', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            const SizedBox(height: 16),
            ...scorers.map((s) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(color: AppTheme.primaryColor.withValues(alpha: 0.15), shape: BoxShape.circle),
                    child: Center(child: Text(s['pos']!, style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold))),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(s['name']!, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                        Text(s['team']!, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                      ],
                    ),
                  ),
                  Text('${s["goals"]} goals', style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 14)),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
