import 'package:flutter/material.dart';
import '../../config/themes/themes.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              color: AppColor.light,
              padding: const EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 15,
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
