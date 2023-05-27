# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting existing vtubers..."
Vtuber.destroy_all
puts "Database cleared."

puts "Creating Vtubers"

suisei_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/suiseimain.png"
suisei_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/suiseiimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/suiseiimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/suiseiimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/suiseiimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/suiseiimage5.png",
]
suisei_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/suiseivid.mp4"

Vtuber.create!(
  name: "Hoshimachi Suisei",
  jpname: "星街すいせい",
  quote: "\"It's your shooting star, your diamond in the rough, idol VTuber Hoshimachi Suisei!\"",
  description: "A forever18 VTuber who deeply loves singing and idols.
  Her dream is to one day hold a live concert in Tokyo Budokan.",
  main_image_url: suisei_main_image_url,
  image_urls: suisei_image_urls,
  main_vid_url: suisei_vid_url,
)

aqua_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/aquamain.png"
aqua_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/aquaimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/aquaimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/aquaimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/aquaimage4.png",
]
aqua_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/aquavid.mp4"

Vtuber.create!(
  name: "Minato Aqua",
  jpname: "湊あくあ",
  quote: "\"A-quality day to one and all! I'm Minato Aqua!\"",
  description: "A marine maid-styled virtual maid. She is trying her very best, yet is still sometimes awkward and clumsy.",
  main_image_url: aqua_main_image_url,
  image_urls: aqua_image_urls,
  main_vid_url: aqua_vid_url,
)

towa_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/towamain.png"
towa_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/towaimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/towaimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/towaimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/towaimage4.png",
]
towa_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/towavid.mp4"

Vtuber.create!(
  name: "Tokoyami Towa",
  jpname: "常闇トワ",
  quote: "Suppies! 'Tis I, Tokoyami Towa, from hololive 4th Generation!",
  description: "A young devil who is visiting human society to gain experience and develop her skills. But instead of studying, she became addicted to video games! After learning about a tool for communicating with humans called \"streaming,\" she's trying it out to help with her studies.",
  main_image_url: towa_main_image_url,
  image_urls: towa_image_urls,
  main_vid_url: towa_vid_url,
)

chloe_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/chloemain.png"
chloe_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/chloeimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/chloeimage2.png",
]
chloe_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/chloevid.mp4"

Vtuber.create!(
  name: "Sakamata Chloe",
  jpname: "沙花叉クロヱ",
  quote: "An intern who acts as a fixer and cleaner for Secret Society holoX.",
  description: "Calm and composed at all times, she carries out her orders without so much as batting an eyelid.

  She loves music and can be found listening to it every chance she gets.
  
  And while she denies it vehemently, she apparently tends to come across as guarded and not very upfront with her thoughts, only letting people get very occasional glimpses into how she really feels.",
  main_image_url: chloe_main_image_url,
  image_urls: chloe_image_urls,
  main_vid_url: chloe_vid_url,
)

miko_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/mikomain.png"
miko_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/mikoimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/mikoimage2.png",
]
miko_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/mikovid.gif"

Vtuber.create!(
  name: "Sakura Miko",
  jpname: "さくらみこ",
  quote: "\“Nya-hello! I'm the elite shrine maiden of hololive, Sakura Miko!\”",
  description: "Used to work hard in the Virtual Sakura Shrine accomplishing duties as a shrine maiden until, following the gods' orders, she was led to Japan where she found out about Tokino Sora. After developing huge admiration for her, she decided to become a virtual shrine maiden idol and continue to keep working hard for that dream!",
  main_image_url: miko_main_image_url,
  image_urls: miko_image_urls,
  main_vid_url: miko_vid_url,
)

pekora_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/pekoramain.png"
pekora_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/pekoraimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/pekoraimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/pekoraimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/pekoraimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/pekoraimage5.png",
  "https://hololyfe-seeds.s3.amazonaws.com/pekoraimage6.png",
]
pekora_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/pekoravid.mp4"

Vtuber.create!(
  name: "Usada Pekora",
  jpname: "兎田ぺこら",
  quote: "\"Hiya-peko! Hiya-peko! Hiya-pekooo! I'm Usada Pekora, peko!\"",
  description: "A lonely rabbit-eared girl who loves carrots. She loves them so much that she always brings a few anywhere she goes.",
  main_image_url: pekora_main_image_url,
  image_urls: pekora_image_urls,
  main_vid_url: pekora_vid_url,
)

sora_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/soramain.png"
sora_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/soraimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/soraimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/soraimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/soraimage4.png",
]
sora_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/soravid.mp4"

Vtuber.create!(
  name: "Tokino Sora",
  jpname: "ときのそら",
  quote: "\“Hey, Sora-tomo! How are you all doing? It's me, Tokino Sora!\"",
  description: "hololive Production's first virtual idol, debuting on September 7, 2017. She loves horror games and singing, and has always dreamed of performing in Yokohama Arena.
  She signed a record deal with Victor Entertainment in March 2019. She is active in various forms of media, such as appearing in Watanuki-san Chi no and hosting Sora Ao to!, a radio show.
  She held her first solo concert, Dream!, on October 6, 2019, taking one step closer to her ultimate goal.",
  main_image_url: sora_main_image_url,
  image_urls: sora_image_urls,
  main_vid_url: sora_vid_url,
)

roboco_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/robocomain.png"
roboco_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/robocoimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/robocoimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/robocoimage3.png",
]
roboco_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/robocovid.mp4"

Vtuber.create!(
  name: "Robocosan",
  jpname: "ロボ子さん",
  quote: "\"Hellobo! Roboco here!\"",
  description: "A lonely, clunky robot from a faraway wasteland.
  Now that she's a Virtual YouTuber, she wants to interact with
  lots of people and live each day to the fullest.",
  main_image_url: roboco_main_image_url,
  image_urls: roboco_image_urls,
  main_vid_url: roboco_vid_url,
)

mel_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/melmain.png"
mel_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/melimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/melimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/melimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/melimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/melimage5.png",
]
mel_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/melvid.gif"

Vtuber.create!(
  name: "Yozora Mel",
  jpname: "夜空メル",
  quote: "\"Sweet bites! It's Yozora Mel, the Underworld's vampire prodigy!\"",
  description: "A vampire prodigy from the Underworld. She might be a vampire, but she is not into blood. She likes her acerola juice quite a lot.",
  main_image_url: mel_main_image_url,
  image_urls: mel_image_urls,
  main_vid_url: mel_vid_url,
)

akirose_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/akirosemain.png"
akirose_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/akiroseimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/akiroseimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/akiroseimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/akiroseimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/akiroseimage5.png",
]
akirose_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/akirosevid.gif"

Vtuber.create!(
  name: "Aki Rosenthal",
  jpname: "アキ・ローゼンタール",
  quote: "\"Alona, everyone! This is Aki Rosenthal a.k.a. AkiRose!\"",
  description: "A girl who traveled from a different universe. She has hyper curiosity and dabbles in all sorts of things. Her trademark pigtails float due to some sort of supernatural power.",
  main_image_url: akirose_main_image_url,
  image_urls: akirose_image_urls,
  main_vid_url: akirose_vid_url,
)

hachama_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/hachamamain.png"
hachama_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/hachamaimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/hachamaimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/hachamaimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/hachamaimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/hachamaimage5.png",
]
hachama_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/hachamavid.mp4"

Vtuber.create!(
  name: "Akai Haato",
  jpname: "赤井はあと",
  quote: "\"Welcome to your rouge awakening! This is Akai Haato!\"",
  description: "A sassy kouhai. She is often prickly, but she'll try to get a lot of attention from those who have made friends with her. She loves red ribbons and heart shapes, and she'll wear them often in her hair and on her clothes.",
  main_image_url: hachama_main_image_url,
  image_urls: hachama_image_urls,
  main_vid_url: hachama_vid_url,
)

fubuki_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/fubukimain.png"
fubuki_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/fubukiimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/fubukiimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/fubukiimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/fubukiimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/fubukiimage5.png",
]
fubuki_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/fubukivid.mp4"

Vtuber.create!(
  name: "Shirakami Fubuki",
  jpname: "白上フブキ",
  quote: "\"Good foxy day! I'm Shirakami Fubuki!\"",
  description: "White-haired animal-eared otaku fox. She loves talking with people and will be happy if you give her the time of day.　
  She aims to become a top otaku idol while enjoying each and every day.",
  main_image_url: fubuki_main_image_url,
  image_urls: fubuki_image_urls,
  main_vid_url: fubuki_vid_url,
)

matsuri_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/matsurimain.png"
matsuri_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/matsuriimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/matsuriimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/matsuriimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/matsuriimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/matsuriimage5.png",
]
matsuri_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/matsurivid.mp4"

Vtuber.create!(
  name: "Natsuiro Matsuri",
  jpname: "夏色まつり",
  quote: "\"Wasshoi! hololive's symbol of purity and everyone's idol, Natsuiro Matsuri here!\"",
  description: "A rookie member of her school cheerleading team. Her cheerful, energetic, and affectionate personality means she gets along with everyone and has lots of friends. Loves festivals, events, and other fun things.",
  main_image_url: matsuri_main_image_url,
  image_urls: matsuri_image_urls,
  main_vid_url: matsuri_vid_url,
)

shion_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/shionmain.png"
shion_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/shionimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/shionimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/shionimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/shionimage4.png",
]
shion_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/shionvid.gif"

Vtuber.create!(
  name: "Murasaki Shion",
  jpname: "紫咲シオン",
  quote: "\"Hellshio! Murasaki Shion here!\"",
  description: "A child that randomly appears around the Underworld Academy... though she's actually an adult (or so she says). A self-proclaimed talented dark magician of noble birth (or so she says).
  She almost never actually says \"Hellshio.\"",
  main_image_url: shion_main_image_url,
  image_urls: shion_image_urls,
  main_vid_url: shion_vid_url,
)

ayame_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/ayamemain.png"
ayame_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/ayameimage1.png",
]
ayame_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/ayamevid.mp4"

Vtuber.create!(
  name: "Nakiri Ayame",
  jpname: "百鬼あやめ",
  quote: "\"Greetings, Humans! Yoohoo!\"",
  description: "A kimono-clad Oni girl from the Underworld Academy. As she loves to prank people, she always uses will-o’-the-wisp on them just to have fun. Many may not realize it, but she is actually the president of the student council.",
  main_image_url: ayame_main_image_url,
  image_urls: ayame_image_urls,
  main_vid_url: ayame_vid_url,
)

choco_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/chocomain.png"
choco_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/chocoimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/chocoimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/chocoimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/chocoimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/chocoimage5.png",
]
choco_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/chocovid.gif"

Vtuber.create!(
  name: "Yuzuki Choco",
  jpname: "癒月ちょこ",
  quote: "\"Good evening, my cute students! Choc-on!\"",
  description: "The school nurse at the Underworld Academy. Is incredibly popular among the students, with the boys in particular coming to get checked up all the time. Loves sweets, and often gets into trouble for leaving them strewn about on her desk.",
  main_image_url: choco_main_image_url,
  image_urls: choco_image_urls,
  main_vid_url: choco_vid_url,
)

subaru_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/subarumain.png"
subaru_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/subaruimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/subaruimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/subaruimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/subaruimage4.png",
]
subaru_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/subaruvid.gif"

Vtuber.create!(
  name: "Oozora Subaru",
  jpname: "大空スバル",
  quote: "\"'Sup! I'm Oozora Subaru from hololive 2nd Generation!\"",
  description: "The manager of an MMA team and an e-sports club. A bright and cheerful girl full of spirit, she can interact with anyone and everyone without hesitation. She's currently working hard on her own pro-gamer skills.
  Another day of giving everything I've got as a manager!!!!!!!!!!!",
  main_image_url: subaru_main_image_url,
  image_urls: subaru_image_urls,
  main_vid_url: subaru_vid_url,
)

azki_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/azkimain.png"
azki_image_urls = ["none"]
azki_vid_url = "none"

Vtuber.create!(
  name: "AZKi",
  jpname: "AZKi",
  quote: "I'm the Virtual Diva AZKi! I love music and singing!",
  description: "A diva who became reborn into the virtual world in order to fabricate a new world. No matter the time, place, or position, she warps through all the barricades with her dazzling talent.
  ©kasokuSato",
  main_image_url: azki_main_image_url,
  image_urls: azki_image_urls,
  main_vid_url: azki_vid_url,
)

mio_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/miomain.png"
mio_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/mioimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/mioimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/mioimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/mioimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/mioimage5.png",
]
mio_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/miovid.mp4"

Vtuber.create!(
  name: "Ookami Mio",
  jpname: "大神ミオ",
  quote: "\"Hellooowl! It is Ookami Mio!\"",
  description: "A black-haired wolf girl who appeared on our radar randomly. She often shows up around shrines. She likes gaming.",
  main_image_url: mio_main_image_url,
  image_urls: mio_image_urls,
  main_vid_url: mio_vid_url,
)

okayu_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/okayumain.png"
okayu_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/okayuimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/okayuimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/okayuimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/okayuimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/okayuimage5.png",
]
okayu_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/okayuvid.mp4"

Vtuber.create!(
  name: "Nekomata Okayu",
  jpname: "猫又おかゆ",
  quote: "\"Om, nom, Okayu!\"",
  description: "A cat being raised by an old woman that runs an onigiri store. She streams from the computer in her grandma's room.",
  main_image_url: okayu_main_image_url,
  image_urls: okayu_image_urls,
  main_vid_url: okayu_vid_url,
)

korone_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/koronemain.png"
korone_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/koroneimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/koroneimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/koroneimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/koroneimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/koroneimage5.png",
]
korone_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/koronevid.gif"

Vtuber.create!(
  name: "Inugami Korone",
  jpname: "戌神ころね",
  quote: "\"'Ello! Fingers! Give me your fingers!\"",
  description: "A dog from a bakery in the city. She likes to play games during her free time while watchdogging.",
  main_image_url: korone_main_image_url,
  image_urls: korone_image_urls,
  main_vid_url: korone_vid_url,
)

flare_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/flaremain.png"
flare_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/flareimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/flareimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/flareimage3.png",
]
flare_vid_url = "none"

Vtuber.create!(
  name: "Shiranui Flare",
  jpname: "不知火フレア",
  quote: "\"Noon-nui! This is hololive 3rd Gen's Shiranui Flare!\"",
  description: "A half-elf born to a human and elf. Usually enjoys life as she pleases. Wants to be a source of comfort so rely on her whenever you're in trouble. She may be passionate and overly sentimental, but praising her will bring her joy, even if also a little embarrassment! \"Hehehe! Let's get along!\"",
  main_image_url: flare_main_image_url,
  image_urls: flare_image_urls,
  main_vid_url: flare_vid_url,
)

noel_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/noelmain.png"
noel_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/noelimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/noelimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/noelimage3.png",
]
noel_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/noelvid.mp4"

Vtuber.create!(
  name: "Shirogane Noel",
  jpname: "白銀ノエル",
  quote: "\"All hustle, all muscle! Shirogane Noel's here!\"",
  description: "As much as this fluffy, meatheaded knight may be easy-going, she has the dangerous habit of attempting to muscle her way through her problems. Hungering for power, she came to train to the VTuber world where all the stronk people are.",
  main_image_url: noel_main_image_url,
  image_urls: noel_image_urls,
  main_vid_url: noel_vid_url,
)

marine_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/marinemain.png"
marine_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/marineimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/marineimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/marineimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/marineimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/marineimage5.png",
  "https://hololyfe-seeds.s3.amazonaws.com/marineimage6.png",
]
marine_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/marinevid.mp4"

Vtuber.create!(
  name: "Houshou Marine",
  jpname: "宝鐘マリン",
  quote: "\"Ahoy! Captain of the Houshou Pirates, Houshou Marine here!" "Keep 'er steady!\"",
  description: "Loves jewels, treasure, and money. Her dream is to become a pirate and go treasure hunting. In order to get a pirate ship, she is now stacking up money as a VTuber on the great lands, just like how the other land-lovers do (which also means she is currently just a girl cosplayer).
  She acts like a big sis and sometimes seduces people like a succubus does. A sensual, femme fatale boss, and a young one, at that! (Around 17)
  Her pirate outfit is just cosplay, and quite lewd when you see it that way.",
  main_image_url: marine_main_image_url,
  image_urls: marine_image_urls,
  main_vid_url: marine_vid_url,
)

kanata_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/kanatamain.png"
kanata_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/kanataimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/kanataimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/kanataimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/kanataimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/kanataimage5.png",
]
kanata_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/kanatavid.mp4"

Vtuber.create!(
  name: "Amane Kanata",
  jpname: "天音かなた",
  quote: "\"Hey, you all came, ta!\"",
  description: "An angel from the Celestial Academy. She is cheerful in front of close friends but becomes quiet and introverted when in crowds. She stays at home on her days off. She works hard with the goal of holding a concert at Saitama Super Arena someday.",
  main_image_url: kanata_main_image_url,
  image_urls: kanata_image_urls,
  main_vid_url: kanata_vid_url,
)

watame_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/watamemain.png"
watame_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/watameimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/watameimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/watameimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/watameimage4.png",
]
watame_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/watamevid.gif"

Vtuber.create!(
  name: "Tsunomaki Watame",
  jpname: "角巻わため",
  quote: "\"Hoof, hoof, helloof!\" \"Watame did nothing wrong!\" first coined",
  description: "Loves singing, and as she continued uploading song covers and having weekly singing streams titled \"Watameh Night Fever!!,\" she started wanting to stand on Tokyo Budokan's stage someday.",
  main_image_url: watame_main_image_url,
  image_urls: watame_image_urls,
  main_vid_url: watame_vid_url,
)

luna_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/lunamain.png"
luna_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/lunaimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/lunaimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/lunaimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/lunaimage4.png",
]
luna_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/lunavid.mp4"

Vtuber.create!(
  name: "Himemori Luna",
  jpname: "姫森ルーナ",
  quote: "\"Is evewyone heeere?\"",
  description: "The princess of Candy Kingdom.
  She's affectionate and loves being pampered, but her butler often scolds her for acting too spoiled.
  Her moon-shaped accessories are said to be the crest of a country in another world.",
  main_image_url: luna_main_image_url,
  image_urls: luna_image_urls,
  main_vid_url: luna_vid_url,
)

lamy_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/lamymain.png"
lamy_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/lamyimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/lamyimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/lamyimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/lamyimage4.png",
]
lamy_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/lamyvid.mp4"

Vtuber.create!(
  name: "Yukihana Lamy",
  jpname: "雪花ラミィ",
  quote: "\"Lamyoohoo!\"",
  description: "hololive 5th Generation's blue rep, Yukihama Lamy!
  The daughter of a noble family from a distant, snowy land. She decided to leave her home, along with her companion Daifuku, after hololive's streams full of fun and color touched her heart. Her serious personality belies her naive, sheltered nature.",
  main_image_url: lamy_main_image_url,
  image_urls: lamy_image_urls,
  main_vid_url: lamy_vid_url,
)

nene_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/nenemain.png"
nene_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/neneimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/neneimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/neneimage3.png",
]
nene_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/nenevid.mp4"

Vtuber.create!(
  name: "Momosuzu Nene",
  jpname: "桃鈴ねね",
  quote: "A girl who came from another world in order to become an idol.",
  description: "She loves singing and dancing, and drawing.
  She is training hard every day to become someone loved by many.",
  main_image_url: nene_main_image_url,
  image_urls: nene_image_urls,
  main_vid_url: nene_vid_url,
)

botan_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/botanmain.png"
botan_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/botanimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/botanimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/botanimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/botanimage4.png",
]
botan_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/botanvid.mp4"

Vtuber.create!(
  name: "Shishiro Botan",
  jpname: "獅白ぼたん",
  quote: "Contrary to her sporty appearance, she's a white lion who prefers lazing around.",
  description: "Despite her typically hands-off attitude, once she has made up her mind she will always follow through to the end.
  Her favorite phrase is \"Wealth isn't measured with money.\" Born in a rough neighborhood, she's a bit of a gaming addict. She's the type to set aside powerful heals even at the end game.",
  main_image_url: botan_main_image_url,
  image_urls: botan_image_urls,
  main_vid_url: botan_vid_url,
)

polka_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/polkamain.png"
polka_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/polkaimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/polkaimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/polkaimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/polkaimage4.png",
]
polka_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/polkavid.mp4"

Vtuber.create!(
  name: "Omaru Polka",
  jpname: "尾丸ポルカ",
  quote: "A circus performer who joined hololive in hopes of becoming the ringmaster of the VTuber world.",
  description: "She enjoys wowing audiences with acrobatics, and she lives by the words, \"When you've decided you're gonna do something, follow through!\"
    Her natural charm glosses over her occasional mess-ups.",
  main_image_url: polka_main_image_url,
  image_urls: polka_image_urls,
  main_vid_url: polka_vid_url,
)

laplis_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/laplismain.png"
laplis_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/laplisimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/laplisimage2.png",
]
laplis_vid_url = "none"

Vtuber.create!(
  name: "La+ Darknesss",
  jpname: "ラプラス・ダークネス",
  quote: "The one who established Secret Society holoX.",
  description: "She was originally known for her vast power and intelligence, but most of it is now sealed away. She is vaguely aware of the debilitating nature of her shackles but does not remember when or how they got there.

  The crow by her side is a long-time companion.",
  main_image_url: laplis_main_image_url,
  image_urls: laplis_image_urls,
  main_vid_url: laplis_vid_url,
)

lui_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/luimain.png"
lui_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/luiimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/luiimage2.png",
]
lui_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/luivid.mp4"

Vtuber.create!(
  name: "Takane Lui",
  jpname: "鷹嶺ルイ",
  quote: "The executive officer of Secret Society holoX.",
  description: "As holoX's point of contact and the one in charge of external affairs, she is the de facto leader of the group, handling matters that the founder cannot.

  While she may seem aloof and standoffish at first glance, she is a compassionate person who cares a lot for her subordinates.
  
  Unfortunately, she is also rather prone to screwing up in crucial moments.",
  main_image_url: lui_main_image_url,
  image_urls: lui_image_urls,
  main_vid_url: lui_vid_url,
)

koyori_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/koyorimain.png"
koyori_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/koyoriimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/koyoriimage2.png",
]
koyori_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/koyorivid.mp4"

Vtuber.create!(
  name: "Hakui Koyori",
  jpname: "博衣こより",
  quote: "The one in charge of R&D in Secret Society holoX.",
  description: "As part of her studies into human behavior, she meddles in the other members' affairs and tries to help them out at every turn.

  Possessed by an insatiable thirst for knowledge, she may sometimes also deliberately mess with people just to see how they react.
  
  The self-proclaimed \"brains of the operation.\" Her areas of expertise, however, are pretty limited.",
  main_image_url: koyori_main_image_url,
  image_urls: koyori_image_urls,
  main_vid_url: koyori_vid_url,
)

iroha_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/irohamain.png"
iroha_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/irohaimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/irohaimage2.png",
]
iroha_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/irohavid.mp4"

Vtuber.create!(
  name: "Kazama Iroha",
  jpname: "風真いろは",
  quote: "Secret Society holoX's insurance policy.",
  description: "Hailing from a remote mountainous area, she left her home behind and, along with her companion, set off on a journey to achieve her dream of seeing and learning more about the outside world.

  Nowadays, she handles security detail and bodyguard missions for holoX, making enough money to get by.",
  main_image_url: iroha_main_image_url,
  image_urls: iroha_image_urls,
  main_vid_url: iroha_vid_url,
)

risu_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/risumain.png"
risu_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/risuimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/risuimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/risuimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/risuimage4.png",
]
risu_vid_url = "none"

Vtuber.create!(
  name: "Ayunda Risu",
  jpname: "アユンダ・リス",
  quote: "Hewwrroo everyone ~!!”; “Purupuru ganbari Risu ~!”",
  description: "A squirrel girl from a magical forest.
  She was lost in the human world, but due to certain circumstances, she ends up living in the home of a kind older sister.
  To return the favor, she decides to become a VTuber.
  Risu act, most of the time, just like a squirrel she is. She loves to do subtle pranks on people, shy with new people, and love to tease her viewer. Her laugh is also one of her unique characterictic.",
  main_image_url: risu_main_image_url,
  image_urls: risu_image_urls,
  main_vid_url: risu_vid_url,
)

moona_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/moonamain.png"
moona_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/moonaimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/moonaimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/moonaimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/moonaimage4.png",
]
moona_vid_url = "none"

Vtuber.create!(
  name: "Moona Hoshinova",
  jpname: "ムーナ・ホシノヴァ",
  quote: "\"Moon Moon~ Moona Dayo!\"",
  description: "A college girl who works as a model and idol, but later got interested to become a VTuber too.
  On some rare occasion, Moona’s stream might be visited by Moona’s “another personality,”Hoshinova. That has deeper big sister-like voices and sadistic tendesion. Pay attention to her streams to meet Hoshinova!",
  main_image_url: moona_main_image_url,
  image_urls: moona_image_urls,
  main_vid_url: moona_vid_url,
)

airani_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/airanimain.png"
airani_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/airaniimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/airaniimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/airaniimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/airaniimage4.png",
]
airani_vid_url = "none"

Vtuber.create!(
  name: "Airani Iofifteen",
  jpname: "アイラニ・イオフィフティーン",
  quote: "\"IOFORIA~! OBISA!" "Pagi semua! I’m your beloved smart alien iofi from hololive Indonesia, nice to meet you!\"",
  description: "An alien princess who ran away from home and come to the earth and fell in love with earth’s culture, sometimes like to tease the viewers and being a nice iomama if her fans needs it. Sometimes got crazy over gacha game.",
  main_image_url: airani_main_image_url,
  image_urls: airani_image_urls,
  main_vid_url: airani_vid_url,
)

ollie_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/olliemain.png"
ollie_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/ollieimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/ollieimage2.png",
]
ollie_vid_url = "none"

Vtuber.create!(
  name: "Kureiji Ollie",
  jpname: "クレイジー・オリー",
  quote: "\"ZOMBANWA!! SUPER KAWAII ZOMBIE IDOL, KU KU KU KUREIJI OLLIE DESU~!!\"",
  description: "A zombie high school girl risen from her grave. She headed home, relying on memories retained from when she was still alive.
  Upon arriving, she discovered it had turned into a ramen shop! And so, in order to reclaim her house, she decided to become a VTuber.
  Ollie has a very big tendency to scream. Always lower your volumes during her streams.",
  main_image_url: ollie_main_image_url,
  image_urls: ollie_image_urls,
  main_vid_url: ollie_vid_url,
)

anya_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/anyamain.png"
anya_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/anyaimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/anyaimage2.png",
]
anya_vid_url = "none"

Vtuber.create!(
  name: "Anya Melfissa",
  jpname: "アーニャ・メルフィッサ",
  quote: "\"Good day! This is Anya Melfissa from hololive ID 2nd Generation.\"",
  description: "An ancient weapon known as “Keris,” she was granted human form through a mystical ritual performed by her master.
  She’s just about always sleeping or playing games. Living mostly alone for so long has made her tend to be apathetic towards things and people she’s uninterested in, but when talking about things she likes, she can be quite childlike and passionate.
  Her base personality is actually apathetic, especially towards humans. Don’t let looks fool you - that’s what every foolish human always does to themselves somehow.",
  main_image_url: anya_main_image_url,
  image_urls: anya_image_urls,
  main_vid_url: anya_vid_url,
)

reine_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/reinemain.png"
reine_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/reineimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/reineimage2.png",
]
reine_vid_url = "none"

Vtuber.create!(
  name: "Pavolia Reine",
  jpname: "パヴォリア・レイネ",
  quote: "\"Perhatian, sang putri merak yang tertiup angin, aku Pavolia Reine dari hololive ID.\"",
  description: "Lady of the Peafowl. While studying at a magic academy, she was involved in an incident and transferred to the human world.
  Since then, she has been unable to use much of her magic.
  Very fond of sweets, but weak with overly spicy food. At first glance, she seems to be the elegant type, but people who spend some more time with her will find out that she has more of a dorky personality. To quite a number of viewers, her laugh has been perceived as similar to a car engine starting.",
  main_image_url: reine_main_image_url,
  image_urls: reine_image_urls,
  main_vid_url: reine_vid_url,
)

zeta_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/zetamain.png"
zeta_image_urls = [
  "none",
]
zeta_vid_url = "none"

Vtuber.create!(
  name: "Vestia Zeta",
  jpname: "ベスティア・ゼータ",
  quote: "She is the mysterious 7th recruit of The Secret Archive Unit that has a full license to collect virtual data.",
  description: "Despite her being a promising rookie, who is also known as codename V.7, she turns clumsy when things are not going exactly according to the manual.
  It was initially a lonely mission to infiltrate the virtual world, but now she had found comfort here. Will this mission end up leading her to a new destiny instead...?",
  main_image_url: zeta_main_image_url,
  image_urls: zeta_image_urls,
  main_vid_url: zeta_vid_url,
)

kaela_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/kaelamain.png"
kaela_image_urls = [
  "none",
]
kaela_vid_url = "none"

Vtuber.create!(
  name: "Kaela Kovalskia",
  jpname: "カエラ・コヴァルスキア",
  quote: "After taking over her great blacksmithing teacher's forge, she felt a lack of excitement in her life.",
  description: "So, she decided to be free and depart on a journey to find rare smithing materials, one of which was rumored to be under the building of a certain \"idol group\" in town.
  She also loves challenging herself and has a peculiar taste when it comes to foods!",
  main_image_url: kaela_main_image_url,
  image_urls: kaela_image_urls,
  main_vid_url: kaela_vid_url,
)

kobo_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/kobomain.png"
kobo_image_urls = [
  "none",
]
kobo_vid_url = "none"

Vtuber.create!(
  name: "Kobo Kanaeru",
  jpname: "こぼ・かなえる",
  quote: "A carefree girl who lives in the topmost room of a lighthouse, she is actually the bloodline of the strongest rain shaman in the area. She has great potential to control rain, but she does not like to do it as a task.",
  description: "In order to win back her Rain Master title, she needs to prove to her family that she can keep their rain shaman service afloat. Not only does she have to train daily, but she also needs to adopt some sort of virtual marketing strategy to succeed!",
  main_image_url: kobo_main_image_url,
  image_urls: kobo_image_urls,
  main_vid_url: kobo_vid_url,
)

mori_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/morimain.png"
mori_image_urls = [
  "none",
]
mori_vid_url = "none"

Vtuber.create!(
  name: "Mori Calliope",
  jpname: "森カリオペ",
  quote: "The Grim Reaper's first apprentice. Due to modern medical care causing a decline in the reaping business, Calliope decided to become a VTuber to harvest souls instead.",
  description: "It seems that the ascended souls of the people who are vaporized by the wholesome interactions between VTubers go to her as well.
  That being said, despite the image her hardcore vocals and manner of speech gives off, she's actually a gentle-hearted girl who cares greatly for her friends.",
  main_image_url: mori_main_image_url,
  image_urls: mori_image_urls,
  main_vid_url: mori_vid_url,
)

kiara_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/kiaramain.png"
kiara_image_urls = [
  "none",
]
kiara_vid_url = "none"

Vtuber.create!(
  name: "Takanashi Kiara",
  jpname: "小鳥遊キアラ",
  quote: "An idol whose dream is to become the owner of a fast food chain. Kiara is a phoenix, not a chicken or turkey. (Very important)",
  description: "She burns brightly, working herself to the bone since she'll just be reborn from her ashes anyway.",
  main_image_url: kiara_main_image_url,
  image_urls: kiara_image_urls,
  main_vid_url: kiara_vid_url,
)

ina_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/inamain.png"
ina_image_urls = [
  "none",
]
ina_vid_url = "none"

Vtuber.create!(
  name: "Ninomae Ina’nis",
  jpname: "一伊那尓栖/にのまえいなにす",
  quote: "Despite her looks, Ina'nis is actually a priestess of the Ancient Ones. One day, she picked up a strange book and then started to gain the power of controlling tentacles.",
  description: "To her, tentacles are just a part in her ordinary life; it has never been a big deal for her. However, her girly mind does want to get them dressed up and stay pretty.
  After gaining power, she started hearing Ancient Whispers and Revelations. Hence, she began her VTuber activities to deliver random sanity checks on humanity, as an ordinary girl.",
  main_image_url: ina_main_image_url,
  image_urls: ina_image_urls,
  main_vid_url: ina_vid_url,
)

gura_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/guramain.png"
gura_image_urls = [
  "none",
]
gura_vid_url = "none"

Vtuber.create!(
  name: "Gawr Gura",
  jpname: "がうる・ぐら",
  quote: "A descendant of the Lost City of Atlantis, who swam to Earth while saying, \"It's so boring down there LOLOLOL!\"",
  description: "Gura bought her clothes (and her shark hat) in the human world and she really loves them. In her spare time, she enjoys talking to marine life.",
  main_image_url: gura_main_image_url,
  image_urls: gura_image_urls,
  main_vid_url: gura_vid_url,
)

amelia_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/ameliamain.png"
amelia_image_urls = [
  "none",
]
amelia_vid_url = "none"

Vtuber.create!(
  name: "Watson Amelia",
  jpname: "ワトソン・アメリア",
  quote: "Amelia heard strange rumors online surrounding hololive: talking foxes, magical squirrels, superhuman dogs, and more.",
  description: "Soon after beginning her investigation on hololive, and just out of interest, she decided to become an idol herself!
  She loves to pass her time training her reflexes with FPS games, and challenging herself with puzzle games. \"It's elementary, right?\"",
  main_image_url: amelia_main_image_url,
  image_urls: amelia_image_urls,
  main_vid_url: amelia_vid_url,
)

irys_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/irysmain.png"
irys_image_urls = [
  "none",
]
irys_vid_url = "none"

Vtuber.create!(
  name: "IRyS",
  jpname: "IRyS",
  quote: "Diva of hololive English Project: HOPE IRyS",
  description: "IRyS, a half-demon, half-angel also known as a Nephilim, once brought hope to \"The Paradise\" during the ancient age. Her full name is ███████ Irys. This current era, riddled with despair and desperation, has brought upon her second awakening. She has arrived to deliver hope, with her feelings put into her lyrics and songs, and determination in her voice.
  Though she tends to retain her Nephilim form, she is still quite young within her race. With emotion and \"other factors,\" it is possible that her form may lean to either side. When that occurs, she bears a brief change in her appearance.
  She does not speak of the events that preceded her second awakening. She faces ever forward, perhaps because she is Hope Incarnate, though no one knows for sure. Or could it be...
  \"The future is not what helps people; the future is made with our own hands.
  Salvation is hypocrisy. If people know they are to be saved, they simply will not try.
  From the depths of despair: a glimmer of light, the warmth of recovery.
  As long as we are with hope, we live. We stand tall.\"",
  main_image_url: irys_main_image_url,
  image_urls: irys_image_urls,
  main_vid_url: irys_vid_url,
)

fauna_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/faunamain.png"
fauna_image_urls = [
  "none",
]
fauna_vid_url = "none"

Vtuber.create!(
  name: "Ceres Fauna",
  jpname: "セレス・ファウナ",
  quote: "Keeper of \"Nature\"",
  description: "A member of the Council and the Keeper of \"Nature,\" the second concept created by the Gods.
  She has materialized in the mortal realm as a druid in a bid to save nature.
  She has Kirin blood flowing in her veins, and horns that are made out of the branches of a certain tree; they are NOT deer antlers.
  
  \"Nature\" refers to all organic matter on the planet except mankind.
  It is long said that her whispers, as an avatar of Mother Nature, have healing properties. Whether or not that is true is something only those who have heard them can say.
  While she is usually affable, warm, and slightly mischievous, any who anger her will bear the full brunt of Nature's fury.",
  main_image_url: fauna_main_image_url,
  image_urls: fauna_image_urls,
  main_vid_url: fauna_vid_url,
)

kronii_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/kroniimain.png"
kronii_image_urls = [
  "none",
]
kronii_vid_url = "none"

Vtuber.create!(
  name: "Ouro Kronii",
  jpname: "オーロ・クロニー",
  quote: "Warden of \"Time\"",
  description: "A member of the Council and the Warden of \"Time,\" the third concept birthed by the Gods and the one most intrinsically linked with mankind.
  None may escape the sands of time and, indeed, most men do not even wish to be freed from her captivity. She picked up the blades almost as a reflex action of sorts, and seems to be enjoying it. Her quiet, aloof personality has never changed over the ages, but she has developed a little bit of haughtiness and sadistic tendencies along the way...
  
  Originally, the concept of time was but a cog in the wheel, one which only functioned in tandem with others.
  Eventually, humans went on to give time individual meanings such as dawn and dusk, making it universal. The humans became enslaved to Time in return for empowering her. In her present form, she has become a sadistic, prideful warden.",
  main_image_url: kronii_main_image_url,
  image_urls: kronii_image_urls,
  main_vid_url: kronii_vid_url,
)

mumei_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/mumeimain.png"
mumei_image_urls = [
  "none",
]
mumei_vid_url = "none"

Vtuber.create!(
  name: "Nanashi Mumei",
  jpname: "七詩ムメイ",
  quote: "Guardian of \"Civilization\"",
  description: "A member of the Council and the Guardian of \"Civilization,\" a concept crafted by mankind.
  As a living embodiment of the sum of mankind's efforts—the mark that humans have left on the world—she is far removed from her fellow members, as well as other lifeforms. Due to not being created by the Gods, she was free to choose her own appearance, and decided to make herself owl-like, after the bird that symbolizes wisdom.
  
  She is gentle, wise, and an unbelievably hard worker. As a well-traveled vagabond, she is blessed with a wealth of knowledge of the world. She has seen, heard, and experienced so many things that she has forgotten most of them, one of them being her own name.
  
  For some reason, she seems to project a rather pitiable aura. Perhaps this is in part thanks to the loneliness she has often felt in her perennial travels. That is what gave her the idea of making her own friend out of a material that was indispensable to the development of human civilization: paper.
  
  \"It may fade and rip, but once a friend, forever a friend.\"",
  main_image_url: mumei_main_image_url,
  image_urls: mumei_image_urls,
  main_vid_url: mumei_vid_url,
)

bae_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/baemain.png"
bae_image_urls = [
  "none",
]
bae_vid_url = "none"

Vtuber.create!(
  name: "Hakos Baelz",
  jpname: "ハコス・ベールズ",
  quote: "Chaos",
  description: "A member of the Council and the very concept of Chaos, birthed by the world, itself.
  The Gods appointed her Chairperson of the Council, but she mostly takes a hands-off approach as she has yet to accept the decision, much like her fellow members. That said, all of them have no intention of contending; instead to obey.
  
  Her mouse-like appearance has deceived many a fool who fails to realize that mice are the harbingers of chaos.
  Also of note is her wild smile, which she often flashes in her frequent romps.
  
  Chaos is confusion and disarray, it is fortune and tragedy, and it is freedom from all the logic and inherent nature of life.
  She believes that rules are not the be-all and end-all, which is why she has come to break them all.
  Watching the aftermath is her greatest joy, and so she remains a bystander to the destruction caused by mayhem.",
  main_image_url: bae_main_image_url,
  image_urls: bae_image_urls,
  main_vid_url: bae_vid_url,
)

kiryucoco_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/kiryucocomain.png"
kiryucoco_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/kiryucocoimage1.png",
]
kiryucoco_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/kiryucocovid.mp4"

Vtuber.create!(
  name: "[Alum]Kiryu Coco",
  jpname: "桐生ココ",
  quote: "\"Good morning, everyone! Wake up, wake up, wake up!\"",
  description: "A kid dragon who came to Japan from another world as a language exchange student. Holds a deep interest in human culture.
  She is a dragon with a strict code of honor, and keeps her human form through sheer force of willpower.",
  main_image_url: kiryucoco_main_image_url,
  image_urls: kiryucoco_image_urls,
  main_vid_url: kiryucoco_vid_url,
)

sana_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/sanamain.png"
sana_image_urls = [
  "none",
]
sana_vid_url = "none"

Vtuber.create!(
  name: "[Alum] Tsukumo Sana",
  jpname: "九十九佐命",
  quote: "Speaker of \"Space\”",
  description: "A member of the Council and the Speaker of \"Space,\" the very first concept created by the Gods.
  After being materialized in the mortal realm, she began researching astrology in earnest for one particular reason. However, she soon stumbled unknowingly upon the Forbidden Truth, and was turned into an apostle for the Ancient Ones.
  
  \"Space\" refers not only to this universe we live in, but all dimensions and matter to exist. It is a concept unbridled by definition, and one that continues to grow in scope limitlessly. As it is yet to be fully explored by man, her seemingly strange behavior and speech can be explained away with a simple, \"Humanity simply isn't yet ready to understand.\"
  
  As a side note, despite how she may look, she is quite chi... young.",
  main_image_url: sana_main_image_url,
  image_urls: sana_image_urls,
  main_vid_url: sana_vid_url,
)

achan_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/achanmain.png"
achan_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/achanimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/achanimage2.png",
]
achan_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/achanvid.mp4"

Vtuber.create!(
  name: "Friend A (A-chan)",
  jpname: "友人A（えーちゃん）",
  quote: "Hello, I'm Friend A, a hololive staff member.",
  description: "The hololive agency's first-ever support staff member. Always has too much on her plate due to the quirky idols and the massive amount of work she deals with, but she takes it in stride as she's truly happy about the agency's and its idols' growth.
  Together with Harusaki Nodoka, a newbie employee, she aims to make hololive the top idol agency in the world... and to be free of overtime forever.",
  main_image_url: achan_main_image_url,
  image_urls: achan_image_urls,
  main_vid_url: achan_vid_url,
)

nodoka_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/nodokamain.png"
nodoka_image_urls = [
  "none",
]
nodoka_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/nodokavid.mp4"

Vtuber.create!(
  name: "Harusaki Nodoka",
  jpname: "春先のどか",
  quote: "Hello! I'm Harusaki Nodoka, hololive's newest staff member!",
  description: "The newest hololive staff member. She's still coming to grips with her all-too-new environment, but together with her mentor Friend A, she gives it her all to support the agency's idols.
  Her short-term goal is to follow in her mentor's footsteps and become a useful staff member as soon as possible.
  Behind her responsible demeanor is a scatterbrain. Loves frogs.",
  main_image_url: nodoka_main_image_url,
  image_urls: nodoka_image_urls,
  main_vid_url: nodoka_vid_url,
)

# _main_image_url = ""
# _image_urls = [
#   "",
# ]
# _vid_url = ""

# Vtuber.create!(
#   name: "",
#   jpname: "",
#   quote: "",
#   description: "",
#   main_image_url: _main_image_url,
#   image_urls: _image_urls,
#   main_vid_url: _vid_url,
# )

puts "All done!"
