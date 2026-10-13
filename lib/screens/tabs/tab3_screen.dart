import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WinCupArena • Brackets'),
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
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Сетка 1/4 Финала', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(height: 4),
                  Text('Победители пар выходят в Полуфинал 18 октября', style: TextStyle(color: Colors.white70, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildPair('Пара A', 'Реал М.', 'Бавария', '2 - 1'),
            _buildPair('Пара B', 'Арсенал', 'ПСЖ', '1 - 1'),
            _buildPair('Пара C', 'Ман Сити', 'Интер', '3 - 0'),
            _buildPair('Пара D', 'Барселона', 'Боруссия Д.', '2 - 0'),
          ],
        ),
      ),
    );
  }

  Widget _buildPair(String title, String team1, String team2, String score) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.white54, fontSize: 11, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(team1, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
              Text(score.split(' - ')[0], style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold)),
            ],
          ),
          const Divider(height: 12, color: Colors.white10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(team2, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
              Text(score.split(' - ')[1], style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
