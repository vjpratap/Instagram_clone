import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/Feeds/user.dart';
import 'package:instagram_clone/Repository/user_repository.dart';

class DiscoverPeopleCubit extends Cubit<List<User>> {
  final UserRepository userRepository;

  DiscoverPeopleCubit(this.userRepository) : super([]);

  void fetchUsers() async {
    try {
      final users = await userRepository.getUsers();
      emit(users);
    } catch (e) {
    }
  }
}