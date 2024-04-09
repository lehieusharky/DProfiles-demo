enum PropertiesOfCharacter {
  inspiring,
  smart,
  friendly,
  supportive,
  helpful,
  humorous,
  passive,
  aggressive,
  violent,
  formal,
  spiritual,
  chatty,
  energetic,
  sexy,
  flirty,
}

extension PropertiesOfCharacterExt on PropertiesOfCharacter {
  String getTitle() {
    return switch (this) {
      PropertiesOfCharacter.inspiring => 'Inspiring',
      PropertiesOfCharacter.smart => 'Smart',
      PropertiesOfCharacter.friendly => 'Friendly',
      PropertiesOfCharacter.supportive => 'Supportive',
      PropertiesOfCharacter.helpful => 'Helpful',
      PropertiesOfCharacter.humorous => 'Humorous',
      PropertiesOfCharacter.passive => 'Passive',
      PropertiesOfCharacter.aggressive => 'Aggressive',
      PropertiesOfCharacter.violent => 'Violent',
      PropertiesOfCharacter.formal => 'Formal',
      PropertiesOfCharacter.spiritual => 'Spiritual',
      PropertiesOfCharacter.chatty => 'Chatty',
      PropertiesOfCharacter.energetic => 'Energetic',
      PropertiesOfCharacter.sexy => 'Sexy',
      PropertiesOfCharacter.flirty => 'Flirty',
    };
  }
}