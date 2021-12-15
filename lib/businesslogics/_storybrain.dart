import 'package:iampoor/models/_storypojo.dart';

class StoryBrain{
  
final List<StoryPoJo> _storyData = [
  StoryPoJo(
     'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      'I\'ll hop in. Thanks for the help!',
     'Better ask him if he\'s a murderer first.',2,1),
  StoryPoJo(
      'He nods slowly, unphased by the question.',
      'At least he\'s honest. I\'ll climb in.',
      'Wait, I know how to change a tire.',2,3),
  StoryPoJo(
     
     'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      'I love Elton John! Hand him the cassette tape.',
      'It\'s him or me! You take the knife and stab him.',5,4),
  StoryPoJo(
     
     'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      'Restart',
      '',0,0),
  StoryPoJo(
     
     'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      'Restart',
      '',0,0),
  StoryPoJo(
     
     'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      'Restart',
      '',0,0)
];

StoryPoJo getStoryAtIndex(int index) => _storyData[index];

}