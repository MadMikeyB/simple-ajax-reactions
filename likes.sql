# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.42)
# Database: likes
# Generation Time: 2016-07-29 21:12:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table likes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `datetime` datetime DEFAULT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `datetime`, `username`)
VALUES
	(1,1,'My First Blog Post','Mauris sem est, blandit quis tellus sit amet, tincidunt efficitur dolor. Pellentesque quis maximus purus, ut aliquet diam. Duis id tincidunt ex. Donec sed justo a orci sodales vestibulum. Maecenas vestibulum hendrerit libero, in rhoncus lorem ultricies eu. Donec id lacus eget nibh vulputate volutpat quis ac mauris. Suspendisse vehicula est nunc, vitae blandit ipsum ornare ac. Cras ut felis egestas, vehicula ipsum sit amet, placerat magna. Quisque faucibus lobortis ante, dictum ultricies lectus. Aliquam consequat a ex id faucibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras felis risus, dapibus sed lacus eu, cursus suscipit odio. Phasellus porttitor convallis est. Proin sit amet sollicitudin augue, commodo commodo quam.','0000-00-00 00:00:00','Mikey'),
	(2,2,'My Second Blog Post','All of the words in Lorem Ipsum have flirted with me - consciously or unconsciously. That\'s to be expected. It’s about making placeholder text great again. That’s what people want, they want placeholder text to be great again. This placeholder text is gonna be HUGE.\n\nYou know, it really doesn’t matter what you write as long as you’ve got a young, and beautiful, piece of text. You could see there was text coming out of her eyes, text coming out of her wherever. The best taco bowls are made in Trump Tower Grill. I love Hispanics! I think the only card she has is the Lorem card. Trump Ipsum is calling for a total and complete shutdown of Muslim text entering your website.\n\nI know words. I have the best words. You know, it really doesn’t matter what you write as long as you’ve got a young, and beautiful, piece of text.\n\nThe best taco bowls are made in Trump Tower Grill. I love Hispanics! Does everybody know that pig named Lorem Ipsum? She\'s a disgusting pig, right? Lorem Ispum is a choke artist. It chokes! The other thing with Lorem Ipsum is that you have to take out its family. Lorem Ipsum\'s father was with Lee Harvey Oswald prior to Oswald\'s being, you know, shot.\n\nTrump Ipsum is calling for a total and complete shutdown of Muslim text entering your website. I’m the best thing that ever happened to placeholder text. That other text? Sadly, it’s no longer a 10.','0000-00-00 00:00:00','John'),
	(3,3,'My Third Blog Post','Jean shorts aesthetic ethical bitters helvetica vinyl, listicle offal everyday carry mumblecore meditation blue bottle chia mixtape beard. Kinfolk pop-up wolf deep v everyday carry, affogato intelligentsia pickled. YOLO marfa godard humblebrag. 90\'s blue bottle mixtape keffiyeh, keytar kinfolk chillwave fixie chartreuse. Biodiesel pour-over 8-bit, paleo truffaut photo booth cornhole pinterest organic hammock fashion axe viral microdosing. Polaroid kinfolk bitters next level hoodie chambray. Authentic asymmetrical direct trade, shabby chic before they sold out pour-over leggings.\n\nSemiotics street art godard etsy freegan whatever. Schlitz messenger bag church-key pork belly, pinterest 3 wolf moon four loko kinfolk food truck next level street art direct trade YOLO asymmetrical. Fanny pack beard austin, vinyl ennui synth bespoke viral irony organic artisan pickled listicle. Franzen authentic beard williamsburg you probably haven\'t heard of them. Church-key marfa dreamcatcher, ethical lumbersexual meh gochujang poutine vegan hashtag occupy. Chia jean shorts chicharrones umami blue bottle forage organic, trust fund biodiesel disrupt chartreuse yr 8-bit small batch. Polaroid you probably haven\'t heard of them man braid, health goth bespoke plaid blog seitan keffiyeh butcher portland fixie shoreditch keytar lo-fi.\n\nGreen juice XOXO paleo, irony street art whatever affogato food truck ugh drinking vinegar. You probably haven\'t heard of them offal hashtag, tote bag health goth swag try-hard sustainable synth authentic YOLO polaroid thundercats ramps tofu. Meditation readymade street art venmo meh, austin hella locavore normcore portland post-ironic bushwick pickled. 3 wolf moon +1 salvia scenester PBR&B selvage. Meditation locavore twee, mlkshk retro truffaut salvia keffiyeh. Mustache farm-to-table chillwave poutine microdosing asymmetrical. Kickstarter paleo mumblecore, lo-fi deep v cred tattooed craft beer bespoke authentic schlitz bushwick mlkshk shabby chic ennui.\n\nCrucifix seitan hammock bushwick you probably haven\'t heard of them. Direct trade taxidermy PBR&B, hoodie bespoke sartorial scenester trust fund cold-pressed plaid man braid photo booth. Actually PBR&B fanny pack mustache vinyl small batch, slow-carb roof party retro williamsburg semiotics man bun offal tumblr. Meh sriracha umami mumblecore chambray franzen. Godard tattooed portland, helvetica everyday carry wolf XOXO readymade hashtag chia artisan narwhal vice locavore. Fixie slow-carb freegan plaid, before they sold out hella kogi street art intelligentsia taxidermy. Authentic XOXO selfies, gluten-free wolf kitsch chicharrones pork belly lumbersexual gentrify.','0000-00-00 00:00:00','Jack'),
	(4,1,'Welcome to my AWESOME WEBSITE','<p>The line originally used in the fishery was of the best hemp, slightly vapoured with tar, not impregnated with it, as in the case of ordinary ropes; for while tar, as ordinarily used, makes the hemp more pliable to the rope-maker, and also renders the rope itself more convenient to the sailor for common ship use; yet, not only would the ordinary quantity too much stiffen the whale-line for the close coiling to which it must be subjected; but as most seamen are beginning to learn, tar in general by no means adds to the rope\'s durability or strength, however much it may give it compactness and gloss.</p>\n\n<p>Of late years the Manilla rope has in the American fishery almost entirely superseded hemp as a material for whale-lines; for, though not so durable as hemp, it is stronger, and far more soft and elastic; and I will add (since there is an aesthetics in all things), is much more handsome and becoming to the boat, than hemp. Hemp is a dusky, dark fellow, a sort of Indian; but Manilla is as a golden-haired Circassian to behold.</p>\n\n<p>The whale-line is only two-thirds of an inch in thickness. At first sight, you would not think it so strong as it really is. By experiment its one and fifty yarns will each suspend a weight of one hundred and twenty pounds; so that the whole rope will bear a strain nearly equal to three tons. In length, the common sperm whale-line measures something over two hundred fathoms. Towards the stern of the boat it is spirally coiled away in the tub, not like the worm-pipe of a still though, but so as to form one round, cheese-shaped mass of densely bedded \"sheaves,\" or layers of concentric spiralizations, without any hollow but the \"heart,\" or minute vertical tube formed at the axis of the cheese. As the least tangle or kink in the coiling would, in running out, infallibly take somebody\'s arm, leg, or entire body off, the utmost precaution is used in stowing the line in its tub. Some harpooneers will consume almost an entire morning in this business, carrying the line high aloft and then reeving it downwards through a block towards the tub, so as in the act of coiling to free it from all possible wrinkles and twists.</p>\n\n<p>In the English boats two tubs are used instead of one; the same line being continuously coiled in both tubs. There is some advantage in this; because these twin-tubs being so small they fit more readily into the boat, and do not strain it so much; whereas, the American tub, nearly three feet in diameter and of proportionate depth, makes a rather bulky freight for a craft whose planks are but one half-inch in thickness; for the bottom of the whale-boat is like critical ice, which will bear up a considerable distributed weight, but not very much of a concentrated one. When the painted canvas cover is clapped on the American line-tub, the boat looks as if it were pulling off with a prodigious great wedding-cake to present to the whales.</p>\n\n<p>Both ends of the line are exposed; the lower end terminating in an eye-splice or loop coming up from the bottom against the side of the tub, and hanging over its edge completely disengaged from everything. This arrangement of the lower end is necessary on two accounts. First: In order to facilitate the fastening to it of an additional line from a neighboring boat, in case the stricken whale should sound so deep as to threaten to carry off the entire line originally attached to the harpoon. In these instances, the whale of course is shifted like a mug of ale, as it were, from the one boat to the other; though the first boat always hovers at hand to assist its consort. Second: This arrangement is indispensable for common safety\'s sake; for were the lower end of the line in any way attached to the boat, and were the whale then to run the line out to the end almost in a single, smoking minute as he sometimes does, he would not stop there, for the doomed boat would infallibly be dragged down after him into the profundity of the sea; and in that case no town-crier would ever find her again.</p>\n\n<p>Before lowering the boat for the chase, the upper end of the line is taken aft from the tub, and passing round the loggerhead there, is again carried forward the entire length of the boat, resting crosswise upon the loom or handle of every man\'s oar, so that it jogs against his wrist in rowing; and also passing between the men, as they alternately sit at the opposite gunwales, to the leaded chocks or grooves in the extreme pointed prow of the boat, where a wooden pin or skewer the size of a common quill, prevents it from slipping out. From the chocks it hangs in a slight festoon over the bows, and is then passed inside the boat again; and some ten or twenty fathoms (called box-line) being coiled upon the box in the bows, it continues its way to the gunwale still a little further aft, and is then attached to the short-warp&mdash;the rope which is immediately connected with the harpoon; but previous to that connexion, the short-warp goes through sundry mystifications too tedious to detail.</p>\n','0000-00-00 00:00:00','Mikey'),
	(5,2,'IMPORTANT','Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.\n\nBring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring.\n\nCapitalise on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.','0000-00-00 00:00:00','John'),
	(6,4,'The importance of being important','The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz. Brick quiz whangs jumpy veldt fox. Bright vixens jump; dozy fowl quack. Quick wafting zephyrs vex bold Jim. Quick zephyrs blow, vexing daft Jim. Sex-charged fop blew my junk TV quiz. How quickly daft jumping zebras vex. Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! \"Now fax quiz Jack!\" my brave ghost pled. Five quacking zephyrs jolt my wax bed. Flummoxed by job, kvetching W. zaps Iraq. Cozy sphinx waves quart jug of bad milk. A very bad quack might jinx zippy fowls. Few quips galvanized the mock jury box. Quick brown dogs jump over the lazy fox. The jay, pig, fox, zebra, and my wolves quack! Blowzy red vixens fight for a quick jump. Joaquin Phoenix was gazed by MTV for luck. A wizard’s job is to vex chumps quickly in fog. Watch \"Jeopardy!\", Alex Trebek\'s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just\n\n','0000-00-00 00:00:00','Jane');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reactions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reactions`;

CREATE TABLE `reactions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `reaction` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
