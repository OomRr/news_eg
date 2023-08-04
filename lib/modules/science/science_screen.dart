import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/Cubits/news_cubit/news_cubit.dart';
import '../../shared/components/widgets/article_body.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({super.key});

  @override
    Widget build(BuildContext context) {
      return BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          List<dynamic> list=NewsCubit.get(context).science;
          return ArticleImp(list: list);
        },
      );
    }

}
