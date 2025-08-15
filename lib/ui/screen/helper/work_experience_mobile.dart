import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_flutter_portfolio/framework/controller/portfolio_controller/portfolio_controller.dart';

/// 💼 Work Experience Section (Mobile Optimized)
class WorkExperienceSection extends ConsumerWidget {
  const WorkExperienceSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portfolioWatch = ref.watch(portfolioController);
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(), // So it scrolls with parent
      shrinkWrap: true,
      itemCount: portfolioWatch.workExperienceList.length,
      itemBuilder: (BuildContext context, int index) {
        final item = portfolioWatch.workExperienceList[index];
        return WorkExperienceCard(
          company: item.companyName,
          role: item.role,
          location: item.location,
          period: item.period,
          details: item.companyDetail,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 12.h);
      },
    );
  }
}

/// 💼 Work Experience Card (Mobile Optimized)
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
      color: Colors.black.withOpacity(0.25),
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$company • $location",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.tealAccent,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              role,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              period,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(height: 8.h),
            ...details.map(
                  (d) => Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "• ",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12.sp,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        d,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
