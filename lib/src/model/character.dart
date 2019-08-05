import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String age;
  final String gender;
  final String species;
  final String summary;
  final String quote;
  final String description;
  final List<Color> colors;

  Character(this.name, this.imagePath, this.age, this.gender, this.species,
      this.summary, this.quote,this.description, this.colors);
}

List<Character> characters = [
  Character(
      'Kotori Itsuka',
      'images/kotori.png',
      '13, \n \t \t \t \t 14 after(Kotori birthday)',
      'Female',
      ' Human( Formerly ), \n \t \t \t \t \t \t \t  Spirit',
      'Kotori Itsuka is Shido\'s foster little sister; she is also a middle school student as well as a commander of a secret organization known as <Ratatoskr> that deals with extraordinary beings known as Spirits through peaceful means.\nFive years prior to the beginning of "Date a Live," the naive young Kotori was tricked by a mysterious being that turned her into a Spirit. Not long afterward, she was told about the method of how to seal her power by the same being that had given her that power. When everything had been carried out successfully, Kotori, whose power had been sealed, and Shido, who seems to have the ability to seal Kotori both had their memories of that event suppressed. It was not until the present time, five years later, that Kotori personally uses her Spirit powers for the second time in order to save Shido from Kurumi. It was not until Shido resealed Kotori\'s Spirit powers that they finally remembered that event, and soon afterward they later dub the mysterious “being” unofficially with the codename "Phantom."\n Kotori, being a commander of <Ratatoskr>, knows certain information that only selective <Ratatoskr> members would know.',
      '" Now, let our date (battle) begin. "',
      'Kotori Itsuka is one of the main female characters of the Date A Live series. She is Shido\'s foster sister and secretly works as the commander of the <Fraxinus> airship.',
      [Colors.pinkAccent.shade100, Colors.pink.shade600]),
  Character(
      'Tohka Yatogami',
      'images/tohka.png',
      '16',
      'Female',
      'Spirit',
      'When Tohka first appeared on Earth, on the 10th of April, she came under attack by the AST. That was also the same day Shido encountered Tohka and later discovered the real reason behind the spacequake incidents. The next time Tohka encountered Shido, she was again under attack by the AST. During Tohka and Shido\'s short conversation on their second encounter, Shido gave Tohka her name. During their third meeting in which they went out on a date, Tohka and Shido established a bond, as the boy explained to the Spirit that not all humans were like the AST, who are out to kill her. It was during this time after their date got interrupted by the AST that Tohka had her powers sealed by kissing Shido for the first time \n After her powers had been sealed, Tohka\'s mental state was still unstable and could go off at any moment, mainly due to her emotions which she didn\'t understand or know how to handle. But, thanks to some consultation from Reine and some reassuring words from Shido, Tohka was able to better control her feelings of jealousy regarding Shido. After being sealed, Tohka started attending the same school, grade, and class as Shido thanks to the help of Ratatoskr. She made friends while at school, but at the same time, she still sees Origami as an enemy (in many ways), who was also at the same school and classroom as Shido and her. Tohka is currently living in an apartment complex made by Ratatoskr for Spirits beside the Itsuka residence where Shido lives.',
      '" You were there for me, you saved me, much like how today, you asked me out on a date and showed me how nice this world is. "',
      'Tohka Yatogami is one of the main female characters of the Date A Live series and the first Spirit saved by Shido. There is also another personality named Tenka residing inside her, which only emerges when she assumes her Inverse Form',
      [Colors.purple.shade200, Colors.deepPurple.shade400])
];
