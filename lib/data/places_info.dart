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
  //my places added from here
  //zone - 4
  StorePlaces(
      'MC Layout Park',
      LatLng(12.9666218, 77.5053806),
      'https://lh5.googleusercontent.com/p/AF1QipOibpXpWuHAnWTt5WhY7vaCpOICJtg3seYp-HS8=w408-h725-k-no',
      '17th Main Rd, Marenahalli, MC Layout, Vijayanagar, Bengaluru, Karnataka',
      'park'),
  StorePlaces(
      'Zen Park',
      LatLng(12.9781376, 77.5064943),
      'https://lh5.googleusercontent.com/p/AF1QipPFEqmOdRTMdazY8czhGzEu3g89heioIkZmje1l=w408-h496-k-no',
      '3rd Block, BDA Layout, 2nd Stage, Naagarabhaavi, Bengaluru, Karnataka',
      'park'),
  StorePlaces(
      'Vishweshvarayya Park',
      LatLng(12.9845765, 77.5216733),
      'https://lh5.googleusercontent.com/p/AF1QipPHScYO4txAznaEibETEUI8yUvQs09xnBswCjId=w408-h544-k-no',
      '1st F Cross Rd, 4th Block, Sharada Colony, West of Chord Road 1st Stage, Basaveshwar Nagar, Bengaluru, Karnataka',
      'park'),
  StorePlaces(
      'ಆವಲಹಳ್ಳಿ ಬಿಡಿಎ ಉದ್ಯಾನವನ',
      LatLng(12.9449893, 77.5123495),
      'https://lh5.googleusercontent.com/p/AF1QipMUBU_FrJLDPTMGwokaFr9HquDxGFyRN7rxLfKM=w408-h306-k-no',
      '5th Main Rd, Avalahalli New BDA Layout, II Phase, Banashankari 3rd Stage, Banashankari, Bengaluru, Karnataka',
      'park'),
  StorePlaces(
      'Chandra Layout Park',
      LatLng(12.9571108, 77.5070808),
      'https://lh5.googleusercontent.com/p/AF1QipPAS0qs-bvKXVQmYCIqiLgSF0VGP7xUfw98wW6t=w408-h306-k-no',
      'Chandra Layout, 18th Main Road, Naagarabhaavi, Bengaluru, Karnataka',
      'park'),
  StorePlaces(
      'Kurubarahalli',
      LatLng(12.9977794, 77.5314858),
      'https://lh5.googleusercontent.com/p/AF1QipNoLKfj25fbPyqwbG_Ka9RDgfuTbbDaoJtDeQmv=w408-h544-k-no',
      '58, Kurubarhalli Main Rd, Gruhalakshmi Layout, KHBS Layout, Basaveshwar Nagar, Bengaluru, Karnataka 560079',
      'monument'),
  StorePlaces(
      'Hanumagiri Temple',
      LatLng(12.9780951, 77.46688),
      'https://lh5.googleusercontent.com/p/AF1QipMvFqOUZjbduB_MtnNf98PG-pNZP6xtHFPkI8W_=w408-h306-k-no',
      '188, 2nd B Main Rd, Vinayaka Layout, Govindaraja Nagar Ward, 9 Block, Naagarabhaavi, Bengaluru, Karnataka',
      'monument'),
  StorePlaces(
      'C.S.I Shantha Oliver Memorial',
      LatLng(12.9729052, 77.5147537),
      'https://lh5.googleusercontent.com/p/AF1QipOS-EEE_Z0dGFMAZva3U2w_D-_qfW8FV2h2-3mk=w532-h240-k-no',
      '1296, 10th Main Rd, SBI Staff Colony, Hoshalli Extension, Stage 1, Vijayanagar, Bengaluru, Karnataka 560040',
      'monument'),
  StorePlaces(
      'Sri Narayan Library',
      LatLng(12.9525296, 77.5150965),
      'https://lh5.googleusercontent.com/p/AF1QipOHCKvJ5KVvcklFHsNLFxO4OtL4XogqoWkT0Rg=w408-h544-k-no',
      'National Law School of India University, Second Floor, Sri Narayan Rao Melgiri Memorial National Law Library, PO Bag 7201, Gnana Bharathi Main Rd, Naagarabhaavi, Bengaluru, Karnataka 560072',
      'monument'),
  StorePlaces(
      'Ammembal Subbarao Garden',
      LatLng(12.9694924, 77.5109455),
      'https://lh5.googleusercontent.com/p/AF1QipMFXGrdTVS4HnZPQaoS0Cz01iRIWh7gtx4lbY6-=w408-h306-k-no',
      'Nagarabhavi Main Rd, Canara Bank Colony, Govindaraja Nagar Ward, Bengaluru, Karnataka 560072',
      'monument'),

  StorePlaces(
      'Le Arabia',
      LatLng(12.9568031, 12.9568031),
      'https://lh5.googleusercontent.com/p/AF1QipPvkitCjpF359IjM5g2eIt7Ucf51vTY9CJsXpaI=w408-h306-k-no',
      '1st Main Rd, Binny Employyes Layout, Hampi Nagar, Binny Mills Employees Colony, Chandra Layout, Bengaluru, Karnataka 560040',
      'Restaurant'),
  StorePlaces(
      'BigBiteIndia',
      LatLng(12.9568031, 77.5174783),
      'https://lh5.googleusercontent.com/p/AF1QipOt6KUUiAQFIc2lrjWkk3mxY1cjc-EvsTJ5oxoM=w408-h306-k-no',
      '17th Cross Rd, 21st Main Rd, behind Maruthi Mandir, Vijayanagar, Bengaluru, Karnataka 560040',
      'Restaurant'),
  StorePlaces(
      'Davangere benne dose',
      LatLng(12.968183, 77.5228501),
      'https://lh5.googleusercontent.com/p/AF1QipPBtPDwSeO18kZru80yAIrhBFvkmlKzT7xpwaZ0=w408-h544-k-no',
      '52, Govindaraja Nagar Ward, Govindaraja Nagar, Vijayanagar, Bengaluru, Karnataka 560072',
      'Restaurant'),
  StorePlaces(
      'STREET 55',
      LatLng(12.9603229, 77.4992734),
      'https://lh5.googleusercontent.com/p/AF1QipMxwlzDvDg6qY6Kp1HhKvoEvr9UxdrgyUTPDw_z=w408-h544-k-no',
      'Nagarbhavi, Bengaluru, Karnataka 560056',
      'Restaurant'),
  StorePlaces(
      'Palate Restaurant',
      LatLng(12.9592472, 77.511601),
      'https://lh5.googleusercontent.com/p/AF1QipNVutj1fYXRASIewn7rNU0IufG5-D2qnx8V7RTo=w408-h306-k-no',
      'gnana bharathi main road, circle, near nagar bvi, 4 Block, Chandra Layout, Bengaluru, Karnataka 560056',
      'Restaurant'),
  StorePlaces(
      'Pallavi',
      LatLng(12.9434924, 77.5206363),
      'https://lh5.googleusercontent.com/p/AF1QipMdxL7Gyiv2THHJ38P9jEFq5wZGK1jaWG5eQysB=w408-h544-k-no',
      'Ranganathan Colony, Deepanjali Nagar, Bengaluru, Karnataka 560026',
      'Restaurant'),

  StorePlaces(
      'Hotel Golden Arch',
      LatLng(12.9691375, 77.5287144),
      'https://lh5.googleusercontent.com/p/AF1QipP0mXNCUMOzHoYQo9AMe00QCPHjTL2Q1e0ioK_E=w408-h272-k-no',
      '541/82/2, Service road, SBI Staff Colony, Hosahalli Extension, Stage 1, Vijayanagar, Bengaluru, Karnataka 560040',
      'hotel'),
  StorePlaces(
      'Shoba Elite',
      LatLng(12.9875116, 77.5327351),
      'https://lh3.googleusercontent.com/gps-proxy/AFm_dcRLlx00YxuvXQbNfb1-Ap7X3E_cqoVYxjQy7DrPxuo0bytguLFawxZ5KQkWottZUwBhqbmWYhXtTSJ5igd9KPAqkHLfT4WBNBbXFfkMUP2UIDonN-C0iUj9E5UPpVooHuTaEnEXmfpbc9aaaNUFEZ5z0O_LcC7W2q_M9KTjGgl3UR4D0s_cLCoC=w408-h612-k-no',
      '15 HIG, 60 Feet Rd, near Havanur Circle, 2nd Stage, KHB Colony, Basaveshwar Nagar, Bengaluru, Karnataka 560079',
      'hotel'),
  StorePlaces(
      'The Club',
      LatLng(12.9528832, 77.5183208),
      'https://lh5.googleusercontent.com/p/AF1QipOXvCTOPW2TSiYHedlVHSgFwfUS9-49s2cN1ugZ=w408-h271-k-no',
      'Mysore Rd, SLV layout, Phase 3, Nayanda Halli, Bengaluru, Karnataka 560039',
      'hotel'),
  StorePlaces(
      'Clove Boutique',
      LatLng(12.9700216, 77.5316683),
      'https://lh5.googleusercontent.com/p/AF1QipNEOeDkQv0AMv7sSNFfzPnenryjJV-inI-ldZdv=w408-h906-k-no',
      'No. 10, old No. 1041/B Next to Saptagiri Suzuki Showroom, 1st Main, Dr, Dr Rajkumar Rd, 4th Block, Rajajinagar, Bengaluru, Karnataka 560010',
      'hotel'),
  StorePlaces(
      'SPICE GARDENS',
      LatLng(12.9720871, 77.4923134),
      'https://lh5.googleusercontent.com/p/AF1QipPNb7RBZCKNwGpezTtnNPiv_YOjl4xzxVC1Tj1j=w408-h408-k-no',
      '119/B, 80 Feet Main Rd, 14th Block, 2nd Stage, Naagarabhaavi, Bengaluru, Karnataka 560072',
      'hotel'),
  StorePlaces(
      'Unathi Boarding And Loadging',
      LatLng(12.9720871, 77.4923134),
      'https://lh5.googleusercontent.com/p/AF1QipOn02Geh2iJIm4qjUS60MKXK1e0DvHf-SwJPJrK=w408-h272-k-no',
      'Sunkadakatte, Bengaluru, Karnataka 560091',
      'hotel'),
  //zone - 12
  StorePlaces(
      'Lake Park',
      LatLng(13.0530877, 77.4694624),
      'https://lh5.googleusercontent.com/p/AF1QipO5I8YgjkW-3eGkreTXD3sIHopKBz7ZPoCaqCh6=w408-h306-k-no',
      '32, Lake Rd, Vidya Nagar, Peenya, Bengaluru, Karnataka 560057',
      'park'),
  StorePlaces(
      'Jaya Prakash Narayana Park',
      LatLng(13.0469414, 77.4931341),
      'https://lh5.googleusercontent.com/p/AF1QipOVy50XbFKS8iSE0CtsuszuEpRHvJw07D1aXwue=w408-h270-k-no',
      '22/1, Tank Bund Road, Brindavan Nagar, Bandappa Garden, Mathikere, Bengaluru, Karnataka 560054',
      'park'),
  StorePlaces(
      'Geleyara Balaga',
      LatLng(13.0749862, 77.4666208),
      'https://lh5.googleusercontent.com/p/AF1QipOqrkF2BBYh7xhRvmLrp2hutExxwhnPNz-PQJQq=w408-h306-k-no',
      'Geleyara Balaga Layout, Jalahalli West, Bengaluru, Myadarahalli, Karnataka 560090',
      'park'),
  StorePlaces(
      'Municipal Park',
      LatLng(13.0834448, 77.4071235),
      'https://lh5.googleusercontent.com/p/AF1QipPZIKp2IU-Ma1blKaDcIalXByWxVxszmUtUvnLl=w480-h240-k-no',
      'Patel Channappa Badavane, Bengaluru, Karnataka 562123',
      'park'),
  StorePlaces(
      'Jarakabandi State Forest',
      LatLng(13.0595468, 77.5175061),
      'https://lh5.googleusercontent.com/p/AF1QipO3kub2vuhikI2GFAm6f--gaWrc9Dm3d9UTpl-p=w408-h306-k-no',
      'Renaissance HVV Villas, Jalahalli, Bengaluru, Karnataka 560015',
      'park'),
  //zone - 12
  StorePlaces(
      'The Wave Restaurant',
      LatLng(13.0772944, 77.4044012),
      'https://lh5.googleusercontent.com/p/AF1QipOcsWbvaXQHhWdFABGyfIFrd3DtH9CNLDOhFijc=w426-h240-k-no',
      'Adarsh Nagar, Arasinakunte, Nagarur, Karnataka 562123',
      'Restaurant'),
  StorePlaces(
      'Sunrise Family',
      LatLng(13.0511288, 77.4617059),
      'https://lh5.googleusercontent.com/p/AF1QipMYEN4_hpv5DNkCsVG105xWdEXwbhL5nX67WAkl=w408-h306-k-no',
      '#548, Duggalamma Temple Rd, 3rd Stage, UBMEC Layout, Rajagopala Nagar, Peenya, Bengaluru, Karnataka 560058',
      'Restaurant'),
  StorePlaces(
      'Veeru\'s The Village Restaurant',
      LatLng(13.0629202, 77.4464557),
      'https://lh5.googleusercontent.com/p/AF1QipO0OgT2YBoK-cF6m-l0CAW_EmK5DIVF-kLmrM22=w408-h544-k-no',
      '3F82+P8G, Bengaluru, Karnataka 562162',
      'Restaurant'),
  StorePlaces(
      'Shahi Taj',
      LatLng(13.0444985, 77.472775),
      'https://lh5.googleusercontent.com/p/AF1QipO1TXfBc5CdmgyRq4In_vvOg1iFqj_sDB5ED4Nh=w408-h408-k-no',
      'Nh-04, Tumkur Rd, Maheswari Nagar, Kempegowdanagar, Bengaluru, Karnataka 560057',
      'Restaurant'),

  //zone - 12
  StorePlaces(
      'Shri Guruvayurappan Temple',
      LatLng(13.039548, 77.5001347),
      'https://lh5.googleusercontent.com/p/AF1QipPvAfxsZjeWVkV--CPd68BXZTlUjweGfHXHfqrg=w408-h306-k-no',
      'Chord Rd, Opp. ISKCON Temple, Yesvantpur Industrial Suburb, Mahalakshmi Layout, Bengaluru, Karnataka 560086',
      'monument'),
  StorePlaces(
      'C K Palace Lawns',
      LatLng(13.0642654, 77.4332731),
      'https://lh5.googleusercontent.com/p/AF1QipMMqB2JQiNe2HCPrW_jHELOF_dTGHLGL3CFNnFN=w426-h240-k-no',
      'Gangappanavara Thota, Bhoomi Layout, Arasinakunte, Karnataka 562123',
      'monument'),
  StorePlaces(
      'Shri Venkateshwara Swami Temple',
      LatLng(13.0407448, 77.4934681),
      'https://lh5.googleusercontent.com/p/AF1QipMwKIB8IQ-tqzAyDNRe8vNsnb0q2QIxbY2C824L=w408-h306-k-no',
      'Phase -1, Peenya, Bengaluru, Karnataka 560058',
      'monument'),
  StorePlaces(
      'Sri Maramma Devi Temple',
      LatLng(13.0635041, 77.4823736),
      'https://lh5.googleusercontent.com/p/AF1QipMvJQCVPiesZMQ2VxWiRaL1FJOYzro3r1wWYZ4m=w408-h544-k-no',
      'Bagalagunte Main Rd, Visveshwaraiah Layout, Manjunatha Nagar, Bagalakunte, Bengaluru, Karnataka 560073',
      'monument'),

  //zone - 12
  StorePlaces(
      'Mohan Regency',
      LatLng(3.0650915, 77.4737047),
      'https://lh5.googleusercontent.com/p/AF1QipPjQl_cl73H5TE5yoL1rRODaP4sfGmn0sVxlUFe=w493-h240-k-no',
      'Madanayakahalli, Bengaluru, Karnataka 562162',
      'hotel'),
  StorePlaces(
      'The Golden Palms',
      LatLng(13.0522536, 77.4751244),
      'https://lh3.googleusercontent.com/gps-proxy/AFm_dcRYzelZ3Z1zlSIEip1_tRg1Sw-6_70eokkpCakTtdGuhuD6fPpLaCNs7dBl_h8J0X0hXik0cyKlyy0PYKHso2-fdbOF9qygt9jAybWtIq3MZKrChtxSNvrs60X-naxzWXz4JycSq4Jwt04E58L2BzOmNGjiU3h9f4K3F4pbw1rgc4KrGx5pUFz6=w408-h306-k-no',
      'Golden Palms Avenue, Off, Tumkur Road, Nagrur Village, Dasanapura, Alur, Karnataka 562123',
      'hotel'),
  StorePlaces(
      'Hotel 8th Mile Suites',
      LatLng(13.0473821, 77.4844981),
      'https://lh5.googleusercontent.com/p/AF1QipNXOKB1oBB_tqWQ0l3l2J5jHdB9qYrvfzzRYpW2=w408-h271-k-no',
      '47, MYLARI TOWER, Tumkur Rd, Vidya Nagar, T. Dasarahalli, Bengaluru, Karnataka 560057',
      'hotel'),
  StorePlaces(
      'Inaara Hotel',
      LatLng(13.0258439, 77.5101588),
      'https://lh5.googleusercontent.com/p/AF1QipOdWV0-BvYVyk_z31IRjfw9jv40Wa85D3mPSsqY=w408-h544-k-no',
      '4 & 4A, Hesarghatta Rd, beside NRR Hospital, Geleyara Balaga Layout, Jalahalli West, Bengaluru, Karnataka 560090',
      'hotel'),
  StorePlaces(
      'Taj Yeshwantpur',
      LatLng(13.0308139, 77.5100305),
      'https://lh5.googleusercontent.com/p/AF1QipMauXGqfoLe-OZ5xJZ0HpxTt73x-B2DhkgMI4Zv=w408-h290-k-no',
      '2275, Tumkur Rd, Yeshwanthpur Industrial Area, Phase 1, Yeswanthpur, Bengaluru, Karnataka 560022',
      'hotel'),
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
  //my places added from here
  //zone - 4
  StorePlaces(
      'MC Layout Park',
      LatLng(12.9666218, 77.5053806),
      'https://lh5.googleusercontent.com/p/AF1QipOibpXpWuHAnWTt5WhY7vaCpOICJtg3seYp-HS8=w408-h725-k-no',
      '17th Main Rd, Marenahalli, MC Layout, Vijayanagar, Bengaluru, Karnataka',
      'park'),
  StorePlaces(
      'Zen Park',
      LatLng(12.9781376, 77.5064943),
      'https://lh5.googleusercontent.com/p/AF1QipPFEqmOdRTMdazY8czhGzEu3g89heioIkZmje1l=w408-h496-k-no',
      '3rd Block, BDA Layout, 2nd Stage, Naagarabhaavi, Bengaluru, Karnataka',
      'park'),
  StorePlaces(
      'Vishweshvarayya Park',
      LatLng(12.9845765, 77.5216733),
      'https://lh5.googleusercontent.com/p/AF1QipPHScYO4txAznaEibETEUI8yUvQs09xnBswCjId=w408-h544-k-no',
      '1st F Cross Rd, 4th Block, Sharada Colony, West of Chord Road 1st Stage, Basaveshwar Nagar, Bengaluru, Karnataka',
      'park'),
  StorePlaces(
      'ಆವಲಹಳ್ಳಿ ಬಿಡಿಎ ಉದ್ಯಾನವನ',
      LatLng(12.9449893, 77.5123495),
      'https://lh5.googleusercontent.com/p/AF1QipMUBU_FrJLDPTMGwokaFr9HquDxGFyRN7rxLfKM=w408-h306-k-no',
      '5th Main Rd, Avalahalli New BDA Layout, II Phase, Banashankari 3rd Stage, Banashankari, Bengaluru, Karnataka',
      'park'),
  StorePlaces(
      'Chandra Layout Park',
      LatLng(12.9571108, 77.5070808),
      'https://lh5.googleusercontent.com/p/AF1QipPAS0qs-bvKXVQmYCIqiLgSF0VGP7xUfw98wW6t=w408-h306-k-no',
      'Chandra Layout, 18th Main Road, Naagarabhaavi, Bengaluru, Karnataka',
      'park'),
  //zone - 12
  StorePlaces(
      'Lake Park',
      LatLng(13.0530877, 77.4694624),
      'https://lh5.googleusercontent.com/p/AF1QipO5I8YgjkW-3eGkreTXD3sIHopKBz7ZPoCaqCh6=w408-h306-k-no',
      '32, Lake Rd, Vidya Nagar, Peenya, Bengaluru, Karnataka 560057',
      'park'),
  StorePlaces(
      'Jaya Prakash Narayana Park',
      LatLng(13.0469414, 77.4931341),
      'https://lh5.googleusercontent.com/p/AF1QipOVy50XbFKS8iSE0CtsuszuEpRHvJw07D1aXwue=w408-h270-k-no',
      '22/1, Tank Bund Road, Brindavan Nagar, Bandappa Garden, Mathikere, Bengaluru, Karnataka 560054',
      'park'),
  StorePlaces(
      'Geleyara Balaga',
      LatLng(13.0749862, 77.4666208),
      'https://lh5.googleusercontent.com/p/AF1QipOqrkF2BBYh7xhRvmLrp2hutExxwhnPNz-PQJQq=w408-h306-k-no',
      'Geleyara Balaga Layout, Jalahalli West, Bengaluru, Myadarahalli, Karnataka 560090',
      'park'),
  StorePlaces(
      'Municipal Park',
      LatLng(13.0834448, 77.4071235),
      'https://lh5.googleusercontent.com/p/AF1QipPZIKp2IU-Ma1blKaDcIalXByWxVxszmUtUvnLl=w480-h240-k-no',
      'Patel Channappa Badavane, Bengaluru, Karnataka 562123',
      'park'),
  StorePlaces(
      'Jarakabandi State Forest',
      LatLng(13.0595468, 77.5175061),
      'https://lh5.googleusercontent.com/p/AF1QipO3kub2vuhikI2GFAm6f--gaWrc9Dm3d9UTpl-p=w408-h306-k-no',
      'Renaissance HVV Villas, Jalahalli, Bengaluru, Karnataka 560015',
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
  //zone - 4
  StorePlaces(
      'Kurubarahalli',
      LatLng(12.9977794, 77.5314858),
      'https://lh5.googleusercontent.com/p/AF1QipNoLKfj25fbPyqwbG_Ka9RDgfuTbbDaoJtDeQmv=w408-h544-k-no',
      '58, Kurubarhalli Main Rd, Gruhalakshmi Layout, KHBS Layout, Basaveshwar Nagar, Bengaluru, Karnataka 560079',
      'monument'),
  StorePlaces(
      'Hanumagiri Temple',
      LatLng(12.9780951, 77.46688),
      'https://lh5.googleusercontent.com/p/AF1QipMvFqOUZjbduB_MtnNf98PG-pNZP6xtHFPkI8W_=w408-h306-k-no',
      '188, 2nd B Main Rd, Vinayaka Layout, Govindaraja Nagar Ward, 9 Block, Naagarabhaavi, Bengaluru, Karnataka',
      'monument'),
  StorePlaces(
      'C.S.I Shantha Oliver Memorial',
      LatLng(12.9729052, 77.5147537),
      'https://lh5.googleusercontent.com/p/AF1QipOS-EEE_Z0dGFMAZva3U2w_D-_qfW8FV2h2-3mk=w532-h240-k-no',
      '1296, 10th Main Rd, SBI Staff Colony, Hoshalli Extension, Stage 1, Vijayanagar, Bengaluru, Karnataka 560040',
      'monument'),
  StorePlaces(
      'Sri Narayan Library',
      LatLng(12.9525296, 77.5150965),
      'https://lh5.googleusercontent.com/p/AF1QipOHCKvJ5KVvcklFHsNLFxO4OtL4XogqoWkT0Rg=w408-h544-k-no',
      'National Law School of India University, Second Floor, Sri Narayan Rao Melgiri Memorial National Law Library, PO Bag 7201, Gnana Bharathi Main Rd, Naagarabhaavi, Bengaluru, Karnataka 560072',
      'monument'),
  StorePlaces(
      'Ammembal Subbarao Garden',
      LatLng(12.9694924, 77.5109455),
      'https://lh5.googleusercontent.com/p/AF1QipMFXGrdTVS4HnZPQaoS0Cz01iRIWh7gtx4lbY6-=w408-h306-k-no',
      'Nagarabhavi Main Rd, Canara Bank Colony, Govindaraja Nagar Ward, Bengaluru, Karnataka 560072',
      'monument'),
  //zone - 12
  StorePlaces(
      'Shri Guruvayurappan Temple',
      LatLng(13.039548, 77.5001347),
      'https://lh5.googleusercontent.com/p/AF1QipPvAfxsZjeWVkV--CPd68BXZTlUjweGfHXHfqrg=w408-h306-k-no',
      'Chord Rd, Opp. ISKCON Temple, Yesvantpur Industrial Suburb, Mahalakshmi Layout, Bengaluru, Karnataka 560086',
      'monument'),
  StorePlaces(
      'C K Palace Lawns',
      LatLng(13.0642654, 77.4332731),
      'https://lh5.googleusercontent.com/p/AF1QipMMqB2JQiNe2HCPrW_jHELOF_dTGHLGL3CFNnFN=w426-h240-k-no',
      'Gangappanavara Thota, Bhoomi Layout, Arasinakunte, Karnataka 562123',
      'monument'),
  StorePlaces(
      'Shri Venkateshwara Swami Temple',
      LatLng(13.0407448, 77.4934681),
      'https://lh5.googleusercontent.com/p/AF1QipMwKIB8IQ-tqzAyDNRe8vNsnb0q2QIxbY2C824L=w408-h306-k-no',
      'Phase -1, Peenya, Bengaluru, Karnataka 560058',
      'monument'),
  StorePlaces(
      'Sri Maramma Devi Temple',
      LatLng(13.0635041, 77.4823736),
      'https://lh5.googleusercontent.com/p/AF1QipMvJQCVPiesZMQ2VxWiRaL1FJOYzro3r1wWYZ4m=w408-h544-k-no',
      'Bagalagunte Main Rd, Visveshwaraiah Layout, Manjunatha Nagar, Bagalakunte, Bengaluru, Karnataka 560073',
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
  //zone - 4
  StorePlaces(
      'Le Arabia',
      LatLng(12.9568031, 12.9568031),
      'https://lh5.googleusercontent.com/p/AF1QipPvkitCjpF359IjM5g2eIt7Ucf51vTY9CJsXpaI=w408-h306-k-no',
      '1st Main Rd, Binny Employyes Layout, Hampi Nagar, Binny Mills Employees Colony, Chandra Layout, Bengaluru, Karnataka 560040',
      'Restaurant'),
  StorePlaces(
      'BigBiteIndia',
      LatLng(12.9568031, 77.5174783),
      'https://lh5.googleusercontent.com/p/AF1QipOt6KUUiAQFIc2lrjWkk3mxY1cjc-EvsTJ5oxoM=w408-h306-k-no',
      '17th Cross Rd, 21st Main Rd, behind Maruthi Mandir, Vijayanagar, Bengaluru, Karnataka 560040',
      'Restaurant'),
  StorePlaces(
      'Davangere benne dose',
      LatLng(12.968183, 77.5228501),
      'https://lh5.googleusercontent.com/p/AF1QipPBtPDwSeO18kZru80yAIrhBFvkmlKzT7xpwaZ0=w408-h544-k-no',
      '52, Govindaraja Nagar Ward, Govindaraja Nagar, Vijayanagar, Bengaluru, Karnataka 560072',
      'Restaurant'),
  StorePlaces(
      'STREET 55',
      LatLng(12.9603229, 77.4992734),
      'https://lh5.googleusercontent.com/p/AF1QipMxwlzDvDg6qY6Kp1HhKvoEvr9UxdrgyUTPDw_z=w408-h544-k-no',
      'Nagarbhavi, Bengaluru, Karnataka 560056',
      'Restaurant'),
  StorePlaces(
      'Palate Restaurant',
      LatLng(12.9592472, 77.511601),
      'https://lh5.googleusercontent.com/p/AF1QipNVutj1fYXRASIewn7rNU0IufG5-D2qnx8V7RTo=w408-h306-k-no',
      'gnana bharathi main road, circle, near nagar bvi, 4 Block, Chandra Layout, Bengaluru, Karnataka 560056',
      'Restaurant'),
  StorePlaces(
      'Pallavi',
      LatLng(12.9434924, 77.5206363),
      'https://lh5.googleusercontent.com/p/AF1QipMdxL7Gyiv2THHJ38P9jEFq5wZGK1jaWG5eQysB=w408-h544-k-no',
      'Ranganathan Colony, Deepanjali Nagar, Bengaluru, Karnataka 560026',
      'Restaurant'),
  //zone - 12
  StorePlaces(
      'The Wave Restaurant',
      LatLng(13.0772944, 77.4044012),
      'https://lh5.googleusercontent.com/p/AF1QipOcsWbvaXQHhWdFABGyfIFrd3DtH9CNLDOhFijc=w426-h240-k-no',
      'Adarsh Nagar, Arasinakunte, Nagarur, Karnataka 562123',
      'Restaurant'),
  StorePlaces(
      'Sunrise Family',
      LatLng(13.0511288, 77.4617059),
      'https://lh5.googleusercontent.com/p/AF1QipMYEN4_hpv5DNkCsVG105xWdEXwbhL5nX67WAkl=w408-h306-k-no',
      '#548, Duggalamma Temple Rd, 3rd Stage, UBMEC Layout, Rajagopala Nagar, Peenya, Bengaluru, Karnataka 560058',
      'Restaurant'),
  StorePlaces(
      'Veeru\'s The Village Restaurant',
      LatLng(13.0629202, 77.4464557),
      'https://lh5.googleusercontent.com/p/AF1QipO0OgT2YBoK-cF6m-l0CAW_EmK5DIVF-kLmrM22=w408-h544-k-no',
      '3F82+P8G, Bengaluru, Karnataka 562162',
      'Restaurant'),
  StorePlaces(
      'Shahi Taj',
      LatLng(13.0444985, 77.472775),
      'https://lh5.googleusercontent.com/p/AF1QipO1TXfBc5CdmgyRq4In_vvOg1iFqj_sDB5ED4Nh=w408-h408-k-no',
      'Nh-04, Tumkur Rd, Maheswari Nagar, Kempegowdanagar, Bengaluru, Karnataka 560057',
      'Restaurant'),
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
  //zone - 4
  StorePlaces(
      'Hotel Golden Arch',
      LatLng(12.9691375, 77.5287144),
      'https://lh5.googleusercontent.com/p/AF1QipP0mXNCUMOzHoYQo9AMe00QCPHjTL2Q1e0ioK_E=w408-h272-k-no',
      '541/82/2, Service road, SBI Staff Colony, Hosahalli Extension, Stage 1, Vijayanagar, Bengaluru, Karnataka 560040',
      'hotel'),
  StorePlaces(
      'Shoba Elite',
      LatLng(12.9875116, 77.5327351),
      'https://lh3.googleusercontent.com/gps-proxy/AFm_dcRLlx00YxuvXQbNfb1-Ap7X3E_cqoVYxjQy7DrPxuo0bytguLFawxZ5KQkWottZUwBhqbmWYhXtTSJ5igd9KPAqkHLfT4WBNBbXFfkMUP2UIDonN-C0iUj9E5UPpVooHuTaEnEXmfpbc9aaaNUFEZ5z0O_LcC7W2q_M9KTjGgl3UR4D0s_cLCoC=w408-h612-k-no',
      '15 HIG, 60 Feet Rd, near Havanur Circle, 2nd Stage, KHB Colony, Basaveshwar Nagar, Bengaluru, Karnataka 560079',
      'hotel'),
  StorePlaces(
      'The Club',
      LatLng(12.9528832, 77.5183208),
      'https://lh5.googleusercontent.com/p/AF1QipOXvCTOPW2TSiYHedlVHSgFwfUS9-49s2cN1ugZ=w408-h271-k-no',
      'Mysore Rd, SLV layout, Phase 3, Nayanda Halli, Bengaluru, Karnataka 560039',
      'hotel'),
  StorePlaces(
      'Clove Boutique',
      LatLng(12.9700216, 77.5316683),
      'https://lh5.googleusercontent.com/p/AF1QipNEOeDkQv0AMv7sSNFfzPnenryjJV-inI-ldZdv=w408-h906-k-no',
      'No. 10, old No. 1041/B Next to Saptagiri Suzuki Showroom, 1st Main, Dr, Dr Rajkumar Rd, 4th Block, Rajajinagar, Bengaluru, Karnataka 560010',
      'hotel'),
  StorePlaces(
      'SPICE GARDENS',
      LatLng(12.9720871, 77.4923134),
      'https://lh5.googleusercontent.com/p/AF1QipPNb7RBZCKNwGpezTtnNPiv_YOjl4xzxVC1Tj1j=w408-h408-k-no',
      '119/B, 80 Feet Main Rd, 14th Block, 2nd Stage, Naagarabhaavi, Bengaluru, Karnataka 560072',
      'hotel'),
  StorePlaces(
      'Unathi Boarding And Loadging',
      LatLng(12.9720871, 77.4923134),
      'https://lh5.googleusercontent.com/p/AF1QipOn02Geh2iJIm4qjUS60MKXK1e0DvHf-SwJPJrK=w408-h272-k-no',
      'Sunkadakatte, Bengaluru, Karnataka 560091',
      'hotel'),
  //zone - 12
  StorePlaces(
      'Mohan Regency',
      LatLng(3.0650915, 77.4737047),
      'https://lh5.googleusercontent.com/p/AF1QipPjQl_cl73H5TE5yoL1rRODaP4sfGmn0sVxlUFe=w493-h240-k-no',
      'Madanayakahalli, Bengaluru, Karnataka 562162',
      'hotel'),
  StorePlaces(
      'The Golden Palms',
      LatLng(13.0522536, 77.4751244),
      'https://lh3.googleusercontent.com/gps-proxy/AFm_dcRYzelZ3Z1zlSIEip1_tRg1Sw-6_70eokkpCakTtdGuhuD6fPpLaCNs7dBl_h8J0X0hXik0cyKlyy0PYKHso2-fdbOF9qygt9jAybWtIq3MZKrChtxSNvrs60X-naxzWXz4JycSq4Jwt04E58L2BzOmNGjiU3h9f4K3F4pbw1rgc4KrGx5pUFz6=w408-h306-k-no',
      'Golden Palms Avenue, Off, Tumkur Road, Nagrur Village, Dasanapura, Alur, Karnataka 562123',
      'hotel'),
  StorePlaces(
      'Hotel 8th Mile Suites',
      LatLng(13.0473821, 77.4844981),
      'https://lh5.googleusercontent.com/p/AF1QipNXOKB1oBB_tqWQ0l3l2J5jHdB9qYrvfzzRYpW2=w408-h271-k-no',
      '47, MYLARI TOWER, Tumkur Rd, Vidya Nagar, T. Dasarahalli, Bengaluru, Karnataka 560057',
      'hotel'),
  StorePlaces(
      'Inaara Hotel',
      LatLng(13.0258439, 77.5101588),
      'https://lh5.googleusercontent.com/p/AF1QipOdWV0-BvYVyk_z31IRjfw9jv40Wa85D3mPSsqY=w408-h544-k-no',
      '4 & 4A, Hesarghatta Rd, beside NRR Hospital, Geleyara Balaga Layout, Jalahalli West, Bengaluru, Karnataka 560090',
      'hotel'),
  StorePlaces(
      'Taj Yeshwantpur',
      LatLng(13.0308139, 77.5100305),
      'https://lh5.googleusercontent.com/p/AF1QipMauXGqfoLe-OZ5xJZ0HpxTt73x-B2DhkgMI4Zv=w408-h290-k-no',
      '2275, Tumkur Rd, Yeshwanthpur Industrial Area, Phase 1, Yeswanthpur, Bengaluru, Karnataka 560022',
      'hotel'),
];
