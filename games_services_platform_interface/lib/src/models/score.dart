import '../util/device.dart';

class Score {
  String? androidLeaderboardID;
  String? iOSLeaderboardID;
  int? value;
  String? token;

  String? get leaderboardID {
    return Device.isPlatformAndroid ? androidLeaderboardID : iOSLeaderboardID;
  }

  Score({this.iOSLeaderboardID, this.androidLeaderboardID, this.value, this.token});
}
