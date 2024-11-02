import 'story.dart';

class StoryBrain {
  final List<Story> _storyData = [
    Story(
      storyTitle:
          'Bạn đang đi bộ trong rừng thì bất ngờ bị lạc. Khi bạn tìm cách quay lại đường mòn, bạn thấy một ngôi nhà cũ kỹ và bỏ hoang ở giữa rừng. Cánh cửa chính mở toang và có một ánh sáng yếu ớt phát ra từ bên trong. Bạn quyết định:',
      choice1: 'Đi vào ngôi nhà để tìm kiếm sự giúp đỡ.',
      choice2: 'Bỏ đi, không muốn dính líu vào điều gì nguy hiểm.',
    ),
    Story(
      storyTitle:
          'Khi bạn bước vào ngôi nhà, bạn nhận ra nơi đây đã bị bỏ hoang từ rất lâu. Những đồ vật cũ kỹ nằm rải rác khắp nơi, và không khí có mùi ẩm mốc. Đột nhiên, bạn nghe thấy tiếng động lạ phát ra từ tầng trên. Bạn có hai lựa chọn:',
      choice1: 'Lên tầng trên để xem có chuyện gì.',
      choice2: 'Tìm kiếm trong ngôi nhà dưới này.',
    ),
    Story(
      storyTitle:
          'Bạn quyết định lên tầng trên. Khi bạn đến nơi, bạn thấy một cô gái trẻ đang ngồi trên ghế, cô ấy có vẻ sợ hãi. "Bạn đến từ đâu?" cô ấy hỏi. Bạn trả lời và nhận ra rằng cô ấy cũng bị lạc. Bạn có thể:',
      choice1: 'Giúp cô ấy tìm đường ra khỏi rừng.',
      choice2: 'Cùng cô ấy ở lại đây và tìm cách gọi cứu hộ.',
    ),
    Story(
      storyTitle:
          'Bạn quyết định giúp cô ấy tìm đường ra. Cả hai bạn đi ra ngoài và bắt đầu đi về phía con đường mòn. Thật không may, trời đã tối và bạn không thể nhìn thấy gì. Cô ấy bắt đầu hoảng sợ và bạn cảm thấy:',
      choice1: 'Bạn cần bình tĩnh lại và an ủi cô ấy.',
      choice2: 'Phải tìm kiếm một nơi an toàn để nghỉ ngơi.',
    ),
    Story(
      storyTitle:
          'Sau khi nghỉ ngơi một lúc, bạn quyết định tiếp tục đi. Cuối cùng, bạn tìm thấy một con đường mòn dẫn ra khỏi rừng. Tuy nhiên, bạn nghe thấy tiếng động phía sau, và khi quay lại, bạn thấy một con thú hoang đang tiến đến. Bạn có hai lựa chọn:',
      choice1: 'Chạy thật nhanh về phía trước.',
      choice2: 'Lập kế hoạch để đối phó với con thú.',
    ),
    Story(
      storyTitle:
          'Bạn quyết định chạy thật nhanh và cuối cùng đã thoát khỏi con thú. Cả hai bạn an toàn ra khỏi rừng và được cứu bởi một nhóm tìm kiếm. Tuy nhiên, bạn cảm thấy mệt mỏi và suy sụp vì những gì đã trải qua.',
      choice1: 'Bạn quyết định quay lại rừng để giúp những người bị lạc khác.',
      choice2: 'Bạn muốn rời khỏi rừng và không bao giờ quay lại.',
    ),
    Story(
      storyTitle:
          'Bạn lập kế hoạch đối phó với con thú bằng cách tìm kiếm một nhánh cây làm vũ khí. Khi con thú đến gần, bạn đe dọa nó và nó bỏ đi. Bạn và cô gái tìm thấy con đường ra và thoát khỏi rừng. Cảm giác của bạn lúc này là:',
      choice1: 'Bạn rất tự hào vì đã bảo vệ được cả hai.',
      choice2: 'Bạn cảm thấy cần phải học thêm kỹ năng sinh tồn.',
    ),
    Story(
      storyTitle:
          'Cả hai bạn quyết định tìm kiếm sự cứu giúp trong ngôi nhà. Cuối cùng, bạn đã gọi được cứu hộ và được đưa ra ngoài. Bạn và cô gái trở thành bạn bè tốt sau trải nghiệm này.',
      choice1: 'Khởi động lại.',
      choice2: '',
    ),
    Story(
      storyTitle:
          'Bạn và cô gái quyết định ở lại ngôi nhà một đêm để tìm cách gọi cứu hộ vào ngày mai. Trong khi bạn ngủ, bạn nghe thấy tiếng động lạ và nhận ra có ai đó đang ở trong nhà. Bạn có hai lựa chọn:',
      choice1: 'Đi xem ai đang ở đó.',
      choice2: 'Ẩn mình và chờ đợi.',
    ),
    Story(
      storyTitle:
          'Khi bạn quyết định đi xem, bạn phát hiện ra một người đàn ông lạ mặt. Ông ta nói rằng ông ta cũng đã bị lạc và đang tìm đường ra. Tuy nhiên, bạn cảm thấy có điều gì đó không đúng. Bạn:',
      choice1: 'Tin tưởng ông ta và đề nghị giúp đỡ.',
      choice2: 'Cảnh giác và không để ông ta vào gần.',
    ),
    Story(
      storyTitle:
          'Bạn quyết định không tin tưởng người đàn ông. Bạn và cô gái tìm cách rời khỏi ngôi nhà. Trời đã tối, nhưng bạn quyết định tìm đường trở về. Cuối cùng, bạn tìm thấy một con đường mòn và thoát khỏi khu rừng. Bạn rất vui vì đã giữ được an toàn.',
      choice1: 'Khởi động lại.',
      choice2: '',
    ),
  ];

  int _storyNumber = 0;

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 4;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 6;
    } else if (choiceNumber == 1 && _storyNumber == 3) {
      _storyNumber = 7;
    } else if (choiceNumber == 2 && _storyNumber == 3) {
      _storyNumber = 8;
    } else if (choiceNumber == 1 && _storyNumber == 4) {
      _storyNumber = 9;
    } else if (choiceNumber == 2 && _storyNumber == 4) {
      _storyNumber = 10;
    } else if (_storyNumber == 5 ||
        _storyNumber == 6 ||
        _storyNumber == 7 ||
        _storyNumber == 8 ||
        _storyNumber == 9 ||
        _storyNumber == 10) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return _storyNumber == 0 ||
        _storyNumber == 1 ||
        _storyNumber == 2 ||
        _storyNumber == 3 ||
        _storyNumber == 4;
  }
}
