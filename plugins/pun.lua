local pun = {}

local utilities = require('utilities')

pun.command = 'pun'
pun.doc = '`Returns a pun.`'

function pun:init()
	pun.triggers = utilities.triggers(self.info.username):t('pun').table
end

local puns = {
	"The person who invented the door-knock won the No-bell prize.",
	"I couldn't work out how to fasten my seatbelt. Then it clicked.",
	"Never trust atoms; they make up everything.",
	"Singing in the shower is all fun and games until you get shampoo in your mouth - Then it becomes a soap opera.",
	"I can't believe I got fired from the calendar factory. All I did was take a day off.",
	"To the guy who invented zero: Thanks for nothing!",
	"Enough with the cripple jokes! I just can't stand them.",
	"I've accidentally swallowed some Scrabble tiles. My next crap could spell disaster.",
	"How does Moses make his tea? Hebrews it.",
	"Did you hear about the guy who got hit in the head with a can of soda? He was lucky it was a soft drink.",
	"When William joined the army he disliked the phrase 'fire at will'.",
	"There was a sign on the lawn at a rehab center that said 'Keep off the Grass'.",
	"I wondered why the baseball was getting bigger. Then it hit me.",
	"I can hear music coming out of my printer. I think the paper's jamming again.",
	"I have a few jokes about unemployed people, but none of them work",
	"Want to hear a construction joke? I'm working on it",
	"I always take a second pair of pants when I go golfing, in case I get a hole in one.",
	"I couldn't remember how to throw a boomerang, but then it came back to me.",
	"I've decided that my wifi will be my valentine. IDK, we just have this connection.",
	"A prisoner's favorite punctuation mark is the period. It marks the end of his sentence.",
	"I used to go fishing with Skrillex, but he kept dropping the bass.",
	"Two antennae met on a roof and got married. The wedding was okay, but the reception was incredible.",
	"A book just fell on my head. I've only got my shelf to blame.",
	"I dropped my steak on the floor. Now it's ground beef.",
	"I used to have a fear of hurdles, but I got over it.",
	"The outcome of war does not prove who is right, but only who is left.",
	"Darth Vader tries not to burn his food, but it always comes out a little on the dark side.",
	"The store keeps calling me to buy more furniture, but all I wanted was a one night stand.",
	"This girl said she recognized me from the vegetarian club, but I'd never met herbivore.",
	"Police arrested two kids yesterday, one was drinking battery acid, the other was eating fireworks. They charged one and let the other one off...",
	"No more Harry Potter jokes guys. I'm Sirius.",
	"It was hard getting over my addiction to hokey pokey, but I've turned myself around.",
	"It takes a lot of balls to golf the way I do.",
	"Why did everyone want to hang out with the mushroom? Because he was a fungi.",
	"How much does a hipster weigh? An instagram.",
	"I used to be addicted to soap, but I'm clean now.",
	"When life gives you melons, you’re probably dyslexic.",
	"What's with all the blind jokes? I just don't see the point.",
	"If Apple made a car, would it have Windows?",
	"Need an ark? I Noah guy.",
	"The scarecrow won an award because he was outstanding in his field.",
	"What's the difference between a man in a tux on a bicycle, and a man in a sweatsuit on a trycicle? A tire.",
	"What do you do with a sick chemist? If you can't helium, and you can't curium, you'll just have to barium.",
	"I'm reading a book about anti-gravity. It's impossible to put down.",
	"Trying to write with a broken pencil is pointless.",
	"When TVs go on vacation, they travel to remote islands.",
	"I was going to tell a midget joke, but it's too short.",
	"Jokes about German sausage are the wurst.",
	"How do you organize a space party? You planet.",
	"Sleeping comes so naturally to me, I could do it with my eyes closed.",
	"I'm glad I know sign language; it's pretty handy.",
	"Atheism is a non-prophet organization.",
	"Velcro: What a rip-off!",
	"If they made a Minecraft movie, it would be a blockbuster.",
	"I don't trust people with graph paper. They're always plotting something",
	"I had a friend who was addicted to brake fluid. He says he can stop anytime.",
	"The form said I had Type A blood, but it was a Type O.",
	"I went to to the shop to buy eight Sprites -  I came home and realised I'd picked 7Up.",
	"There was an explosion at a pie factory. 3.14 people died.",
	"A man drove his car into a tree and found out how a Mercedes bends.",
	"The experienced carpenter really nailed it, but the new guy screwed everything up.",
	"I didn't like my beard at first, but then it grew on me.",
	"Smaller babies may be delivered by stork, but the heavier ones need a crane.",
	"What's the definition of a will? It's a dead giveaway.",
	"I was going to look for my missing watch, but I could never find the time.",
	"I hate elevators, and I often take steps to avoid them.",
	"Did you hear about the guy whose whole left side was cut off? He's all right now.",
	"It's not that the man did not know how to juggle, he just didn't have the balls to do it.",
	"I used to be a loan shark, but I lost interest",
	"I don't trust these stairs; they're always up to something.",
	"My friend's bakery burned down last night. Now his business is toast.",
	"Don't trust people that do acupuncture; they're back stabbers.",
	"The man who survived mustard gas and pepper spray is now a seasoned veteran.",
	"Police were called to a daycare where a three-year-old was resisting a rest.",
	"When Peter Pan punches, they Neverland",
	"The shoemaker did not deny his apprentice anything he needed. He gave him his awl.",
	"I did a theatrical performance about puns. It was a play on words.",
	"Show me a piano falling down a mineshaft and I'll show you A-flat minor.",
	"Have you ever tried to eat a clock? It's very time consuming.",
	"There was once a cross-eyed teacher who couldn't control his pupils.",
	"A new type of broom came out and it is sweeping the nation.",
	"I relish the fact that you've mustard the strength to ketchup to me.",
	"I knew a woman who owned a taser. Man, was she stunning!",
	"What did the grape say when it got stepped on? Nothing - but it let out a little whine.",
	"It was an emotional wedding. Even the cake was in tiers.",
	"When a clock is hungry it goes back four seconds.",
	"The dead batteries were given out free of charge.",
	"Why are there no knock-knock jokes about America? Because freedom rings.",
	"When the cannibal showed up late to dinner, they gave him the cold shoulder.",
	"I should have been sad when my flashlight died, but I was delighted.",
	"Why don't tennis players ever get married? Love means nothing to them.",
	"Pterodactyls can't be heard going to the bathroom because the P is silent.",
	"Mermaids make calls on their shell phones.",
	"What do you call an aardvark with three feet? A yaardvark.",
	"Captain Kirk has three ears: A right ear, a left ear, and a final front ear.",
	"How do celebrities stay cool? They have a lot of fans.",
	"Without geometry, life is pointless.",
	"Did you hear about the cow who tried to jump over a barbed-wire fence? It ended in udder destruction.",
	"The truth may ring like a bell, but it is seldom ever tolled.",
	"I used to work for the IRS, but my job was too taxing.",
	"I used to be a programmer, but then I lost my drive.",
	"Pediatricians are doctors with little patients.",
	"I finally fired my masseuse today. She always rubbed me the wrong way.",
	"I stayed up all night wondering where the sun went. Then it dawned on me.",
	"What's the difference between a man and his dog? The man wears a suit; the dog just pants.",
	"A psychic midget who escapes from prison is a small medium at large.",
	"I've been to the dentist several times, so I know the drill.",
	"The roundest knight at King Arthur's round table was Sir Cumference. He acquired his size from too much pi.",
	"She was only a whiskey maker, but he loved her still.",
	"Male deer have buck teeth.",
	"Whiteboards are remarkable.",
	"Visitors in Cuba are always Havana good time.",
	"Why does electricity shock people? It doesn't know how to conduct itself.",
	"Lancelot had a scary dream about his horse. It was a knight mare.",
	"A tribe of cannibals captured a missionary and ate him. Afterward, they all had violent food poisoning. This just goes to show that you can't keep a good man down.",
	"Heaven for gamblers is a paradise.",
	"Old wheels aren't thrown away, they're just retired.",
	"Horses are very stable animals.",
	"Banks don't crash, they just lose their balance.",
	"The career of a skier can go downhill very fast.",
	"In democracy, it's your vote that counts. In feudalism, it's your count that votes.",
	"A sea lion is nothing but an ionized seal.",
	"The vegetables from my garden aren't that great. I guess you could say they're mediokra."
}

function pun:action(msg)

	utilities.send_reply(self, msg, puns[math.random(#puns)])

end

return pun
