import '../../../di_setup.dart';
import '../data/repository/title_repository_impl.dart';
import '../domain/repository/title_repository.dart';
import '../presentation/cubit/details_cubit.dart';

void detailsGetIt(){
  getIt.registerFactory(() => DetailsCubit(getIt()));
  getIt.registerSingleton<TitleRepository>(TitleRepositoryImpl(getIt(), getIt()));
}