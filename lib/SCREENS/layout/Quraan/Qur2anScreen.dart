import 'package:flutter/material.dart';
import 'package:untitled4/SCREENS/layout/Quraan/qur2anwidget.dart';
import 'package:untitled4/SCREENS/layout/Quraan/detailsofsurah.dart';
import 'package:untitled4/SCREENS/layout/Quraan/savedwidget.dart';
import 'package:untitled4/core/AppColors.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Qur2anscreen extends StatefulWidget {
  Qur2anscreen({super.key});

  @override
  State<Qur2anscreen> createState() => _Qur2anscreenState();
}

class _Qur2anscreenState extends State<Qur2anscreen> {
  List<String> idssrting = [];

  List<String> arabicAuranSuras = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<String> englishQuranSurahs = [
    "Al-Fatiha",
    "Al-Baqarah",
    "Aal-E-Imran",
    "An-Nisa'",
    "Al-Ma'idah",
    "Al-An'am",
    "Al-A'raf",
    "Al-Anfal",
    "At-Tawbah",
    "Yunus",
    "Hud",
    "Yusuf",
    "Ar-Ra'd",
    "Ibrahim",
    "Al-Hijr",
    "An-Nahl",
    "Al-Isra",
    "Al-Kahf",
    "Maryam",
    "Ta-Ha",
    "Al-Anbiya",
    "Al-Hajj",
    "Al-Mu'minun",
    "An-Nur",
    "Al-Furqan",
    "Ash-Shu'ara",
    "An-Naml",
    "Al-Qasas",
    "Al-Ankabut",
    "Ar-Rum",
    "Luqman",
    "As-Sajda",
    "Al-Ahzab",
    "Saba",
    "Fatir",
    "Ya-Sin",
    "As-Saffat",
    "Sad",
    "Az-Zumar",
    "Ghafir",
    "Fussilat",
    "Ash-Shura",
    "Az-Zukhruf",
    "Ad-Dukhan",
    "Al-Jathiya",
    "Al-Ahqaf",
    "Muhammad",
    "Al-Fath",
    "Al-Hujurat",
    "Qaf",
    "Adh-Dhariyat",
    "At-Tur",
    "An-Najm",
    "Al-Qamar",
    "Ar-Rahman",
    "Al-Waqi'a",
    "Al-Hadid",
    "Al-Mujadila",
    "Al-Hashr",
    "Al-Mumtahina",
    "As-Saff",
    "Al-Jumu'a",
    "Al-Munafiqun",
    "At-Taghabun",
    "At-Talaq",
    "At-Tahrim",
    "Al-Mulk",
    "Al-Qalam",
    "Al-Haqqah",
    "Al-Ma'arij",
    "Nuh",
    "Al-Jinn",
    "Al-Muzzammil",
    "Al-Muddathir",
    "Al-Qiyamah",
    "Al-Insan",
    "Al-Mursalat",
    "An-Naba'",
    "An-Nazi'at",
    "Abasa",
    "At-Takwir",
    "Al-Infitar",
    "Al-Mutaffifin",
    "Al-Inshiqaq",
    "Al-Buruj",
    "At-Tariq",
    "Al-A'la",
    "Al-Ghashiyah",
    "Al-Fajr",
    "Al-Balad",
    "Ash-Shams",
    "Al-Lail",
    "Ad-Duha",
    "Ash-Sharh",
    "At-Tin",
    "Al-Alaq",
    "Al-Qadr",
    "Al-Bayyina",
    "Az-Zalzalah",
    "Al-Adiyat",
    "Al-Qari'a",
    "At-Takathur",
    "Al-Asr",
    "Al-Humazah",
    "Al-Fil",
    "Quraysh",
    "Al-Ma'un",
    "Al-Kawthar",
    "Al-Kafirun",
    "An-Nasr",
    "Al-Masad",
    "Al-Ikhlas",
    "Al-Falaq",
    "An-Nas"
  ];
  List<String> AyaNumber = [
    '7',
    '286',
    '200',
    '176',
    '120',
    '165',
    '206',
    '75',
    '129',
    '109',
    '123',
    '111',
    '43',
    '52',
    '99',
    '128',
    '111',
    '110',
    '98',
    '135',
    '112',
    '78',
    '118',
    '64',
    '77',
    '227',
    '93',
    '88',
    '69',
    '60',
    '34',
    '30',
    '73',
    '54',
    '45',
    '83',
    '182',
    '88',
    '75',
    '85',
    '54',
    '53',
    '89',
    '59',
    '37',
    '35',
    '38',
    '29',
    '18',
    '45',
    '60',
    '49',
    '62',
    '55',
    '78',
    '96',
    '29',
    '22',
    '24',
    '13',
    '14',
    '11',
    '11',
    '18',
    '12',
    '12',
    '30',
    '52',
    '52',
    '44',
    '28',
    '28',
    '20',
    '56',
    '40',
    '31',
    '50',
    '40',
    '46',
    '42',
    '29',
    '19',
    '36',
    '25',
    '22',
    '17',
    '19',
    '26',
    '30',
    '20',
    '15',
    '21',
    '11',
    '8',
    '5',
    '19',
    '5',
    '8',
    '8',
    '11',
    '11',
    '8',
    '3',
    '9',
    '5',
    '4',
    '6',
    '3',
    '6',
    '3',
    '5',
    '4',
    '5',
    '6'
  ];
  final List<int> savedsouras = [];
  final List<String> seachresault = [];
  final List<String> seachresaulteng = [];
  final List<int> seachrid = [];
  final TextEditingController _controller = TextEditingController();

  void search(String q) {
    seachresault.clear();
    seachresaulteng.clear();
    seachrid.clear();

    String query = q.toLowerCase();

    for (int i = 0; i < arabicAuranSuras.length; i++) {
      if (arabicAuranSuras[i].contains(query) ||
          englishQuranSurahs[i].toLowerCase().contains(query)) {
        seachresault.add(arabicAuranSuras[i]);
        seachresaulteng.add(englishQuranSurahs[i]);
        seachrid.add(i);
      }
    }

    setState(() {});
  }

  void savesura(int index) async{

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (!savedsouras.contains(index)) {
      savedsouras.add(index);
      setState(() {});
     idssrting.add(index.toString());
      prefs.setStringList("history", idssrting);
    }
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    gethistory();
  }
  void gethistory() async{
   List<String>? historylist =[];
   final SharedPreferences prefs = await SharedPreferences.getInstance();
    historylist = prefs.getStringList("history")?? [] ;
    for (int i =0 ; i<historylist.length; i++){
      savedsouras.add(int.parse(historylist[i]));
    }
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/taj-mahal-agra-india.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff202020), Colors.black45],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/Logo.png"),
              TextField(
                controller: _controller,
                onChanged: search,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Surah name?",
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  prefixIcon: const Icon(Icons.search_outlined, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),
              if (savedsouras.isNotEmpty)
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    itemCount: savedsouras.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final surahIndex = savedsouras[index];
                      return savedwidget(
                        bianatelsoura: SURADATA(
                          rkmelsora: surahIndex,
                          surahnameinar: arabicAuranSuras[surahIndex],
                          surahnameineng: englishQuranSurahs[surahIndex],
                          ayaverses: AyaNumber[surahIndex],
                        ),
                      );
                    },
                  ),
                ),
              const SizedBox(height: 20),
              Expanded(
                child: seachresault.isEmpty && _controller.text.isNotEmpty
                    ? const Center(
                  child: Text(
                    "No results found",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
                    : ListView.separated(
                  itemCount: seachresault.isEmpty
                      ? arabicAuranSuras.length
                      : seachresault.length,
                  itemBuilder: (BuildContext context, int index) {
                    final surahIndex = seachresault.isEmpty ? index : seachrid[index];
                    return qur2anwidget(
                      surahinestant: SURADATA(
                        surahnameinar: arabicAuranSuras[surahIndex],
                        surahnameineng: englishQuranSurahs[surahIndex],
                        ayaverses: AyaNumber[surahIndex],
                        rkmelsora: surahIndex,
                      ),
                      ontap: savesura,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(height: 20);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SURADATA {
  String surahnameinar;
  String surahnameineng;
  String ayaverses;
  int rkmelsora;
  bool isfav = false;

  SURADATA({
    required this.surahnameinar,
    required this.surahnameineng,
    required this.ayaverses,
    required this.rkmelsora,
  });
}










