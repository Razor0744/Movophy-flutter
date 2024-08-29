import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_max/features/home_screen/presentation/bloc/home_ui_state.dart';
import 'package:test_for_max/features/home_screen/presentation/bloc/home_cubit.dart';
import 'package:test_for_max/features/home_screen/presentation/ui/category_title.dart';
import 'package:test_for_max/features/home_screen/presentation/ui/schedule_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeCubit>().getPicturesUrl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeUiState>(
        builder: (context, state) {
          if (state is Loaded) {
            return SafeArea(
              top: true,
              bottom: true,
              child: ListView(
                children: [
                  const ScheduleText(),
                  SizedBox(
                    height: 180,
                    child: ListView.separated(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      scrollDirection: Axis.horizontal,
                      itemCount: state.homeState.animeSeriesList.length,
                      separatorBuilder: (context, index) {
                        return const Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0));
                      },
                      itemBuilder: (context, index) {
                        final item = state.homeState.animeSeriesList[index];

                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            item.pictureUrl,
                            fit: BoxFit.fill,
                            width: 120,
                            height: 180,
                          ),
                        );
                      },
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      final category =
                          state.homeState.kinopoiskCategoryList[index];
                      final categoryList =
                          state.homeState.kinopoiskSeriesList[index];

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CategoryTitle(title: category),
                          SizedBox(
                            height: 180,
                            child: ListView.separated(
                              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                              scrollDirection: Axis.horizontal,
                              itemCount: categoryList.length,
                              separatorBuilder: (context, index) {
                                return const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0));
                              },
                              itemBuilder: (context, index) {
                                final item = categoryList[index];

                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    item.url,
                                    fit: BoxFit.fill,
                                    width: 120,
                                    height: 180,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            );
          }

          return const Text('error');
        },
      ),
    );
  }
}
