enum Emotion {
  gloomy,
  normal,
  cheerful,
}

extension EmotionI18N on Emotion {
  static final jpn = {
    Emotion.gloomy: '陰鬱',
    Emotion.normal: '普通',
    Emotion.cheerful: '元気'
  };

  String get getJPN => jpn[this]!;
}