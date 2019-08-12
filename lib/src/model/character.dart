import 'package:flutter/material.dart';

class Character {
  final String name;
  final List<String> imagePath;
  final String age;
  final String height;
  final String gender;
  final String species;
  final String summary;
  final String quote;
  final String description;
  final List<String> lightNovel;
  final List<String> anime;
  final List<String> game;
  final List<Color> colors;

  Character(
      this.name,
      this.imagePath,
      this.age,
      this.height,
      this.gender,
      this.species,
      this.summary,
      this.quote,
      this.description,
      this.lightNovel,
      this.anime,
      this.game,
      this.colors);
}

List<Character> characters = [
  Character(
      'Kotori Itsuka',
      ['images/kotori.png', 'images/kotori_spiritForm.png'],
      '13, \n \t \t \t \t 14 after(Kotori birthday)',
      'Female',
      '	145 cm',
      ' Human( Formerly ), \n \t \t \t \t \t \t \t  Spirit',
      'Kotori Itsuka is Shido\'s foster little sister; she is also a middle school student as well as a commander of a secret organization known as <Ratatoskr> that deals with extraordinary beings known as Spirits through peaceful means.\nFive years prior to the beginning of "Date a Live," the naive young Kotori was tricked by a mysterious being that turned her into a Spirit. Not long afterward, she was told about the method of how to seal her power by the same being that had given her that power. When everything had been carried out successfully, Kotori, whose power had been sealed, and Shido, who seems to have the ability to seal Kotori both had their memories of that event suppressed. It was not until the present time, five years later, that Kotori personally uses her Spirit powers for the second time in order to save Shido from Kurumi. It was not until Shido resealed Kotori\'s Spirit powers that they finally remembered that event, and soon afterward they later dub the mysterious “being” unofficially with the codename "Phantom."\n Kotori, being a commander of <Ratatoskr>, knows certain information that only selective <Ratatoskr> members would know.',
      '" Now, let our date (battle) begin. "',
      'Kotori Itsuka is one of the main female characters of the Date A Live series. She is Shido\'s foster sister and secretly works as the commander of the <Fraxinus> airship.',
      ['Volume 1-19', 'Date A Live Encore 1-7'],
      [
        'Date A Live: Episode 1-12',
        'Date A Live OVA',
        'Date A Live II: Episode 1-2, 4-10',
        'Date A Live OVA 2',
        'Date A Live III: Episode 1-12'
      ],
      [
        'Date A Live: Rinne Utopia',
        'Date A Live: Ars Install',
        'Date A Live Twin Edition: Rio Reincarnation'
      ],
      [Colors.pinkAccent.shade100,Colors.pink.shade600]),
  Character(
      'Tohka Yatogami',
      [
        'images/tohka.png',
        'images/tohka_spiritForm.png',
        'images/tohka_InverseForm.png',
        'images/tohka_FullForm.png'
      ],
      '16',
      'Female',
      '155 cm',
      'Spirit',
      'When Tohka first appeared on Earth, on the 10th of April, she came under attack by the AST. That was also the same day Shido encountered Tohka and later discovered the real reason behind the spacequake incidents. The next time Tohka encountered Shido, she was again under attack by the AST. During Tohka and Shido\'s short conversation on their second encounter, Shido gave Tohka her name. During their third meeting in which they went out on a date, Tohka and Shido established a bond, as the boy explained to the Spirit that not all humans were like the AST, who are out to kill her. It was during this time after their date got interrupted by the AST that Tohka had her powers sealed by kissing Shido for the first time \n After her powers had been sealed, Tohka\'s mental state was still unstable and could go off at any moment, mainly due to her emotions which she didn\'t understand or know how to handle. But, thanks to some consultation from Reine and some reassuring words from Shido, Tohka was able to better control her feelings of jealousy regarding Shido. After being sealed, Tohka started attending the same school, grade, and class as Shido thanks to the help of Ratatoskr. She made friends while at school, but at the same time, she still sees Origami as an enemy (in many ways), who was also at the same school and classroom as Shido and her. Tohka is currently living in an apartment complex made by Ratatoskr for Spirits beside the Itsuka residence where Shido lives.',
      '" You were there for me, you saved me, much like how today, you asked me out on a date and showed me how nice this world is. "',
      'Tohka Yatogami is one of the main female characters of the Date A Live series and the first Spirit saved by Shido. There is also another personality named Tenka residing inside her, which only emerges when she assumes her Inverse Form',
      ['Volume 1-20', 'Date A Live Encore 1-8'],
      [
        'Date A Live: Episode 1-12',
        'Date A Live OVA',
        'Date A Live II: Episode 1-10',
        'Date A Live OVA 2',
        'Date A Live III: Episode 1-8, 10-12'
      ],
      [
        'Date A Live: Rinne Utopia',
        'Date A Live: Ars Install',
        'Date A Live Twin Edition: Rio Reincarnation'
      ],
      [Colors.purple.shade200,Colors.deepPurple.shade400 ]),
  Character(
    'Origami Tobiichi',
    [
      'images/origami.png',
      'images/Origami_Spirit_Form.png',
      'images/Origami_Inverse_Form.png'
    ],
    '	16',
    '152 cm',
    'Female',
    ' Human( Formerly ), \n \t \t \t \t \t \t \t  Spirit',
    'Origami is a top student in her school in terms of academics and sports. Of course, none of the student body and facility members know that she is a member of the AST, with a few exceptions unknown to her. Origami is a very skilled wizard but can lose herself in her emotions when it comes to dealing with Spirits in combat \n For unknown reasons, Origami is romantically interested in Shido. Her devotion towards him causes her to develop stalking habits such as sniffing his gym clothes. Shido is also the only person not related to any military institutions who know that Origami is part of the AST \n After being transformed into a Spirit by Phantom, she realizes that Phantom is the Spirit that made Kotori into a Spirit. She concludes that Phantom probably killed her parents on the same day and travels to the past with the help of Kurumi to save them. She attacked Phantom soon after but finds out that their battle caused the attack that killed her parents. She then realized that the enemy who killed her parents was herself all along. The realization pushed her into the abyss of despair, creating the negative emotions that caused her to inverse as the time-traveling ended.',
    'It was a Spirit\'s fault, that five years ago... my parents died.',
    'Origami Tobiichi is one of the main female characters of the Date A Live series. She is a highly intelligent classmate of Shido who is athletic, "beautiful", and the most famous person in Shido\'s school',
    ['Volume 1-20', 'Date A Live Encore 1-7'],
    [
      'Date A Live: Episode 1-12',
      'Date A Live OVA',
      'Date A Live II: Episode 1-10',
      'Date A Live III: Episode 1, 3-12'
    ],
    [
      'Date A Live: Rinne Utopia',
      'Date A Live: Ars Install',
      'Date A Live Twin Edition: Rio Reincarnation'
    ],
    [Colors.lightBlue.shade400,Colors.grey.shade400],
  ),
  Character(
    'Yoshino ',
    [
      'images/yoshino.png',
      'images/yoshino_Spirit_Form.png',
      'images/yoshino_InverseForm.jpg'
    ],
    'about 13 to 14',
    '144 cm',
    'Female',
    ' Human( Formerly ), \n \t \t \t \t \t \t \t  Spirit',
    'When Yoshino first appeared in the series, she encountered Shido. To him, Yoshino seemed to be a lost child wandering around in the rain. The next time they met, Yoshino fell under attack from the AST and ran away. During the third time, Shido made the decision to save Yoshino from herself and the AST. This decision was because he discovered that Yoshino was an incredibly kind child who didn\'t want to hurt even the people who were attacking her.\n After having most of her power sealed by Shido, Yoshino started living in one of Ratatoskr\'s living quarters on Fraxinus temporarily before she moved down to the apartment complex next to Shido\'s home. Yoshino is currently practicing, with the help from Ratatoskr, how to speak for herself, or to be more precise, how to talk without the aid of Yoshinon',
    'I... I\'m not Yoshinon. I\'m Yoshino. Yoshinon is my best friend.',
    'Yoshino is the second Spirit saved by Shido and the kindest Spirit so far in the series',
    ['Volume 2-4','Volume 6-20', 'Date A Live Encore 1-7'],
    [
      'Date A Live: Episode 3-12',
      'Date A Live OVA',
      'Date A Live II: Episode 1-10',
      'Date A Live III: Episode 1-8, 10-12'
    ],
    [
      'Date A Live: Rinne Utopia',
      'Date A Live: Ars Install',
      'Date A Live Twin Edition: Rio Reincarnation'
    ],
    [Colors.greenAccent,Colors.green.shade100],

  ),
  Character(
    'Kurumi Tokisaki',
    [
      'images/Kurumi.png',
      'images/Kurumi_SpiritForm.png',
      'images/Kurumi_Inverse_Form.png'
    ],
    '17',
    '157 cm',
    'Female',
    ' Human( Formerly ), \n \t \t \t \t \t \t \t  Spirit',
    'Mana Takamiya reported that Kurumi Tokisaki is the most dangerous Spirit ever known, having killed over 10,000 people (not including spacequake victims) personally \n Kurumi Tokisaki had used unstated and unexplained methods to personally transfer into Shido Itsuka\'s high school and classroom so that she could get closer to him. Her purposes and reasons for moving were simple: consume Shido Itsuka, and in doing so, gain the Spirits\' mana sealed within his body. During the time Kurumi was a Raizen high school student, she almost succeeded in consuming Shido. However, she was forced to retreat after being overwhelmed by Kotori Itsuka\'s destructive power. Kurumi had claimed that it was because she simply wasn\'t prepared to face her, but later argued that she could defeat Kotori if she had more time stored up. \n Later, it was revealed (at the end of Volume 4) that Kurumi had a conversation with a mysterious being that made it seemed like she was talking to herself. Here, she stated her real goal was to seek Shido out in order to be able to use her 12th bullet to travel 30 years back in time and kill the First Spirit. To accomplish that, she required a significant amount of spirit mana which she didn\'t possess, which is why she wanted to consume Shido. Shido held the spirit mana of three spirits within him, enough for her to be able to use the 12th bullet and still have some power left over to kill the First Spirit.',
    'I want his power. I want to make him mine and become one with him.',
    'Kurumi Tokisaki  is the third Spirit to appear. Due to her brutal actions, she is referred to as the Worst Spirit . She is also the first Spirit to appear as an antagonist in the Date A Live series',
    ['Volume 3-4, 6-7, 10-13, 15-19', 'Date A Live Encore 1-8','Date A Live Fragment: Date A Bullet 1-5'],
    [
      'Date A Live: Episode 7-10,12',
      'Date A Live II: Episode 1,6-10',
      'Date A Live II OVA',
      'Date A Live III: Episode 7-12'
    ],
    [
      'Date A Live: Rinne Utopia',
      'Date A Live: Ars Install',
      'Date A Live Twin Edition: Rio Reincarnation'
    ],
    [Colors.redAccent,Colors.red.shade100],

  ),
  Character(
    'Kaguya Yamai',
    [
      'images/Kaguya_Yamai.png',
      'images/Kaguya_SpiritForm.png'
    ],
    '16',
    '157 cm',
    'Female',
    ' Human( Formerly ), \n \t \t \t \t \t \t \t  Spirit',
    'Yamai was originally one Spirit, but for unknown reasons that may be related to her teleportation between dimensions sometime in the past, she was split into two bodies and minds. The original personality of Yamai is now gone, as well as what type of character she used to have is unknown to the split Yamais. The Yamai Sisters have been well known to the people who knew about the existence of Spirits because they often cause a major storm in an area, which occurs every time they come to Earth. \n It was unstated when the Yamai Sisters started fighting, but they have been fighting with each other for quite some time for the sole purpose of deciding the winner as the real Yamai. Their matches range from non-violent to violent for almost 99 battles with the 100th battle as the final confrontation. Whether out of luck or by chance, the Yamai Sisters encounter Shido while he and his classmates were having a field trip to the southern island; the Yamai Sisters decided that their 100th battle should be whoever can seduce Shido first will be the winner and will be considered as the real Yamai. It was around this time, thanks to Reine, which the Yamai Sisters transfer into Shido’s high school and the beginning of both Yamai sisters and Shido\'s battle to seduce each other. \n In reality, both of the Yamai Sisters secretly wanted the other to live, but when they discovered that both of them have the same idea, they stubbornly refuse themselves to live and for the other to die; so in the end, they fought. Thankfully, Shido forcefully interrupted their fight with Tohka’s sword, Sandalphon, and gave them a new option for both of them to live and that is for him to seal their power. They pondered on that idea until they finally accepted their wish to live along with each other. Both of them got their power sealed at the same time when they gave Shido a thank you kiss. \n Due to their stable mental state after being sealed, they didn\'t need to transfer into Shido\'s classroom, but the one next door to his',
    'I don’t want to die…I want to live…I, I want to be with Yuzuru more.',
    'Yamai are the fifth Spirit(s) to appear and the fourth Spirit(s) saved by Shido',
    ['Volume 5-19', 'Date A Live Encore 1-7',],
    [
      'Date A Live OVA',
      'Date A Live II: Episode 2-10',
      'Date A Live III: Episode 1-8, 10-12'
    ],
    [
      'Date A Live: Ars Install',
      'Date A Live Twin Edition: Rio Reincarnation'
    ],
    [Colors.orangeAccent,Colors.orange.shade100,],

  ),
  Character(
    'Yuzuru Yamai',
    [
      'images/Yuzuru_Yamai.png',
      'images/Yuzuru_SpiritForm.png'
    ],
    '16',
    '158 cm',
    'Female',
    ' Human( Formerly ), \n \t \t \t \t \t \t \t  Spirit',
    'Yamai was originally one Spirit, but for unknown reasons that may be related to her teleportation between dimensions sometime in the past, she was split into two bodies and minds. The original personality of Yamai is now gone, as well as what type of character she used to have is unknown to the split Yamais. The Yamai Sisters have been well known to the people who knew about the existence of Spirits because they often cause a major storm in an area, which occurs every time they come to Earth. \n It was unstated when the Yamai Sisters started fighting, but they have been fighting with each other for quite some time for the sole purpose of deciding the winner as the real Yamai. Their matches range from non-violent to violent for almost 99 battles with the 100th battle as the final confrontation. Whether out of luck or by chance, the Yamai Sisters encounter Shido while he and his classmates were having a field trip to the southern island; the Yamai Sisters decided that their 100th battle should be whoever can seduce Shido first will be the winner and will be considered as the real Yamai. It was around this time, thanks to Reine, which the Yamai Sisters transfer into Shido’s high school and the beginning of both Yamai sisters and Shido\'s battle to seduce each other. \n In reality, both of the Yamai Sisters secretly wanted the other to live, but when they discovered that both of them have the same idea, they stubbornly refuse themselves to live and for the other to die; so in the end, they fought. Thankfully, Shido forcefully interrupted their fight with Tohka’s sword, Sandalphon, and gave them a new option for both of them to live and that is for him to seal their power. They pondered on that idea until they finally accepted their wish to live along with each other. Both of them got their power sealed at the same time when they gave Shido a thank you kiss. \n Due to their stable mental state after being sealed, they didn\'t need to transfer into Shido\'s classroom, but the one next door to his',
    'Reply---Yuzuru….too. I don’t want to disappear. I want to live with Kaguya.',
    'Yamai are the fifth Spirit(s) to appear and the fourth Spirit(s) saved by Shido',
    ['Volume 5-19', 'Date A Live Encore 1-7',],
    [
      'Date A Live OVA',
      'Date A Live II: Episode 2-10',
      'Date A Live III: Episode 1-8, 10-12'
    ],
    [
      'Date A Live: Ars Install',
      'Date A Live Twin Edition: Rio Reincarnation'
    ],
    [Colors.orangeAccent,Colors.orange.shade100,],

  ),
  Character(
    'Miku Izayoi',
    [
      'images/Miku.png',
      'images/Miku_spiritForm.png'
    ],
    '17',
    '165 cm',
    'Female',
    ' Human( Formerly ), \n \t \t \t \t \t \t \t  Spirit',
    'Miku is a Spirit and an idol. She hates men to the point that Shido even had to cross-dress in order to interact with her. Her Angel, Gabriel has the ability to manipulate and brainwash people. She took an interest in the undercover Shido because he wasn\'t affected by her hypnotic powers and challenged him to a contest in which that if he lost, he would have to transfer to Rindouji. The challenge was for who would earn the title of being the best school. There was a singing contest which was later won by Miku, but the title of best school was won by Raizen High School. \n Being defeated by Shido at her own game, she initially rampaged, using her powers to break the rules and simply take what she wanted, despite her being the one to first issue the challenge (and despite her frequently cheating to win). During the course of this, she took control of the other Spirits, discovered Shido\'s true gender, and tried to have the entire city to kill him. However, after Shido and Kurumi muscled their way to her and asked her to stay out of their way while they rescued Tohka from DEM, she took an interest in Shido (she had initially believed no man would ever save anyone for any selfless reasons) and asked his friends what their relationship was. \n She then appeared to help Shido and battled with him against DEM, however, she claimed that her only intent was to add Tohka to her collection of Spirits. She repeatedly tried to prove that Shido was selfish, adherent to her view of all men, by trying to offer him all the girls he wants if he gives in to his fatigue and gives up his rescue of Tohka. She\'s further shocked when he refuses and eventually is even visibly shocked when Ellen nearly kills Shido. It becomes evident that Miku can\'t give up her powers because that would mean she\'s returning to her human past, which is itself quite a tragic story, and because she is secretly scared of humanity, which caused the psychological trauma that made her unable to sing in front of people. She finally changed her mind when Shido upheld his earlier promise to protect her and shielded her from Dark Tohka\'s power. She is also moved, although initially shaken when Shido promises her that even if the entire world turns against her, he alone will remain her fan. \n After this, Miku decided to let Shido seal her Spirit mana and move on with her life, even appearing openly in public as an idol. She has shown great love and affection towards Shido and constantly calls him "darling."',
    'Even if I lose my "voice". Even if everyone else doesn\'t turn up to hear me sing — as long as you\'re there, then, that\'s enough. If it comes to that… I will sing, just for you.',
    'Miku Izayoi is the sixth Spirit to appear who was, like Kotori, originally a human that gained the power of a Spirit around the same time Shido first met Tohka.',
    ['Volume 6-20', 'Date A Live Encore 2-8',],
    [
      'Date A Live II: Episode 5-10',
      'Date A Live III: Episode 1, 3-8, 11-12'
    ],
    [
      'Date A Live: Ars Install',
      'Date A Live Twin Edition: Rio Reincarnation'
    ],
    [Colors.indigoAccent,Colors.indigo.shade100,],

  ),
  Character(
    'Natsumi',
    [
      'images/Natsumi.png',
      'images/Natsumi_Spirit_Form.png',
      'images/Natsumi_Adult_Form.png'
    ],
    '14',
    '144 cm \n Adult Form : 170 cm',
    'Female',
    ' Human( Formerly ), \n \t \t \t \t \t \t \t  Spirit',
    'The seventh Spirit is Natsumi who first appears in Volume 8 saved by Shido. Her initial appearance is a healthy young adult, but her true form is a sickly little girl. In both of these forms, she has emerald colored hair and eyes. She acts hostile towards Shido after believing that he saw her true form which he did not actually see. As the beginning of her revenge she disguises as Shido in his school to try and ruin his life, but she was found out by the real Shido, as well as Tohka and Origami who saw through her disguise. Having her perfect disguise seen through infuriates Natsumi even further and keeps saying over and over that it\'s impossible for her perfect disguise to be seen through. She later threatens Shido in which he has to find out who she was disguising as in one of the twelve photos of missing people he knows. After Shido finds out who she was disguising as, Haniel, for some reason, has its mirror break which releases the people who were already captured. Natsumi, who was in a nervous state, had also reverted into her true form in front of Shido and his friends who were captured. Most likely this was because Shido \'won\' the game which shattered Haniel\'s mirror breaking all the spells it was maintaining, such as the one imprisoning the others and the other one making Natsumi look like a voluptuous young adult. As Natsumi felt embarrassed from having her true form seen, she transforms back into her adult form and alters Shido and the others into children, and flies away on Haniel. \n Her hiding place was later found by the Fraxinus and Natsumi escaped to an inhabited mountain side. There, she was attacked by Ellen and got heavily injured. Shido and the other Spirits rescued Natsumi then transported to the Fraxinus. Kotori and the others affected by Natsumi\'s magic were turned back to normal as well as her transformation ability was released when she lost consciousness. Natsumi was later brought to an underground facility in the city owned by Ratatoskr where Shido attempted to seal her powers with the help of Kotori and the others present. However, his plan failed when Natsumi escaped from the underground facility after having too much negative thought about the great treatment Shido & the others gave her. Natsumi later assisted Shido and the five Spirits to stop three artificial satellites sent by DEM from destroying Tenguu City which they succeeded in doing so. Natsumi then initiates the kiss with Shido to allow her powers to be sealed, upon being satisfied by Shido\'s response on a question and request to confirm how important she is to him \n',
    'Hey Shido. Am I............really cute?',
    'Natsumi is the seventh Spirit to appear in the series. She first appears as a slender woman whose age should be slightly past 20 years old. However, it is later revealed that her true form is a little girl with the appearance of a child with unkempt hair and clothing.',
    ['Volume 8-20', 'Date A Live Encore 3-8',],
    [
      'Date A Live III: Episode 1-8, 10-12'
    ],
    [
      ' '
    ],
    [Colors.cyanAccent,Colors.cyan.shade100,],

  ),
  Character(
    'Mayuri',
    [
      'images/Mayuri.png',
      'images/Mayuri_spirit_Form.png',
    ],
    '',
    '154 cm ',
    'Female',
    ' Spirit',
    'Mayuri is a Spirit born from the spirit mana that Tohka, Yoshino, Kotori, Kaguya, Yuzuru, and Miku unconsciously emitted due to their stress and desire to have Shido all to themselves. However, since she was born from spirit mana, she would eventually disappear.',
    'Because I\'ve met you....I\'m no longer an existence that was born to disappear.',
    'Mayuri is an exclusive character from the Date A Live Movie: Mayuri Judgement.',
    ['Mayuri Around'],
    [
      'Date A Live III: Episode 1'
    ],
    [
      ' '
    ],
    [Colors.yellowAccent,Colors.yellow.shade100,],

  ),
  Character(
    'Rinne Sonogami',
    [
      'images/Rinne.png',
      'images/Rinne_SpiritForm.png',
    ],
    '',
    '',
    'Female',
    ' Spirit',
    'Rinne has short, light pink hair, with a part of her hair tied up in a braid. She has light brown eyes and is seen wearing a uniform with a sweater that has the logo of Raizen High School. \n In her Spirit form, Rinne\'s hair length increases to the point where her braids reach a length approaching her legs. Her eyes turn into a more intense pink, almost red color. Her Astral Dress takes on the appearance of a purple clock with golden extensions on her shoulders and hips. The vast majority of her face is covered by a veil. At the top of her head, there is a decorated headdress with a golden emblem at the center.',
    'I am the ruler of Eden <Paradise of Calamity>. And, the one who locked you up in this world, Shido Itsuka... was me.',
    'Rinne Sonogami is a character exclusively to the game Date A Live: Rinne Utopia and the novel version of the game',
    ['Date A Live: Rinne Utopia (Novel)',
      'Date A Live: Rio Reincarnation (Novel)',
      'Volume 11 (Phantom in disguise)'],
    [
      'Date A Live III: Episode 9 (Phantom in disguise)'
    ],
    [
      'Date A Live: Rinne Utopia ',
      'Date A Live Twin Edition: Rio Reincarnation'
    ],
    [Colors.pinkAccent,Colors.pink.shade200,],

  ),
  Character(
    'Reine Murasame',
    [
      'images/Reine.png',
      'images/Reine_SpiritForm.png'
    ],
    '	Deceased',
    '164 cm',
    'Female',
    'Spirit',
    'Reine is a highly intelligent and rational woman. She is the Analysis Officer of the Fraxinus’s crew and the assistant homeroom teacher of Shido\'s classroom. She is also the only member that could be considered "normal" among the Fraxinus\'s weird crew. Reine also acts as an unofficial aide to Kotori Itsuka, the commander of Fraxinus, due to the fact that the vice-commander acts like an idiot most of the time or is ignored by Kotori for being an idiot. \n Beautiful and intelligent, her only flaw is being sleep deprived, since she doesn\'t seem to sleep much. Reine transfers into Shido’s school, Raizen High School as the school\'s new physics teacher when Shido joined Ratatoskr. Reine usually gives the best advice or opinions out of Ratatoskr\'s crew during both the Fraxinus crew\'s operations to seal Spirits and normal circumstances.',
    'I want his power. I want to make him mine and become one with him.',
    'Reine Murasame is the Head Analyst aboard Fraxinus and a non-certified medic who can perform simple first aid tasks. It is revealed in Volume 16 that she is the enigmatic entity known as Phantom ',
    ['Volume 1-19', 'Date A Live Encore 2,5,7',],
    [
      'Date A Live: Episode 1-12',
      'Date A Live OVA',
      'Date A Live II: Episode 1-10',
      'Date A Live II OVA',
      'Date A Live III: Episode 2,4'
    ],
    [
      'Date A Live: Rinne Utopia',
      'Date A Live: Ars Install',
      'Date A Live Twin Edition: Rio Reincarnation'
    ],
    [Colors.cyanAccent,Colors.cyan.shade300],

  ),
  Character(
    'Mio Takamiya',
    [
      'images/Mio.png',
      'images/Mio_SpiritForm.png'

    ],
    '	30 (Deceased)',
    '160 cm',
    'Female',
    'Spirit',
    'The First Spirit was the first Spirit to ever make an appearance on Earth. 30 years before the beginning of the events in Date A Live, she was summoned into the world by Sir Isaac Ray Pelham Westcott, Ellen Mira Mathers, and Elliot Baldwin Woodman through unknown means. However, her summoning also caused the first spacequake in history at some point of the frontier between China and Mongolia, killing over 150 million people and starting a chain of similar disasters around the world that would last approximately six months. \n For much of the series, Kurumi Tokisaki has been chasing after Nia Honjou because of the information she has about the First Spirit. When the two finally crossed paths during Nia Creation, Kurumi requested information about when the First Spirit appeared, why she appeared, and her power, which Nia gave using her Angel, <Rasiel>.',
    'Un, I bet you’ve already noticed it, but Spirits are humans that received Sephira Crystals. ──No, I’ve distributed my power to them, that statement would be more accurate? Originally, the word Spirit only referred to me, the First Spirit.',
    'Mio Takamiya is a mysterious woman connected to both Shido and Mana\'s past. She is also known as the Spirit of Origin, due to her existence being the source for the appearance of other Spirits.',
    ['Volume 16-19', 'Volume 14 (Flashback)','Volume 4, 7, 12-16 ( Mentioned )'],
    [
      ''
    ],
    [
      ''
    ],
    [Colors.cyanAccent,Colors.cyan.shade300],

  ),
  Character(
    'Shido Itsuka',
    [
      'images/Shido.png',

    ],
    '16 (By Volume 1) \n 17 (By Volume 18)',
    '170 cm',
    'Male',
    'Human',
    'Adopted into the Itsuka’s family household at a very young age, Shido has been living a fairly average normal life until recently. At the start of the series and his new high school year as a 2nd-year student, he accidentally stumbles into a new world unknown to him or to the public for that matter of fact. Discovering the real reason behind the spacequakes and the fight between the AST and the Spirits; forcefully or voluntarily, Shido was brought into the secret organization known as Ratatoskr that his little sister commands, which was also a surprise to him. With the only explanation from her being that only he can save the Spirits, Shido reluctantly joins due to his nature to help and save people in need. Going about with his normal life and rescuing Spirits is one thing, but with each new encounter and new Spirits to save, there is always some type of new hardship on Shido\'s mental health, since he has to deal with the opposite gender, with which he does not have much experience dealing.',
    'If people refuse to accept you, I\'ll just accept you even more.',
    'Shido Itsuka  is the main protagonist of the story. He possesses a strange power that allows him to seal the powers of a Spirit in his body with a kiss',
    ['Volume 1-20', 'Date A Live Encore 1-8','Date A Live Fragment: Date A Bullet 1 (Vision)'],
    [
      'Date A Live: Episode 1-12',
      'Date A Live OVA',
      'Date A Live II: Episode 1-10',
      'Date A Live II OVA',
      'Date A Live III: Episode 1-12'
    ],
    [
      ''
    ],
    [Colors.blueAccent,Colors.blue.shade200],

  ),
  Character(
    'Mana Takamiya',
    [
      'images/Mana.png',
      'images/Mana_CR_Unit.png'

    ],
    '???',
    '147 cm',
    'Female',
    'Human',
    'Mana has no memory of her past except for a pendant she holds which contains a photograph of her younger self and a young boy whom she calls her older brother. Mana was a DEM Wizard working with the AST when she was first introduced into the series. \n Mana reunited with her brother by chance when she got stationed in the city where he lives while she was on an assignment involving the new Spirit: Nightmare. She is surprised that he knows about her occupation when she saves him after he got attacked by the Spirit which she was hunting for. Later, Mana discovers that her brother and his foster sister are members of a secret organization that also deals with Spirits. Mana did not report this finding to her superiors, but she did try to make a deal with his foster sister, Kotori Itsuka, to get her brother out of it. However, they were interrupted by a spacequake’s alarm. Mana was critically wounded while fighting the spirit, Kurumi Tokisaki, and was hospitalized for a month while being unconscious. Mana was forcefully taken into <Ratatoskr> custody, which was close to being called kidnapping, at the moment when she finally woke up from the hospital from the event with Kurumi on Shido\'s school rooftop. \n She defects from DEM in Volume 6 and is currently part of Ratatoskr. \n After discovering the truth about her body, Mana changed sides from DEM to <Ratatoskr>, the very organization she disliked her brother being a part of and fought directly against her former comrades to protect Shido from them. However, it would seem she is still unable to hate Isaac, despite realizing what his organization had done to her and Shido.',
    'I\'ll destroy every particle in your body',
    'Mana Takamiya is a temporary Second Lieutenant of the AST, and she used to work for the DEM Industries base in England as a Wizard.',
    ['Volume 2-3, 5-8, 12-14, 16-20', 'Date A Live Encore 2-5',],
    [
      'Date A Live: Episode 6-10',
      'Date A Live II: Episode 6-10',
    ],
    [
      'Date A Live: Ars Install',
      'Date A Live Twin Edition: Rio Reincarnation'
    ],
    [Colors.blueAccent,Colors.blue.shade200],

  ),
  Character(
    'Ellen Mira Mathers',
    [
      'images/Ellen.png',
      'images/Ellen_CR_Unit.png'

    ],
    '47',
    '160 cm',
    'Female',
    'Human',
    'Dubbed as "The World\'s Strongest Wizard," she is also the secretary of DEM\'s director Sir Isaac Ray Pelham Westcott, one of the company\'s chief executives. She is also the older sister of Karen Nora Mathers.',
    'That is a given. No matter who the opponent is, I will never lose.',
    'Ellen Mira Mathers  is the secondary antagonist of the Date A Live series who was first introduced in Volume 5 along with Sir Isaac Ray Pelham Westcott.',
    ['Volume  5-10, 12-19', 'Date A Live Encore 4,7',],
    [
      'Date A Live II: Episode 1-5,7-10',
      'Date A Live III: Episode 2, 4-8, 12',
    ],
    [
      'Date A Live: Ars Install',
    ],
    [Colors.yellowAccent.shade400,Colors.yellow.shade200],

  ),
  Character(
    'Isaac Ray Pelham Westcott ',
    [
      'images/Isaac.png',

    ],
    '49 (Deceased)',
    '???',
    'Male',
    'Human (Formerly) \n \t \t \t \t \t \t \t Inverse Spirit',
    'Westcott is the current director and founder of DEM and seemed to be familiar with almost everything happening around the company. He also seems to know about Shido\'s past, since he briefly called him Takamiya before switching back to Itsuka. \n Westcott is the one responsible for minimizing the punishment for Origami as he seemed to be interested in Origami\'s ability to pilot the <White Licorice>. He is also obsessed about harnessing the powers of the Spirits in their “natural form”, making him responsible for Tohka’s transformation into her Inverse Form',
    'The <Kingdom> has inversed. Well then, prepare yourself humanity.',
    'Isaac Ray Pelham Westcott is the main antagonist of the Date A Live series who was first introduced in Volume 5. He is the current director of Deus.Ex.Machina Industries',
    ['Volume 5-10, 12-19','Volume 11 ( Mention )',],
    [
      'Date A Live II: Episode 1-2, 4-5, 8-10',
      'Date A Live III: Episode 2,4-6'
    ],
    [
      'Date A Live: Ars Install'
    ],
    [Colors.grey,Colors.yellow.shade200],

  ),
];
