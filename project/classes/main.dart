class Header {
  String? imageUrl;
  bool? backButton;
  bool? homeButton;

  Header(this.imageUrl, this.backButton, this.homeButton);
}

class ContentContainer {
  String? headline;
  String? text;
  bool? buttons;

  ContentContainer(this.headline, this.text, this.buttons);
}

class Choice {
  String headline;
  String text;
  String thumpnailUrl;

  Choice(this.headline, this.text, this.thumpnailUrl);
}

class Room {
  String? name;
  String? thumpnailUrl;

  Room(this.name, this.thumpnailUrl);
}

class Task {
  String? name;
  String? text;
  String? duration;

  Task(this.name, this.text, this.duration);
}

void main() {}
