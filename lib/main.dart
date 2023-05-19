
import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utils/app_router.dart';
import 'package:bookstore/features/Home/data/repo/home_repo_impl.dart';
import 'package:bookstore/features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookstore/features/Home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const BooksStore());
}

class BooksStore extends StatelessWidget {
  const BooksStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}