import 'package:hive/hive.dart';
import 'package:soor_user_app/core/const/main_const.dart';
import 'package:soor_user_app/core/models/user.dart';

class UsersDatabase {
  static Box<AppUser> userBox = Hive.box<AppUser>(MainAppConst.userId);

  static void saveUser(AppUser user){
    userBox.add(user);
  }

  static AppUser? getUser(String email){
    return userBox.get(email);
  }

  static void deleteTask(int index){
    userBox.deleteAt(index);
  }

  static void clear(){
    userBox.clear();
  }

  static void update(int index, AppUser user){
    userBox.putAt(index, user);
  }
}