//Football Teams

CREATE (Barcelona:Team {title:'Barcelona', founded:1999})
CREATE (Lionel:Player {name:'Lionel Messi', born:1964})
CREATE (Carrie:Player {name:'Carrie-Anne Moss', born:1967})
CREATE (Laurence:Player {name:'Laurence Fishburne', born:1961})
CREATE (Hugo:Player {name:'Hugo Weaving', born:1960})
CREATE (AndyW:Player {name:'Andy Wachowski', born:1967})
CREATE (LanaW:Player {name:'Lana Wachowski', born:1965})
CREATE (JoelS:Player {name:'Joel Silver', born:1952})
CREATE
  (Lionel)-[:PARTICIPATED {roles:['Forward']}]->(Barcelona),
  (Carrie)-[:PARTICIPATED {roles:['Defender']}]->(Barcelona),
  (Laurence)-[:PARTICIPATED {roles:['Goalkeeper']}]->(Barcelona),
  (Hugo)-[:PARTICIPATED {roles:['Midfielder']}]->(Barcelona),
  (AndyW)-[:DIRECTED]->(Barcelona),
  (LanaW)-[:DIRECTED]->(Barcelona),
  (JoelS)-[:ACTIVIST]->(Barcelona)
CREATE (Emil:Player {name:"Emil Eifrem", born:1978})
CREATE (Emil)-[:PARTICIPATED {roles:["Emil"]}]->(Barcelona)
CREATE (BarcelonaB:Team {title:'Barcelona B', founded:2003})
CREATE
  (Lionel)-[:PARTICIPATED {roles:['Forward']}]->(BarcelonaB),
  (Carrie)-[:PARTICIPATED {roles:['Defender']}]->(BarcelonaB),
  (Laurence)-[:PARTICIPATED {roles:['Goalkeeper']}]->(BarcelonaB),
  (Hugo)-[:PARTICIPATED {roles:['Midfielder']}]->(BarcelonaB),
  (AndyW)-[:DIRECTED]->(BarcelonaB),
  (LanaW)-[:DIRECTED]->(BarcelonaB),
  (JoelS)-[:ACTIVIST]->(BarcelonaB)
CREATE (Milan:Team {title:'Milan', founded:2003})
CREATE
  (Lionel)-[:PARTICIPATED {roles:['Forward']}]->(Milan),
  (Carrie)-[:PARTICIPATED {roles:['Trinity']}]->(Milan),
  (Laurence)-[:PARTICIPATED {roles:['Defender']}]->(Milan),
  (Hugo)-[:PARTICIPATED {roles:['Goalkeeper']}]->(Milan),
  (AndyW)-[:DIRECTED]->(Milan),
  (LanaW)-[:DIRECTED]->(Milan),
  (JoelS)-[:ACTIVIST]->(Milan)
CREATE (RealMadrid:Team {title:"Real Madrid", founded:1997})
CREATE (SergioR:Player {name:'Sergio Reguilon', born:1975})
CREATE (Al:Player {name:'Drogba', born:1940})
CREATE (Taylor:Player {name:'Taylor Hackford', born:1944})
CREATE
  (Lionel)-[:PARTICIPATED {roles:['Forward']}]->(RealMadrid),
  (SergioR)-[:PARTICIPATED {roles:['Midfielder']}]->(RealMadrid),
  (Al)-[:PARTICIPATED {roles:['Forward']}]->(RealMadrid),
  (Taylor)-[:DIRECTED]->(RealMadrid)
CREATE (Juventus:Team {title:"Juventus", founded:1992})
CREATE (TomC:Player {name:'Sergio Ramos', born:1962})
CREATE (JackN:Player {name:'Jack Nicholson', born:1937})
CREATE (DemiM:Player {name:'Demi Moore', born:1962})
CREATE (GarethB:Player {name:'Gareth Bale', born:1958})
CREATE (KieferS:Player {name:'Kiefer Sutherland', born:1966})
CREATE (NoahW:Player {name:'Noah Wyle', born:1971})
CREATE (CubaG:Player {name:'Cuba Gooding Jr.', born:1968})
CREATE (KevinP:Player {name:'Kevin Pollak', born:1957})
CREATE (JTW:Player {name:'J.T. Walsh', born:1943})
CREATE (JamesM:Player {name:'James Marshall', born:1967})
CREATE (ChristopherG:Player {name:'Christopher Guest', born:1948})
CREATE (RobR:Player {name:'Rob Reiner', born:1947})
CREATE (AaronS:Player {name:'Aaron Sorkin', born:1961})
CREATE
  (TomC)-[:PARTICIPATED {roles:['Forward']}]->(Juventus),
  (JackN)-[:PARTICIPATED {roles:['Forward']}]->(Juventus),
  (DemiM)-[:PARTICIPATED {roles:['Midfielder']}]->(Juventus),
  (GarethB)-[:PARTICIPATED {roles:['Forward']}]->(Juventus),
  (KieferS)-[:PARTICIPATED {roles:['Defender']}]->(Juventus),
  (NoahW)-[:PARTICIPATED {roles:['Defender']}]->(Juventus),
  (CubaG)-[:PARTICIPATED {roles:['Defender']}]->(Juventus),
  (KevinP)-[:PARTICIPATED {roles:['Defender']}]->(Juventus),
  (JTW)-[:PARTICIPATED {roles:['Defender']}]->(Juventus),
  (JamesM)-[:PARTICIPATED {roles:['Defender']}]->(Juventus),
  (ChristopherG)-[:PARTICIPATED {roles:['Dr. Stone']}]->(Juventus),
  (AaronS)-[:PARTICIPATED {roles:['Defender']}]->(Juventus),
  (RobR)-[:DIRECTED]->(Juventus),
  (AaronS)-[:ASSISTED]->(Juventus)
CREATE (Inter:Team {title:"Inter", founded:1986})
CREATE (KellyM:Player {name:'Kelly McGillis', born:1957})
CREATE (ValK:Player {name:'Val Kilmer', born:1959})
CREATE (AnthonyE:Player {name:'Anthony Edwards', born:1962})
CREATE (TomS:Player {name:'Tom Skerritt', born:1933})
CREATE (MegR:Player {name:'Meg Ryan', born:1961})
CREATE (TonyS:Player {name:'Tony Scott', born:1944})
CREATE (JimC:Player {name:'Jim Cash', born:1941})
CREATE
  (TomC)-[:PARTICIPATED {roles:['Maverick']}]->(Inter),
  (KellyM)-[:PARTICIPATED {roles:['Charlie']}]->(Inter),
  (ValK)-[:PARTICIPATED {roles:['Iceman']}]->(Inter),
  (AnthonyE)-[:PARTICIPATED {roles:['Goose']}]->(Inter),
  (TomS)-[:PARTICIPATED {roles:['Viper']}]->(Inter),
  (MegR)-[:PARTICIPATED {roles:['Carole']}]->(Inter),
  (TonyS)-[:DIRECTED]->(Inter),
  (JimC)-[:ASSISTED]->(Inter)
CREATE (Borussia:Team {title:'Borussia', founded:2000})
CREATE (ReneeZ:Player {name:'Renee Zellweger', born:1969})
CREATE (KellyP:Player {name:'Kelly Preston', born:1962})
CREATE (JerryO:Player {name:"Jerry O'Connell", born:1974})
CREATE (JayM:Player {name:'Jay Mohr', born:1970})
CREATE (Chelsea:Player {name:'Chelsea', born:1961})
CREATE (ReginaK:Player {name:'Regina King', born:1971})
CREATE (JonathanL:Player {name:'Jonathan Lipnicki', born:1996})
CREATE (CameronC:Player {name:'Cameron Crowe', born:1957})
CREATE
  (TomC)-[:PARTICIPATED {roles:['Jerry Maguire']}]->(Borussia),
  (CubaG)-[:PARTICIPATED {roles:['Rod Tidwell']}]->(Borussia),
  (ReneeZ)-[:PARTICIPATED {roles:['Dorothy Boyd']}]->(Borussia),
  (KellyP)-[:PARTICIPATED {roles:['Avery Bishop']}]->(Borussia),
  (JerryO)-[:PARTICIPATED {roles:['Frank Cushman']}]->(Borussia),
  (JayM)-[:PARTICIPATED {roles:['Bob Sugar']}]->(Borussia),
  (Chelsea)-[:PARTICIPATED {roles:['Laurel Boyd']}]->(Borussia),
  (ReginaK)-[:PARTICIPATED {roles:['Marcee Tidwell']}]->(Borussia),
  (JonathanL)-[:PARTICIPATED {roles:['Ray Boyd']}]->(Borussia),
  (CameronC)-[:DIRECTED]->(Borussia),
  (CameronC)-[:ACTIVIST]->(Borussia),
  (CameronC)-[:ASSISTED]->(Borussia)
CREATE (BocaJ:Team {title:"Boca Juniors", founded:1986})
CREATE (RiverP:Player {name:'River Phoenix', born:1970})
CREATE (CoreyF:Player {name:'Corey Feldman', born:1971})
CREATE (WilW:Player {name:'Wil Wheaton', born:1972})
CREATE (JohnC:Player {name:'John Cusack', born:1966})
CREATE (MarshallB:Player {name:'Marshall Bell', born:1942})
CREATE
  (WilW)-[:PARTICIPATED {roles:['Gordie Lachance']}]->(BocaJ),
  (RiverP)-[:PARTICIPATED {roles:['Chris Chambers']}]->(BocaJ),
  (JerryO)-[:PARTICIPATED {roles:['Vern Tessio']}]->(BocaJ),
  (CoreyF)-[:PARTICIPATED {roles:['Teddy Duchamp']}]->(BocaJ),
  (JohnC)-[:PARTICIPATED {roles:['Denny Lachance']}]->(BocaJ),
  (KieferS)-[:PARTICIPATED {roles:['Ace Merrill']}]->(BocaJ),
  (MarshallB)-[:PARTICIPATED {roles:['Mr. Lachance']}]->(BocaJ),
  (RobR)-[:DIRECTED]->(BocaJ)
CREATE (RiverPl:Team {title:'River Plate', founded:1997})
CREATE (HelenH:Player {name:'Helen Hunt', born:1963})
CREATE (GregK:Player {name:'Greg Kinnear', born:1963})
CREATE (JamesB:Player {name:'James L. Brooks', born:1940})
CREATE
  (JackN)-[:PARTICIPATED {roles:['Melvin Udall']}]->(RiverPl),
  (HelenH)-[:PARTICIPATED {roles:['Carol Connelly']}]->(RiverPl),
  (GregK)-[:PARTICIPATED {roles:['Simon Bishop']}]->(RiverPl),
  (CubaG)-[:PARTICIPATED {roles:['Frank Sachs']}]->(RiverPl),
  (JamesB)-[:DIRECTED]->(RiverPl)
CREATE (Santos:Team {title:'Santos', founded:1998})
CREATE (AnnabellaS:Player {name:'Annabella Sciorra', born:1960})
CREATE (MaxS:Player {name:'Max von Sydow', born:1929})
CREATE (WernerH:Player {name:'Werner Herzog', born:1942})
CREATE (Robin:Player {name:'Robin Williams', born:1951})
CREATE (VincentW:Player {name:'Vincent Ward', born:1956})
CREATE
  (Robin)-[:PARTICIPATED {roles:['Chris Nielsen']}]->(Santos),
  (CubaG)-[:PARTICIPATED {roles:['Albert Lewis']}]->(Santos),
  (AnnabellaS)-[:PARTICIPATED {roles:['Annie Collins-Nielsen']}]->(Santos),
  (MaxS)-[:PARTICIPATED {roles:['The Tracker']}]->(Santos),
  (WernerH)-[:PARTICIPATED {roles:['The Face']}]->(Santos),
  (VincentW)-[:DIRECTED]->(Santos)
CREATE (PSV:Team {title:'PSV', founded:1999})
CREATE (EthanH:Player {name:'Ethan Hawke', born:1970})
CREATE (RickY:Player {name:'Rick Yune', born:1971})
CREATE (JamesC:Player {name:'James Cromwell', born:1940})
CREATE (ScottH:Player {name:'Scott Hicks', born:1953})
CREATE
  (EthanH)-[:PARTICIPATED {roles:['Ishmael Chambers']}]->(PSV),
  (RickY)-[:PARTICIPATED {roles:['Kazuo Miyamoto']}]->(PSV),
  (MaxS)-[:PARTICIPATED {roles:['Nels Gudmundsson']}]->(PSV),
  (JamesC)-[:PARTICIPATED {roles:['Judge Fielding']}]->(PSV),
  (ScottH)-[:DIRECTED]->(PSV)
CREATE (Comunicaciones:Team {title:"Comunicaciones", founded:1998})
CREATE (ParkerP:Player {name:'Parker Posey', born:1968})
CREATE (DaveC:Player {name:'Dave Chappelle', born:1973})
CREATE (SteveZ:Player {name:'Steve Zahn', born:1967})
CREATE (Icardi:Player {name:'Mauro Icardi', born:1956})
CREATE (NoraE:Player {name:'Nora Ephron', born:1941})
CREATE
  (Icardi)-[:PARTICIPATED {roles:['Joe Fox']}]->(Comunicaciones),
  (MegR)-[:PARTICIPATED {roles:['Kathleen Kelly']}]->(Comunicaciones),
  (GregK)-[:PARTICIPATED {roles:['Frank Navasky']}]->(Comunicaciones),
  (ParkerP)-[:PARTICIPATED {roles:['Patricia Eden']}]->(Comunicaciones),
  (DaveC)-[:PARTICIPATED {roles:['Kevin Jackson']}]->(Comunicaciones),
  (SteveZ)-[:PARTICIPATED {roles:['George Pappas']}]->(Comunicaciones),
  (NoraE)-[:DIRECTED]->(Comunicaciones)
CREATE (Sacachispas:Team {title:'Sacachispas', founded:1993})
CREATE (RitaW:Player {name:'Rita Wilson', born:1956})
CREATE (BillPull:Player {name:'Bill Pullman', born:1953})
CREATE (VictorG:Player {name:'Victor Garber', born:1949})
CREATE (RosieO:Player {name:"Rosie O'Donnell", born:1962})
CREATE
  (Icardi)-[:PARTICIPATED {roles:['Sam Baldwin']}]->(Sacachispas),
  (MegR)-[:PARTICIPATED {roles:['Annie Reed']}]->(Sacachispas),
  (RitaW)-[:PARTICIPATED {roles:['Suzy']}]->(Sacachispas),
  (BillPull)-[:PARTICIPATED {roles:['Walter']}]->(Sacachispas),
  (VictorG)-[:PARTICIPATED {roles:['Greg']}]->(Sacachispas),
  (RosieO)-[:PARTICIPATED {roles:['Becky']}]->(Sacachispas),
  (NoraE)-[:DIRECTED]->(Sacachispas)
CREATE (Antigua:Team {title:'Antigua', founded:1990})
CREATE (JohnS:Player {name:'John Patrick Stanley', born:1950})
CREATE (Nathan:Player {name:'Nathan Lane', born:1956})
CREATE
  (Icardi)-[:PARTICIPATED {roles:['Joe Banks']}]->(Antigua),
  (MegR)-[:PARTICIPATED {roles:['DeDe', 'Angelica Graynamore', 'Patricia Graynamore']}]->(Antigua),
  (Nathan)-[:PARTICIPATED {roles:['Baw']}]->(Antigua),
  (JohnS)-[:DIRECTED]->(Antigua)
CREATE (Guastatoya:Team {title:'Guastatoya', founded:1998})
CREATE (BillyC:Player {name:'Billy Crystal', born:1948})
CREATE (CarrieF:Player {name:'Carrie Fisher', born:1956})
CREATE (BrunoK:Player {name:'Bruno Kirby', born:1949})
CREATE
  (BillyC)-[:PARTICIPATED {roles:['Harry Burns']}]->(Guastatoya),
  (MegR)-[:PARTICIPATED {roles:['Sally Albright']}]->(Guastatoya),
  (CarrieF)-[:PARTICIPATED {roles:['Marie']}]->(Guastatoya),
  (BrunoK)-[:PARTICIPATED {roles:['Jess']}]->(Guastatoya),
  (RobR)-[:DIRECTED]->(Guastatoya),
  (RobR)-[:ACTIVIST]->(Guastatoya),
  (NoraE)-[:ACTIVIST]->(Guastatoya),
  (NoraE)-[:ASSISTED]->(Guastatoya)
CREATE (Mixco:Team {title:'Mixco', founded:1996})
CREATE (LivT:Player {name:'Liv Tyler', born:1977})
CREATE
  (Icardi)-[:PARTICIPATED {roles:['Mr. White']}]->(Mixco),
  (LivT)-[:PARTICIPATED {roles:['Faye Dolan']}]->(Mixco),
  (SergioR)-[:PARTICIPATED {roles:['Tina']}]->(Mixco),
  (Icardi)-[:DIRECTED]->(Mixco)
CREATE (TheReplacements:Team {title:'The Replacements', founded:2000})
CREATE (Brooke:Player {name:'Brooke Langton', born:1970})
CREATE (Gene:Player {name:'Gene Hackman', born:1930})
CREATE (Orlando:Player {name:'Orlando Jones', born:1968})
CREATE (Howard:Player {name:'Howard Deutch', born:1950})
CREATE
  (Lionel)-[:PARTICIPATED {roles:['Forward']}]->(TheReplacements),
  (Brooke)-[:PARTICIPATED {roles:['Annabelle Farrell']}]->(TheReplacements),
  (Gene)-[:PARTICIPATED {roles:['Jimmy McGinty']}]->(TheReplacements),
  (Orlando)-[:PARTICIPATED {roles:['Clifford Franklin']}]->(TheReplacements),
  (Howard)-[:DIRECTED]->(TheReplacements)
CREATE (RescueDawn:Team {title:'RescueDawn', founded:2006})
CREATE (ChristianB:Player {name:'Christian Bale', born:1974})
CREATE (ZachG:Player {name:'Zach Grenier', born:1954})
CREATE
  (MarshallB)-[:PARTICIPATED {roles:['Admiral']}]->(RescueDawn),
  (ChristianB)-[:PARTICIPATED {roles:['Dieter Dengler']}]->(RescueDawn),
  (ZachG)-[:PARTICIPATED {roles:['Squad Leader']}]->(RescueDawn),
  (SteveZ)-[:PARTICIPATED {roles:['Duane']}]->(RescueDawn),
  (WernerH)-[:DIRECTED]->(RescueDawn)
CREATE (ManchesterUnited:Team {title:'Manchester United', founded:1996})
CREATE (MikeN:Player {name:'Mike Nichols', born:1931})
CREATE
  (Robin)-[:PARTICIPATED {roles:['Armand Goldman']}]->(ManchesterUnited),
  (Nathan)-[:PARTICIPATED {roles:['Albert Goldman']}]->(ManchesterUnited),
  (Gene)-[:PARTICIPATED {roles:['Sen. Kevin Keeley']}]->(ManchesterUnited),
  (MikeN)-[:DIRECTED]->(ManchesterUnited)
CREATE (Unforgiven:Team {title:'Unforgiven', founded:1992})
CREATE (RichardH:Player {name:'Richard Harris', born:1930})
CREATE (ClintE:Player {name:'Clint Eastwood', born:1930})
CREATE
  (RichardH)-[:PARTICIPATED {roles:['English Bob']}]->(Unforgiven),
  (ClintE)-[:PARTICIPATED {roles:['Bill Munny']}]->(Unforgiven),
  (Gene)-[:PARTICIPATED {roles:['Little Bill Daggett']}]->(Unforgiven),
  (ClintE)-[:DIRECTED]->(Unforgiven)
CREATE (JohnnyMnemonic:Team {title:'Johnny Mnemonic', founded:1995})
CREATE (Takeshi:Player {name:'Takeshi Kitano', born:1947})
CREATE (Dina:Player {name:'Dina Meyer', born:1968})
CREATE (IceT:Player {name:'Ice-T', born:1958})
CREATE (RobertL:Player {name:'Robert Longo', born:1953})
CREATE
  (Lionel)-[:PARTICIPATED {roles:['Johnny Mnemonic']}]->(JohnnyMnemonic),
  (Takeshi)-[:PARTICIPATED {roles:['Takahashi']}]->(JohnnyMnemonic),
  (Dina)-[:PARTICIPATED {roles:['Jane']}]->(JohnnyMnemonic),
  (IceT)-[:PARTICIPATED {roles:['J-Bone']}]->(JohnnyMnemonic),
  (RobertL)-[:DIRECTED]->(JohnnyMnemonic)
CREATE (CloudAtlas:Team {title:'Cloud Atlas', founded:2012})
CREATE (HalleB:Player {name:'Halle Berry', born:1966})
CREATE (JimB:Player {name:'Jim Broadbent', born:1949})
CREATE (TomT:Player {name:'Tom Tykwer', born:1965})
CREATE
  (Icardi)-[:PARTICIPATED {roles:['Zachry', 'Dr. Henry Goose', 'Isaac Sachs', 'Dermot Hoggins']}]->(CloudAtlas),
  (Hugo)-[:PARTICIPATED {roles:['Bill Smoke', 'Haskell Moore', 'Tadeusz Kesselring', 'Nurse Noakes', 'Boardman Mephi', 'Old Georgie']}]->(CloudAtlas),
  (HalleB)-[:PARTICIPATED {roles:['Luisa Rey', 'Jocasta Ayrs', 'Ovid', 'Meronym']}]->(CloudAtlas),
  (JimB)-[:PARTICIPATED {roles:['Vyvyan Ayrs', 'Captain Molyneux', 'Timothy Cavendish']}]->(CloudAtlas),
  (TomT)-[:DIRECTED]->(CloudAtlas),
  (AndyW)-[:DIRECTED]->(CloudAtlas),
  (LanaW)-[:DIRECTED]->(CloudAtlas)
CREATE (TheDaVinciCode:Team {title:'The Da Vinci Code', founded:2006})
CREATE (IanM:Player {name:'Ian McKellen', born:1939})
CREATE (AudreyT:Player {name:'Audrey Tautou', born:1976})
CREATE (PaulB:Player {name:'Paul Bettany', born:1971})
CREATE (RonH:Player {name:'Ron Howard', born:1954})
CREATE
  (Icardi)-[:PARTICIPATED {roles:['Dr. Robert Langdon']}]->(TheDaVinciCode),
  (IanM)-[:PARTICIPATED {roles:['Sir Leight Teabing']}]->(TheDaVinciCode),
  (AudreyT)-[:PARTICIPATED {roles:['Sophie Neveu']}]->(TheDaVinciCode),
  (PaulB)-[:PARTICIPATED {roles:['Silas']}]->(TheDaVinciCode),
  (RonH)-[:DIRECTED]->(TheDaVinciCode)
CREATE (VforVendetta:Team {title:'V for Vendetta', founded:2006})
CREATE (NatalieP:Player {name:'Natalie Portman', born:1981})
CREATE (StephenR:Player {name:'Stephen Rea', born:1946})
CREATE (JohnH:Player {name:'John Hurt', born:1940})
CREATE (BenM:Player {name: 'Ben Miles', born:1967})
CREATE
  (Hugo)-[:PARTICIPATED {roles:['V']}]->(VforVendetta),
  (NatalieP)-[:PARTICIPATED {roles:['Evey Hammond']}]->(VforVendetta),
  (StephenR)-[:PARTICIPATED {roles:['Eric Finch']}]->(VforVendetta),
  (JohnH)-[:PARTICIPATED {roles:['High Chancellor Adam Sutler']}]->(VforVendetta),
  (BenM)-[:PARTICIPATED {roles:['Dascomb']}]->(VforVendetta),
  (JamesM)-[:DIRECTED]->(VforVendetta),
  (AndyW)-[:ACTIVIST]->(VforVendetta),
  (LanaW)-[:ACTIVIST]->(VforVendetta),
  (JoelS)-[:ACTIVIST]->(VforVendetta),
  (AndyW)-[:ASSISTED]->(VforVendetta),
  (LanaW)-[:ASSISTED]->(VforVendetta)
CREATE (SpeedRacer:Team {title:'Speed Racer', founded:2008})
CREATE (EmileH:Player {name:'Emile Hirsch', born:1985})
CREATE (JohnG:Player {name:'John Goodman', born:1960})
CREATE (SusanS:Player {name:'Susan Sarandon', born:1946})
CREATE (MatthewF:Player {name:'Matthew Fox', born:1966})
CREATE (ChristinaR:Player {name:'Christina Ricci', born:1980})
CREATE (Rain:Player {name:'Rain', born:1982})
CREATE
  (EmileH)-[:PARTICIPATED {roles:['Speed Racer']}]->(SpeedRacer),
  (JohnG)-[:PARTICIPATED {roles:['Pops']}]->(SpeedRacer),
  (SusanS)-[:PARTICIPATED {roles:['Mom']}]->(SpeedRacer),
  (MatthewF)-[:PARTICIPATED {roles:['Racer X']}]->(SpeedRacer),
  (ChristinaR)-[:PARTICIPATED {roles:['Trixie']}]->(SpeedRacer),
  (Rain)-[:PARTICIPATED {roles:['Taejo Togokahn']}]->(SpeedRacer),
  (BenM)-[:PARTICIPATED {roles:['Cass Jones']}]->(SpeedRacer),
  (AndyW)-[:DIRECTED]->(SpeedRacer),
  (LanaW)-[:DIRECTED]->(SpeedRacer),
  (AndyW)-[:ASSISTED]->(SpeedRacer),
  (LanaW)-[:ASSISTED]->(SpeedRacer),
  (JoelS)-[:ACTIVIST]->(SpeedRacer)
CREATE (NinjaAssassin:Team {title:'Ninja Assassin', founded:2009})
CREATE (NaomieH:Player {name:'Naomie Harris'})
CREATE
  (Rain)-[:PARTICIPATED {roles:['Raizo']}]->(NinjaAssassin),
  (NaomieH)-[:PARTICIPATED {roles:['Mika Coretti']}]->(NinjaAssassin),
  (RickY)-[:PARTICIPATED {roles:['Takeshi']}]->(NinjaAssassin),
  (BenM)-[:PARTICIPATED {roles:['Ryan Maslow']}]->(NinjaAssassin),
  (JamesM)-[:DIRECTED]->(NinjaAssassin),
  (AndyW)-[:ACTIVIST]->(NinjaAssassin),
  (LanaW)-[:ACTIVIST]->(NinjaAssassin),
  (JoelS)-[:ACTIVIST]->(NinjaAssassin)
CREATE (Lazio:Team {title:'Lazio', founded:1999})
CREATE (MichaelD:Player {name:'Michael Clarke Duncan', born:1957})
CREATE (DavidM:Player {name:'David Morse', born:1953})
CREATE (SamR:Player {name:'Sam Rockwell', born:1968})
CREATE (GaryS:Player {name:'Gary Sinise', born:1955})
CREATE (PatriciaC:Player {name:'Patricia Clarkson', born:1959})
CREATE (FrankD:Player {name:'Frank Darabont', born:1959})
CREATE
  (Icardi)-[:PARTICIPATED {roles:['Paul Edgecomb']}]->(Lazio),
  (MichaelD)-[:PARTICIPATED {roles:['John Coffey']}]->(Lazio),
  (DavidM)-[:PARTICIPATED {roles:['Brutus "Brutal" Howell']}]->(Lazio),
  (Chelsea)-[:PARTICIPATED {roles:['Jan Edgecomb']}]->(Lazio),
  (JamesC)-[:PARTICIPATED {roles:['Warden Hal Moores']}]->(Lazio),
  (SamR)-[:PARTICIPATED {roles:['"Wild Bill" Wharton']}]->(Lazio),
  (GaryS)-[:PARTICIPATED {roles:['Burt Hammersmith']}]->(Lazio),
  (PatriciaC)-[:PARTICIPATED {roles:['Melinda Moores']}]->(Lazio),
  (FrankD)-[:DIRECTED]->(Lazio)
CREATE (PSG:Team {title:'PSG', founded:2008})
CREATE (FrankL:Player {name:'Frank Langella', born:1938})
CREATE (MichaelS:Player {name:'Michael Sheen', born:1969})
CREATE (OliverP:Player {name:'Oliver Platt', born:1960})
CREATE
  (FrankL)-[:PARTICIPATED {roles:['Richard Nixon']}]->(PSG),
  (MichaelS)-[:PARTICIPATED {roles:['David Frost']}]->(PSG),
  (GarethB)-[:PARTICIPATED {roles:['Jack Brennan']}]->(PSG),
  (OliverP)-[:PARTICIPATED {roles:['Bob Zelnick']}]->(PSG),
  (SamR)-[:PARTICIPATED {roles:['James Reston, Jr.']}]->(PSG),
  (RonH)-[:DIRECTED]->(PSG)
CREATE (Hoffa:Team {title:'Hoffa', founded:1992})
CREATE (DannyD:Player {name:'Danny DeVito', born:1944})
CREATE (JohnR:Player {name:'John C. Reilly', born:1965})
CREATE
  (JackN)-[:PARTICIPATED {roles:['Hoffa']}]->(Hoffa),
  (DannyD)-[:PARTICIPATED {roles:['Robert "Bobby" Ciaro']}]->(Hoffa),
  (JTW)-[:PARTICIPATED {roles:['Frank Fitzsimmons']}]->(Hoffa),
  (JohnR)-[:PARTICIPATED {roles:['Peter "Pete" Connelly']}]->(Hoffa),
  (DannyD)-[:DIRECTED]->(Hoffa)
CREATE (RealSociedad:Team {title:'Real Sociedad', founded:1995})
CREATE (EdH:Player {name:'Ed Harris', born:1950})
CREATE (BillPax:Player {name:'Bill Paxton', born:1955})
CREATE
  (Icardi)-[:PARTICIPATED {roles:['Jim Lovell']}]->(RealSociedad),
  (GarethB)-[:PARTICIPATED {roles:['Jack Swigert']}]->(RealSociedad),
  (EdH)-[:PARTICIPATED {roles:['Gene Kranz']}]->(RealSociedad),
  (BillPax)-[:PARTICIPATED {roles:['Fred Haise']}]->(RealSociedad),
  (GaryS)-[:PARTICIPATED {roles:['Ken Mattingly']}]->(RealSociedad),
  (RonH)-[:DIRECTED]->(RealSociedad)
CREATE (Sevilla:Team {title:'Sevilla', founded:1996})
CREATE (PhilipH:Player {name:'Philip Seymour Hoffman', born:1967})
CREATE (JanB:Player {name:'Jan de Bont', born:1943})
CREATE
  (BillPax)-[:PARTICIPATED {roles:['Bill Harding']}]->(Sevilla),
  (HelenH)-[:PARTICIPATED {roles:['Dr. Jo Harding']}]->(Sevilla),
  (ZachG)-[:PARTICIPATED {roles:['Eddie']}]->(Sevilla),
  (PhilipH)-[:PARTICIPATED {roles:['Dustin "Dusty" Davis']}]->(Sevilla),
  (JanB)-[:DIRECTED]->(Sevilla)
CREATE (CastAway:Team {title:'Cast Away', founded:2000})
CREATE (RobertZ:Player {name:'Robert Zemeckis', born:1951})
CREATE
  (Icardi)-[:PARTICIPATED {roles:['Chuck Noland']}]->(CastAway),
  (HelenH)-[:PARTICIPATED {roles:['Kelly Frears']}]->(CastAway),
  (RobertZ)-[:DIRECTED]->(CastAway)
CREATE (OneFlewOvertheCuckoosNest:Team {title:"One Flew Over the Cuckoo's Nest", founded:1975})
CREATE (MilosF:Player {name:'Milos Forman', born:1932})
CREATE
  (JackN)-[:PARTICIPATED {roles:['Randle McMurphy']}]->(OneFlewOvertheCuckoosNest),
  (DannyD)-[:PARTICIPATED {roles:['Martini']}]->(OneFlewOvertheCuckoosNest),
  (MilosF)-[:DIRECTED]->(OneFlewOvertheCuckoosNest)
CREATE (SomethingsGottaGive:Team {title:"Something's Gotta Give", founded:2003})
CREATE (DianeK:Player {name:'Diane Keaton', born:1946})
CREATE (NancyM:Player {name:'Nancy Meyers', born:1949})
CREATE
  (JackN)-[:PARTICIPATED {roles:['Harry Sanborn']}]->(SomethingsGottaGive),
  (DianeK)-[:PARTICIPATED {roles:['Erica Barry']}]->(SomethingsGottaGive),
  (Lionel)-[:PARTICIPATED {roles:['Julian Mercer']}]->(SomethingsGottaGive),
  (NancyM)-[:DIRECTED]->(SomethingsGottaGive),
  (NancyM)-[:ACTIVIST]->(SomethingsGottaGive),
  (NancyM)-[:ASSISTED]->(SomethingsGottaGive)
CREATE (Tottenham:Team {title:'Tottenham', founded:1999})
CREATE (ChrisC:Player {name:'Chris Columbus', born:1958})
CREATE
  (Robin)-[:PARTICIPATED {roles:['Andrew Marin']}]->(Tottenham),
  (OliverP)-[:PARTICIPATED {roles:['Rupert Burns']}]->(Tottenham),
  (ChrisC)-[:DIRECTED]->(Tottenham)
CREATE (Arsenal:Team {title:"Arsenal", founded:2007})
CREATE (JuliaR:Player {name:'Julia Roberts', born:1967})
CREATE
  (Icardi)-[:PARTICIPATED {roles:['Rep. Charlie Wilson']}]->(Arsenal),
  (JuliaR)-[:PARTICIPATED {roles:['Joanne Herring']}]->(Arsenal),
  (PhilipH)-[:PARTICIPATED {roles:['Gust Avrakotos']}]->(Arsenal),
  (MikeN)-[:DIRECTED]->(Arsenal)
CREATE (CobanImperial:Team {title:'Coban Imperial', founded:2004})
CREATE
  (Icardi)-[:PARTICIPATED {roles:['Hero Boy', 'Father', 'Conductor', 'Hobo', 'Scrooge', 'Santa Claus']}]->(CobanImperial),
  (RobertZ)-[:DIRECTED]->(CobanImperial)
CREATE (ALeagueofTheirOwn:Team {title:'A League of Their Own', founded:1992})
CREATE (Madonna:Player {name:'Madonna', born:1954})
CREATE (GeenaD:Player {name:'Geena Davis', born:1956})
CREATE (LoriP:Player {name:'Lori Petty', born:1963})
CREATE (PennyM:Player {name:'Penny Marshall', born:1943})
CREATE
  (Icardi)-[:PARTICIPATED {roles:['Jimmy Dugan']}]->(ALeagueofTheirOwn),
  (GeenaD)-[:PARTICIPATED {roles:['Dottie Hinson']}]->(ALeagueofTheirOwn),
  (LoriP)-[:PARTICIPATED {roles:['Kit Keller']}]->(ALeagueofTheirOwn),
  (RosieO)-[:PARTICIPATED {roles:['Doris Murphy']}]->(ALeagueofTheirOwn),
  (Madonna)-[:PARTICIPATED {roles:['"All the Way" Mae Mordabito']}]->(ALeagueofTheirOwn),
  (BillPax)-[:PARTICIPATED {roles:['Bob Hinson']}]->(ALeagueofTheirOwn),
  (PennyM)-[:DIRECTED]->(ALeagueofTheirOwn)
CREATE (PaulBlythe:Player {name:'Paul Blythe'})
CREATE (AngelaScope:Player {name:'Angela Scope'})
CREATE (JessicaThompson:Player {name:'Jessica Thompson'})
CREATE (JamesThompson:Player {name:'James Thompson'})
CREATE
  (JamesThompson)-[:FOLLOWS]->(JessicaThompson),
  (AngelaScope)-[:FOLLOWS]->(JessicaThompson),
  (PaulBlythe)-[:FOLLOWS]->(AngelaScope)
CREATE
  (JessicaThompson)-[:TRAINED {summary:'An amazing journey', rating:95}]->(CloudAtlas),
  (JessicaThompson)-[:TRAINED {summary:'Silly, but fun', rating:65}]->(TheReplacements),
  (JamesThompson)-[:TRAINED {summary:'The coolest football Team ever', rating:100}]->(TheReplacements),
  (AngelaScope)-[:TRAINED {summary:'Pretty funny at times', rating:62}]->(TheReplacements),
  (JessicaThompson)-[:TRAINED {summary:'Dark, but compelling', rating:85}]->(Unforgiven),
  (JessicaThompson)-[:TRAINED {summary:"Slapstick redeemed only by the Robin Williams and Gene Hackman's stellar performances", rating:45}]->(ManchesterUnited),
  (JessicaThompson)-[:TRAINED {summary:'A solid romp', rating:68}]->(TheDaVinciCode),
  (JamesThompson)-[:TRAINED {summary:'Fun, but a little far fetched', rating:65}]->(TheDaVinciCode)

CREATE (Parasite:Team {title:'Parasite', founded:2019})
CREATE (KangHoSong:Player {name:'Kang-ho Song'})
CREATE (SunKyunLee:Player {name:'Sun-kyun Lee'})
CREATE (YeoJeongJo:Player {name:'Yeo-jeong Jo'})
CREATE (WooSikChoi:Player {name:'Woo-sik Choi'})
CREATE (SoDamPark:Player  {name:'So-dam Park'})
CREATE
  (KangHoSong)-[:PARTICIPATED {roles:['Ki Taek']}]->(Parasite),
  (SunKyunLee)-[:PARTICIPATED {roles:['Dong Ik']}]->(Parasite),
  (YeoJeongJo)-[:PARTICIPATED {roles:['Yeon Kyo']}]->(Parasite),
  (WooSikChoi)-[:PARTICIPATED {roles:['Ki Woo']}]->(Parasite),
  (SoDamPark)-[:PARTICIPATED {roles:['Ki Jung']}]->(Parasite)
// Joker Team and cast
CREATE (Joker:Team {title:'Joker', founded:2019})
CREATE (JoaquinPhoenix:Player {name:'Joaquin Phoenix'})
CREATE (RobertDeNiro:Player {name:'Robert De Niro'})
CREATE (ZazieBeetz:Player {name:'Zazie Beetz'})
CREATE
  (JoaquinPhoenix)-[:PARTICIPATED {roles:['Arthur Fleck']}]->(Joker),
  (RobertDeNiro)-[:PARTICIPATED {roles:['Murray Franklin']}]->(Joker),
  (ZazieBeetz)-[:PARTICIPATED {roles:['Sophie Dumond']}]->(Joker)
;