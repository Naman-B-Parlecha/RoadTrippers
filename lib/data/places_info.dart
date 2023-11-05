//for now store different places in bangalore using our custom model

import 'package:latlong2/latlong.dart';
import 'package:test/models/store_places.dart';

List<StorePlaces> places = [
  StorePlaces(
      'National Gallery of Modern Art',
      LatLng(12.989416, 77.585475),
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/a7/c8/bc/national-gallery-of-modern.jpg?w=800',
      'Manekyavelu Mansion, 49, Palace Road, Bengaluru, Karnataka, 560052',
      'art_gallery'),
  StorePlaces(
      'Brahmin\'s Coffee Bar',
      LatLng(12.953894, 77.551376),
      'https://i0.wp.com/bangalorelocale.com/wp-content/uploads/2021/07/Brahmins-Coffee-Bar-Bangalore.jpg?fit=1000%2C667&ssl=1',
      'Ranga Rao Road, Near Shankar Mutt, Shankarapura, Near Basavanagudi, Bangalore, Bengaluru, Karnataka',
      'cafe'),
  StorePlaces(
      'Phoenix Marketcity',
      LatLng(12.995806, 77.696396),
      'https://upload.wikimedia.org/wikipedia/commons/c/c5/Phoenix-marketcity-BLR-1.jpg',
      'Whitefield Main Road, Mahadevapura, Bengaluru, Karnataka 560048',
      'city_mall'),
  StorePlaces(
      'Nexus Mall Koromangla',
      LatLng(12.937618567380122, 77.6233270093909 ),
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/The-Forum-Mall-BLR-1.jpg/1024px-The-Forum-Mall-BLR-1.jpg',
      'Hosur Rd, Chikku Lakshmaiah Layout, Koramangala, Bengaluru, Karnataka 560095',
      'city_mall'),

  StorePlaces(
      'Gopalan Innovation Mall',
      LatLng(12.918294247481347, 77.60847830034427 ),
      'https://www.gopalanmall.com/img/gopalan-innovation-mall.jpg',
      '22, Bannerghatta Rd, Sarakki Industrial Layout, 3rd Phase, J. P. Nagar, Bengaluru, Karnataka 560076',
      'city_mall'),
  StorePlaces(
      'Visvesvaraya Industrial & Technological Museum',
      LatLng(12.975046, 77.593954),
      'https://static.toiimg.com/thumb/msid-24981013,width=1200,height=900/24981013.jpg',
      'P. B. No. 5216, Kasturba Road, Bengaluru, Karnataka, 560001',
      'museum'),
  StorePlaces(
      'Chianti Indiranagar',
      LatLng(12.969966, 77.637644),
      'https://b.zmtcdn.com/data/pictures/3/18682433/62e6f5f19af33b77204a55bb3b1d39f9_featured_v2.jpg',
      '960, 12th Main, HAL 2nd Stage, Indiranagar, Bangalore, Bengaluru, Karnataka',
      'restaurant'),
  StorePlaces(
      'M. Chinnaswamy Stadium',
      LatLng(12.978823, 77.597074),
      'https://static.toiimg.com/thumb/msid-102616212,width-1070,height-580,imgsize-89446,resizemode-6,overlay-toi_sw,pt-32,y_pad-40/photo.jpg',
      'Cubbon Road, Bengaluru, Karnataka 560001',
      'stadium'),
  StorePlaces(
      'Ulsoor Lake',
      LatLng(12.982473, 77.614159),
      'https://travel2karnataka.com/images/ulsoor_lake.jpg',
      '20 Kensington Road 2nd Cross Ulsoor Lake 560042, Bangalore, Bengaluru, Karnataka',
      'park'),
  StorePlaces(
      'The Lady Jehangir Kothari Memorial Hall',
      LatLng(12.984317, 77.594977),
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/fa/bb/e1/lady-jehangir-kothari.jpg?w=1200&h=-1&s=1',
      'Venkataswamy Naidu Road, Indian Express, Vasanth Nagar, Bengaluru, Karnataka, 560051',
      'monument'),
  StorePlaces(
      'JW Marriott Hotel Bengaluru',
      LatLng(12.9724423, 77.5957151),
      'https://cache.marriott.com/marriottassets/marriott/BLRJW/blrjw-pool-3313-hor-clsc.jpg',
      '24/1 Vittal Mallya Rd',
      'hotel'),
  StorePlaces(
      'Cubbon Park',
      LatLng(12.9757, 77.5937),
      'https://res.cloudinary.com/roundglass/image/upload/w_1104,h_736,c_fill/q_auto:best,f_auto/v1575463802/roundglass/sustain/Cubbon-Park-Bangalore_-sandie088_-Shutterstock_xtc3sp.jpg',
      'Kasturba Road, Behind High Court of Karnataka Ambedkar Veedhi, Sampangi Rama Nagara, Bengaluru, Karnataka 560001',
      'park'),
  StorePlaces(
      'Lalbagh Botanical Garden',
      LatLng(12.950272, 77.583129),
      'https://www.holidify.com/images/cmsuploads/compressed/shutterstock_154851008_20200123162547_20200123162603.png',
      'Mavalli, Bengaluru, Karnataka 560004',
      'park'),
  StorePlaces(
      'Bannerghatta National Park',
      LatLng(12.801009, 77.574945),
      'https://imgmedia.lbb.in/media/2018/11/5bffeb035f05991540870171_1543498499157.jpg',
      'Bannerghatta Rd, Bannerghatta, Bengaluru, Karnataka 560083',
      'park'),
  StorePlaces(
      'Bangalore Palace',
      LatLng(13.003512, 77.586515),
      'https://upload.wikimedia.org/wikipedia/commons/8/8f/Bangalore_Mysore_Maharaja_Palace.jpg',
      'Vasanth Nagar, Bengaluru, Karnataka 560052',
      'monument'),
  StorePlaces(
      'Tipu Sultan\'s Summer Palace',
      LatLng(12.895589, 76.858174),
      'https://www.beerandcroissants.com/wp-content/uploads/2018/09/Bengaluru-Tipus-summer-palace-front.jpg',
      'Tippu Sultan Palace Rd, Chamrajpet, Bengaluru, Karnataka 560018',
      'monument'),
  StorePlaces(
      'Vidhana Soudha',
      LatLng(13.034816, 77.516322),
      'https://upload.wikimedia.org/wikipedia/commons/e/e4/Vidhana_Soudha%2C_front_%2801%29.jpg',
      'Doctor Ambedkar Veedhi, Sampangi Rama Nagar, Bengaluru, Karnataka 560001',
      'monument'),
  StorePlaces(
      'ISKCON Temple Bangalore',
      LatLng(13.009838, 77.548516),
      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/a9/43/da.jpg',
      'Hare Krishna Hill, Chord Road, Rajajinagar, Bengaluru, Karnataka 560010',
      'monument'),
  StorePlaces(
      'The Oberoi Bengaluru',
      LatLng(12.97361, 77.615822),
      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/31211348.jpg?k=c469403df80f10e33120c7be42b61d458746716a4e04c62ad4b9afc1c22edc98&o=&hp=1',
      '37-39 Mahatma Gandhi Rd',
      'hotel'),
  StorePlaces(
      'The Leela Palace Bengaluru',
      LatLng(12.961237, 77.646289),
      'https://imgcld.yatra.com/ytimages/image/upload/t_seo_Hotel_w_930_h_550_c_fill_g_auto_q_40_f_jpg/v1398669048/Domestic%20Hotels/Hotels_Bangalore/The%20Leela%20Palace%20Bangalore/Overview.jpg',
      '#23 Kodihalli',
      'hotel'),
  StorePlaces(
      'Taj West End',
      LatLng(12.984529, 77.581998),
      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/154916176.jpg?k=bdae8442757dcf5f15433ec94a87969df84a54d4180c3782f45e40165e8ccef8&o=&hp=1',
      'Race Course Rd',
      'hotel'),
  StorePlaces(
      "Café Nosh",
      LatLng(13.068833, 77.577900),
      "https://content.jdmagicbox.com/comp/bangalore/h1/080pxx80.xx80.180725160002.z5h1/catalogue/cafe-nosh-yelahanka-bangalore-restaurants-wqrmp33eqx.jpg",
      "No-4, Swara, Stilt Level, Canara Bank Layout, Rajiv Gandhi Nagar, Kodigehalli, Bengaluru, Karnataka 560097",
      "cafe"),
  StorePlaces(
    'Nagarjuna (Andhra Cuisine)',
    LatLng(13.068992, 77.497897),
    'https://images.slurrp.com/prod/rich_article/8w825qb6qyi.webp?impolicy=slurrp-20210601&width=880&height=500',
    'No. 44/1, Residency Road, Shanthala Nagar, Ashok Nagar, Bengaluru, Karnataka 560025',
    'Restaurant', // Change category to Restaurant
  ),
];

List<StorePlaces> park_places = [
  StorePlaces(
      'Ulsoor Lake',
      LatLng(12.982473, 77.614159),
      'https://travel2karnataka.com/images/ulsoor_lake.jpg',
      '20 Kensington Road 2nd Cross Ulsoor Lake 560042, Bangalore, Bengaluru, Karnataka',
      'park'),
  StorePlaces(
      'Cubbon Park',
      LatLng(12.9757, 77.5937),
      'https://res.cloudinary.com/roundglass/image/upload/w_1104,h_736,c_fill/q_auto:best,f_auto/v1575463802/roundglass/sustain/Cubbon-Park-Bangalore_-sandie088_-Shutterstock_xtc3sp.jpg',
      'Kasturba Road, Behind High Court of Karnataka Ambedkar Veedhi, Sampangi Rama Nagara, Bengaluru, Karnataka 560001',
      'park'),
  StorePlaces(
      'Lalbagh Botanical Garden',
      LatLng(12.950272, 77.583129),
      'https://www.holidify.com/images/cmsuploads/compressed/shutterstock_154851008_20200123162547_20200123162603.png',
      'Mavalli, Bengaluru, Karnataka 560004',
      'park'),
  StorePlaces(
      'Bannerghatta National Park',
      LatLng(12.801009, 77.574945),
      'https://imgmedia.lbb.in/media/2018/11/5bffeb035f05991540870171_1543498499157.jpg',
      'Bannerghatta Rd, Bannerghatta, Bengaluru, Karnataka 560083',
      'park'),
  StorePlaces(
      'Shankaraa Foundation',
      LatLng(12.88665784214793, 77.55682708633184 ),
      'https://images.venuebookingz.com/20789-1678788190-wm-shankara-foundation-bangalore-7.jpg',
      'Shankaraa, Kanakapura Rd, Doddakallasandra, Bengaluru, Karnataka 560062',
      'park'),
StorePlaces(
      'Puttenahalli Lake',
      LatLng(12.893865405618012, 77.59057223844852),
      'https://images.citizenmatters.in/wp-content/uploads/sites/14/2017/08/29171318/Puttenahalli-lake.jpg?strip=all&lossy=1&ssl=1',
      'Arekere MICO Layout Main Rd, Puttenahalli, JP Nagar 7th Phase, near MLR Convention Hall, Bengaluru, Karnataka 560076',
      'park'),
StorePlaces(
      'BTM',
      LatLng(12.907998095283714, 77.61952750200341),
      'https://content.jdmagicbox.com/comp/bangalore/n2/080pxx80.xx80.190719230454.s3n2/catalogue/national-poet-kuvempu-park-btm-layout-bangalore-parks-em3asvs111.jpg?clr=',
      '181, Tank Shore Rd, EWS Colony, Lake City, BTM Layout, Bengaluru, Karnataka 560076',
      'park'),
StorePlaces(
      'Ramaiah City Park',
      LatLng(12.885814286659894, 77.58805928259387),
      'https://lh5.googleusercontent.com/p/AF1QipP1tBIfV_Xn8kOMgqytgGIQNuwRLth_wKsWF4dG=w1080-k-no',
      'VHJP+8WF, MS Ramaiah City Layout, JP Nagar 7th Phase, Arekere, Bengaluru, Kothnur, Karnataka 560078',
      'park'),      
];

List<StorePlaces> monument_places = [
  StorePlaces(
      'The Lady Jehangir Kothari Memorial Hall',
      LatLng(12.984317, 77.594977),
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/fa/bb/e1/lady-jehangir-kothari.jpg?w=1200&h=-1&s=1',
      'Venkataswamy Naidu Road, Indian Express, Vasanth Nagar, Bengaluru, Karnataka, 560051',
      'monument'),
  StorePlaces(
      'Bangalore Palace',
      LatLng(13.003512, 77.586515),
      'https://upload.wikimedia.org/wikipedia/commons/8/8f/Bangalore_Mysore_Maharaja_Palace.jpg',
      'Vasanth Nagar, Bengaluru, Karnataka 560052',
      'monument'),
  StorePlaces(
      'Tipu Sultan\'s Summer Palace',
      LatLng(12.895589, 76.858174),
      'https://www.beerandcroissants.com/wp-content/uploads/2018/09/Bengaluru-Tipus-summer-palace-front.jpg',
      'Tippu Sultan Palace Rd, Chamrajpet, Bengaluru, Karnataka 560018',
      'monument'),
  StorePlaces(
      'Vidhana Soudha',
      LatLng(13.034816, 77.516322),
      'https://upload.wikimedia.org/wikipedia/commons/e/e4/Vidhana_Soudha%2C_front_%2801%29.jpg',
      'Doctor Ambedkar Veedhi, Sampangi Rama Nagar, Bengaluru, Karnataka 560001',
      'monument'),
  StorePlaces(
      'Cave Temple',
      LatLng(12.87774694897638, 77.59948493666768),
      'https://www.karnataka.com/wp-content/uploads/2007/10/800px-Southern_Fort__the_old_gun_Badami_1.jpg',
      'VHGX+RPW, Cave Temple Rd, Pai Layout, Hulimavu, Bengaluru, Karnataka 560076',
      'monument'),
  StorePlaces(
        'Begur Fort',
        LatLng(12.875960139607844, 77.62301623917813),
        'https://imgmedia.lbb.in/media/2018/08/5b7c3947d994ba0a5c821d34_1534867783490.jpg',
        'Akshaya Residency, Akshayanagar, Bengaluru, Karnataka 560076',
        'monument'),
  StorePlaces(
        'Shri Panchalinga Nageshwara Temple',
        LatLng(12.878846300507146, 77.62851714284861),
        'https://www.bangaloretourism.org/image/begur-nageshwara-temple108.jpg',
        'BBMP Office, Begur Rd, opposite to Begur, Begur, Bengaluru, Karnataka 560068',
        'monument'),
  StorePlaces(
        'ISKCON South Bengaluru',
        LatLng(12.906268653312331, 77.55561232604909 ),
        'https://www.iskconbangalore.org/wp-content/uploads/2015/11/vaikutha-hill.jpg',
        '3rd Main Rd, Samvruddi Enclave, 2nd Stage, Kumaraswamy Layout, Bengaluru, Karnataka 560061',
        'monument'),
];

List<StorePlaces> restaurant_places = [
  StorePlaces(
      'Brahmin\'s Coffee Bar',
      LatLng(12.953894, 77.551376),
      'https://i0.wp.com/bangalorelocale.com/wp-content/uploads/2021/07/Brahmins-Coffee-Bar-Bangalore.jpg?fit=1000%2C667&ssl=1',
      'Ranga Rao Road, Near Shankar Mutt, Shankarapura, Near Basavanagudi, Bangalore, Bengaluru, Karnataka',
      'cafe'),
  StorePlaces(
      'Chianti Indiranagar',
      LatLng(12.969966, 77.637644),
      'https://b.zmtcdn.com/data/pictures/3/18682433/62e6f5f19af33b77204a55bb3b1d39f9_featured_v2.jpg',
      '960, 12th Main, HAL 2nd Stage, Indiranagar, Bangalore, Bengaluru, Karnataka',
      'restaurant'),
  StorePlaces(
      "Café Nosh",
      LatLng(13.068833, 77.577900),
      "https://content.jdmagicbox.com/comp/bangalore/h1/080pxx80.xx80.180725160002.z5h1/catalogue/cafe-nosh-yelahanka-bangalore-restaurants-wqrmp33eqx.jpg",
      "No-4, Swara, Stilt Level, Canara Bank Layout, Rajiv Gandhi Nagar, Kodigehalli, Bengaluru, Karnataka 560097",
      "cafe"),
  StorePlaces(
    'Nagarjuna (Andhra Cuisine)',
    LatLng(13.068992, 77.497897),
    'https://images.slurrp.com/prod/rich_article/8w825qb6qyi.webp?impolicy=slurrp-20210601&width=880&height=500',
    'No. 44/1, Residency Road, Shanthala Nagar, Ashok Nagar, Bengaluru, Karnataka 560025',
    'Restaurant', // Change category to Restaurant
  ),
  StorePlaces(
      'Dilli Chowk',
      LatLng(12.863163156944053, 77.58057564515066),
      'https://content.jdmagicbox.com/comp/bangalore/y1/080pxx80.xx80.211101213712.l4y1/catalogue/dilli-chowk-gottigere-bangalore-restaurants-llb2cp8t3b.jpg',
      '30, Kembathalli Main Rd, TK Deepak Layout, 8th Phase, Gottigere, Bengaluru, Kothnur, Karnataka 560083',
      'restaurant'),

StorePlaces(
      'Empire Restaurant',
      LatLng(12.884194843569441, 77.5488451038873),
      'https://im1.dineout.co.in/images/uploads/restaurant/sharpen/1/i/o/p115603-167506751063d7807678f13.jpg?w=400',
      'No.2, Bank Officers and Officials House Building Society, Doddakallasandra, Bengaluru, Karnataka 560062',
      'restaurant'),

StorePlaces(
      'Sstella Asian Kitchen And Bar',
      LatLng(12.877204947510917, 77.59602593457753),
      'https://d4t7t8y8xqo0t.cloudfront.net/resized/720X480/restaurant%2F689943%2Frestaurant520230807045919.jpg',
      '3rd floor, Royal Meenakshi Mall Cave Temple Road, Bannerghatta Rd, Hulimavu, Bengaluru, Karnataka 560076',
      'restaurant'),

StorePlaces(
      'Krishna Kuteera',
      LatLng(12.870228511042315, 77.5972026588366),
      'https://lh3.googleusercontent.com/VD06KBK4BCQYve7cIrcRaF0XVLHbWOGzTqLP3K6iNNcTJxYxdyQjDml8gKLa4Jg6zfS7m_mSZ84_dQkJlWih_82tJXPJ-iMG4NbLk4I=w1200-rw',
      '52 2nd main, Bannerghatta Rd, Kalena Agrahara, Bengaluru, Karnataka 560076',
      'restaurant'),
];

List<StorePlaces> hotel_places = [
  StorePlaces(
      'JW Marriott Hotel Bengaluru',
      LatLng(12.9724423, 77.5957151),
      'https://cache.marriott.com/marriottassets/marriott/BLRJW/blrjw-pool-3313-hor-clsc.jpg',
      '24/1 Vittal Mallya Rd',
      'hotel'),
  StorePlaces(
      'The Oberoi Bengaluru',
      LatLng(12.97361, 77.615822),
      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/31211348.jpg?k=c469403df80f10e33120c7be42b61d458746716a4e04c62ad4b9afc1c22edc98&o=&hp=1',
      '37-39 Mahatma Gandhi Rd',
      'hotel'),
  StorePlaces(
      'The Leela Palace Bengaluru',
      LatLng(12.961237, 77.646289),
      'https://imgcld.yatra.com/ytimages/image/upload/t_seo_Hotel_w_930_h_550_c_fill_g_auto_q_40_f_jpg/v1398669048/Domestic%20Hotels/Hotels_Bangalore/The%20Leela%20Palace%20Bangalore/Overview.jpg',
      '#23 Kodihalli',
      'hotel'),
  StorePlaces(
      'Taj West End',
      LatLng(12.984529, 77.581998),
      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/154916176.jpg?k=bdae8442757dcf5f15433ec94a87969df84a54d4180c3782f45e40165e8ccef8&o=&hp=1',
      'Race Course Rd',
      'hotel'),
  StorePlaces(
      'Area 83',
      LatLng(12.841359193240752, 77.57134616461667),
      'https://media-cdn.tripadvisor.com/media/photo-s/0f/f0/ca/c4/getlstd-property-photo.jpg',
      '313, Bannerghatta Road Shanbhoganahalli, Bilwaradahalli, Karnataka 560083',
      'hotel'),
  StorePlaces(
        'Keys Select Hosur Road - By Lemon Tree Hotels',
        LatLng(12.889495702131287, 77.64539418298166),
        'https://media-cdn.tripadvisor.com/media/photo-s/10/e5/f1/08/grounds--v17463055.jpg',
        'Hosur Rd, Singasandra, Bengaluru, Karnataka 560068',
        'hotel'),
  StorePlaces(
        'Bannerghatta Nature Camp-Jungle Lodges',
        LatLng(12.804474680101874, 77.56231007580465),
        'https://img.lifeisoutside.com/getaways/135/featured/microsite.jpg',
        'Bannerghatta Biological Park Kaggalipura Road near Hakki-Pikki Colony, Bannerughatta, Bengaluru, Karnataka 560083',
        'hotel'),
  StorePlaces(
        'Hotel UD Residency',
        LatLng(12.943706646575032, 77.57707295424375),
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/9a/95/c1/ud-residency.jpg?w=700&h=-1&s=1',
        '#19/2, South, E End Main Rd, Basavanagudi, Bengaluru, Karnataka 560004',
        'hotel'),
];
