import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flutter_portfolio/framework/controller/portfolio_controller/portfolio_controller.dart';
import 'package:my_flutter_portfolio/ui/utils/widgets/common_cache_image.dart';

class ProjectDetailDialogMobile extends ConsumerWidget {
  final int index;
  const ProjectDetailDialogMobile({super.key, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portfolioWatch = ref.watch(portfolioController);
    final project = portfolioWatch.projectList[index];

    return Dialog(
      backgroundColor: const Color(0xFF1F1F1F),
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Close Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    project.projectName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
            const SizedBox(height: 16),

            // Description list
            ...project.projectDetail.map(
                  (desc) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("• ", style: TextStyle(color: Colors.white70)),
                    Expanded(
                      child: Text(
                        desc,
                        style: const TextStyle(
                            fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Optional Images
            if (project.projectImage.isNotEmpty)
              SizedBox(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: project.projectImage.length,
                  separatorBuilder: (context, i) => const SizedBox(width: 12),
                  itemBuilder: (context, i) => ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CacheImage(
                      imageURL: project.projectImage[i],
                      height: 150.h,
                      width: 100.w,
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
