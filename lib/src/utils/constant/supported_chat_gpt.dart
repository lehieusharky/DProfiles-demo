enum SupportedChatGPT { gpt_3_5, gpt_4 }

extension ChatGPTTypesExt on SupportedChatGPT {
  String toTitle() {
    return switch (this) {
      SupportedChatGPT.gpt_3_5 => 'GPT-3.5',
      SupportedChatGPT.gpt_4 => 'GPT-4',
    };
  }

  int toIndex() {
    return switch (this) {
      SupportedChatGPT.gpt_3_5 => 0,
      SupportedChatGPT.gpt_4 => 1,
    };
  }
}
