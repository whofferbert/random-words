# random-words
Selectable amounts of random dict words, with an optional variable weighted list of input words.

By default, this program looks at /usr/share/dict/words as it's line delimited list of random words to work from.

If you are on a system without the default dictionary file, you can use the -dict argument to point the program to your own file for use.

### Requirements

```bash
Perl 5.010
IO::All
List::Util qw(shuffle)
```

# help text

```bash

  This program outputs an amount of random words from
  a given diction, and optionally provide a list of words
  as arguments, which will be weighted more heavily in
  random word construction

    Basic Usage: random-words.pl 

  Options:

    -number [int]
      A number of words to output. Default is 1.

    -lines [int]
      A number of lines to print. Default is 1.

    -in-weight [int]
      How heavily to weight the input terms. Default is 1.

    -dict [/path/to/dictionary]
      Provide a path to a dictionary to use.
      Default is /usr/share/dict/words

    -help
      Print this help.

  Examples:

    # Generate one random word from /usr/share/dict/words
      random-words.pl 

    # All options may combined/shortened, and input words provided:
      random-words.pl -n 4 -l 10 -i 2 one two three "quoted pair" another\ quoted\ pair


```

# Examples

```
$ ./random-words.pl -n 3 -l 10 random test words and stuff "notice the" "odd things" "that happen here"
Marring Stuff Dirge
Ascendents Kenmore Odd Things
Partition Odd Things Bookmark's
Bayonetted That Happen Here Imbecilic
Penultimate's Stuff Influence
Tail Odd Things Outlets
Hogshead Chickenpox's Stuff
Words Plurals Pus
Unobstructed Brownstone Stuff
Agassi That Happen Here Cadaverous
$
```

```
$ ./random-words.pl -n 4 -l 100
Monsignor Yapping Netted Patel
Preponderate Paranoids Junkers Restroom's
Breach's Cleric's Birdseye's Paramour
Impaneled Hypocrite's Wastage Dafter
UPS's Sardonically Fuzzes Studebaker's
Neighbor's Porpoising Funicular's Aleppo
Hausa's Investigations Stingiest Virulence's
Topsoil's Keeper Cochin's Scrunched
Calories Derby Impressiveness Cadaverous
Charleston's Hatchery Sevastopol's Sizzles
Participial Lewdly Familiarization Kazoo
Price Vectoring Drizzle's Skin's
Foreseeing After Edwardo's Dietitian
Connecticut Asserts Trashcans Owing
Decomposition's Quarrels Frowziest Johnie
Interleukin Dreamily Decant Unconventional
Raindrop Beck's Witness's Vary
Guevara's Hubby Grogginess Catholicism's
Lateraled Adherence Shortfall Overcasting
Ostentatious Cataloging Hydrogen Commodious
Tiffany's E'er Epicenters Bedpan's
Bloemfontein's Gym's Aptitude's Hemorrhoids
Yaobang Mutts Howler's Undue
Aftermath's Azazel's Strainer's Othello's
Maintainable Bellow's Joggles Befogged
Aussies Seacoast Weeper's Usage
Banshee's Verges Benedictions Vigil
Shapeless Yodelled Jessica's Rostrum's
Rheas Somnambulists Preachier Anatolia's
Derailing Inaccurate Cogwheel Ronald
Affluence's Okaying Terrifyingly Forbearance's
Anodes Slavers Badge's Titian
Pacemaker's Immunize Dissimilarity's Leonardo's
Floridan's Mills Percolated Plautus's
Mobility Shrews Foundries Walk's
Hairstyle Chalking Combines Unbuckling
Benefactor Apologias Acquittal Gaelic
Embellishing Increasingly Metamorphosed Reginae's
Brewer's Lindsey's Fold's Sarasota
Straighter Sourness Tackle's Upturn
Marie Narrowly Curtained Marlon's
Selfsame Squareness Exhortation Symptomatic
Bouillabaisses Semis Ferociousness's Necessitating
Pacify Unclasp Jasmine Predating
Ashkhabad Curd Throughway's Sacristan's
Minnie Tailors Cart Autumn
Spacewalk Archimedes's Palmetto Lippi
Neoconservatives Windowsills Detoxes Foots
Usury's Emanates Reproved Subordinating
Photographer Lounging Indulgences Enquires
Purloin Menaces Galley's Conjoin
Stye's RCA's Anaerobic Beekeeper's
Lear's Dastardly Heraclitus's Tiller's
Distortion's Synthesizes Presto Cleaves
Reilly Pettily Kidneys Undershoot
Overemphasizing Anomaly Australians Matron
Vault Movement Belize's Podding
Frigga's Little's Burped Accredited
Rigorously Orthopedists Osman Fibbers
Aussie Interfered Baylor Sulfates
Saxes Roy's Foreclosure Nobel's
Archivist's Streetcar Jellybean Irisher
Oculist Worm's Elysian Flatiron's
Pluses Subjunctives Topology Mondale
Defrays Elude Opaquest Schnauzers
Snider Creek's Hair's Baldwin's
Nonscheduled Ban's Laundresses Selfless
Versions Ungava's Cello Downturn
Cobblestone's Bolstered Cardboard Alluvium
Prospecting Eyewitness's Aladdin Zoo's
Beadiest Levitate Peseta's Debriefed
Outtake's Ironing Confirming Gown's
Havana's Vouched Golly's Rooster
Marquesses Hedge Noses Cripples
Sanction Es Catechises Timeworn
Dollops Neat Sobs Biosphere
Restful Kuibyshev's Limp's Beautifully
Grill Castings Cordoba Forgetfulness's
Overdrawing Hoaxed Heralding Bibliophiles
Plumbers Alcyone's Ostracizing Mendoza
Huddled Uninstallable Ovulation Prophetic
Telethons Regrettably Teletype Zippering
Showpiece Merging Litanies Kisangani
Brusqueness Neighborhood's Penultimates Recluse's
Floodlight Bruin Errors Wiley
Flurrying Confederation Blubbered Naturalist's
Sprinkles Scipio Trinity Frankfurter's
Incompatible's Jingoists Redoes Illegal
Eider's Coworker's Hockney Door's
Sumo's Hancock Wolfe Set's
Cantabrigian's Gaits Rorschach's Shimmied
Larynxes Factor Personifications Soothes
Barlow Angering Plutarch Stymie
Jealous Turboprop Tedium's Smear
Rushed Prepossessed Suggestion's Ricocheting
Decimated Waters's Tune's Tussock
Slew Snowy Slumdogs Observatories
Unmoral Crewed Muskrats Goodbye's
Adjoins Attendances Gangland's Creaked
Emaciation Araceli Mountaineer's Forked
$
```
