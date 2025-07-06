import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flutter_portfolio/framework/controller/portfolio_controller/portfolio_controller.dart';
import 'package:my_flutter_portfolio/ui/screen/helper/project_detail_dialog.dart' show ProjectDetailDialog;
import 'package:my_flutter_portfolio/ui/utils/theme/app_colors.dart';
import 'package:my_flutter_portfolio/ui/utils/widgets/common_cache_image.dart';

class ProjectList extends ConsumerWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portfolioWatch = ref.watch(portfolioController);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: portfolioWatch.projectList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListTile(
              title: Text(
                portfolioWatch.projectList.elementAt(index).projectName,
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                portfolioWatch.projectList.elementAt(index).projectDescription,
                style: const TextStyle(color: Colors.white70),
              ),
              trailing:OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context) => ProjectDetailDialog(index: index,),
                    );

                  },
                  child: Text(
                'About Project',
                style: TextStyle(color:AppColors.white),
              ))
/*
              SizedBox  (
                height: 50,
                width: 100, // ✅ Provide a fixed width
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: portfolioWatch.projectList.elementAt(index).projectImage.length,
                  itemBuilder: (BuildContext context, int innerIndex) {
                      return Align(
                        widthFactor: 0.5,
                        child: Card(
                          child: CommonCacheImage(
                              imageURL:portfolioWatch.projectList.elementAt(index).projectImage.elementAt(innerIndex),
                            height: 40,
                            width: 30),
                        ),
                      );
                },),
              ),
*/
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 10.h);
      },
    );
  }
}
