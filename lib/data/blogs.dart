import 'package:test/models/post.dart';

List<Post> posts = [
  Post(
      title: 'The Nightlife of Bangalore',
      author: 'Aishwarya Sharma',
      date: DateTime(2023, 7, 1),
      description:
          'Bangalore is known for its buzzing nightlife. From swanky pubs to serene lakeside spots, the city offers a variety of options for night owls. My experience exploring Bangalore after sundown was filled with music, laughter, and some unforgettable moments.',
      subtitle: ['Brigade Road', 'MG Road', 'Ulsoor Lake'],
      subdescription: [
        'My night began at Brigade Road, one of the busiest shopping centers by day and a lively party hub by night. The street is lined with numerous pubs and restaurants playing live music.',
        'Next stop was MG Road, known for its upscale lounges and rooftop dining spots. The twinkling city lights and delectable food added to the charm of the evening.',
        'I ended my night at Ulsoor Lake, one of the largest lakes in Bangalore. The serene ambiance and the gentle breeze by the lake provided a perfect end to my eventful day.'
      ],
      image:
          'https://upload.wikimedia.org/wikipedia/commons/6/60/Brigade_Road%2C_Bangalore_%28346718297%29.jpg'),
  Post(
      title: 'A Day in the Garden City',
      author: 'Rahul Kapoor',
      date: DateTime(2023, 9, 28),
      description:
          'My first visit to Bangalore, the Silicon Valley of India, was an unforgettable experience. The city\'s vibrant culture, dynamic lifestyle, and the warmth of its people left me in awe. The cityscape, dotted with lush green spaces and striking Victorian-era architecture, painted a picture of diversity that is the essence of Bangalore.',
      subtitle: ['Lalbagh Botanical Garden', 'Cubbon Park', 'Bangalore Palace'],
      subdescription: [
        'A morning walk in the Lalbagh Botanical Garden was a refreshing experience. The garden houses India\'s largest collection of tropical plants. It was fascinating to see a myriad of plant species from around the world, all in one place.',
        'Next on my list was Cubbon Park. A green haven in the middle of the city, it was buzzing with fitness enthusiasts and nature lovers. The park\'s well-maintained landscapes and tranquil ambiance provided a much-needed escape from the city\'s hustle and bustle.',
        'The day ended with a visit to the Bangalore Palace. The palace architecture is a mix of Tudor and Scottish Gothic, leaving a lasting impression. Walking through its grand corridors, I was transported back in time to an era of royal opulence.'
      ],
      image: 'https://im.whatshot.in/img/2021/Jun/156787-b-1623703484.jpg'),
  Post(
      title: 'Culinary Delights of Bangalore',
      author: 'Meera Patel',
      date: DateTime(2023, 8, 22),
      description:
          'This post is dedicated to all food lovers! Bangalore treated my taste buds with its wide range of cuisines. From traditional Kannada cuisine to international delicacies, the city\'s food scene is as diverse as its culture.',
      subtitle: ['Vidyarthi Bhavan', 'CTR', 'Mavalli Tiffin Rooms (MTR)'],
      subdescription: [
        'My culinary expedition started at Vidyarthi Bhavan, a legendary eatery known for its crispy, buttery dosas. The bustling atmosphere and the aroma of fresh dosas being cooked were truly captivating.',
        'Next, I visited CTR (Central Tiffin Room) in Malleshwaram. Famous for its Benne Masala Dosa (Butter Masala Dosa), this place offered a taste of authentic Bangalorean cuisine.',
        'Finally, I visited Mavalli Tiffin Rooms (MTR), one of the oldest eateries in Bangalore. Their Rava Idli and Filter Coffee are must-try items. The unique flavors and the traditional method of preparation added to the overall dining experience.'
      ],
      image:
          'https://assets.traveltriangle.com/blog/wp-content/uploads/2016/01/south-indian-platter.jpg'),
  Post(
      title: 'The Tech Side of Bangalore',
      author: 'Vikram Malhotra',
      date: DateTime(2023, 7, 24),
      description:
          'Bangalore, often referred to as the "Silicon Valley of India", is a hub for IT companies and startups. The city is a blend of modern infrastructure and rich history, making it a fascinating place for tech enthusiasts like me. My visit to the tech parks and startups was an enlightening experience, offering a glimpse into the city\'s thriving tech scene.',
      subtitle: ['Electronic City', 'Whitefield', 'Startups in Koramangala'],
      subdescription: [
        'Electronic City, one of India\'s largest electronic industrial parks, houses many IT giants. Walking through its premises, I was amazed by the scale of operations and the cutting-edge technology being used.',
        'Next, I visited Whitefield, known for its tech parks and multinational IT companies. The area is a testament to Bangalore\'s rapid growth and development in the IT sector.',
        'I also explored Koramangala, known for its startup culture. Meeting young entrepreneurs and hearing their innovative ideas was truly inspiring. The energy and creativity in Bangalore\'s startup scene is something to behold.'
      ],
      image:
          'https://www.capitaland.com/content/dam/capitaland-media-library/businesspark-industrial-logistics/india/bangalore/international-tech-park-bangalore/DFT-ITPB1.jpg.transform/cap-midres/image.jpg'),
  Post(
      title: 'Art and Culture in Bangalore',
      author: 'Sneha Singh',
      date: DateTime(2023, 7, 14),
      description:
          'Bangalore is not just about IT companies and startups; it\'s also a city rich in art and culture. From traditional art forms to modern art galleries, the city offers a cultural feast for art lovers.',
      subtitle: ['Chitrakala Parishath', 'Rangashankara', 'Commercial Street'],
      subdescription: [
        'Chitrakala Parishath, an art complex in the heart of the city, was my first stop. It houses several art galleries showcasing works from various Indian and international artists. The complex also hosts art workshops, offering a platform for artists to learn and grow.',
        'Next was Rangashankara, a renowned theatre venue dedicated to promoting theatrical arts. Watching a play here was an enriching experience, offering insights into India\'s diverse theatrical traditions.',
        'My cultural tour ended with a visit to Commercial Street, one of Bangalore\'s busiest shopping areas. The street is lined with shops selling traditional Indian clothes, handicrafts, jewelry, and much more. It was the perfect place to pick up souvenirs and gifts.'
      ],
      image:
          'https://www.thefoodietravels.com/wp-content/uploads/2023/06/cc2f99a2-4064-427d-8aa6-ab0a09213259.jpg'),
  Post(
      title: 'The Historical Side of Bangalore',
      author: 'Natasha Desai',
      date: DateTime(2023, 9, 27),
      description:
          'Bangalore, also known as the "City of Gardens", is not just about its lush landscapes and IT hubs. The city is steeped in history, with its roots tracing back to the times of the Western Ganga Dynasty. My journey through the historical landmarks of Bangalore was like stepping into a time machine, offering a glimpse into the city\'s rich past.',
      subtitle: [
        'Tipu Sultan\'s Summer Palace',
        'Bangalore Fort',
        'Nandi Hills'
      ],
      subdescription: [
        'My historical exploration began with Tipu Sultan\'s Summer Palace, an epitome of Indo-Islamic architecture. The palace, with its teak pillars and frescoes, narrates the tales of the bygone era.',
        'Next, I visited the Bangalore Fort. Though only a small part of the fort remains today, it stands as a testament to the city\'s historical significance.',
        'My journey concluded with a visit to Nandi Hills. Known for its breathtaking sunrise views, Nandi Hills is also home to several historical monuments, including Tipu\'s Drop, a cliff face used during Tipu Sultan\'s reign.'
      ],
      image:
          'https://img.traveltriangle.com/blog/wp-content/uploads/2019/12/Bidar1.jpg'),
  Post(
      title: 'The Educational Hub of Bangalore',
      author: 'Arjun Singhania',
      date: DateTime(2023, 9, 12),
      description:
          'Bangalore, the capital city of Karnataka, is not just known for its IT sector and pleasant weather, but also for its quality education. With numerous esteemed educational institutions, the city has been a long-standing hub for students from all over the country and abroad. My visit to some of these institutions was an enlightening experience, offering a glimpse into the city\'s commitment to fostering knowledge and innovation.',
      subtitle: [
        'Indian Institute of Science (IISc)',
        'National Institute of Fashion Technology (NIFT)',
        'Christ University'
      ],
      subdescription: [
        'My educational tour began with the Indian Institute of Science (IISc), a premier institute for advanced scientific and technological research and education in India. The sprawling green campus and state-of-the-art facilities left me impressed.',
        'Next, I visited the National Institute of Fashion Technology (NIFT). As one of the leading institutes in fashion education in India, NIFT Bangalore offers a vibrant atmosphere for students to learn and hone their skills.',
        'My tour concluded with a visit to Christ University. Known for its disciplined environment and emphasis on holistic development, the university offers a wide range of undergraduate and postgraduate programs.'
      ],
      image:
          'https://content3.jdmagicbox.com/comp/bangalore/r6/080pxx80.xx80.180824185921.j7r6/catalogue/miles-education-m-g-road-bangalore-associations-dxsbxyt95j.jpg'),
  Post(
      title: 'The Green Side of Bangalore',
      author: 'Ananya Verma',
      date: DateTime(2023, 8, 11),
      description:
          'Bangalore, often referred to as the "Garden City", lives up to its name with its numerous parks and gardens. These green spaces provide a much-needed respite from the city\'s fast-paced life. My experience exploring these verdant spots was both refreshing and rejuvenating.',
      subtitle: [
        'Lalbagh Botanical Garden',
        'Cubbon Park',
        'Bannerghatta National Park'
      ],
      subdescription: [
        'My green tour started with Lalbagh Botanical Garden. Home to numerous rare species of plants, the garden is a paradise for nature lovers. The highlight of my visit was the stunning Glass House, which hosts flower shows annually.',
        'Next on my list was Cubbon Park. Spread over 300 acres, this park is a perfect spot for morning walks and leisurely picnics. The park also houses several historical structures, adding to its charm.',
        'I ended my day with a visit to Bannerghatta National Park. This national park offers a zoo, a pet corner, an animal rescue center, a butterfly enclosure, an aquarium, and much more. The safari ride was an adventurous end to my day.'
      ],
      image:
          'https://d19gb5k9ejx8w0.cloudfront.net/uploads/2014/06/park-cover-photo-3.jpg'),
  Post(
      title: 'The Shopping Spree in Bangalore',
      author: 'Rajiv Gupta',
      date: DateTime(2023, 8, 19),
      description:
          'Bangalore offers a unique shopping experience with its diverse range of markets and malls. From traditional handicrafts to branded apparel, there is something for everyone. My shopping spree in the city was an exciting adventure.',
      subtitle: ['Commercial Street', 'Chickpet', 'UB City Mall'],
      subdescription: [
        'My shopping expedition started at Commercial Street. It is one of the busiest shopping destinations in the city, offering a variety of clothing, jewelry, and accessories.',
        'Next on my list was Chickpet. Known for its wholesale saree shops, Chickpet is a paradise for those looking to buy traditional Indian wear.',
        'I ended my shopping spree at UB City Mall, one of the biggest luxury malls in Bangalore. With a multitude of high-end brands available, it was the perfect place to indulge in some retail therapy.'
      ],
      image:
          'https://imgstaticcontent.lbb.in/lbbnew/wp-content/uploads/sites/2/2018/05/17221547/Chickpete.jpg')
];
