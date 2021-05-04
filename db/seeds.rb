require 'rest-client'
require 'json'
require 'faker'


rand_user = User.all.sample[:id]
rand_miss = Miss.all.sample[:id]

10.times do 
    email = Faker::Internet.email 
    lat = 34.07715606689453
    long = -118.25827026367188
    User.create(email: email, password: "1234", lat: lat, long: long)
end


Favorite.create(like: true, user_id: User.all.sample[:id], miss_id: Miss.all.sample[:id])
Favorite.create(like: false, user_id: User.all.sample[:id], miss_id: Miss.all.sample[:id])
Favorite.create(like: true, user_id: User.all.sample[:id], miss_id: Miss.all.sample[:id])
Favorite.create(like: false, user_id: User.all.sample[:id], miss_id: Miss.all.sample[:id])
Favorite.create(like: false, user_id: User.all.sample[:id], miss_id: Miss.all.sample[:id])
Favorite.create(like: true, user_id: User.all.sample[:id], miss_id: Miss.all.sample[:id])
Favorite.create(like: false, user_id: User.all.sample[:id], miss_id: Miss.all.sample[:id])
Favorite.create(like: true, user_id: User.all.sample[:id], miss_id: Miss.all.sample[:id])
Favorite.create(like: false, user_id: User.all.sample[:id], miss_id: Miss.all.sample[:id])
Favorite.create(like: true, user_id: User.all.sample[:id], miss_id: Miss.all.sample[:id])
Favorite.create(like: true, user_id: User.all.sample[:id], miss_id: Miss.all.sample[:id])

Miss.create(title: 'over 20 years ago', message: "You stayed off Minnesota btwn Cordova and parkridge and I live on LaSalle and Parkridge. 
well I know this is far fetched but if you still around I would like to reestablish or rekindle",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Missing college girl I knew', message: "where have you gone? we went to CAL U... miss you tons",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Woman in blue/purple chevy cobalt with her dog', message: "The other day you were sitting outside my house with your dog, 
I see you drive down my street all the time you should of said hello, I would of came over to chat, if you see this let me know. I was outside 
taking care of my yard. Let me know if you see this", user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Rouses on Royal', message: "I was in rouses and you asked me about my hat and for some reason it slipped my mind to ask your name or 
even your phone number.",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'We Met At a Party on the Westbank', message: "We met at at a pool party on the West bank. We hit it off and I'd like to see you again.
We exchanged contact info, but I lost yours. If you see this reply", user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Saw you at Trader Joes', message: "you were in a rush but we locked eyes. wish we could slow down and get to know each other.", user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'WeHo Car wash, Friday night', message: "you were cleaning your Mercedes close to midnight, Friday night at the car wash on Santa Monica Blvd. 
we kinda kept making eyes at each other by the vacuums. you’re cute. hit me up if you see this...",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'you had a mullet', message: 'you talked alot but i liked it', user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'we started talking about coding in line at the grocery store', message: "you were a baddie", user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'erewhon rat tail <3', message: "erewhon
perfect rat tail
Tall
camo shorts
iced coffee
i had clogs , brown hair
u r perfect",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'I was your friend in Long Beach', message: " It’s been a crazy long time since we’ve seen each other but I still think about you. If you happen to stumble upon this and you remember our 
time together, reach out to me.",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'You walk in my neighborhood', message: "When I happen to catch sight of you I catch my breath. You just walked by again yesterday, and the early morning sunlight behind etched your beauty 
in my mind. I would love to know your name.",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'You smiled at me in Little Tokyo', message: "It was April 13 around 3 or 4 pm. We were in Little Tokyo and you were sitting with a friend, you're blond and had glasses I think. 
My hair is dark brown and a bob cut. I was wearing a fuzzy beige cardigan and jeans. I was walking to a nearby bench and you smiled at me. I did not return the smile but that was because I was surprised 
that a cute guy smiled at me! I'm sorry I did not smile back, I should have and regretted it immediately.
I'd love to get to know you if you're interested, if not thank you for the friendly smile! just posting because I don't want to regret it later.",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'I gave you an umbrella in the vaccine line today', message: "You were waiting in line at the Spring Creek City Block to get the Pfizer vaccination 
and I gave you an umbrella due to the rain. You had sweet kind eyes. If you see this, email me the color of the hat I was wearing. I hope you are feeling okay.",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'MOMA on 53rd street', message: "Lost your contact information.
You had a MOMA tee shirt and we chatted in my office about visiting the museum.",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'WE CAUGHT EYES ON THE F TRAIN', message: "You were with a friend on the F toward Manhattan. We made eye contact and it took my breath away. 
You were wearing a mask, as one should of course, but I thought you were stunning nonetheless",  user_id: User.all.sample[:id])
Miss.create(title: 'Greens sports bar', message: "we were making fun of this one person at the bar - reply back with who",  user_id: User.all.sample[:id])
Miss.create(title: 'RA, I miss you', message: "I hate that I didn't really get to say goodbye, I hope you log in one more time to read my farewell message. You will always be one of my favorite lovers..",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'We talked at the C Store in Napa for short time', message: "Last week at a Convenience Store in Napa we made eye contact and exchanged 'Hellos'",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Costco gazebo install', message: "You hinted many times for me to be your contractor, reach out if you really want me to help you",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Tattoo’ed waitress at Pleasanton Red Robin', message: "you were so kind and beautiful, I should have asked for your number.",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Saw you at the Dispensary', message: "You had glasses and we caught each others attention you bought some drinks from the taquiera outside of the dispensary, I waved, you smiled. 
Hope we can talk someday",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Alexander who wrote a book and likes to make art', message: "Alexander - I think you're a technical writer, and you stayed busy doing lots of stuff including painting, you love watching art how-to videos. 
Last I knew you were living in the Richmond.",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'I was helping you find a screw at Home Depot on Sunday', message: "I was helping you find a screw for your license plate at Home Depot in Foster City / San Mateo on Sunday afternoon. I would love to see you again!",  
user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Loveless rehab parking lot', message: 'Loveless rehab parking lot You were wearing a white dress and high heels 
I believe the high heels were white to you looked me straight in the eye at least once or twice and walked a little slower when you 
passed me I’ve seen you before you’re usually in Heels I would like to talk more',  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Dillards', message: "I said to you, this is why you don't go shopping with your parents. Pretty sure you were 
smiling under your mask.",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'You asked about my beer', message: "You asked about my beer had a small conversation. Would like to ask u more. Tell 
me what kind of beer I had. Let’s chat",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Lent you a hand', message: "You were having some trouble on the side of the road and I stopped to lend you a hand. We had a 
nice conversation but I never got your number. I hope you see this and I hear from you again.",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Barista crush', message: "You always say something nice to me when I come in. Covid protocol has me in and out of there so 
quickly, so we never really get a chance to chat. I'm pretty sure you know I'm single and probably can tell I have a crush on you. I think you're 
a little flirty with me and maybe feel the same?",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'do you still care?', message: "we were so good together I thought but you were so bad for me. I couldn't see it",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Roller skating in the sunlight', message: "Beautiful day
Lying in the sun
Saw you strappin those skates on
Doing laps up and down the sidewalk
Along 60th
Lovely image
Awkward image of a man crosses the street
Will you see this?
What color was my bike? My backpack?
Was the one shared glance a connection regardless of outcome
Thank you for brightenin up my day",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'Nothing and everything', message: "N,
I miss you and I’m sad we didn’t work out. I hope your mind is starting to find peace and comfort. I’d text you, but I had the impression I 
should give you space. I know the chances of you seeing this are so slim, but I really want this released to the universe.
Fondly,
The girl in the piano",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: 'What happened to you', message: "If I could go back in time I would. Maybe I would chose to not have met you. I wish I could go back 
cause I closed my eyes for a second too long and now you don’t care for me. All the memories flooding my mind my brain is starting to disintegrate. I wish 
you hadn’t done that. What happened to you",  user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: "To the dude walking that little white dog", message: "Your dog pooped ALL over the side walk. What are you feeding that thing, the poop that came out of that dog was MASSIVE. Can you feed me like you feed that dog?", user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: "The girl who yelled at me", message: "It might seem like we left on bad terms... but you did say you were pmsing and hungry. If you love to eat as much as I hope you do, i'd like to have you yell at me over dinner.", user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: "To the dude practicing Japanese out loud on the the trolley", message: "I don't know if you knew this, but I heard what you said. And I DO speak Japanese, you have the mind of a child and vocabulary of a sailor. Lets get to know eachother.", user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: "you had a body", message: "honestly just looking for some body. Anybody", user_id: User.all.sample[:id])
Miss.create(title: "a message to the man who stepped on my toe at safeway", message: "That hurt! I don't care how handsome you are, next time I see you I'm returning the favor. And maybe buying you a drink.", user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: "you farted on bus 161", message: "You ripped one off in the middle of a stop hoping nobody would notice, but I did. And I liked it. I want someone with your confidence in my life. If you're reading this, please take the same route soon!", user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
Miss.create(title: "sing swinger on the corner of 338th and pacific", message: "I didn't catch your name because I was in my car, but as I waited for the light to change colors I watched you twirl that sign with the precisioin and grace of a blind Trapeze artist. Really. You were awful, but man did I fall for you.", user_id: User.all.sample[:id], lat: 34.07715606689453, long: -118.25827026367188)
