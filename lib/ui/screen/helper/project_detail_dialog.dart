import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_portfolio/framework/controller/portfolio_controller/portfolio_controller.dart';
import 'package:my_flutter_portfolio/ui/utils/widgets/common_cache_image.dart';

class ProjectDetailDialog extends ConsumerWidget {
  final int index;
  const ProjectDetailDialog({super.key,required this.index});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final portfolioWatch = ref.watch(portfolioController);
    return Dialog(
      backgroundColor: const Color(0xFF1F1F1F),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 600,
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      portfolioWatch.projectList.elementAt(index).projectName,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  // const Spacer(),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Description List
              ...portfolioWatch.projectList.elementAt(index).projectDetail.map(
                    (desc) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("• ", style: TextStyle(color: Colors.white70)),
                      Expanded(
                        child: Text(
                          desc,
                          maxLines: 3,
                          style: const TextStyle(
                            fontSize: 16,
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
              if (portfolioWatch.projectList.elementAt(index).projectImage.isNotEmpty)
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: portfolioWatch.projectList.elementAt(index).projectImage.map(
                        (url) => ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        url,
                        width: MediaQuery.of(context).size.width*0.1,
                        height: MediaQuery.of(context).size.height*0.4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ).toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
