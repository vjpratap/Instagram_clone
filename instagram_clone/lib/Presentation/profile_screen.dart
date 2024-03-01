import 'package:flutter/material.dart';
import 'package:instagram_clone/Models/user.dart';
import 'package:instagram_clone/Presentation/Components/discover_people_list.dart';
import 'package:instagram_clone/Presentation/Components/profile_row.dart';
import 'package:instagram_clone/Repository/user_repository.dart';
import 'package:instagram_clone/Cubit/discover_people_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.user});

  final User user;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final UserRepository userRepository = UserRepository();

  DiscoverPeopleCubit discoverPeopleCubit =
      DiscoverPeopleCubit(UserRepository());

  @override
  void initState() {
    super.initState();
    discoverPeopleCubit = DiscoverPeopleCubit(UserRepository());
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
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black),
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
          padding: EdgeInsets.all(16.0),
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
                  Spacer(),
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
