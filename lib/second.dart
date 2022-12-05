import 'package:flutter/material.dart';
import 'package:hindi_shayari/third.dart';

class second extends StatefulWidget {
  String titles;
  String photos;
  int index;

  second(this.titles, this.photos, this.index);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List<String> motivation = [
    """Vikalp milege bahut Marg bhatkane ke liye
Sankalp ek hi kafi hai Manjil tak jane ke liye""",
    """Judaai ka har lamha kuch yu guzara hai humne
Tum aaoge Tum aane wale ho Tum aa jao shayad""",
    """Hamdardi na karo mujh se aye hamdard dosto
Wo bhi bare hamdard the jo dard hazaron dey gye""",
    """Kisi ki yaad main itna udaas na huwa kar
Log naseeb se milte hain udaasiyon se nahi""",
    """Mere Alfazo Ko sunne Wale To Hazaro Hai
Par Meri Khamoshi Ko Samjhne Wala Ek Bhi Nahi""",
    """Kai jeet baki hai kai haar baki hai
Abi to zindgi ka saar baki hai
Yaha se chale hai nayi manjil ke liye
Yeh ek panna tha abi to kitab baki hai""",
    """Khushi ek essa ahsas hai Jiski har kisi ko talash hai
Gum ek essa anubhav hai Jo sabke pass hai
Magar zindgi to vahi jeeta hai Jisko kud par vishwash hai""",
    """Intzaar karne walon ko sirf utna hi milta hai
jitna ki koshish karne wale chord dete hai"""
  ];
  List<String> friendship = [
    """Dost ka pyar dua se kam nahi hota, 
  Dost door ho to bhi gum nahi hota, 
  Pyar mein aksar dosti kam ho jati hai, 
  Par dosti mein kabhi pyar kam""",
    """Tum Dost Ban Ke Aise Aaye Zindagi Mein,
Ki Hum Yeh Zamana Hi Bhool Gaye,
Tumhein Yaad Aaye Na Aaye Humari Kabhi,
Par Hum To Tumhein Bhulaana Hi Bhool Gaye.""",
    """Rishton se badi chahat kya hogi, 
    Dosti se badi ibadat kya hogi, 
    Jise dost mil jaye aap jaisa, 
    Use zindagi se shika""",
    """Dosti insan ki zaroorat hai, 
    Dilon pe dosti ki huqumat hai, 
    Aap ke pyar ki wajah se zinda hain Warna khuda ko bhi hamari""",
    """Dushmano Se Mohabbat Hone Lagi Hai Mujhe,
Jaise Jaise Dosto Ko Aazmata Ja Raha Hoon.""",
    """Mohabbat ka syrup ho tum, 
    Tension ka capsule ho tum, 
    Aafat ka injection ho tum, 
    Par kya kare jhelna padta hai, 
    Kyonki… DOSTI ka o""",
    """Kal Na Hum Honge Na Koi Gila Hoga,
Sirf Simti Hui Yaadon Ka Silsila Hoga,
Jo Lamhe Hain Unhein Haskar Bita Le Dost,
Jaane Kal Zindagi Ka Kya Faisla Hoga.""",
    """Rishton Se Badi Chahat Aur Kya Hogi,
Dosti Se Badi Ibaadat Aur Kya Hogi,
Jise Dost Mil Sake Koyi Aap Jaisa,
Use Zindagi Se Koyi Aur Shikayat Kya Hogi.""",
    """Tanhai Si Thi Duniya Ki Bheed Mein,
Socha Koi Apna Nahi Takdeer Mein,
Ek Din Jab Dosti Ki Aap Se To Yoon Laga,
Kuchh Khaas Tha Mere Haath Ki Lakeer Mein.""",
    """Ummeed Aisi Ho Jo Jeene Ko Majboor Kare,
Raah Aisi Ho Jo Chalne Ko Majboor Kare,
Mahek Apni Dosti Ki Kam Na Ho Kabhi,
Dosti Aisi Ho Jo Milne Ko Majboor Kare."""
  ];

  List<String> love = [
    """na koi kisi se door hota hai
na koi kisi ke krib hota hai
wo khud he chal ke aata hai
jo jiska nasib hota hai""",
    """Kabhi udaas ho jayo to btana mujhe
fir se apna dil denge tumhe khelne k liye""",
    """Tera Saath hai Toh mujhe kya kami hai
Teri har muskan se mili mujhe kushi hai
Muskuraate Rehna isi Tarah humesha
Kyonki teri is muskan mein meri jaan basi hai""",
    """kon kaheta hai taj mahel banane ke lie dolat nahi milti.
taj mahel banane ke lie dolat to milti he magar mohbatt karne ke lie mumtaj nahi milti.""",
    """Nazar Chahti Hai Deedar Karna,
Dil Chahta Hai Pyaar Karna,
Kya Bataoon Is Dil Ka Aalam,
Nasib Me Likha Hai Intezar Karna…""",
    """Mile to hazaron log the Zindagi me ,
Par wo sabse alag tha jo kismat me nahi tha...""",
    """Na Ruthna Humse Hum Mar Jayenge,
Dil Ki Duniya Tabaah Kr Jayenge,
Pyar Kiya He Humne Koi Mazak Nahi
Dil Ki Dhadkan Tere Naam Kr Jayenge""",
  ];

  List<String> morning = [
    """Subah Hote Hi Jab Duniya Aabaad Hoti Hai,
Aankh Khulte Hi Dil Mein Aapki Yaad Hoti Hai,
Khushiyon Ke Phool Ho Aapke Aanchal Mein,
Ye Mere Honthon Pe Pehli Fariyaad Hoti Hai.
Good Morning...""",
    """Tere Gamon Ko Teri Khushi Kar De,
Har Subah Teri Duniya Mein Roshni Bhar De,
Jab Bhi Tootne Lage Teri Saanse,
Khuda Tujhme Shamil Meri Zindgi Kar De.""",
    """Socha Kuchh Pal Tere Naam Kerta Chalu,
Ek Sms Se Tujhko Salaam Kerta Chalu,
Subah Subah Tujhko Apni Yaad Dila Du,
Khushiyon Ki Duayein Tamaam Kerta Chalu.

Os Ki Boondein Phoolon Ko Bhiga Rahi Hain,
Thandi Lehrein Ek Taazgi Jaga Rahi Hain,
Aaiye Aur Ho Jaye Aap Bhi Inmein Shamil,
Ek Pyari Si Subah Aapko Jaga Rahi Hai.
Good Morning""",
    """Aapki Nayi Subah Itni Suhani Ho Jaye,
Dukhon Ki Sari Batein Aapki Purani Ho Jaye,
De Jaye Itni Khushiya Ye Din,
Ki Khushi Bhi Aapki Diwaani Ho Jaye.
Good Morning Dear.""",
    """Subah ka ujaala sada saath ho,
Har din har pal apke liye khas ho,
Dil se duaa nikalti hai aapke liye,
Saari khushiya aapke pass ho. ?✨
GOOD MORNING""",
    """Na Muskurane Ko Jee Chahta Hai; 
  Na Khane-Peene aur Na Hi Sone Ko Jee Chahta Hai; 
  Yeh Garmi Abb Bardasht Karni Hai Badi Mushkil; 
  Abb To Paharon Pe Chale Jane Ko Jee Chahta Hai"""
  ];

  List<String> brokenheart = [
    """!! Jaao, Dhond Lo Hum Se Ziyada Chahne Wala
Mil Jaye To Khush Rehna ,
Na Mile To Hum Phir Bhi Tumhare Hai...!!""",
    """Zindagi Ka Pehla Pyar Kaun Bhulata Hai,
Yeh Pehli Baar Hota Hai,
Jab Koi Kisi Ko Khud Se Badhkar Chahta Hai,
Uski Pasand, Uski Khwahish,
Mien Khud Ko Bhul Jaata Hai,
Akele Mein Uska Naam Likh-Likh Mitata Hai,
Baat Karne Se Pehle Sochta Hai Kya Kehna Hai,
Baat Hone Ke Baad Phir Bhi Kuch Reh Jaata Hai,
Hota Hai Khubsurat Kitna Pehla Pyar,
Naa Jaane Kyun Aksar Adhura Reh Jaata Hai
Pehla pYAR....!!!""",
    """It hurts when you re being ignored by the person
whose attention is the only thing you want in the world""",
    """Phir se tere mehfil mein chala aya hu.......
Andaz wahi h bs alfaz naye laya hu.....""",
    """Zakham de kar na puch dard ki shiddat....
Dard to phir dard hai, kam kya, zeyaada kya""",
    """pyar me ab yeh shamil karna hai,
vo sach kahe na kahe,
hume atbaar karna hain""",
    """Uthi uski doli to tufan la dunga. . .
Mli na muje wo to Duniya jala dunga. .
Dhoka jo diya usne
To
To kya
Smart dikta hu yaar
dusri pta luga😄😄😄"""
  ];

  List<String> romantic = [
    """Aap khud nahi janti aap kitni pyari ho
Jaan ho hamari par jaan se pyaari ho
Duriyon ke hone se koi fark nahi padta
Aap kal bhi hamari thi aaj bhi hamari ho…!!""",
    """A good heart a good nature r 2 different issues
A good heart can win many relationships
But a good nature can win many hearts""",
    """Kitna pyar hai tumse yeh jan lo
Tum hi zindagi ho meri Is baat ko maan lo
Tumhe dene ko mere paas Kuchh bhi nahi
Bas ek jaan hai Jab ji chahe maang lo..""",
    """Aapki Ada Se Hum Madhosh Ho Gaye,
Aap Ne Palat Kar Dekha To Hum Behosh Ho Gaye,
Yehi Ek Baat Kehni Thi Aapse,
Na Jaane Kyun Aapko Dekhthe Hi Hum Khamosh Ho Gaye.""",
    """Jadu Hai Teri Har Ek Baat Me
Yaad Bahut Aate Ho Din Aur Raat Me
Kal Jab Dekha Tha Mene Sapna Raat Me
Tab Bhi Apka Hi Hath Tha Mere Hath Me..""",
    """Wo Ek Pal Hi Kaafi Hai
" Jisme Tum Shamil Ho "
Uss Pal Se Jyada Toh
Zindagi Ki Khwaish Hi Nahi Mujhe""",
    """usne mujhse pucha pyar kya hai,
mene katon pe chal ke dikha diya,
usne pucha kitna pyar karte ho mujhe,
maine pura aasman dikha diya,
usne pucha kese rakhoge pyar ko,
mene mahkta hua gulab dikha diya,
usne pucha kese rahoge mere sath,
mene zameen par apna saya dikha diya.""",
  ];
  List<String> shayari = [];

  @override
  void initState() {
    super.initState();
    if (widget.index == 0) {
      shayari = motivation;
    }
    if (widget.index == 1) {
      shayari = friendship;
    }
    if (widget.index == 2) {
      shayari = love;
    }
    if (widget.index == 3) {
      shayari = morning;
    }
    if (widget.index == 4) {
      shayari = brokenheart;
    }
    if (widget.index == 5) {
      shayari = romantic;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titles),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.lightGreen, Colors.teal])),
        ),
      ),
      body: ListView.builder(
        itemCount: shayari.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            margin: EdgeInsets.all(20),
            color: Colors.lightGreen[500],
            child: ListTile(
              leading: Image.asset(
                widget.photos,
                height: 100,
                width: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                "${shayari[index]}",
                textAlign: TextAlign.center,
                maxLines: 1,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return third(shayari, widget.titles, index);
                  },
                ));
              },
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          );
        },
      ),
    );
  }
}
