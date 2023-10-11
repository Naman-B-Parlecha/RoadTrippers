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
  )
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
];
