import 'package:flutter/material.dart';
import 'package:instagram_clone/Feeds/Models/user.dart';
import 'package:instagram_clone/Profile/widgets/discover_people_list.dart';
import 'package:instagram_clone/Profile/widgets/profile_row.dart';
import 'package:instagram_clone/Repository/user_repository.dart';
import 'package:instagram_clone/Profile/widgets/discover_people_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.user});

  final User user;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
   DiscoverPeopleCubit discoverPeopleCubit =
      DiscoverPeopleCubit(UserRepository());

  @override
  void initState() {
    super.initState();
    discoverPeopleCubit.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const SizedBox(width: 4),
              Text(
                widget.user.username,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const Spacer(),
              const Icon(Icons.add_box_outlined),
              const SizedBox(
                width: 24,
              ),
              const Icon(Icons.menu)
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const ProfileRow(),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text("Discover people",
                      style: Theme.of(context).textTheme.bodySmall),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See All",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
              BlocProvider(
                create: (context) => discoverPeopleCubit,
                child: DiscoverPeopleList(
                    discoverPeopleCubit: discoverPeopleCubit),
              ),
            ],
          ),
        ));
  }
}
