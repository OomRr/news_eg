import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:news_eg/shared/components/widgets/shimmer.dart';

import 'custom_general_item.dart';
class ArticleImp extends StatelessWidget {
  const ArticleImp({
    super.key,
    required this.list,
  });

  final List list;

  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: list.isNotEmpty,
      builder:(context)=> ListView.builder(
        itemCount: list.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder:(context,index)=> ShowItem(article: list[index],),
      ),
      fallback: (context)=>Center(child: shimmerLoading()),
    );
  }
}
