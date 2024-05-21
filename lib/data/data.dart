import 'package:baykot/components/app_styles.dart';
import 'package:baykot/components/app_text.dart';

final List<Map<String, dynamic>> pages = [
  {
    'image': 'assets/images/3.png', 
    'mainText': 'track subscription',
    'mainStyle': AppStyles.w1,
    'subTexts': [
      {
        'text': AppText.welcomeMessage,
        'style': AppStyles.welcomeMessageStyle,
      },
    ],
  },
  {
    'image': 'assets/images/2.png', 
    'mainText': 'Reminders',
    'mainStyle': AppStyles.w2,
    'subTexts': [
      {
        'text': AppText.instruction,
        'style': AppStyles.instructionStyle,
      },
    ],
  },
  {
    'image': 'assets/images/1.png',
    'mainText': 'Statistick',
    'mainStyle': AppStyles.w3,
    'subTexts': [
      {
        'text': AppText.thankYouMessage,
        'style': AppStyles.thankYouMessageStyle,
      },
    ],
  },
];
