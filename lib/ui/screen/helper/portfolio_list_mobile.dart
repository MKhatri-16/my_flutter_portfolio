import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flutter_portfolio/framework/controller/portfolio_controller/portfolio_controller.dart';
import 'package:my_flutter_portfolio/ui/screen/helper/project_detail_dialog.dart' show ProjectDetailDialog;
import 'package:my_flutter_portfolio/ui/screen/helper/project_detail_dialog_mobile.dart';
import 'package:my_flutter_portfolio/ui/utils/theme/app_colors.dart';
import 'package:my_flutter_portfolio/ui/utils/widgets/common_cache_image.dart';

class ProjectListMobile extends ConsumerWidget {
  const ProjectListMobile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portfolioWatch = ref.watch(portfolioController);
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: portfolioWatch.projectList.length,
      itemBuilder: (BuildContext context, int index) {
        final project = portfolioWatch.projectList[index];
        return Card(
          color: const Color(0xFF1F1F1F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.projectName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  project.projectDescription,
                  style: const TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 12),

                // Optional image preview carousel
                if (project.projectImage.isNotEmpty)
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: project.projectImage.length,
                      itemBuilder: (context, innerIndex) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CacheImage(
                            imageURL: project.projectImage[innerIndex],
                            height: 150,
                            width: 100,
                          ),
                        ),
                      ),
                    ),
                  ),

                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => ProjectDetailDialogMobile(index: index),
                      );
                    },
                    child: Text(
                      'About Project',
                      style: TextStyle(color: AppColors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 16.h);
      },
    );
  }
}
