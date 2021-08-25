import '../const.dart';

class DBManager {
  static final DBManager instance =
  DBManager(DBShit.CONNECTION_STRING, DBShit.USERNAME, DBShit.PASSWORD);

  String connectionString;
  String username;
  String password;

  DBManager(this.connectionString, this.username, this.password);

  static DBManager getInstance() {
    // todo: insert code here
    return instance;
  }
}
