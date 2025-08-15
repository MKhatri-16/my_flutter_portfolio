
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../framework/controller/portfolio_controller/portfolio_controller.dart';

/// 💼 Work Experience Section
class WorkExperienceSection extends ConsumerWidget {
  const WorkExperienceSection({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final portfolioWatch = ref.watch(portfolioController);
    return  ListView.separated(
      shrinkWrap: true,
      itemCount: portfolioWatch.workExperienceList.length,
      itemBuilder: (BuildContext context, int index) {
        return WorkExperienceCard(
          company: portfolioWatch.workExperienceList[index].companyName,
          role: portfolioWatch.workExperienceList[index].role,
          location: portfolioWatch.workExperienceList[index].location,
          period:portfolioWatch.workExperienceList[index].period,
          details:portfolioWatch.workExperienceList[index].companyDetail,
        );

      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height:0);
      },
    );
  }
}

/// 💼 Work Experience Card
class WorkExperienceCard extends StatelessWidget {
  final String company;
  final String role;
  final String location;
  final String period;
  final List<String> details;

  const WorkExperienceCard({
    super.key,
    required this.company,
    required this.role,
    required this.location,
    required this.period,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 3,
      margin:  EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding:  EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$company • $location",
                style:  TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.tealAccent)),
             SizedBox(height: 4),
            Text(role,
                style:  TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
             SizedBox(height: 4),
            Text(period,
                style:  TextStyle(color: Colors.white70, fontSize: 14)),
             SizedBox(height: 8),
            ...details
                .map((d) => Padding(
              padding:  EdgeInsets.only(bottom: 4.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("• ",
                      style: TextStyle(color: Colors.white70)),
                  Expanded(
                      child: Text(d,
                          style:
                          const TextStyle(color: Colors.white70))),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
