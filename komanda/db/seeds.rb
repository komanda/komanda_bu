# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Event.all.destroy

# Beach party 1
Event.create(name: "Komanda Beach Party 4",
	description: "<p>
		Its time to beat the heat and chill in style with (KBP) KOMANDA BEACH PARTY, the hottest beach event this summer.
		With the wildest music and the sexiest crowd.
		Check out the action of Wet & Hot Komanda Beach Party at the Venice Beach Half Moon Bay!
		</p>
		<p>
		A reserved beach just for you, those who love to party and have fun!
		</p>
		<ul class='unstyled'>
		<li><strong>ADMISSION:</strong> $5 per person</li>
		<li><strong>PARKING:</strong> $8 per car</li>
		<li>RESERVED BEACH</li>
		<li>ALL DAY NON-STOP MUSIC WITH LIVE DJ</li>
		<li>LOTS OF FOOD (BBQ) </li>
		<li>Drinks to keep you going (Red bull, Vodka, Beer)(21 and up)</li>
		<li>Fun Games Volleyball, Football, Beach Soccer, Beer Pong, Ultimate Frisbee</li>	
		<li>Komanda Pranks/Challenges</li>
		</ul>

		<strong>Few things to remember:</strong>
		<ul class='unstyled'>
		<li>Make sure to bring $5(cash only/admission)</li>
		<li>Admission gets you (OPEN BAR with VODKA, REDBULL and BEER + BBQ FOOD!)</li>
		<li>$10(parking/carpooling is HIGHLY encouraged) </li>
		<li>ID (for the alcohol) </li>
		<li>Bring a blanket if you want </li>
		<li>You are welcome to bring your own food/drinks ( We are going to have BBQ, Beer Vodka and Redbull)</li>
		</ul>

		<strong>Things NOT to bring:</strong>
		<ul class='unstyled'>
		<li>NO GLASS</li>
		<li>NO BALLOONS</li>
		<li>NO FIRE</li>
		</ul>",
	date: "29 Jul 2012",
	time: "11:00",
	flyer: "http://img839.imageshack.us/img839/6303/flyermk.jpg",
	address: "Venice Blvd, Half Moon Bay, California 94019",
	price: 5,
	going: Array(0..145))
	
# Beach party 2
Event.create(name: "Komanda Beach Party 6",
	description: "<p>Its time to beat the heat and chill in style with (KBP) KOMANDA BEACH PARTY, the hottest beach event this summer.
		With the wildest music and the sexiest crowd.
		Check out the action of Wet & Hot Komanda Beach Party at the Venice Beach Half Moon Bay!
		</p>
		<p>
			A reserved beach just for you, those who love to party and have fun!
		</p>
		<ul class='unstyled'>
			<li><strong>ADMISSION:</strong> $10 per person</li>
			<li><strong>PARKING:</strong> $10 per car</li>
			<li>RESERVED BEACH</li>
			<li>ALL DAY NON-STOP MUSIC WITH LIVE DJ</li>
			<li>LOTS OF FOOD (BBQ) </li>
			<li>Drinks to keep you going (Red bull, Vodka, Beer)(21 and up)</li>
			<li>Fun Games/Tournaments Volleyball, Football, Beach Soccer, Beer Pong, Ultimate Frisbee, Komanda Pranks/Challenges</li>
		</ul> 
		<strong>Few things to remember:</strong>
		<ul class='unstyled'>
		<li>Make sure to bring cash for admission</li>
		<li>Admission gets you (OPEN BAR with VODKA, TEQUILA, and BEER + FOOD!)</li>
		<li>$10(parking/carpooling is HIGHLY encouraged)</li>
		<li>ID (for the alcohol)</li>
		<li>Bring a blanket if you want</li>
		<li>You are welcome to bring your own food/drinks ( We are going to have BBQ, Beer Vodka and Redbull)</li>
		</ul>

		<strong>Things NOT to bring:</strong>
		<ul class='unstyled'>
		<li>NO GLASS</li>
		<li>NO BALLOONS</li>
		<li>NO FIRE</li>
		</ul>",
	date: "26 Aug 2012",
	time: "11:00",
	flyer: "http://img443.imageshack.us/img443/433/flyersu.jpg",
	address: "Venice Blvd, Half Moon Bay, California 94019",
	price: 10,
	going: Array(0..156))

#Beach party 3
Event.create(name: "Komanda Beach Party 5",
	description: "<p><strong>Last beach party of the year!!!!!</strong></p>
		<p>Its time to party in style with (KBP) KOMANDA BEACH PARTY, the hottest beach event this summer.
		With the wildest music and the sexiest crowd.
		Check out the action of Wet & Hot Komanda Beach Party at the Venice Beach Half Moon Bay!</p>
		<p>A reserved beach just for you, those who love to party and have fun!</p>
		<ul class='unstyled'>
		<li><strong>Donations:</strong> $15 per person $10 if <em>200 people Going.</em></li>
		<li><strong>PARKING:</strong> $10 per car (state beach parking fee, CARPOOL!)</li>
		<li>RESERVED BEACH</li>
		<li>ALL DAY NON-STOP MUSIC</li>
		<li>LOTS OF FOOD (BBQ)</li>
		<li>Drinks to keep you going (Tequila, Vodka, Beer)(21 and up)</li>
		<li>Fun Games/Tournaments Volleyball, Football, Beach Soccer, Beer Pong, Dodgeball, Ultimate Frisbee, Komanda Pranks/Challenges!</li>
		</ul>

		<p><strong>Few things to remember:</strong></p>
		<ul class='unstyled'>
		<li>Make sure to bring cash for donations</li>
		<li>15$ gets you (OPEN BAR with VODKA, TEQUILA, and BEER + FOOD!)</li>
		<li>$10(parking/carpooling is HIGHLY encouraged) </li>
		<li>ID (for the alcohol) </li>
		<li>Bring a blanket if you want </li>
		<li>Don't be shy about inviting your friends!</li>
		</ul>

		<p><strong>Things NOT to bring:</strong></p>
		<ul class='unstyled'>
		<li>NO GLASS</li>
		<li>NO BALLOONS</li>
		<li>NO FIRE ON THE BEACH</li>
		</ul>",
	date: "23 Sep 2012",
	time: "11:00",
	flyer: "http://img29.imageshack.us/img29/9263/flyerdo.jpg",
	address: "Venice Blvd, Half Moon Bay, California 94019",
	price: 15,
	going: Array(0..403))