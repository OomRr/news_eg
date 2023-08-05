import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_eg/shared/components/widgets/article_body.dart';

import '../../shared/Cubits/news_cubit/news_cubit.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocConsumer<NewsCubit, NewsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            List<dynamic> list = NewsCubit.get(context).search;
            return Scaffold(
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onSubmitted: (data) {
                        NewsCubit.get(context).getSearch(q: data);
                      },
                      controller: searchController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: 'Search',
                        suffixIcon: IconButton(
                          onPressed: () {
                            NewsCubit.get(context)
                                .getSearch(q: searchController.text);
                            searchController.clear();
                          },
                          icon: const Icon(
                            Icons.search_rounded,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height * 1,
                      width: MediaQuery.sizeOf(context).width * 1,
                      child: ArticleImp(list: list,isSearch: true,),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
//ArticleImp(list: list)
