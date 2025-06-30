class MoodStatus {}

abstract class DataRepository {
  void sendMoodStatus(MoodStatus moodstatus);
  List<MoodStatus> getMoodStatus();
}

void main() {}
