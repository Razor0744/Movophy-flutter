import 'package:get_it/get_it.dart';
import 'package:test_for_max/features/details_screen/get_it/details_get_it.dart';
import 'package:test_for_max/features/home_screen/get_it/home_get_it.dart';
import 'package:test_for_max/network/network_get_it.dart';

final getIt = GetIt.instance;

void diSetup(){
  networkGetIt();
  homeGetIt();
  detailsGetIt();
}