import 'package:flutter/material.dart';
import 'package:instagram_clone/Presentation/Components/discover_people_item.dart';
import 'package:instagram_clone/Models/user.dart';
import 'package:instagram_clone/Cubit/discover_people_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiscoverPeopleList extends StatelessWidget {
  final DiscoverPeopleCubit discoverPeopleCubit;

  const DiscoverPeopleList({super.key, required this.discoverPeopleCubit});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverPeopleCubit, List<User>>(
        bloc: discoverPeopleCubit,
        builder: (context, users) {
          return Container(
            height: 224,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DiscoverPeopleItem(user: users[index]),
                  );
                }),
          );
        });
  }
}
