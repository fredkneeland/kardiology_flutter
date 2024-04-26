import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

final series_colors = {
  1: {"red": 59, "green": 137, "blue": 226},
  2: {"red": 112, "green": 211, "blue": 87},
  3: {"red": 250, "green": 247, "blue": 97},
};

final Series = {
  1: "Attributes of God",
  2: "Jesus Christ",
  3: "Holy Spirit",
};

final Titles = {
  1: {
    1: "God is Sovereign ",
    2: "God is Holy",
    3: "God is Great",
    4: "God is Righteous ",
    5: "God is Immutable",
    6: "God is Omnipotent",
    7: "God is Omniscient",
    8: "God is Omnipresent ",
    9: "God is Eternal",
    11: "God is Faithful ",
    10: "God is Incomprehensible",
    12: "God is Loving",
    13: "God is Merciful",
    14: "God is Gracious",
    16: "God is Good ",
    15: "God is Forgiving ",
    17: "God is Longsuffering ",
    18: "God is Wrathful ",
    19: "God is Jealous",
    20: "God is Just",
    21: "God is Wise ",
    22: "God is Truth",
    23: "God is our Advocate ",
    24: "God is Creator ",
    25: "God is Yahweh ",
    26: "God is Yahweh Rapha",
    27: "God is Yahweh Raah",
    28: "God is Yahweh Shalom ",
    29: "God is Yahweh Jireh",
    30: "God is Adonai ",
    31: "God is El Elyon"
  },
  2: {
    1: "Jesus is God, the Express Image & Fullness of God",
    2: "Jesus is Preeminent",
    3: "Jesus is the Son of God",
    4: "Jesus is Immanuel",
    5: "Jesus is the Heir of All Things",
    6: "Jesus is God’s Servant ",
    7: "Jesus is the Head of the Body (Church)",
    8: "Jesus is the Bridegroom of the Church",
    9: "Jesus is the Chief Cornerstone, Capstone & Living Stone",
    10: "Jesus is the Scapegoat ",
    11: "Jesus is the Sacrificial Sin Offering",
    12: "Jesus is the Lamb of God ",
    13: "Jesus is the Great High Priest",
    14: "Jesus is the Interceding High Priest ",
    15: "Jesus Gives Aid to those Tested by Adversity",
    16: "Jesus is the Mediator of the New Covenant ",
    17: "Jesus is the Propitiation",
    18: "Jesus is the Reconciler",
    19: "Jesus is the Redeemer & the Ransom",
    20: "Jesus is the Author and Finisher of our Salvation",
    21: "Jesus is the Messiah",
    22: "Jesus is Savior",
    23: "Jesus is the Bread of Life",
    24: "Jesus is the Light of the World",
    25: "Jesus is the Door—the Way of Salvation",
    26: "Jesus is the Good, Great, & Chief Shepherd",
    27: "Jesus is the Resurrection and the Life",
    28: "Jesus is the Vine",
    29: "Jesus is the Word ",
    30: "Jesus is Lord and King",
    31: "Jesus is the Judge"
  },
  3: {
    1: "The Holy Spirit is God",
    2: "The Holy Spirit is Creator",
    3: "The Holy Spirit Inspired the Word of God ",
    4: "The Holy Spirit Empowered Jesus’ Conception",
    5: "The Holy Spirit was Active in Christ’s Ministry",
    6: "The Holy Spirit was Sent from God and Jesus",
    7: "The Holy Spirit is the Promise of the Father",
    8: "The Holy Spirit Convicts",
    9: "The Holy Spirit Regenerates",
    10: "The Holy Spirit Baptizes Believers",
    11: "The Holy Spirit Indwells Believers",
    12: "The Holy Spirit Seals Believers",
    13: "The Holy Spirit Gives Gifts to Believers",
    14: "The Holy Spirit Bears Witness of God’s Children",
    15: "The Holy Spirit Intercedes for Believers",
    16: "The Holy Spirit Gives Discernment",
    17: "The Holy Spirit Sanctifies Believers",
    18: "The Holy Spirit Empowers Believers",
    19: "The Holy Spirit Fills Believers ",
    20: "The Holy Spirit is at Odds with the Flesh",
    21: "The Holy Spirit can be Sinned Against",
    22: "Believers are to Walk in the Holy Spirit",
    23: "The Holy Spirit Produces Fruit: LOVE",
    24: "The Holy Spirit Produces Fruit: JOY",
    25: "The Holy Spirit Produces Fruit: PEACE",
    26: "The Holy Spirit Produces Fruit: PATIENCE",
    27: "The Holy Spirit Produces Fruit: KINDNESS",
    28: "The Holy Spirit Produces Fruit: GOODNESS",
    29: "The Holy Spirit Produces Fruit: FAITHFULNESS",
    30: "The Holy Spirit Produces Fruit: MEEKNESS",
    31: "The Holy Spirit Produces Fruit: SELF-CONTROL "
  },
};

final Descriptions = {
  1: {
    1: """God rules the entire universe. His perfect plans and purposes are always accomplished and can never be thwarted by anyone or anything, including evil. His supreme rule is always consistent with the totality of His divine character. """,
    2: """God is unlike His creation. He is set apart and altogether different from anyone or anything. There is no one like Him.""",
    3: """God is beyond comparison to anything our minds can imagine. He is grand, mighty, and majestic beyond measure and comprehension. """,
    4: """All that God is and all that He does are consistent with the purity of His divine nature. He is infinite in moral perfection, never doing wrong or evil. Nothing He does is outside His goodness and justice.""",
    5: """God’s character remains the same throughout all time; it is constant. The perfection of His character has never and will never change.""",
    6: """Omnipotent (all + able) There is nothing that is beyond God’s mighty power and ability. He is fully capable of accomplishing anything in accordance with the purity of His will. """,
    7: """Omniscient (all + knowing) God possesses perfect knowledge of all aspects of all things throughout all time. Nothing is outside of His infinite knowledge. """,
    8: """Omnipresent (all + present) God is present in all places at all times. He is present everywhere whether His presence is acknowledged or not. """,
    9: """God has been, is, and always will be. His existence precedes His creation. He will never cease to exist in the fullness of His being. """,
    10: """God is so different from man that His infinite ways cannot be completely understood. Mankind’s knowledge of God is limited, not because of lack of revelation, but because man’s mind is unable to fully understand His complete personhood. """,
    11: """God is steadfast in character. He alone remains true to His Word by keeping every promise, prophecy, and proclamation. His tender care is constant; He will never abandon or disown those who are His. """,
    12: """God loves. Love is the very essence of His being; He is love. It is His nature to desire the highest good for His creation. His unfailing love is displayed in word and deed and was ultimately demonstrated by His provision of salvation for His beloved. """,
    13: """God, through His mercy, may choose to grant sinners a release from all or some of the consequences and misery of their sinful choices. God’s mercy, granted through the blood of Jesus, is motivated by His great love. """,
    14: """God imparts His grace through Jesus’ blood by bestowing favor and blessing to those who are guilty and undeserving. """,
    15: """Through the act of His free will and in perfect accordance with His holy justice that was satisfied by the death of Christ, God chooses to not take note of the sin of His beloved chosen ones. Therefore, His beloved chosen ones stand holy and blameless before Him through the precious blood of Jesus. """,
    16: """God’s nature and very essence are entirely good, and He always acts in accordance with His goodness. His works are always beneficial for His creation. God never does wrong, nor does He mistreat His creation through evil or injustice; He always does good.""",
    17: """God is not given to hasty anger. Instead, He is patiently enduring toward people, giving them all opportunity to turn toward His ways. """,
    18: """God is angry at sin. All sin directly opposes His moral perfection and therefore must be punished. Jesus suffered God’s wrath while on the cross, although mankind justly deserves this wrath. """,
    19: """God alone is worthy of worship, and He is justly angered by the worship of anyone but Himself.""",
    20: """God’s justice is completely consistent with His righteousness. He judges sin and blesses obedience. God’s holy justice was satisfied when His wrath was poured out on Jesus. """,
    21: """Every single act of God, everywhere and throughout all time, is orchestrated in accordance with His perfect knowledge and goodness. He never acts in folly, ignorance, or error. """,
    22: """The essence of God’s being is the standard for truth. His words and deeds always portray absolute truth. He never acts in falsehood.""",
    23: """Through Jesus’ blood our sins are atoned for and we have unhindered access to the Father. Not only can we talk to the Father, but Jesus Himself and the Holy Spirit also intercede with the Father on our behalf. """,
    24: """By His very words God called into existence everything from nothing. Through perfect wisdom and knowledge He has formed all that is in order to reflect His glory. """,
    25: """This is the personal and proper name for God, meaning “I Am He Who Is and Will Be.” God is self existent and depends on nothing and no one for His existence. His name emphasizes His loyalty to who He says He is and what He says He does. (Our Bibles usually show God’s name in all capitals, i.e., LORD.) """,
    26: """“The LORD Who Heals.” Rapha (“raw-faw”) means to mend or repair, to thoroughly make whole. He heals our bodies, but more importantly, He heals and restores our souls. God will eventually restore all things that have suffered as a result of sin.""",
    27: """“The LORD Is My Shepherd.” Raah (“raw-aw'”) means to tend a flock, to associate with as a friend. The Lord constantly cares for and tends to His sheep. He lovingly seeks them and leads them in paths for their good. The sheep are dependent upon His unfailing care. """,
    28: """“The LORD Is Peace.” Shalom (“shaw-lome”) means peace, tranquility, and security. God initiated a peace treaty with us, His enemies. Believers in Jesus have been reconciled to God through the blood of Jesus Christ. We then can rest secure that He is our peace and there is nothing to fear. """,
    29: """“The LORD Who Sees Will Provide.” Jireh (from Raah) means to see, look at, perceive. God has already foreseen all our needs—past, present, and future—and has graciously provided for them. God is willing and able to meet every need of His beloved.""",
    30: """Adonai means Lord, Master, Owner, or Ruler. The lordship of God means His total possession of those whom He has purchased, thus requiring their total submission to Him. """,
    31: """“The God Most High.” El means God; Elyon means elevated, high, and exalted. God is the sovereign ruler over the entire universe. He has absolute supremacy over all things. There is nothing that can happen without His permission or foreordained plan."""
  },
  2: {
    1: """Jesus is the physical and visible representation of God Himself. When man sees and knows Jesus, he sees and knows God. His essence and character are a complete, accurate, and perfect expression of God because Jesus, as a member of the Godhead, is Himself deity.""",
    2: """Jesus is the prōtos: He is first, having preeminence over all. He is the chief that holds the greatest rank and the highest office. He is supreme above all and exalted over all. Nothing is above Him and no one ranks higher. There is no power or authority above Jesus Christ.""",
    3: """Jesus called God His Father (John 5:18) and the Father called Jesus His Son (Matt. 3:17). He is the unique Son, the only begotten Son of the Father (John 3:16), born fully man and fully God.""",
    4: """Jesus partook of flesh and blood (Heb. 2:14), was made like us (Heb. 2:17), and lived among us (John 1:14). He is God with us—the God who abides with mankind.""",
    5: """God the Father has granted that Jesus the Son be the heir of everything. God has also granted that His adopted sons, believers in Jesus, are joint heirs alongside Jesus.""",
    6: """God the Father sent Jesus His Son as a servant to bless mankind. Jesus did not cling to His prerogatives of deity but gave up His right to be served and became a servant (Phil. 2:6-7). He obeyed the Father and submitted to His plans, not speaking on His own authority, but speaking only what God commanded Him (John 12:49). """,
    7: """God the Father appointed Jesus the Son as the Head of the body, the Church. Jesus is the exalted leader and ruler of the Church and the One to whom the Church is subject. His intimacy with and love for the body compels His tender care for her. He nourishes and cherishes the body in order to produce growth in purity and holiness that the body may be a glorious reflection of Himself.""",
    8: """Jesus purchased the Church (His bride) with the bride-price of His own life and blood (I Cor. 6:19-20; I Pet. 1:18-19). In Jewish tradition, after the bride-price was paid, the groom would return home to prepare a dwelling for his bride (John 14:2-3). In turn, the bride would prepare her wedding garments in anticipation of her groom’s return. The bridegroom’s return was announced with the sound of a shofar (trumpet, I Thessalonians 4:16-17) followed by the wedding ceremony, the consummation of the marriage, and the week-long wedding feast.""",
    9: """Jesus is the stone, chosen by God, upon which the church is built. He is the foundation upon which Jews and Gentiles are united into one household. He is also the stone of stumbling, rejected by those who do not believe on Him. (cf. Matt. 21:42; Rom. 9:32-33; I Pet. 2:4-8.)""",
    10: """Jesus is the scapegoat—the goat of departure. Levitical law required that on the Day of Atonement the High Priest cast lots to select one goat for sacrifice and another as the scapegoat, “to make atonement upon it” (Lev. 16:5-22). The High Priest laid hands on the head of the scapegoat, confessed the iniquities of Israel, symbolically transferring them onto the goat. The goat was then released into the wilderness, representing the nation’s sins departing.""",
    11: """Jesus is the sin offering, selected as a sacrifice “for the people” (Lev. 16:5-28). Levitical law required that on the Day of Atonement the High Priest sprinkle the blood of the sin offering on the mercy seat in the Holy Place and on the altar to make atonement for sin. Afterwards, the remains of the sin offering were burned outside the camp. """,
    12: """Jesus is the Passover (Paschal) Lamb, the Lamb of God. The Passover (pāsach) is an annual feast commemorating the LORD’s passing over the houses of the children of Israel in Egypt, but killed the firstborn of the Egyptians (Exodus 12). Pāsach means a sparing or an exemption. The Israelites were spared God’s judgment when they put the blood of a yearling lamb, without blemish, on the doorposts of their home. Jesus, the Lamb, suffered and shed His blood on the day of Passover.""",
    13: """God the Father appointed Jesus the Son as Great High Priest. His role as High Priest is a marvelous and grand display of both His deity and His humanity (Heb. 2:17). Christ’s role as High Priest is multifaceted and joins attributes such as eternal, immutable, faithful, and holy, to His work as interceder, helper, sympathizer, redeemer, reconciler, and mediator of the New Covenant.""",
    14: """Jesus is the living, interceding High Priest Who talks with the Father on our behalf. He appears before God’s throne, interceding for our eternal salvation, which was obtained at His own expense. His pleading prevails over the enemy’s accusations against us (Rev. 12:10).""",
    15: """The Greek word for aid in Hebrews 2:18 is boēthéō, from boē, meaning a cry or exclamation, and théō, meaning to run. This word literally means to run at a cry. Jesus hears the cries of the sufferer and compassionately runs alongside to uphold, assist, and help. The opposite of boēthéō is to frustrate or hinder. Jesus will never add hindrance or frustration to our suffering.""",
    16: """A mediator intervenes to unite two parties and bring about an agreement between them. Jesus’ death paid the debt owed by the offender (man) to the Offended Party (God), thus instituting a new agreement (Covenant) between these two parties. (See I Tim 2:5-6.) The New Covenant supersedes The Old Covenant.""",
    17: """The blood sacrifice of Jesus Christ satisfied and appeased the Father’s wrath against sinners. Only a righteous sacrifice could satisfy God’s holy justice. """,
    18: """To reconcile means to bring a change in relationship from one of hostility and enmity to one of peace. Jesus’ death was the catalyst to bring reconciliation to the relationship between God and mankind. """,
    19: """Jesus is both the redeemer (purchaser) and the ransom (price paid). He is the redeemer in that He purchased mankind out of slavery to sin, thus freeing man from the bondage of death. He is the ransom in that His blood was the actual price paid for the purchase of mankind. """,
    20: """Jesus is the author of our salvation in that He caused, originated, and founded it; He is the very source of salvation. Jesus is the finisher of our salvation in that He completed or perfected our salvation through His obedience to the Father and subsequent suffering unto death.""",
    21: """Jesus is the Messiah, the Anointed One for whom the Jews were waiting. In Bible times prophets, priests, and kings were anointed, which represented being set apart for God’s service. Jesus was anointed by Mary prior to His death (John 12:3-8), and He claimed to be the Anointed One from Hebrew prophecy (Luke 4:17-21; Is. 61:1).""",
    22: """Jesus is the One who saves. God the Father sent Jesus the Son to rescue and deliver the world from the penalty of sin, which is death. Jesus the Savior offers life, immortality, repentance, and forgiveness.""",
    23: """God the Father sent Jesus the Son from heaven to earth as the bread of life. The Father sent this Bread that mankind may never hunger, but have eternal and life-giving sustenance. Jesus said His flesh and body was the bread that He willingly gave so that mankind might live.""",
    24: """Jesus is the light of the world, offering both light and life to those who believe in Him. The Light allows mankind to become “sons of light” and rescues them from being overtaken by the darkness of evil.""",
    25: """The “door” was the only entrance and exit of the sheep pen. The door allowed the sheep to access the security inside the pen as well as the pasture outside the pen. Metaphorically, Jesus is the “door” to God, offering sole access and the only means by which mankind can approach God the Father for salvation.""",
    26: """Jesus is called the Good Shepherd, the Great Shepherd (Heb. 13:20), and the Chief Shepherd (I Peter 5:4). In biblical times the shepherd tenderly cared for and nourished his own sheep. The sheep knew their shepherd’s voice and the shepherd personally knew each of his sheep. The shepherd led his sheep from place to place, and protected his sheep with his own life. """,
    27: """Jesus was victorious over death and rose from the dead, becoming a symbol of the first of many to be resurrected to eternal life (I Cor. 15:20). The Father gave Jesus the authority to resurrect every human being from the grave and dispense judgment of either eternal life or eternal punishment. Only through Christ can one be resurrected to eternal life (John 14:6; I Cor. 15:21).""",
    28: """Jesus is the vine; true believers are the branches of the vine. The relationship between the vine and the branches is inseparable. It is a relationship of intimate and complete union. The branch receives life and continual nourishment from the vine so that it may thrive and produce the kind of fruit that is expected from that vine.""",
    29: """Jesus is the Word: lógos, to speak. He came forth from God the Father to speak on His behalf. Jesus came to earth to represent God and to speak His truth in order that mankind may come to know God.""",
    30: """Jesus is mighty and powerful over all. He is owner and possessor of everything. He is the supreme Lord and Sovereign God over the entire universe.""",
    31: """God the Father has ordained Jesus to judge the world (John 9:39). He shall judge the living and the dead at His appearing and His kingdom (II Tim 4:1). The wicked are judged for eternal punishment and believers for eternal rewards. Jesus’ judgment will be executed in faithfulness, righteousness, and according to the will of the Father (John 5:30)."""
  },
  3: {
    1: """The Holy Spirit is not an “it,” not a “force,” and not a “thing.” The Holy Spirit is deity. He is one of the three persons of the triune Godhead. He is God, having the very same essence, attributes, and characteristics of the other members of the Godhead. The Holy Spirit serves a varying role than that of the Father and the Son. """,
    2: """The Holy Spirit, as a member of the triune Godhead, is Creator. He used His power to bring into existence everything from nothing.""",
    3: """The Holy Spirit initiated and prompted the human authors who penned the words of Scripture. His power enlightened and breathed out the very wisdom of God to accurately reveal His Word to mankind.""",
    4: """The Holy Spirit produced and empowered the human conception of God the Son. His power rested upon Mary, causing her to supernaturally conceive the God-Man, Jesus.""",
    5: """Jesus’ earthly ministry was empowered by the Holy Spirit, as was predicted in Hebrew Scripture (Isaiah 11:1-2, 42:1, 61:1). The Spirit descended and remained upon Jesus at His baptism (Matthew 3:16; Luke 3:21-22; John 1:32), filling Him (Luke 4:1) and anointing Him to preach and heal (cf. Matthew 12:17; Luke 4:17-21).""",
    6: """The Holy Spirit came from heaven. He was sent to earth by God the Father at the request of Jesus the Son. He came to testify of and glorify Jesus and to help believers, enabling them to live righteously.""",
    7: """Hebrew prophecy recorded God’s promise to send the Holy Spirit (Ezekiel 36:27, 37:14; Joel 2:28). The Father’s faithful promise was fulfilled when the Holy Spirit was sent to indwell believers at Pentecost—50 days after the Passover when Jesus was crucified (Acts 2:1-4). (See also Ephesians 1:13-14.)""",
    8: """The Holy Spirit reproves mankind of his unbelief. He reveals the ways in which man has wronged God and departed from His Truth. He attests that mankind is deserving of eternal judgment by a just and righteous God.""",
    9: """The Holy Spirit gives eternal life (John 6:63; II Corinthians 3:6). He causes believers to be “born again” (John 3:5-8) through His indwelling power.""",
    10: """The Holy Spirit baptizes believers, placing them into the body of Christ at the moment of salvation. The members of the body of Christ are united as one body called the “church,” and Jesus Christ is the exalted Head of the church (Eph. 1:22-23; Col. 1:18, 2:19). The Holy Spirit’s baptism was predicted by Jesus (Matt. 3:11; Mark 1:8; Acts 1:5).""",
    11: """The Holy Spirit lives inside the physical body of believers, indwelling them at the moment of salvation, thus signifying God’s ownership of them. Jesus foretold the Spirit’s indwelling in John 14:17.""",
    12: """The indwelling Holy Spirit seals the believer at the moment of salvation. The sealing of the Holy Spirit confirms the purchase of salvation and guarantees our future inheritance. """,
    13: """The Holy Spirit gives spiritual gifts to the members of the body of Christ, granting abilities that are supernaturally empowered. The purpose of spiritual gifts is to strengthen, edify, encourage, and build up the body of Christ; they are for the benefit of all. These gifts are given to believers at the moment of salvation. """,
    14: """The Holy Spirit’s indwelling certifies that we belong to God. His presence is a comforting assurance that exclaims within our own spirit that we are God’s children.""",
    15: """The Holy Spirit petitions and prays to the Father on our behalf. He is an advocate who pleads for us according to the will of the Father. The Spirit can intercede according to the will of God because He knows the things of God (I Corinthians 2:10-11).""",
    16: """The Holy Spirit gives discernment regarding evil and deception. The Spirit of truth (John 14:17) uses the Word of God to enable believers to stand firm by discriminating between good and evil, truth and lies. (See also Hebrews 5:12-14.)""",
    17: """The Holy Spirit sanctifies believers. He sets us apart to live holy lives, leads us to put to death sinful deeds, and changes us into the image of Jesus Christ. """,
    18: """The Holy Spirit empowers believers, granting strength to live in a manner that is not possible by mere human ability.""",
    19: """Believers are commanded to be filled with the Holy Spirit. Being “filled” means to make full, supply abundantly, and impart richly. We are filled with the Holy Spirit when we let the Word of God dwell richly in our hearts (cf. Colossians 3:16). (See also Ephesians 6:17.)""",
    20: """The Spirit and the flesh are both at war within us. This adversarial relationship creates a ceaseless battle in our hearts and minds. The flesh and the Spirit will never be at peace with each other. However, the power of the indwelling Holy Spirit subdues the flesh. Thus, we must avail ourselves of His power as a spiritual weapon against sin.""",
    21: """The Holy Spirit is God and He can be sinned against. Scripture records these sins against the Holy Spirit: Grieving Him (Ephesians 4:30), quenching Him (I Thessalonians 5:19), blaspheming Him (Mark 3:29), insulting Him (Hebrews 10:29), lying to Him (Acts 5:3-4), and resisting Him (Acts 7:51). Believers are specifically commanded not to grieve or quench the Holy Spirit. To grieve the Holy Spirit is to cause Him sorrow and sadness because of indwelling sin. Quenching the Holy Spirit is allowing sin to hinder and stifle His influence, thus inhibiting His power to yield righteous fruit. """,
    22: """We are to walk in the power of and strive after the things of the Spirit, bearing the fruit of the Spirit (Galatians 5:22-23). We can choose to avail ourselves of the power of the Spirit or, sadly, we can choose to pursue the desires of the flesh.""",
    23: """Love (Galatians 5:22-23) is a benevolence and goodwill toward others that is produced by the Holy Spirit. It is a deliberate affection and a friendly regard toward God and man that displays itself in purposeful acts of sacrifice and kindness. Contrary to love are anger, impatience, bitterness, and envy.""",
    24: """Joy (Galatians 5:22-23) is a gladness of heart produced by the Holy Spirit. Joy permeates one’s disposition despite trial, heartache, or pain. It is an attitude of spirit that is fixed upon eternal glories and heavenly blessings, so much so that the sorrows of earth do not cause despair of soul. A joyful heart is a thankful heart. Contrary to joy are anger, despair, anxiety, and envy.""",
    25: """Peace (Galatians 5:22-23) is a contented state of heart produced by the Holy Spirit. It is a tranquility of being that is not dependent upon external circumstances. Peace embraces the very goodness of God in every situation and demonstrates a spirit of thankfulness and rest. Contrary to peace are anxiety, fear, envy, anger, and despair.""",
    26: """Patience or longsuffering (Galatians 5:22-23), is forbearance shown toward others. It is a merciful restraint produced by the Holy Spirit that does not retaliate or give way to anger. Patience is a love for others that shows self-control, even when wronged. Contrary to patience are anger, wrath, pride, selfishness, and bitterness. """,
    27: """Kindness (Galatians 5:22-23) is a pervasive spirit of gentleness and servanthood that is shaped and molded by the Holy Spirit’s indwelling power. It is motivated by sincere love for others. Kindness is similar to goodness, but goodness is the act of good works whereas kindness is the heart attitude behind the good works. Contrary to kindness are anger, bitterness, selfishness, and pride. """,
    28: """Goodness (Galatians 5:22-23) is an active expression of benevolence toward others as produced by the Holy Spirit. It is a love that motivates someone to serve others and help human need. Goodness is similar to kindness, but kindness is the heart attitude behind the good works whereas goodness is the act of good works. Goodness does manifest itself in gentle correction of others, for their benefit. Contrary to demonstrating goodness is to do evil or harm.""",
    29: """The word for “faithfulness” in Galatians 5:22 means to “win over” or “to persuade.” Faith, or faithfulness, as produced by the Holy Spirit, is a firm persuasion and conviction. It is a belief and confidence in the person of God and His revealed Word such that it brings forth holiness, obedience, and good works in a person’s life. Contrary to faithfulness are unbelief, disobedience, and ungodliness.""",
    30: """Meekness (Galatians 5:22-23), also translated “gentleness,” is primarily a response to God. It is a state of heart that not only acknowledges God’s sovereign rule, but embraces His sovereign rule as good. A person with meekness does not blame God for undesirable circumstances, nor does he become angry with God when he does not get his way. Meekness must come from the power of the Holy Spirit. Contrary to meekness are despair, anger, wrath, impatience, anxiety, fear, and envy. """,
    31: """Self-control (Galatians 5:22-23), which is often translated “sober”, is a sober-mindedness that gives thought before acting. Self-control, which is produced by the Holy Spirit, gives way to godly desires rather than sinful desires. A person with self-control looks to future and eternal realities rather than indulging immediate sinful impulses. """
  },
};

final verse_info = {
  1: {
    1: [
      {
        "Reference": "Job 42:2",
        "Verse":
            """I know that You can do everything, and that no purpose of Yours can be withheld from You."""
      },
      {
        "Reference": "Psalm 33:11",
        "Verse":
            """The counsel of the LORD stands forever, the plans of His heart to all generations.""",
      },
      {
        "Reference": "Daniel 4:35",
        "Verse":
            """All the inhabitants of the earth are reputed as nothing; He does according to His will in the army of heaven and among the inhabitants of earth. No one can restrain His hand or say to Him, ‘What have You done?’ """,
      }
    ],
    2: [
      {
        "Reference": "Exodus 15:11",
        "Verse":
            """Who is like You, O LORD, among the gods? Who is like You, glorious in holiness, fearful in praises, doing wonders?""",
      },
      {
        "Reference": "Isaiah 6:3",
        "Verse":
            """And one cried to another and said: “Holy, Holy, Holy, is the LORD of hosts; the whole earth is full of His glory!”""",
      },
      {
        "Reference": "Revelation 4:8",
        "Verse":
            """ And the four living creatures, each having six wings, were full of eyes around and within. And they do not rest day or night saying, “HOLY, HOLY, HOLY LORD GOD, ALMIGHTY, WHO WAS AND IS AND IS TO COME.” """,
      }
    ],
    3: [
      {
        "Reference": "Deuteronomy 3:24",
        "Verse":
            """‘O Lord GOD, You have begun to show Your servant Your greatness and Your mighty hand, for what god is there in heaven or on earth who can do anything like Your works, and Your mighty deeds?’""",
      },
      {
        "Reference": "Job 37:5",
        "Verse":
            """God thunders marvelously with His voice; He does great things which we cannot comprehend.""",
      },
      {
        "Reference": "Psalm 104:1",
        "Verse":
            """Bless the LORD, O my soul! O LORD my God, You are very great; You are clothed with honor and majesty.""",
      }
    ],
    4: [
      {
        "Reference": "Psalm 11:7 ",
        "Verse":
            """For the LORD is righteous, He loves righteousness; His countenance beholds the upright.""",
      },
      {
        "Reference": "Psalm 33:4-5",
        "Verse":
            """For the word of the LORD is right, and all His work is done in truth. He loves righteousness and justice; the earth is full of the goodness of the LORD.""",
      },
      {
        "Reference": "Psalm 145:17",
        "Verse":
            """The LORD is righteous in all His ways, gracious in all His works.""",
      }
    ],
    5: [
      {
        "Reference": "Malachi 3:6a",
        "Verse": "For I am the LORD, I do not change.",
      },
      {
        "Reference": "Hebrews 1:10-12",
        "Verse":
            """And “You, LORD, in the beginning laid the foundation of the earth, and the heavens are the work of Your hands; They will perish, but You remain; and they will all grow old like a garment; Like a cloak You will fold them up, and they will be changed. But You are the same, and Your years will not fail.”""",
      },
      {
        "Reference": "Hebrews 13:8",
        "Verse": """Jesus Christ is the same yesterday, today, and forever.""",
      }
    ],
    6: [
      {
        "Reference": "Joshua 4:24",
        "Verse":
            """. . . that all the peoples of the earth may know the hand of the LORD, that it is mighty, that you may fear the LORD your God forever.""",
      },
      {
        "Reference": "Psalm 93:4 ",
        "Verse":
            """The LORD on high is mightier than the noise of many waters, than the mighty waves of the sea.""",
      },
      {
        "Reference": "Jeremiah 32:17, 27",
        "Verse":
            """Ah, Lord GOD! Behold, You have made the heavens and the earth by Your great power and outstretched arm! There is nothing too hard for You. (27) “Behold, I am the LORD, the God of all flesh. Is there anything too hard for Me?”""",
      }
    ],
    7: [
      {
        "Reference": "Psalm 139:1-6",
        "Verse":
            """O LORD, You have searched me and known me. You know my sitting down and my rising up; You understand my thought afar off. You comprehend my path and my lying down, and are acquainted with all my ways. For there is not a word on my tongue, but behold, O LORD, You know it altogether. You have hedged me behind and before, and laid Your hand upon me. Such knowledge is too wonderful for me; it is high, I cannot attain to it.""",
      },
      {
        "Reference": "Proverbs 5:21",
        "Verse":
            """For the ways of man are before the eyes of the LORD, and He weighs all his paths.""",
      }
    ],
    8: [
      {
        "Reference": "Psalm 46:1",
        "Verse":
            """God is our refuge and strength, a very present help in trouble.""",
      },
      {
        "Reference": "Psalm 139:7-10",
        "Verse":
            """Where can I go from your Spirit? Or where can I flee from Your presence? If I ascend to heaven, You are there; if I make my bed in hell, You are there. If I take the wings of the morning, and dwell in the uttermost parts of the sea, even there Your hand shall lead me, and Your right hand shall hold me.""",
      }
    ],
    9: [
      {
        "Reference": "Psalm 90:1-2",
        "Verse":
            """Lord, You have been our dwelling place in all generations. Before the mountains were brought forth or ever You had formed the earth and the world, even from everlasting to everlasting, You are God.""",
      },
      {
        "Reference": "Lamentations 5:19",
        "Verse":
            """You, O LORD, remain forever; Your throne from generation to generation.""",
      },
      {
        "Reference": "I Timothy 1:17",
        "Verse":
            """Now to the King eternal, immortal, invisible, to God who alone is wise, be honor and glory forever and ever. Amen.""",
      }
    ],
    10: [
      {
        "Reference": "Ecclesiastes 11:5",
        "Verse":
            """As you do not know what is the way of the wind or how the bones grow in the womb of her who is with child, so you do not know the works of God who makes all things.""",
      },
      {
        "Reference": "Isaiah 55:8-9",
        "Verse":
            """“For My thoughts are not your thoughts, nor are your ways My ways,” says the LORD. “For as the heavens are higher than the earth, so are My ways higher than your ways, and My thoughts than your thoughts.”""",
      },
    ],
    11: [
      {
        "Reference": "Isaiah 25:1",
        "Verse":
            """O LORD, You are my God. I will exalt You, I will praise Your name, for You have done wonderful things; Your counsels of old are faithfulness and truth.""",
      },
      {
        "Reference": "II Timothy 2:13",
        "Verse":
            """If we are faithless, He remains faithful; He cannot deny Himself.""",
      },
      {
        "Reference": "Hebrews 10:23",
        "Verse":
            """Let us hold fast the confession of our hope without wavering, for He who promised is faithful.""",
      }
    ],
    12: [
      {
        "Reference": "Jeremiah 31:3",
        "Verse":
            """The LORD has appeared of old to me, saying: “Yes, I have loved you with an everlasting love; therefore with lovingkindness I have drawn you.”""",
      },
      {
        "Reference": "I John 3:1a, 4:8-9",
        "Verse":
            """Behold what manner of love the Father has bestowed on us, that we should be called children of God. (4:8-9) He who does not love does not know God, for God is love. In this the love of God was manifested toward us, that God has sent His only begotten Son into the world, that we might live through Him.""",
      },
    ],
    13: [
      {
        "Reference": "Lamentations 3:22-23",
        "Verse":
            """Through the LORD’s mercies we are not consumed, because His compassions fail not. They are new every morning; great is Your faithfulness.""",
      },
      {
        "Reference": "Ephesians 2:4-5",
        "Verse":
            """But God, who is rich in mercy, because of His great love with which He loved us, even when we were dead in trespasses, made us alive together with Christ (by grace you have been saved).""",
      },
    ],
    14: [
      {
        "Reference": "Psalm 116:5 ",
        "Verse":
            """Gracious is the LORD, and righteous; yes, our God is compassionate.""",
      },
      {
        "Reference": "Isaiah 30:18",
        "Verse":
            """Therefore the LORD longs to be gracious to you, and therefore He waits on high to have compassion on you. For the LORD is a God of justice; how blessed are all those who long for Him.""",
      },
      {
        "Reference": "Ephesians 2:6-7",
        "Verse":
            """And [God] raised us up together, and made us sit together in the heavenly places in Christ Jesus, that in the ages to come He might show the exceeding riches of His grace in His kindness toward us in Christ Jesus.""",
      }
    ],
    15: [
      {
        "Reference": "Micah 7:18-19",
        "Verse":
            """Who is a God like You, pardoning iniquity and passing over the transgression of the remnant of His heritage? He does not retain His anger forever, because He delights in mercy. He will again have compassion on us; and will subdue our iniquities. You will cast all our sins into the depths of the sea.""",
      },
      {
        "Reference": "Ephesians 1:4",
        "Verse":
            """. . . He chose us in Him before the foundation of the world, that we should be holy and without blame before Him in love.""",
      }
    ],
    16: [
      {
        "Reference": "Psalm 31:19",
        "Verse":
            """Oh, how great is Your goodness, which You have laid up for those who fear You, which You have prepared for those who trust in You, in the presence of the sons of men!""",
      },
      {
        "Reference": "Nahum 1:7",
        "Verse":
            """The Lord is good, a stronghold in the day of trouble, and He knows those who trust in Him.""",
      }
    ],
    17: [
      {
        "Reference": "Psalm 103:8",
        "Verse":
            """The LORD is merciful and gracious, slow to anger, and abounding in mercy.""",
      },
      {
        "Reference": "Romans 2:4",
        "Verse":
            """Or do you despise the riches of His goodness, forbearance, and longsuffering, not knowing that the goodness of God leads you to repentance?""",
      },
      {
        "Reference": "II Peter 3:9",
        "Verse":
            """The Lord is not slack concerning His promise, as some count slackness, but is longsuffering toward us, not wishing that any should perish but that all should come to repentance.""",
      }
    ],
    18: [
      {
        "Reference": "Jeremiah 10:10",
        "Verse":
            """But the LORD is the true God; He is the living God and the everlasting King. At His wrath the earth will tremble, and the nations will not be able to abide His indignation.""",
      },
      {
        "Reference": "Romans 5:8-9",
        "Verse":
            """But God demonstrates His own love toward us, in that while we were still sinners, Christ died for us. Much more then, having now been justified by His blood, we shall be saved from wrath through Him.""",
      }
    ],
    19: [
      {
        "Reference": "Exodus 34:14",
        "Verse":
            """. . . for you shall worship no other god, for the LORD, whose name is Jealous, is a jealous God.""",
      },
      {
        "Reference": "Deuteronomy 4:24",
        "Verse":
            """For the LORD your God is a consuming fire, a jealous God.""",
      },
      {
        "Reference": "Nahum 1:2",
        "Verse":
            """God is jealous, and the LORD avenges; the Lord avenges and is furious. The LORD will take vengeance on His adversaries, and He reserves wrath for His enemies.""",
      }
    ],
    20: [
      {
        "Reference": "Deuteronomy 32:4",
        "Verse":
            """He is the Rock, His work is perfect; for all His ways are justice; a God of truth and without injustice; righteous and upright is He.""",
      },
      {
        "Reference": "Isaiah 30:18",
        "Verse":
            """Therefore the LORD will wait, that He may be gracious to you; and therefore He will be exalted, that He may have mercy on you. For the LORD is a God of justice; blessed are all those who wait for Him.""",
      },
      {
        "Reference": "Romans 3:26b",
        "Verse":
            """. . . that He might be just and the justifier of the one who has faith in Jesus.""",
      }
    ],
    21: [
      {
        "Reference": "Job 9:3-4",
        "Verse":
            """If one wished to contend with Him, he could not answer Him one time out of a thousand. God is wise in heart and mighty in strength. Who has hardened himself against Him and prospered?""",
      },
      {
        "Reference": "Daniel 2:20",
        "Verse":
            """Daniel answered and said, “Blessed be the name of God forever and ever, for wisdom and might are His.”""",
      },
      {
        "Reference": "Romans 16:27",
        "Verse":
            """to God, alone wise, be glory through Jesus Christ forever, Amen.""",
      }
    ],
    22: [
      {
        "Reference": "Numbers 23:19",
        "Verse":
            """God is not a man, that He should lie, nor a son of man that He should repent. Has He said, and will He not do it? Or has He spoken, and will He not make it good?""",
      },
      {
        "Reference": "John 17:3",
        "Verse":
            """And this is eternal life, that they may know You, the only true God, and Jesus Christ whom You have sent.""",
      },
      {
        "Reference": "I John 5:20",
        "Verse":
            """And we know that the Son of God has come and has given us an understanding, that we may know Him who is true; and we are in Him who is true, in His Son Jesus Christ. This is the true God and eternal life. """,
      }
    ],
    23: [
      {
        "Reference": "Romans 8:26, 34b",
        "Verse":
            """Likewise the Spirit also helps in our weaknesses. For we do not know what we should pray for as we ought, but the Spirit Himself makes intercession for us with groanings which cannot be uttered. (34b) [Christ] is at the right hand of God, who also makes intercession for us.""",
      },
      {
        "Reference": "Hebrews 4:14",
        "Verse":
            """Seeing then that we have a great High Priest who has passed through the heavens, Jesus the Son of God, let us hold fast our confession.""",
      }
    ],
    24: [
      {
        "Reference": "Psalm 146:5-6",
        "Verse":
            """Happy is he who has the God of Jacob for his help, whose hope is in the LORD his God, who made heaven and earth, the sea, and all that is in them; who keeps truth forever.""",
      },
      {
        "Reference": "Colossians 1:16",
        "Verse":
            """For by Him all things were created that are in heaven and that are on earth, visible and invisible, whether thrones or dominions or principalities or powers. All things were created through Him and for Him.""",
      }
    ],
    25: [
      {
        "Reference": "Exodus 3:14",
        "Verse":
            """God said to Moses, “I AM WHO I AM.” And He said, “Thus you shall say to the children of Israel, ‘I AM has sent me to you.’”""",
      },
      {
        "Reference": "Amos 5:8",
        "Verse":
            """He made the Pleiades and Orion; He turns the shadow of death into morning and makes the day dark as night; He calls for the waters of the sea and pours them out on the face of the earth; the LORD is His name.""",
      }
    ],
    26: [
      {
        "Reference": "Deuteronomy 32:39",
        "Verse":
            """Now see that I, even I, am He, and there is no God besides Me; I kill and I make alive; I wound and I heal; nor is there any who can deliver from My hand.""",
      },
      {
        "Reference": "Psalm 103:2-3",
        "Verse":
            """Bless the LORD, O my soul, and forget not all His benefits; who forgives all your iniquities, who heals all your diseases.""",
      },
      {
        "Reference": "Isaiah 53:5",
        "Verse":
            """But He was wounded for our transgressions, He was bruised for our iniquities; the chastisement for our peace was upon Him, and by His stripes we are healed.""",
      }
    ],
    27: [
      {
        "Reference": "Psalm 23:1-3",
        "Verse":
            """The LORD is my shepherd; I shall not want. He makes me to lie down in green pastures; He leads me beside the still waters. He restores my soul; He leads me in the paths of righteousness for His name’s sake.""",
      },
      {
        "Reference": "John 10:14-15",
        "Verse":
            """I am the good shepherd; and I know My sheep, and am known by My own. As the Father knows Me, even so I know the Father, and I lay down My life for the sheep.""",
      }
    ],
    28: [
      {
        "Reference": "Psalm 119:165",
        "Verse":
            """Great peace have those who love Your law, and nothing causes them to stumble.""",
      },
      {
        "Reference": "Isaiah 26:3",
        "Verse":
            """You will keep him in perfect peace, whose mind is stayed on You, because he trusts in You.""",
      },
      {
        "Reference": "Romans 5:1",
        "Verse":
            """Therefore, having been justified by faith, we have peace with God through our Lord Jesus Christ. """,
      }
    ],
    29: [
      {
        "Reference": "Romans 8:32",
        "Verse":
            """He who did not spare His own Son, but delivered Him up for us all, how shall He not with Him also freely give us all things?""",
      },
      {
        "Reference": "II Corinthians 9:8",
        "Verse":
            """And God is able to make all grace abound toward you, that you, always having all sufficiency in all things, may have an abundance for every good work.""",
      },
      {
        "Reference": "Philippians 4:19",
        "Verse":
            """And my God shall supply all your need according to His riches in glory by Christ Jesus.""",
      }
    ],
    30: [
      {
        "Reference": "Deuteronomy 10:17",
        "Verse":
            """For the LORD your God is God of gods and Lord of lords, the great God, mighty, and awesome, who shows no partiality nor takes a bribe.""",
      },
      {
        "Reference": "Psalm 135:5",
        "Verse":
            """For I know that the LORD is great and our LORD is above all gods.""",
      },
      {
        "Reference": "I Corinthians 6:19-20",
        "Verse":
            """Or do you not know that your body is a temple of the Holy Spirit who is in you, whom you have from God, and you are not your own? For you were bought with a price: therefore glorify God in your body and in your spirit, which are God’s.""",
      }
    ],
    31: [
      {
        "Reference": "Psalm 7:17",
        "Verse":
            """I will praise the LORD according to His righteousness, and will sing praise to the name of the LORD Most High.""",
      },
      {
        "Reference": "Psalm 97:9",
        "Verse":
            """For You, LORD, are most high above all the earth; You are exalted far above all gods.""",
      },
      {
        "Reference": "Psalm 113:4-5",
        "Verse":
            """The LORD is high above all nations, and His glory above the heavens. Who is like the LORD our God, who dwells on high?""",
      }
    ]
  },
  2: {
    1: [
      {
        "Reference": "John 10:30, 12:45",
        "Verse":
            """“I and My Father are one.” (12:45) “And he who sees Me sees Him who sent Me.”"""
      },
      {
        "Reference": "Colossians 1:15, 19, 2:9",
        "Verse":
            """He is the image of the invisible God, the firstborn over all creation. (19) For it pleased the Father that in Him all the fullness should dwell. (2:9) For in Him dwells all the fullness of the Godhead in bodily form.""",
      },
      {
        "Reference": "Hebrews 1:3a",
        "Verse":
            """[Jesus is] the brightness of His glory and the express image of His person . . . .""",
      }
    ],
    2: [
      {
        "Reference": "Philippians 2:9-11",
        "Verse":
            """Therefore God also has highly exalted Him and given Him the name which is above every name, that at the name of Jesus every knee should bow, of those in heaven, and of those on earth, and of those under the earth, and that every tongue should confess that Jesus Christ is Lord, to the glory of God the Father.""",
      },
      {
        "Reference": "Colossians 1:18",
        "Verse":
            """And He is the head of the body, the church, who is the beginning, the firstborn from the dead, that in all things He may have the preeminence.""",
      }
    ],
    3: [
      {
        "Reference": "Matthew 26:63b-64a",
        "Verse":
            """And the high priest answered and said to Him, “I adjure You by the living God that You tell us if You are the Christ, the Son of God.” Jesus said to him, “It is as you said.”""",
      },
      {
        "Reference": "John 1:32a, 34",
        "Verse":
            """And John bore witness, saying . . . “And I have seen and testified that this is the Son of God.”""",
      },
      {
        "Reference": "I John 5:20",
        "Verse":
            """And we know that the Son of God has come and has given us an understanding, that we may know Him who is true; and we are in Him who is true, in His Son Jesus Christ. """,
      }
    ],
    4: [
      {
        "Reference": "Isaiah 7:14",
        "Verse":
            """Therefore the Lord Himself will give you a sign: Behold, the virgin shall conceive and bear a Son, and shall call His name Immanuel.""",
      },
      {
        "Reference": "Matthew 1:22-23",
        "Verse":
            """Now all this was done that it might be fulfilled which was spoken by the Lord through the prophet, saying: “Behold, a virgin shall be with child, and bear a Son, and they shall call His name Immanuel,” which is translated, “God with us.”""",
      },
      {
        "Reference": "Matthew 28:20b ",
        "Verse":
            """“. . . and lo, I am with you always, even to the end of the age.”""",
      }
    ],
    5: [
      {
        "Reference": "Psalm 2:8",
        "Verse":
            """Ask of Me, and I will give You the nations for Your inheritance, and the ends of the earth for Your possession.""",
      },
      {
        "Reference": "Hebrews 1:2",
        "Verse":
            """[God] has in these last days spoken to us by His Son, whom He has appointed heir of all things, through whom also He made the worlds.""",
      },
      {
        "Reference": "Romans 8:16-17",
        "Verse":
            """The Spirit Himself bears witness with our spirit that we are children of God, and if children, then heirs-heirs of God and joint heirs with Christ, if indeed we suffer with Him, that we may also be glorified together (cf. Galatians 4:7; Titus 3:7; James 2:5).""",
      }
    ],
    6: [
      {
        "Reference": "Matthew 12:18a",
        "Verse":
            """Behold, My servant whom I have chosen, My Beloved in whom My soul is well pleased.""",
      },
      {
        "Reference": "Matthew 20:28",
        "Verse":
            """Just as the Son of Man did not come to be served, but to serve, and to give His life a ransom for many.""",
      },
      {
        "Reference": "Acts 3:26",
        "Verse":
            """ . . . God, having raised up His Servant Jesus, sent Him to bless you, in turning away every one of you from your iniquities.""",
      }
    ],
    7: [
      {
        "Reference": "Ephesians 1:22-23",
        "Verse":
            """And He put all things under His feet, and gave Him to be head over all things to the church, which is His body, the fullness of Him who fills all in all (cf. Eph. 5:23, 26-27, 29-30; Col. 1:18).""",
      },
      {
        "Reference": "Colossians 2:19",
        "Verse":
            """. . . holding fast to the Head, from whom all the body, nourished and knit together by joints and ligaments, grows with the increase which is from God (cf. Eph. 4:15-16).""",
      }
    ],
    8: [
      {
        "Reference": "Revelation 19:7-8, 9",
        "Verse":
            """Let us be glad and rejoice and give Him glory, for the marriage of the Lamb has come, and His wife has made herself ready. And to her it was granted to be arrayed in fine linen, clean and bright, for the fine linen is the righteous acts of the saints. (9). . . blessed are those who are called to the marriage supper of the Lamb.""",
      }
    ],
    9: [
      {
        "Reference": "Isaiah 28:16",
        "Verse":
            """Therefore thus says the LORD God: “Behold, I lay in Zion a stone for a foundation, a tried stone, a precious cornerstone, a sure foundation; whoever believes will not act hastily.”""",
      },
      {
        "Reference": "Acts 4:11",
        "Verse":
            """This is the stone which was rejected by you builders, which has become the chief cornerstone.""",
      },
      {
        "Reference": "Ephesians 2:20",
        "Verse":
            """having been built on the foundation of the apostles and prophets, Jesus Christ Himself being the chief cornerstone.""",
      }
    ],
    10: [
      {
        "Reference": "Leviticus 16:22a",
        "Verse": """The goat shall bear on itself all their iniquities . . .""",
      },
      {
        "Reference": "Isaiah 53:6, 11b, 12b",
        "Verse":
            """And the Lord has laid on Him the iniquity of us all. (11b) . . . He shall bear their iniquities. (12b) He bore the sin of many.""",
      },
      {
        "Reference": "II Corinthians 5:21",
        "Verse":
            """For He made Him who knew no sin to be sin for us, that we might become the righteousness of God in Him.""",
      },
    ],
    11: [
      {
        "Reference": "Leviticus 16:9",
        "Verse":
            """[he] shall bring the goat on which the LORD’s lot fell, and offer it as a sin offering.""",
      },
      {
        "Reference": "Hebrews 9:12, 13:11-12",
        "Verse":
            """Not with the blood of goats and calves, but with His own blood He entered the Most Holy Place once for all . . . (13:11-12) For the bodies of those beasts, whose blood is brought into the sanctuary by the high priest for sin, are burned outside the camp. Therefore Jesus also, that He might sanctify the people with His own blood, suffered outside the gate.""",
      },
    ],
    12: [
      {
        "Reference": "John 1:29",
        "Verse":
            """. . . John saw Jesus coming toward him, and said, “Behold! The Lamb of God who takes away the sin of the world!”""",
      },
      {
        "Reference": "I Corinthians 5:7",
        "Verse": """For indeed Christ, our Passover, was sacrificed for us.""",
      },
      {
        "Reference": "I Peter 1:19",
        "Verse":
            """[you were redeemed] with the precious blood of Christ, as of a lamb without blemish and without spot.""",
      },
    ],
    13: [
      {
        "Reference": "Hebrews 5:5, 10 ",
        "Verse":
            """So also Christ did not glorify Himself to become High Priest, but it was He who said to Him: “You are My Son, today I have begotten You.” (10) called by God as High Priest . . .""",
      },
      {
        "Reference": "Hebrews 7:24, 26",
        "Verse":
            """But He, because He continues forever, has an unchangeable priesthood. (26) For such a High Priest was fitting for us, who is holy, innocent, undefiled, separate from sinners, and has become higher than the heavens. (See also Hebrews 3:2, 7:28.)""",
      },
    ],
    14: [
      {
        "Reference": "Romans 8:33-34",
        "Verse":
            """Who shall bring a charge against God’s elect? It is God who justifies. Who is he who condemns? It is Christ who died, and furthermore is also risen, who is even at the right hand of God, who also makes intercession for us (cf. I John 2:1).""",
      },
      {
        "Reference": "Hebrews 7:25, 9:24",
        "Verse":
            """Therefore He is also able to save to the uttermost those who come to God through Him, since He ever lives to make intercession for them. (9:24) For Christ has not entered the holy places made with hands, which are the copies of the true, but into heaven itself, now to appear in the presence of God for us.""",
      },
    ],
    15: [
      {
        "Reference": "Hebrews 2:16, 18",
        "Verse":
            """For indeed He does not give aid to angels, but He does give aid to the seed of Abraham. (18) For in that He Himself has suffered, being tempted, He is able to aid those who are tempted.""",
      },
      {
        "Reference": "Hebrews 4:15-16",
        "Verse":
            """For we do not have a High Priest who cannot sympathize with our weaknesses, but was in all points tempted as we are, yet without sin. Let us therefore come boldly to the throne of grace, that we may obtain mercy and find grace to help in time of need.""",
      }
    ],
    16: [
      {
        "Reference": "Hebrews 8:6",
        "Verse":
            """But now He has obtained a more excellent ministry, inasmuch as He is also Mediator of a better covenant, which was established on better promises.""",
      },
      {
        "Reference": "Hebrews 9:15",
        "Verse":
            """ And for this reason He is the Mediator of he new covenant,  by the means of death, for the redemption of the transgressions under  the first covenant, that those who are called may receive the promise  of eternal inheritance (cf. Hebrews 12:24).""",
      }
    ],
    17: [
      {
        "Reference": "Romans 3:25a",
        "Verse":
            """[Christ Jesus] whom God set forth to be a propitiation by His blood, through faith, to demonstrate His righteousness . . . .""",
      },
      {
        "Reference": "Hebrews 2:17",
        "Verse":
            """. . . in all things He had to be made like His brethren, that He might be a merciful and faithful High Priest in things pertaining to God, to make propitiation for the sins of the people.""",
      },
      {
        "Reference": "I John 2:2, 4:10",
        "Verse":
            """And He Himself is the propitiation for our sins, and not for ours only but also for the whole world. (4:10) In this is love, not that we loved God, but that He loved us and sent His Son to be the propitiation for our sins.""",
      }
    ],
    18: [
      {
        "Reference": "Romans 5:10-11",
        "Verse":
            """For if when we were enemies we were reconciled to God through the death of His Son, much more, having been reconciled, we shall be saved by His life. And not only that, but we also rejoice in God through our Lord Jesus Christ, through whom we have now received the reconciliation.""",
      },
      {
        "Reference": "Colossians 1:20-21",
        "Verse":
            """and by [Jesus] to reconcile all things to Himself, by Him, whether things on earth or things in heaven, having made peace through the blood of His cross. And you, who once were alienated and enemies in your mind by wicked works, yet now He has reconciled.""",
      }
    ],
    19: [
      {
        "Reference": "I Corinthians 1:30",
        "Verse":
            """You are in Christ Jesus, who became for us wisdom from God-and righteousness and sanctification and redemption . . . .""",
      },
      {
        "Reference": "Ephesians 1:7",
        "Verse":
            """In [Jesus] we have redemption through His blood, the forgiveness of sins, according to the riches of His grace.""",
      },
      {
        "Reference": "Revelation 5:9",
        "Verse":
            """And they sang a new song, saying: “You are worthy to take the scroll, and to open its seals; For You were slain, and have redeemed us to God by Your blood out of every tribe and tongue and people and nation.”""",
      }
    ],
    20: [
      {
        "Reference": "Hebrews 2:10",
        "Verse":
            """For it was fitting for Him, for whom are all things and by whom are all things, in bringing many sons to glory, to make the author of their salvation perfect through sufferings.""",
      },
      {
        "Reference": "Hebrews 5:9",
        "Verse":
            """And having been perfected, He became the author of eternal salvation to all who obey Him.""",
      },
      {
        "Reference": "Hebrews 12:2a,b",
        "Verse":
            """looking unto Jesus, the author and finisher of our faith, who for the joy that was set before Him endured the cross . . .""",
      }
    ],
    21: [
      {
        "Reference": "John 1:41 ",
        "Verse":
            """[Andrew] first found his own brother Simon, and said to him, “We have found the Messiah” (which is translated, the Christ).""",
      },
      {
        "Reference": "John 4:25-26",
        "Verse":
            """The woman said to Him, “I know that Messiah is coming” (who is called Christ). “When He comes, He will tell us all things.” Jesus said to her, “I who speak to you am He.”""",
      },
      {
        "Reference": "John 6:69",
        "Verse":
            """“Also we have come to believe and know that You are the Christ, the Son of the living God.”""",
      }
    ],
    22: [
      {
        "Reference": "Luke 2:11",
        "Verse":
            """For there is born to you this day in the city of David a Savior, who is Christ the Lord.""",
      },
      {
        "Reference": "Acts 5:30-31",
        "Verse":
            """The God of our fathers raised up Jesus whom you murdered by hanging on a tree. Him God has exalted to His right hand to be Prince and Savior, to give repentance to Israel and forgiveness of sins.""",
      },
      {
        "Reference": "II Timothy 1:10",
        "Verse":
            """[We are saved by grace that has] been revealed by the appearing of our Savior Jesus Christ, who has abolished death and brought life and immortality to light through the gospel.""",
      }
    ],
    23: [
      {
        "Reference": "John 6:33, 48",
        "Verse":
            """For the bread of God is He who comes down from heaven and gives life to the world. (48) “I am the bread of life.”""",
      },
      {
        "Reference": "John 6:51",
        "Verse":
            """“I am the living bread which came down from heaven. If anyone eats of this bread, he will live forever; and the bread that I shall give is My flesh, which I shall give for the life of the world.”""",
      },
      {
        "Reference": "Luke 22:19",
        "Verse":
            """And He took bread, gave thanks and broke it, and gave it to them, saying, “This is My body which is given for you; do this in remembrance of Me.”""",
      }
    ],
    24: [
      {
        "Reference": "John 8:12",
        "Verse":
            """Then Jesus spoke to them again, saying, “I am the light of the world. He who follows Me shall not walk in darkness, but have the light of life.”""",
      },
      {
        "Reference": "John 12:35-36",
        "Verse":
            """Then Jesus said to them, “A little while longer the light is with you. Walk while you have the light, lest darkness overtake you; he who walks in darkness does not know where he is going. While you have the light, believe in the light, that you may become sons of light.”""",
      },
      {
        "Reference": "Revelation 21:23",
        "Verse":
            """And the city had no need of the sun or the moon to shine in it, for the glory of God illuminated it, and the Lamb is its light.""",
      }
    ],
    25: [
      {
        "Reference": "John 10:9",
        "Verse":
            """“I am the door. If anyone enters by Me, he will be saved, and will go in and out and find pasture.”""",
      },
      {
        "Reference": "John 14:6",
        "Verse":
            """Jesus said to him, “I am the way, the truth, and the life. No one comes to the Father except through Me.”""",
      },
      {
        "Reference": "Acts 4:12",
        "Verse":
            """Nor is there salvation in any other, for there is no other name under heaven given among men by which we must be saved.""",
      }
    ],
    26: [
      {
        "Reference": "Matthew 2:6",
        "Verse":
            """But you, Bethlehem, in the land of Judah, are not the least among the rulers of Judah; For out of you shall come a Ruler who will shepherd My people Israel.""",
      },
      {
        "Reference": "John 10:11, 14-15",
        "Verse":
            """“I am the good shepherd. The good shepherd gives His life for the sheep.” (14-15) “I am the good shepherd; and I know My sheep, and am known by My own. As the Father knows Me, even so I know the Father; and I lay down My life for the sheep.”""",
      },
    ],
    27: [
      {
        "Reference": "John 5:21, 28-29",
        "Verse":
            """For as the Father raises the dead and gives life to them, even so the Son gives life to whom He will. (28-29) . . . for the hour is coming in which all who are in the graves will hear His voice and come forth-those who have done good, to the resurrection of life, and those who have done evil, to the resurrection of condemnation.""",
      },
      {
        "Reference": "John 11:25",
        "Verse":
            """Jesus said to her, “I am the resurrection and the life. He who believes in Me, though he may die, he shall live.”""",
      }
    ],
    28: [
      {
        "Reference": "John 15:1",
        "Verse": """“I am the true vine, and my Father is the vinedresser.”""",
      },
      {
        "Reference": "John 15:4-5",
        "Verse":
            """“Abide in Me, and I in you. As the branch cannot bear fruit of itself, unless it abides in the vine, neither can you, unless you abide in Me. I am the vine, you are the branches. He who abides in Me, and I in him, bears much fruit; for without Me you can do nothing.”""",
      },
      {
        "Reference": "John 15:8",
        "Verse":
            """“By this My Father is glorified, that you bear much fruit; so you will be My disciples.”""",
      }
    ],
    29: [
      {
        "Reference": "John 1:1, 14",
        "Verse":
            """In the beginning was the Word, and the Word was with God, and the Word was God. (14) And the Word became flesh and dwelt among us, and we beheld His glory, the glory as of the only begotten of the Father, full of grace and truth.""",
      },
      {
        "Reference": "John 17:8",
        "Verse":
            """“For I have given them the words which You have given Me; and they have received them, and have known surely that I came forth from You; and they have believed that You sent Me” (cf. John 3:34).""",
      },
      {
        "Reference": "Revelation 19:13",
        "Verse":
            """He was clothed with a robe dipped in blood, and His name is called The Word of God. """,
      }
    ],
    30: [
      {
        "Reference": "John 13:13",
        "Verse":
            """“You call Me Teacher and Lord, and you say well, for so I am.”""",
      },
      {
        "Reference": "Philippians 2:11",
        "Verse":
            """And that every tongue should confess that Jesus Christ is Lord, to the glory of God the Father.""",
      },
      {
        "Reference": "Revelation 17:14",
        "Verse":
            """These will make war with the Lamb, and the Lamb will overcome them, for He is Lord of lords and King of kings . . .""",
      },
      {
        "Reference": "Revelation 19:16",
        "Verse":
            """And He has on His robe and on His thigh a name written: KING OF KINGS AND LORD OF LORDS.""",
      }
    ],
    31: [
      {
        "Reference": "John 5:27",
        "Verse":
            """and [the Father] has given Him authority to execute judgment also, because He is the Son of Man.""",
      },
      {
        "Reference": "Acts 17:31a",
        "Verse":
            """because God has appointed a day on which He will judge the world in righteousness by the Man whom He has ordained.""",
      },
      {
        "Reference": "Revelation 19:11",
        "Verse":
            """Then I saw heaven opened, and behold, a white horse. And He who sat on him was called Faithful and True, and in righteousness He judges and makes war. """,
      }
    ]
  },
  3: {
    1: [
      {
        "Reference": "II Corinthians 3:17",
        "Verse":
            """Now the Lord is the Spirit; and where the Spirit of the Lord is, there is liberty."""
      },
      {
        "Reference": "Acts 5:3, 4d",
        "Verse":
            """But Peter said, “Ananias, why has Satan filled your heart to lie to the Holy Spirit and keep back part of the price of the land for yourself?” (4d) “You have not lied to men but to God" """
      }
    ],
    2: [
      {
        "Reference": "Genesis 1:2",
        "Verse":
            """The earth was without form, and void; and darkness was on the face of the deep. And the Spirit of God was hovering over the face of the waters.""",
      },
      {
        "Reference": "Genesis 1:26a, 27a",
        "Verse":
            """Then God said, “Let Us make man in Our image, according to Our likeness . . . .” (27a) So God created man in His own image; in the image of God He created him . . . .”""",
      },
      {
        "Reference": "Psalm 104:30",
        "Verse":
            """You send forth Your Spirit, they are created; and You renew the face of the earth. """,
      }
    ],
    3: [
      {
        "Reference": "II Timothy 3:16-17",
        "Verse":
            """All Scripture is given by inspiration of God, and is profitable for doctrine, for reproof, for correction, for instruction in righteousness, that the man of God may be complete, thoroughly equipped for every good work.""",
      },
      {
        "Reference": "II Peter 1:19a, 20-21",
        "Verse":
            """We also have the prophetic word made more sure . . . (20-21) knowing this first, that no prophecy of Scripture is of any private [origination], for prophecy never came by the will of man, but holy men of God spoke as they were moved by the Holy Spirit.""",
      }
    ],
    4: [
      {
        "Reference": "Matthew 1:18, 20 ",
        "Verse":
            """Now the birth of Jesus Christ was as follows: After His mother Mary was betrothed to Joseph, before they came together, she was found with child of the Holy Spirit. (vs. 20) . . . an angel of the Lord appeared to [Joseph] in a dream, saying, “Joseph, son of David, do not be afraid to take to you Mary your wife, for that which is conceived in her is of the Holy Spirit.”""",
      },
      {
        "Reference": "Luke 1:35",
        "Verse":
            """And the angel said to [Mary], “The Holy Spirit will come upon you, and the power of the Highest will overshadow you; therefore, also, that Holy One who is to be born will be called the Son of God.” """,
      }
    ],
    5: [
      {
        "Reference": "Isaiah 11:2",
        "Verse":
            "The Spirit of the LORD shall rest upon Him, the Spirit of wisdom and understanding, the Spirit of counsel and might, the Spirit of knowledge and of the fear of the LORD.",
      },
      {
        "Reference": "Luke 4:14",
        "Verse":
            """Then Jesus returned in the power of the Spirit to Galilee, and the news of Him went out through all the surrounding region.""",
      },
      {
        "Reference": "Acts 10:38a",
        "Verse":
            """how God anointed Jesus of Nazareth with the Holy Spirit and with power . . .""",
      }
    ],
    6: [
      {
        "Reference": "John 15:26",
        "Verse":
            """“But when the Helper comes, whom I shall send to you from the Father, the Spirit of truth who proceeds from the Father, He will testify of Me.”""",
      },
      {
        "Reference": "John 16:7, 13-15",
        "Verse":
            """ “Nevertheless I tell you the truth. It is to your advantage that I go away; for if I do not go away, the Helper will not come to you; but if I depart, I will send Him to you. (13-15) However, when He, the Spirit of truth, has come, He will guide you into all truth; for He will not speak on His own authority, but whatever He hears He will speak; and He will tell you things to come. He will glorify Me, for He will take of what is Mine and declare it to you.”""",
      }
    ],
    7: [
      {
        "Reference": "Luke 24:49",
        "Verse":
            """“Behold, I send the Promise of My Father upon you; but tarry in the city of Jerusalem until you are endued with power from on high.”""",
      },
      {
        "Reference": "Acts 2:32-33",
        "Verse":
            """This Jesus God has raised up, of which we are all witnesses. Therefore being exalted to the right hand of God, and having received from the Father the promise of the Holy Spirit, He poured out this which you now see and hear.""",
      }
    ],
    8: [
      {
        "Reference": "John 16:8-11",
        "Verse":
            """“And when [the Helper] has come, He will convict the world of sin, and of righteousness, and of judgment: of sin, because they do not believe in Me; of righteousness, because I go to My Father and you see Me no more; of judgment because the ruler of this world is judged.”""",
      }
    ],
    9: [
      {
        "Reference": "Romans 8:10-11",
        "Verse":
            """And if Christ is in you, the body is dead because of sin, but the Spirit is life because of righteousness. But if the Spirit of Him who raised Christ from the dead dwells in you, He who raised Christ from the dead will also give life to your mortal bodies through His Spirit who dwells in you.""",
      },
      {
        "Reference": "Titus 3:5-6",
        "Verse":
            """not by works of righteousness which we have done, but according to His mercy He saved us, through the washing of regeneration and renewing of the Holy Spirit, whom He poured out on us abundantly through Jesus Christ our Savior.""",
      }
    ],
    10: [
      {
        "Reference": "I Corinthians 12:12-13",
        "Verse":
            """For as the body is one and has many members, but all the members of that one body, being many, are one body, so also is Christ. For by one Spirit we were all baptized into one body- whether Jews or Greeks, whether slaves or free-and have all been made to drink into one Spirit.""",
      },
      {
        "Reference": "Ephesians 4:3-5",
        "Verse":
            """ . . . endeavoring to keep the unity of the Spirit in the bond of peace. There is one body and one Spirit just as you were called in one hope of your calling; one Lord, one faith, one baptism.""",
      },
    ],
    11: [
      {
        "Reference": "Romans 8:9",
        "Verse":
            """But you are not in the flesh but in the Spirit, if indeed the Spirit of God dwells in you. Now if anyone does not have the Spirit of Christ, he is not His.""",
      },
      {
        "Reference": "I Corinthians 6:19",
        "Verse":
            """Or do you not know that your body is the temple of the Holy Spirit who is in you, whom you have from God, and you are not your own?""",
      },
      {
        "Reference": "I John 3:24",
        "Verse":
            """Now he who keeps His commandments abides in Him, and He in him. And by this we know that He abides in us, by the Spirit whom He has given us.""",
      }
    ],
    12: [
      {
        "Reference": "II Corinthians 1:21-22, 5:5",
        "Verse":
            """Now He who establishes us with you in Christ and has anointed us is God who also has sealed us and given us the Spirit in our hearts as a deposit. (5:5) Now He who has prepared us for this very thing is God, who also has given us the Spirit as a guarantee.""",
      },
      {
        "Reference": "Ephesians 1:13-14",
        "Verse":
            """In Him you also trusted, after you heard the word of truth, the gospel of your salvation; in whom also, having believed, you were sealed with the Holy Spirit of promise, who is the guarantee of our inheritance until the redemption of the purchased possession to the praise of His glory.""",
      },
    ],
    13: [
      {
        "Reference": "I Corinthians 12:4-7",
        "Verse":
            """Now there are diversities of gifts, but the same Spirit. There are differences of ministries, but the same Lord. And there are diversities of activities, but it is the same God who works all in all. But the manifestation of the Spirit is given to each one for the profit of all.""",
      },
      {
        "Reference": "I Corinthians 12:11",
        "Verse":
            """But one and the same Spirit works all these things, distributing to each one individually as He wills.""",
      },
    ],
    14: [
      {
        "Reference": "Romans 8:15-17",
        "Verse":
            """For you did not receive the spirit of bondage again to fear, but you received the Spirit of adoption by whom we cry out “Abba, Father.” The Spirit Himself bears witness with our spirit that we are children of God, and if children, then heirs-heirs of God and joint heirs with Christ, if indeed we suffer with Him, that we may also be glorified together.""",
      },
      {
        "Reference": "Galatians 4:6",
        "Verse":
            """And because you are sons, God has sent forth the Spirit of His Son into your hearts, crying out, “Abba, Father!”""",
      },
      {
        "Reference": "I John 4:13",
        "Verse":
            """By this we know that we abide in Him, and He in us, because He has given us of His Spirit. (See also I John 3:24.)""",
      }
    ],
    15: [
      {
        "Reference": "Romans 8:26-27",
        "Verse":
            """Likewise, the Spirit also helps in our weaknesses. For we do not know what we should pray for as we ought, but the Spirit Himself makes intercession for us with groanings which cannot be uttered. Now He who searches the hearts knows what the mind of the Spirit is, because He makes intercession for the saints according to the will of God.""",
      }
    ],
    16: [
      {
        "Reference": "Ephesians 6:11, 17",
        "Verse":
            """Put on the whole armor of God, that you may be able to stand against the schemings of the devil. (17) And take . . . the sword of the Spirit, which is the word of God.""",
      },
      {
        "Reference": "I John 2:20, 26-27",
        "Verse":
            """(ESV) But you have been anointed by the Holy One and you have all knowledge. (26-27) I write these things to you about those who are trying to deceive you. But the anointing that you received from Him abides in you, and you have no need that anyone should teach you. But as His anointing teaches you about everything, and is true, and is no lie-just as it has taught you, abide in Him. (See I John 2:20-27.)""",
      }
    ],
    17: [
      {
        "Reference": "Romans 8:13-14",
        "Verse":
            """For if you live according to the flesh you will die; but if by the Spirit you put to death the deeds of the body, you will live. For as many as are led by the Spirit of God, these are sons of God.""",
      },
      {
        "Reference": "II Corinthians 3:18",
        "Verse":
            """But we all, with unveiled face, beholding as in a mirror the glory of the Lord, are being transformed into the same image from glory to glory, just as by the Spirit of the Lord.""",
      },
      {
        "Reference": "I Peter 1:2",
        "Verse":
            """. . . elect according to the foreknowledge of God the Father, in sanctification of the Spirit, for obedience and sprinkling of the blood of Jesus Christ.""",
      }
    ],
    18: [
      {
        "Reference": "Acts 1:8",
        "Verse":
            """But you shall receive power when the Holy Spirit has come upon you; and you shall be witnesses to Me in Jerusalem, and in all Judea and Samaria, and to the end of the earth.""",
      },
      {
        "Reference": "I Corinthians 2:4-5",
        "Verse":
            """And my speech and my preaching were not with persuasive words of human wisdom, but in demonstration of the Spirit and of power, that your faith should not be in the wisdom of men but in the power of God. (See also I Thessalonians 1:5.)""",
      },
      {
        "Reference": "Ephesians 3:14-16",
        "Verse":
            """For this reason I bow my knees to the Father of our Lord Jesus Christ, from whom the whole family in heaven and earth is named, that He would grant you, according to the riches of His glory, to be strengthened with might through His Spirit in the inner man.""",
      }
    ],
    19: [
      {
        "Reference": "Ephesians 5:18-21",
        "Verse":
            """And do not be drunk with wine, in which is dissipation; but be filled with the Spirit, speaking to one another in psalms and hymns and spiritual songs, singing and making melody in your hearts to the Lord, giving thanks always for all things to God the Father in the name of our Lord Jesus Christ, submitting to one another in the fear of God.""",
      }
    ],
    20: [
      {
        "Reference": "Romans 8:6-9a",
        "Verse":
            """For to be fleshly minded is enmity against God; for it is not subject to the law of God, nor indeed can be. So then, those who are in the flesh cannot please God. But you are not in the flesh but in the Spirit, if indeed the Spirit of God dwells in you.""",
      },
      {
        "Reference": "Galatians 5:17-19a",
        "Verse":
            """For the flesh lusts against the Spirit and the Spirit against the flesh; and these are contrary to one another, so that you do not do the things you wish. But if you are led by the Spirit, you are not under the law. Now the works of the flesh are evident . . .""",
      }
    ],
    21: [
      {
        "Reference": "Ephesians 4:30",
        "Verse":
            """And do not grieve the Holy Spirit of God, by whom you were sealed for the day of redemption.""",
      },
      {
        "Reference": "I Thessalonians 5:19",
        "Verse": """Do not quench the Spirit.""",
      }
    ],
    22: [
      {
        "Reference": "Romans 8:5",
        "Verse":
            """For those who live according to the flesh set their minds on the things of the flesh, but those who live according to the Spirit, the things of the Spirit.""",
      },
      {
        "Reference": "Galatians 5:16, 24-25, 6:8",
        "Verse":
            """I say then: walk in the Spirit, and you shall not fulfill the lust of the flesh. (5:24-25) And those who are Christ’s have crucified the flesh with its passions and desires. If we live in the Spirit, let us also walk in the Spirit. (6:8) For he who sows to his flesh will of the flesh reap corruption, but he who sows to the Spirit will of the Spirit reap everlasting life.""",
      }
    ],
    23: [
      {
        "Reference": "Romans 13:10",
        "Verse":
            """Love does no harm to a neighbor; therefore love is the fulfillment of the law.""",
      },
      {
        "Reference": "Galatians 5:13",
        "Verse":
            """For you, brethren, have been called to liberty; only do not use liberty as an opportunity for the flesh, but through love serve one another.""",
      },
      {
        "Reference": "I John 4:12",
        "Verse":
            """No one has seen God at any time. If we love one another, God abides in us, and His love has been perfected in us (cf. I John 4:20-21).""",
      }
    ],
    24: [
      {
        "Reference": "Romans 14:17",
        "Verse":
            """For the kingdom of God is not food and drink, but righteousness and peace and joy in the Spirit.""",
      },
      {
        "Reference": "Romans 15:13",
        "Verse":
            """Now may the God of hope fill you with all joy and peace in believing, that you may abound in hope by the power of the Holy Spirit.""",
      },
      {
        "Reference": "I Thessalonians 1:6",
        "Verse":
            """And you became followers of us and of the Lord, having received the word in much affliction, with joy of the Holy Spirit.""",
      },
    ],
    25: [
      {
        "Reference": "Philippians 4:6-7",
        "Verse":
            """Be anxious for nothing, but in everything by prayer and supplication, with thanksgiving, let your requests be made known to God; and the peace of God, which surpasses all understanding, will guard your hearts and minds through Jesus Christ.""",
      },
      {
        "Reference": "James 3:17-18",
        "Verse":
            """But the wisdom that is from above is first pure, then peaceable, gentle, willing to yield, full of mercy and good fruits, without partiality and without hypocrisy. Now the fruit of righteousness is sown in peace by those who make peace.""",
      },
    ],
    26: [
      {
        "Reference": "Ephesians 4:1-2",
        "Verse":
            """I therefore, a prisoner of the Lord, beseech you to have a walk worthy of the calling with which you were called, with all lowliness and gentleness, with longsuffering, bearing with one another in love, endeavoring to keep the unity of the Spirit in the bond of peace.""",
      },
      {
        "Reference": "I Thessalonians 5:14",
        "Verse":
            """Now we exhort you, brethren, warn those who are unruly, comfort the faint-hearted, uphold the weak, be patient with all.""",
      }
    ],
    27: [
      {
        "Reference": "II Corinthians 6:4a, 6",
        "Verse":
            """But in all things we commend ourselves as ministers of God: . . . (6) by kindness.""",
      },
      {
        "Reference": "Colossians 3:12",
        "Verse":
            """Therefore, as the elect of God, holy and beloved, put on tender mercies, kindness, humility, meekness, longsuffering.""",
      },
    ],
    28: [
      {
        "Reference": "Romans 15:14",
        "Verse":
            """Now I myself am confident concerning you, my brethren, that you also are full of goodness, filled with all knowledge, able also to admonish one another.""",
      },
      {
        "Reference": "Ephesians 5:8-9",
        "Verse":
            """For you were once darkness, but now you are light in the Lord. Walk as children of light (for the fruit of the Spirit is in all goodness, righteousness, and truth) proving what is acceptable to the Lord.""",
      }
    ],
    29: [
      {
        "Reference": "I Corinthians 15:58",
        "Verse":
            """Therefore, my beloved brethren, be steadfast, immovable, always abounding in the work of the Lord, knowing that your labor is not in vain in the Lord.""",
      },
      {
        "Reference": "James 2:17-18",
        "Verse":
            """Thus also faith by itself, if it does not have works, is dead. But someone will say, “You have faith, and I have works.” Show me your faith without your works, and I will show you my faith by my works.""",
      }
    ],
    30: [
      {
        "Reference": "Matthew 5:5",
        "Verse": """Blessed are the meek, for they shall inherit the earth.""",
      },
      {
        "Reference": "James 1:2",
        "Verse":
            """Therefore lay aside all filthiness and abundance of wickedness, and receive with meekness the implanted word, which is able to save your souls.""",
      }
    ],
    31: [
      {
        "Reference": "I Thessalonians 5:6, 8",
        "Verse":
            """Therefore let us not sleep, as others do, but let us watch and be self-controlled . . . (vs. 8) But let us who are of the day be sober, putting on the breastplate of faith and love and as a helmet the hope of salvation.""",
      },
      {
        "Reference": "I Peter 1:13",
        "Verse":
            """Therefore gird up the loins of your mind, be sober, and rest your hope fully upon the grace that is to be brought to you at the revelation of Jesus Christ.""",
      }
    ]
  },
};

class SelectedPage {
  int series;
  int title;

  SelectedPage(this.series, this.title);
}

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var pages = <Widget>[];

    for (var series in Titles.keys) {
      pages.add(Row(
        children: [
          const Padding(padding: EdgeInsets.all(5)),
          Text(Series[series] ?? "",
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              )),
          // const Spacer(),
        ],
      ));
      for (var title in Titles[series]!.keys) {
        pages.add(Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context, SelectedPage(series, title));
              },
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.all(20)),
                  Container(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Text(
                      Titles[series]?[title] ?? "",
                      style: const TextStyle(fontSize: 20),
                      softWrap: true,
                    ),
                  ),

                  // const Spacer(),
                ],
              ),
            )
          ],
        ));
        pages.add(const Row(
          children: [Padding(padding: EdgeInsets.all(5))],
        ));
      }
    }

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(
        //     255, 250, 249, 246), //Theme.of(context).colorScheme.inversePrimary,
        // title: const Text("Kardiology"),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 0,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          padding: const EdgeInsets.only(left: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/header.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: pages,
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _series = 1;
  int _picture = 1;
  int _date = 1;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _date = DateTime.now().day;
    timer = Timer.periodic(
        const Duration(hours: 1),
        (Timer t) => setState((() {
              _date = DateTime.now().day;
            })));
  }

  void _setSeries(int series) {
    setState(() {
      _series = series;
    });
  }

  void addPic() {
    setState(() {
      _picture = (_picture % 12) + 1;
    });
  }

  void decPic() {
    if (_picture <= 1) return;

    setState(() {
      _picture = _picture - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var series1 = (_series) % 3 + 1;
    var series2 = ((_series) % 3 + 1) % 3 + 1;

    if (series1 > series2) {
      var temp = series2;
      series2 = series1;
      series1 = temp;
    }

    var flower = "assets/flower${(_date % 12) + 1}.jpg";

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   backgroundColor: Colors.transparent,
      //   // Color.fromARGB(255, 250, 249, 246)
      //   elevation: 0, // necessary for invisible background
      //   //    255, 250, 249, 246), //Theme.of(context).colorScheme.inversePrimary,
      //   // Here we take the value from the HomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: DecoratedBox(
      //     decoration: const BoxDecoration(
      //         color: Color.fromARGB(255, 250, 249, 246),
      //         border: Border(
      //             top: BorderSide(),
      //             left: BorderSide(),
      //             right: BorderSide(),
      //             bottom: BorderSide())),
      //     child: Padding(
      //       padding: const EdgeInsets.all(5.0),
      //       child: Text(
      //         textAlign: TextAlign.center,
      //         Titles[_series]![_date]!,
      //         style: Theme.of(context).textTheme.headlineLarge,
      //       ),
      //     ),
      //   ),
      //   // title: Text(Titles[_series]![_date]!), //const Text("Kardiology"),
      //   centerTitle: true,
      //   actions: [
      //     GestureDetector(
      //         onTap: () async {
      //           final result = await Navigator.push(
      //               context,
      //               MaterialPageRoute<SelectedPage>(
      //                   builder: (context) => const ListPage()));

      //           if (result == null) return;

      //           print("result: ${result.series}, ${result.title}");

      //           if (result.series > 0) {
      //             setState((() {
      //               _series = result.series;
      //               _date = result.title; // maybe off by one error
      //             }));
      //           }
      //         },
      //         child: const Icon(Icons.menu)),
      //     const Padding(
      //       padding: EdgeInsets.all(12.0),
      //     ),
      //   ],
      //   // Icon(Icons.home)
      // ),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(flower),
              fit: BoxFit.cover,
              opacity: 0.5,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 60.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              const Spacer(),
                              DecoratedBox(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 250, 249, 246),
                                    border: Border(
                                        top: BorderSide(),
                                        left: BorderSide(),
                                        right: BorderSide(),
                                        bottom: BorderSide())),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width -
                                                100),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      Titles[_series]![_date]!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                  onTap: () async {
                                    final result = await Navigator.push(
                                        context,
                                        MaterialPageRoute<SelectedPage>(
                                            builder: (context) =>
                                                const ListPage()));

                                    if (result == null) return;

                                    if (result.series > 0) {
                                      setState((() {
                                        _series = result.series;
                                        _date = result.title;
                                      }));
                                    }
                                  },
                                  child: const Icon(Icons.menu)),
                            ],
                          ),
                          const Text("\n"),
                          DecoratedBox(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 250, 249, 246),
                                border: Border(
                                    top: BorderSide(),
                                    left: BorderSide(),
                                    right: BorderSide(),
                                    bottom: BorderSide())),
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    Text(
                                      Descriptions[_series]![_date]!,
                                      // style: Theme.of(context).textTheme.headlineSmall,
                                      textAlign: TextAlign.center,
                                      // selectionColor: new Color.fromRGBO(
                                      //     255, 255, 255, 0.75),
                                    ),
                                    const Text("\n"),
                                    for (var verse
                                        in verse_info[_series]![_date]!)
                                      Text.rich(
                                        textAlign: TextAlign.center,
                                        TextSpan(
                                          text: '',
                                          // style: TextStyle(
                                          //     backgroundColor:
                                          //         new Color.fromRGBO(255, 255, 255, 0.5)),
                                          children: [
                                            TextSpan(
                                              text: '${verse["Reference"]}\n',
                                              style: const TextStyle(
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                            TextSpan(
                                              text:
                                                  '${verse["Verse"]?.replaceAll("\n", " ")}',
                                            ),
                                            TextSpan(text: "\n"),
                                          ],
                                        ),
                                      ),
                                  ],
                                )),
                          ),
                          const Text("\n"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ButtonBar(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      _setSeries(series1);
                                      decPic();
                                    },
                                    child: Text(
                                      Series[series1]!,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        // color: Color.fromARGB(
                                        //     255,
                                        //     series_colors[series1]!["red"]!,
                                        //     series_colors[series1]!["green"]!,
                                        //     series_colors[series1]!["blue"]!),
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      _setSeries(series2);
                                      addPic();
                                    },
                                    child: Text(
                                      Series[series2]!,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        // color: Color.fromARGB(
                                        //     255,
                                        //     series_colors[series2]!["red"]!,
                                        //     series_colors[series2]!["green"]!,
                                        //     series_colors[series2]!["blue"]!),
                                      ),
                                    ),
                                  ),
                                  // ElevatedButton(
                                  //   child: Text(Series[1]!),
                                  //   onPressed: () => _setSeries(1),
                                  // ),
                                  // ElevatedButton(
                                  //   child: Text(Series[2]!),
                                  //   onPressed: () => _setSeries(2),
                                  // ),
                                  // ElevatedButton(
                                  //   child: Text(Series[3]!),
                                  //   onPressed: () => _setSeries(3),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                          const Text(
                              textAlign: TextAlign.center,
                              "\n \n © 2002, 2012 Julie Gossack, reproducible"),
                          const Padding(
                            padding: EdgeInsets.only(top: 50.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
