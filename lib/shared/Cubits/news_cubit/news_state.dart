part of 'news_cubit.dart';

abstract class NewsState {}

class NewsInitial extends NewsState {}
class NewsBottomNav extends NewsState {}
class BusinessLoading extends NewsState {}
class BusinessSuccess extends NewsState {}
class BusinessFailure extends NewsState {
  final String e;

  BusinessFailure(this.e);
}
class SportsLoading extends NewsState {}
class SportsSuccess extends NewsState {}
class SportsFailure extends NewsState {
  final String e;

  SportsFailure(this.e);
}
class ScienceLoading extends NewsState {}
class ScienceSuccess extends NewsState {}
class ScienceFailure extends NewsState {
  final String e;

  ScienceFailure(this.e);
}
