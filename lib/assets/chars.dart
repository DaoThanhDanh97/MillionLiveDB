import 'package:flutter/foundation.dart';

class IdolAvatar {
  final String imgAsset;
  final String enName;
  final String type;
  final String jpName;
  final String id;

  IdolAvatar({
    @required this.id,
    @required this.enName,
    @required this.jpName,
    @required this.type,
    @required this.imgAsset,
  });
}

List<IdolAvatar> idolsList = [
  IdolAvatar(
    id: 'hrk',
    enName: 'Haruka Amami',
    jpName: '天海 春香',
    type: 'pri',
    imgAsset: 'assets/avatars/haruka.png',
  ),
  IdolAvatar(
    id: 'chy',
    enName: 'Chihaya Kisaragi',
    jpName: '如月 千早',
    type: 'fai',
    imgAsset: 'assets/avatars/chihaya.png',
  ),
  IdolAvatar(
    id: 'mki',
    enName: 'Miki Hoshii',
    jpName: '星井 美希',
    type: 'ang',
    imgAsset: 'assets/avatars/miki.png',
  ),
  IdolAvatar(
    id: 'ykh',
    enName: 'Yukiho Hagiwara',
    jpName: '萩原 雪歩',
    type: 'pri',
    imgAsset: 'assets/avatars/yukiho.png',
  ),
  IdolAvatar(
    id: 'yyi',
    enName: 'Yayoi Takatsuki',
    jpName: '高槻 やよい',
    type: 'ang',
    imgAsset: 'assets/avatars/yayoi.png',
  ),
  IdolAvatar(
    id: 'mkt',
    enName: 'Makoto Kikuchi',
    jpName: '菊地 真',
    type: 'pri',
    imgAsset: 'assets/avatars/makoto.png',
  ),
  IdolAvatar(
    id: 'ior',
    enName: 'Iori Minase',
    jpName: '水瀬 伊織',
    type: 'fai',
    imgAsset: 'assets/avatars/iori.png',
  ),
  IdolAvatar(
    id: 'tkn',
    enName: 'Takane Shijou',
    jpName: '四条 貴音',
    type: 'fai',
    imgAsset: 'assets/avatars/takane.png',
  ),
  IdolAvatar(
    id: 'rtk',
    enName: 'Ritsuko Akizuki',
    jpName: '秋月 律子',
    type: 'fai',
    imgAsset: 'assets/avatars/ritsuko.png',
  ),
  IdolAvatar(
    id: 'azs',
    enName: 'Azusa Miura',
    jpName: '三浦 あずさ',
    type: 'ang',
    imgAsset: 'assets/avatars/azusa.png',
  ),
  IdolAvatar(
    id: 'ami',
    enName: 'Ami Futami',
    jpName: '双海 亜美',
    type: 'ang',
    imgAsset: 'assets/avatars/ami.png',
  ),
  IdolAvatar(
    id: 'mam',
    enName: 'Mami Futami',
    jpName: '双海 真美',
    type: 'ang',
    imgAsset: 'assets/avatars/mami.png',
  ),
  IdolAvatar(
    id: 'hbk',
    enName: 'Hibiki Ganaha',
    jpName: '我那覇 響',
    type: 'pri',
    imgAsset: 'assets/avatars/hibiki.png',
  ),
  IdolAvatar(
    id: 'mri',
    enName: 'Mirai Kasuga',
    jpName: '春日 未来',
    type: 'pri',
    imgAsset: 'assets/avatars/mirai.png',
  ),
  IdolAvatar(
    id: 'szk',
    enName: 'Shizuka Mogami',
    jpName: '最上 静香',
    type: 'fai',
    imgAsset: 'assets/avatars/shizuka.png',
  ),
  IdolAvatar(
    id: 'tbs',
    enName: 'Tsubasa Ibuki',
    jpName: '伊吹 翼',
    type: 'ang',
    imgAsset: 'assets/avatars/tsubasa.png',
  ),
  IdolAvatar(
    id: 'kth',
    enName: 'Kotoha Tanaka',
    jpName: '田中 琴葉',
    type: 'pri',
    imgAsset: 'assets/avatars/kotoha.png',
  ),
  IdolAvatar(
    id: 'eln',
    enName: 'Elena Shimabara',
    jpName: '島原 エレナ',
    type: 'ang',
    imgAsset: 'assets/avatars/elena.png',
  ),
  IdolAvatar(
    id: 'eln',
    enName: 'Minako Satake',
    jpName: '佐竹 美奈子',
    type: 'pri',
    imgAsset: 'assets/avatars/minako.png',
  ),
  IdolAvatar(
    id: 'mgm',
    enName: 'Megumi Tokoro',
    jpName: '所 恵美',
    type: 'fai',
    imgAsset: 'assets/avatars/megumi.png',
  ),
  IdolAvatar(
    id: 'mtr',
    enName: 'Matsuri Tokugawa',
    jpName: '徳川 まつり',
    type: 'pri',
    imgAsset: 'assets/avatars/matsuri.png',
  ),
  IdolAvatar(
    id: 'srk',
    enName: 'Serika Hakozaki',
    jpName: '箱崎 星梨花',
    type: 'ang',
    imgAsset: 'assets/avatars/serika.png',
  ),
  IdolAvatar(
    id: 'akn',
    enName: 'Akane Nonohara',
    jpName: '野々原 茜',
    type: 'ang',
    imgAsset: 'assets/avatars/akane.png',
  ),
  IdolAvatar(
    id: 'ann',
    enName: 'Anna Mochizuki',
    jpName: '望月 杏奈',
    type: 'ang',
    imgAsset: 'assets/avatars/anna.png',
  ),
  IdolAvatar(
    id: 'roc',
    enName: 'Roco Honda',
    jpName: '伴田 路子',
    type: 'fai',
    imgAsset: 'assets/avatars/roco.png',
  ),
  IdolAvatar(
    id: 'yrk',
    enName: 'Yuriko Nanao',
    jpName: '七尾 百合子',
    type: 'pri',
    imgAsset: 'assets/avatars/yuriko.png',
  ),
  IdolAvatar(
    id: 'syk',
    enName: 'Sayoko Takayama',
    jpName: '高山 紗代子',
    type: 'pri',
    imgAsset: 'assets/avatars/sayoko.png',
  ),
  IdolAvatar(
    id: 'ars',
    enName: 'Arisa Matsuda',
    jpName: '松田 亜利沙',
    type: 'pri',
    imgAsset: 'assets/avatars/arisa.png',
  ),
  IdolAvatar(
    id: 'umi',
    enName: 'Umi Kousaka',
    jpName: '高坂 海美',
    type: 'pri',
    imgAsset: 'assets/avatars/umi.png',
  ),
  IdolAvatar(
    id: 'iku',
    enName: 'Nakatani Iku',
    jpName: '中谷 育',
    type: 'pri',
    imgAsset: 'assets/avatars/iku.png',
  ),
  IdolAvatar(
    id: 'tmk',
    enName: 'Tomoka Tenkubashi',
    jpName: '天空橋 朋花',
    type: 'fai',
    imgAsset: 'assets/avatars/tomoka.png',
  ),
  IdolAvatar(
    id: 'eml',
    enName: 'Emily Stewart',
    jpName: 'エミリー スチュアート',
    type: 'pri',
    imgAsset: 'assets/avatars/emily.png',
  ),
  IdolAvatar(
    id: 'shh',
    enName: 'Shiho Kitazawa',
    jpName: '北沢 志保',
    type: 'fai',
    imgAsset: 'assets/avatars/shiho.png',
  ),
  IdolAvatar(
    id: 'aym',
    enName: 'Ayumu Maihama',
    jpName: '舞浜 歩',
    type: 'fai',
    imgAsset: 'assets/avatars/ayumu.png',
  ),
  IdolAvatar(
    id: 'hnt',
    enName: 'Hinata Kinoshita',
    jpName: '木下 ひなた',
    type: 'ang',
    imgAsset: 'assets/avatars/hinata.png',
  ),
  IdolAvatar(
    id: 'kna',
    enName: 'Kana Yabuki',
    jpName: '矢吹可奈',
    type: 'pri',
    imgAsset: 'assets/avatars/kana.png',
  ),
  IdolAvatar(
    id: 'nao',
    enName: 'Nao Yokoyama',
    jpName: '横山 奈緒',
    type: 'pri',
    imgAsset: 'assets/avatars/nao.png',
  ),
  IdolAvatar(
    id: 'czr',
    enName: 'Chizuru Nikaido',
    jpName: '二階堂 千鶴',
    type: 'fai',
    imgAsset: 'assets/avatars/chizuru.png',
  ),
  IdolAvatar(
    id: 'knm',
    enName: 'Konomi Baba',
    jpName: '馬場 このみ',
    type: 'ang',
    imgAsset: 'assets/avatars/konomi.png',
  ),
  IdolAvatar(
    id: 'tmi',
    enName: 'Tamaki Ogami',
    jpName: '大神 環',
    type: 'ang',
    imgAsset: 'assets/avatars/tamaki.png',
  ),
  IdolAvatar(
    id: 'knm',
    enName: 'Fuka Toyokawa',
    jpName: '豊川 風花',
    type: 'ang',
    imgAsset: 'assets/avatars/fuka.png',
  ),
  IdolAvatar(
    id: 'mya',
    enName: 'Miya Miyao',
    jpName: '宮尾 美也',
    type: 'ang',
    imgAsset: 'assets/avatars/miya.png',
  ),
  IdolAvatar(
    id: 'nrk',
    enName: 'Noriko Fukuda',
    jpName: '福田 のり子',
    type: 'ang',
    imgAsset: 'assets/avatars/noriko.png',
  ),
  IdolAvatar(
    id: 'mzk',
    enName: 'Mizuki Nanabe',
    jpName: '真壁 瑞希',
    type: 'fai',
    imgAsset: 'assets/avatars/mizuki.png',
  ),
  IdolAvatar(
    id: 'krn',
    enName: 'Karen Shinomiya',
    jpName: '篠宮 可憐',
    type: 'ang',
    imgAsset: 'assets/avatars/karen.png',
  ),
  IdolAvatar(
    id: 'rio',
    enName: 'Rio Momose',
    jpName: '百瀬莉緒',
    type: 'fai',
    imgAsset: 'assets/avatars/rio.png',
  ),
  IdolAvatar(
    id: 'sbr',
    enName: 'Subaru Nagoyashi',
    jpName: '永吉 昴',
    type: 'fai',
    imgAsset: 'assets/avatars/subaru.png',
  ),
  IdolAvatar(
    id: 'rei',
    enName: 'Reika Kitakami',
    jpName: '北上 麗花',
    type: 'ang',
    imgAsset: 'assets/avatars/reika.png',
  ),
  IdolAvatar(
    id: 'mmk',
    enName: 'Momoko Suou',
    jpName: '周防 桃子',
    type: 'fai',
    imgAsset: 'assets/avatars/momoko.png',
  ),
  IdolAvatar(
    id: 'jul',
    enName: 'Julia',
    jpName: 'ジュリア',
    type: 'fai',
    imgAsset: 'assets/avatars/julia.png',
  ),
  IdolAvatar(
    id: 'tmg',
    enName: 'Tsumugi Shiraishi',
    jpName: '白石 紬',
    type: 'fai',
    imgAsset: 'assets/avatars/tsumugi.png',
  ),
  IdolAvatar(
    id: 'kor',
    enName: 'Kaori Sakuramori',
    jpName: '桜守 歌織',
    type: 'ang',
    imgAsset: 'assets/avatars/kaori.png',
  ),
  IdolAvatar(
    id: 'leo',
    enName: 'Leon',
    jpName: '玲音',
    type: 'ex',
    imgAsset: 'assets/avatars/leon.png',
  ),
  IdolAvatar(
    id: 'shk',
    enName: 'Shiika',
    jpName: '詩歌',
    type: 'ex',
    imgAsset: 'assets/avatars/shiika.png',
  ),
];
