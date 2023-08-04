import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_eg/modules/business/business_screen.dart';
import 'package:news_eg/modules/science/science_screen.dart';
import 'package:news_eg/modules/sports/sports_screen.dart';
import 'package:news_eg/shared/network/remote/dio_helper.dart';

import '../../../modules/settings/settings_screen.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.business_center,
      ),
      label: 'Business',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.sports_baseball_outlined,
      ),
      label: 'Sport',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.science_outlined,
      ),
      label: 'Science',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
      ),
      label: 'Settings',
    ),
  ];
  List<Widget> screens = [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
    const SettingsScreen(),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    if(index==1) {
      getSports();
    }
    if(index==2) {
      getScience();
    }
    emit(NewsBottomNav());
  }

  List<dynamic> business = [];
  List<dynamic> sports = [];
  List<dynamic> science = [];

  void getBusiness() {
    if(business.isEmpty){
      emit(BusinessLoading());
      DioHelper.getDate(
        query: 'country=eg&category=business',
      ).then((value) {
        business=value.data['articles'];
        print(business[0]['urlToImage']);
        emit(BusinessSuccess());
      }).catchError((e) {
        emit(BusinessFailure(e.toString()));
        print(e.toString());
      });
    }else{
      emit(BusinessSuccess());
    }

  }
  void getScience() {
    if(science.isEmpty){
      emit(ScienceLoading());
      DioHelper.getDate(
        query: 'country=eg&category=science',
      ).then((value) {
        science=value.data['articles'];
        emit(ScienceSuccess());
      }).catchError((e) {
        emit(ScienceFailure(e.toString()));
        print(e.toString());
      });
    }else {
      emit(ScienceSuccess());
    }

  }
  void getSports() {
    if(sports.isEmpty){
      emit(SportsLoading());
      DioHelper.getDate(
        query: 'country=eg&category=sports',
      ).then((value) {
        sports=value.data['articles'];
        emit(SportsSuccess());
      }).catchError((e) {
        emit(SportsFailure(e.toString()));
        print(e.toString());
      });
    }else {
      emit(SportsSuccess());
    }

  }
}
