class RecentWork {
  final String image, category, title, url;
  final int id;

  RecentWork({this.id, this.image, this.category, this.title,this.url});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Interactive Learning Platform in Bangladesh",
    category: "Prottoy",
    image: "assets/images/prottoy.webp",
    url: "https://play.google.com/store/apps/details?id=bd.com.prottoy"
  ),
  RecentWork(
      id: 2,
      title: "Grocery Shopping App in Canada",
      category: "Ongrocery",
      image: "assets/images/ongrocery.webp",
      url: "https://play.google.com/store/apps/details?id=com.zatiq.expresscart"
  ),
  RecentWork(
      id: 2,
      title: "Money Transferring Platform among Countries",
      category: "GetBetal",
      image: "assets/images/get_betal.webp",
      url: "https://www.getbetal.com/"
  ),
  RecentWork(
    id: 3,
    title: "Easytrax GPS Tracking",
    category: "EasyTrax",
    image: "assets/images/easytrax-app.webp",
    url: "https://play.google.com/store/apps/details?id=com.bd.easytraxstandard"
  ),
  RecentWork(
    id: 4,
    title: "Practice App for Business Analysis Course",
    category: "Simplex",
    image: "assets/images/simplex.webp",
    url: "https://play.google.com/store/apps/details?id=com.simplex.mahmud.cbapsimplified",
  ),
  RecentWork(
    id: 5,
    title: "Website Front End Development by HTML, CSS & JavaScript",
    category: "Easytrax",
    image: "assets/images/easytrax-web.webp",
    url: "https://crm.easytrax.com.bd/crm/registration",
  ),
  RecentWork(
    id: 6,
    title: "Email Template by HTML, CSS & JavaScript",
    category: "Easytrax",
    image: "assets/images/easytrax-email.webp",
    url: "",
  ),
];
