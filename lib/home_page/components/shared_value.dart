double defaultPadding = 24;
double defaultSeparator = 20;

bool closeTopContainer =
    false; //if offset of header > 55 will set to true, for checking need reduce of height of avatar/circle picture at header
bool moveLeft =
    false; //if offset of header > 70 will set to true, for change avatar to left of screen and change the size of Name and Balance properties
double currentPage = 0;
int currentCard = 0;
double additionalLeftPadding = 0;
double resizeName = 0;

//list of slider image widget
List picture = [
  'https://img.qraved.co/v2/image/data/chef-juna-25-1592820697517.jpeg',
  'https://cdn.idntimes.com/content-images/post/20190814/67434244-693985964359102-2933089983970034548-n-dd461baec1be988dad791a1c5dc51b3d_600x400.jpg',
  'https://awsimages.detik.net.id/community/media/visual/2020/01/03/6962a1e0-fde7-4d09-b0e5-865920916241_43.jpeg?w=700&q=90',
  'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/09/26/146484117.png',
  'https://2.bp.blogspot.com/-_nVUwzwk8xI/XrN84AKj35I/AAAAAAAAGvc/lzgIB_7ToWgUczgrWSdPw38RDANWAheSQCLcBGAsYHQ/s1600/delisa-herlina-fiksi.JPG'
];
//list name & job of slider image widget
List<Map<String, String>> pictureText = [
  {"name": "Juna Rorimpandey", "job": "He is a Chef"},
  {"name": "Najwa Shihab", "job": "She is a Presenter"},
  {"name": "Arnold Poernomo", "job": "He is a Chef"},
  {"name": "Renatta", "job": "She is a Chef"},
  {"name": "Delisa Herlina", "job": "She is an Artist"}
];
//list of discount/cashback
List discount = [50, 30, 70, 60, 80, 20];
