class NavData {
  final String enTitle;
  final String jpTitle;
  final int bgColor;
  final String bgImage;

  NavData(this.enTitle, this.jpTitle, this.bgColor, this.bgImage);
}

List<NavData> navData = [
  NavData('Idols', 'アイドル', 0xC40100, 'assets/images/idolsBG.png'),
  NavData('Cards', 'カード', 0xF2C89A, 'assets/images/idolsBG.png'),
  NavData('Songs', '音曲', 0x53EBFA, 'assets/images/idolsBG.png'),
];
