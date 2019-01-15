# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# NFL TEAMS

Nflteam.create({name: "Arizona Cardinals", abbreviation: "AZ", image_file_name: "Arizona_Cardinals.png"})
Nflteam.create({name: "Atlanta Falcons", abbreviation: "ATL", image_file_name: "Atlanta_Falcons.png"})
Nflteam.create({name: "Baltimore Ravens", abbreviation: "BAL", image_file_name: "Baltimore_Ravens.png"})
Nflteam.create({name: "Buffalo Bills", abbreviation: "BUF", image_file_name: "Buffalo_Bills.png"})
Nflteam.create({name: "Carolina Panthers", abbreviation: "CAR", image_file_name: "Carolina_Panthers.png"})
Nflteam.create({name: "Chicago Bears", abbreviation: "CHI", image_file_name: "Chicago_Bears.png"})
Nflteam.create({name: "Cincinnati Bengals", abbreviation: "CIN", image_file_name: "Cincinnati_Bengals.png"})
Nflteam.create({name: "Cleveland Browns", abbreviation: "CLE", image_file_name: "Cleveland_Browns.png"})
Nflteam.create({name: "Dallas Cowboys", abbreviation: "DAL", image_file_name: "Dallas_Cowboys.png"})
Nflteam.create({name: "Denver Broncos", abbreviation: "DEN", image_file_name: "Denver_Broncos.png"})
Nflteam.create({name: "Detroit Lions", abbreviation: "DET", image_file_name: "Detroit_Lions.png"})
Nflteam.create({name: "Green Bay Packers", abbreviation: "GB", image_file_name: "Green_Bay_Packers.png"})
Nflteam.create({name: "Houston Texans", abbreviation: "HOU", image_file_name: "Houston_Texans.png"})
Nflteam.create({name: "Indianapolis Colts", abbreviation: "IND", image_file_name: "Indianapolis_Colts.png"})
Nflteam.create({name: "Jacksonville Jaguars", abbreviation: "JAC", image_file_name: "Jacksonville_Jaguars.png"})
Nflteam.create({name: "Kansas City Chiefs", abbreviation: "KC", image_file_name: "Kansas_City_Chiefs.png"})
Nflteam.create({name: "Los Angeles Chargers", abbreviation: "LAC", image_file_name: "Los_Angeles_Chargers.png"})
Nflteam.create({name: "Los Angeles Rams", abbreviation: "LAR", image_file_name: "Los_Angeles_Rams.png"})
Nflteam.create({name: "Miami Dolphins", abbreviation: "MIA", image_file_name: "Miami_Dolphins.png"})
Nflteam.create({name: "Minnesota Vikings", abbreviation: "MIN", image_file_name: "Minnesota_Vikings.png"})
Nflteam.create({name: "New Orleans Saints", abbreviation: "NO", image_file_name: "New_Orleans_Saints.png"})
Nflteam.create({name: "New York Giants", abbreviation: "NYG", image_file_name: "New_York_Giants.gif"})
Nflteam.create({name: "New York Jets", abbreviation: "NYJ", image_file_name: "New_York_Jets.png"})
Nflteam.create({name: "Oakland Raiders", abbreviation: "OAK", image_file_name: "Oakland_Raiders.png"})
Nflteam.create({name: "Philadelphia Eagles", abbreviation: "PHI", image_file_name: "Philadelphia_Eagles.png"})
Nflteam.create({name: "Pittsburgh Steelers", abbreviation: "PIT", image_file_name: "Pittsburgh_Steelers.png"})
Nflteam.create({name: "San Francisco 49ers", abbreviation: "SF", image_file_name: "San_Francisco_49ers.png"})
Nflteam.create({name: "Seattle Seahawks", abbreviation: "SEA", image_file_name: "Seattle_Seahawks.png"})
Nflteam.create({name: "Tampa Bay Bucaneers", abbreviation: "TB", image_file_name: "Tampa_Bay_Buccaneers.png"})
Nflteam.create({name: "Tennessee Titans", abbreviation: "TEN", image_file_name: "Tennesse_Titans.png"})
Nflteam.create({name: "Washington Redskins", abbreviation: "WAS", image_file_name: "Washington_Redskins.png"})

# SCHEDULES

Schedule.create({
week: 1,
start_date: "6/9/2018",
end_date: "12/9/2018",
})

Schedule.create({
week: 2,
start_date: "13/9/2018",
end_date: "19/9/2018"
})

Schedule.create({
week: 3,
start_date: "20/9/2018",
end_date: "26/9/2018"
})

Schedule.create({
week: 4,
start_date: "27/9/2018",
end_date: "3/10/2018"
})

Schedule.create({
week: 5,
start_date: "4/10/2018",
end_date: "10/10/2018"
})

Schedule.create({
week: 6,
start_date: "11/10/2018",
end_date: "17/10/2018"
})

Schedule.create({
week: 7,
start_date: "18/10/2018",
end_date: "24/10/2018"
})

Schedule.create({
week: 8,
start_date: "25/10/2018",
end_date: "31/10/2018"
})

Schedule.create({
week: 9,
start_date: "1/11/2018",
end_date: "7/11/2018"
})

Schedule.create({
week: 10,
start_date: "8/11/2018",
end_date: "14/11/2018"
})

Schedule.create({
week: 11,
start_date: "15/11/2018",
end_date: "21/11/2018"
})

Schedule.create({
week: 12,
start_date: "22/11/2018",
end_date: "28/11/2018"
})

Schedule.create({
week: 13,
start_date: "29/11/2018",
end_date: "5/12/2018"
})

Schedule.create({
week: 14,
start_date: "6/12/2018",
end_date: "12/12/2018"
})

Schedule.create({
week: 15,
start_date: "13/12/2018",
end_date: "19/12/2018"
})

Schedule.create({
week: 16,
start_date: "20/12/2018",
end_date: "26/12/2018"
})

Schedule.create({
week: 17,
start_date: "27/12/2018",
end_date: "2/1/2019"
})

Schedule.create({
week: 18,
start_date: "3/1/2019",
end_date: "1/1/2025"
})

# CHARACTERISTICS

Characteristic.create({
  name: "Ejection",
  points: 1,
  category: "type"
  })

Characteristic.create({
  name: "On-field Incident",
  points: 0,
  category: "type"
  })

Characteristic.create({
  name: "League Action",
  points: 1,
  category: "type"
    })

Characteristic.create({
  name: "Legal System Involvement (no arrest)" ,
  points: 1,
  category: "type"
  })

Characteristic.create({
  name: "Arrest",
  points: 2,
  category: "type"
  })

Characteristic.create({
  name: "Drugs (non-PED)",
  points: 1,
  category: "accessory"
  })

Characteristic.create({
  name: "Drugs (PED)",
  points: 1,
  category: "accessory"
  })

Characteristic.create({
  name: "Alcohol",
  points: 1,
  category: "accessory"
  })

Characteristic.create({
  name: "Gun",
  points: 3,
  category: "accessory"
  })

Characteristic.create({
  name: "Weapon (non-gun)",
  points: 1,
  category: "accessory"
  })

Characteristic.create({
  name: "Car",
  points: 2,
  category: "accessory"
  })

Characteristic.create({
  name: "Sex",
  points: 2,
  category: "accessory"
  })

Characteristic.create({
  name: "White Collar Crime",
  points: 1,
  category: "additional"
  })

Characteristic.create({
  name: "Physical Assault",
  points: 2,
  category: "additional"
  })

Characteristic.create({
  name: "Minor (<18 year old) Involved",
  points: 2,
  category: "people"
  })

Characteristic.create({
  name: "Female Involved",
  points: 3,
  category: "people"
  })

Characteristic.create({
  name: "Teammate Involved",
  points: 2,
  category: "people"
  })

Characteristic.create({
  name: "Someone Died",
  points: 4,
  category: "people"
  })

# CRIMES

=begin
nflteam = Nflteam.find_by(abbreviation:"GB")
Crime.create({
  player: "Lance Kendrick",
  is_player: true,
  crime_date: "2/9/2017",
  crime_type: "DUI",
  crime_level: 2,
  suspension: false,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"HOU")
Crime.create({
  player: "Brian Cushing",
  is_player: true,
  crime_date: "13/9/2017",
  crime_type: "PED/Substance abuse",
  crime_level: 1,
  suspension: true,
  suspension_date: "13/9/2017",
  suspension_games: 10,
  nflteam: nflteam})
=end

=begin
nflteam = Nflteam.find_by(abbreviation:"MIA")
Crime.create({
  player: "Lawrence Timmons",
  is_player: true,
  crime_date: "20/9/2017",
  crime_type: "Violating team rules",
  crime_level: 0,
  suspension: true,
  suspension_date: "20/9/2017",
  suspension_games: 1,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"LAR")
Crime.create({
  player: "Ethan Westbrooks",
  is_player: true,
  crime_date: "22/9/2017",
  crime_type: "Gun charges",
  crime_level: 4,
  suspension: false,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"CHI")
Crime.create({
  player: "Danny Trevathan",
  is_player: true,
  crime_date: "30/9/2017",
  crime_type: "Illegal hit",
  crime_level: 0,
  suspension: true,
  suspension_date: "30/9/2017",
  suspension_games: 1,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"GB")
Crime.create({
  player: "Aaron Jones",
  is_player: true,
  crime_date: "1/10/2017",
  crime_type: "DUI",
  crime_level: 2,
  suspension: false,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"CIN")
Crime.create({
  player: "Tyler Boyd",
  is_player: true,
  crime_date: "5/10/2017",
  crime_type: "Drug possession",
  crime_level: 1,
  suspension: false,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"CHI")
Crime.create({
  player: "Darius Latham",
  is_player: true,
  crime_date: "9/10/2017",
  crime_type: "PED/Substance abuse",
  crime_level: 1,
  suspension: true,
  suspension_date: "9/10/2017",
  suspension_games: 4,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"ATL")
Crime.create({
  player: "B.J. Daniels",
  is_player: true,
  crime_date: "9/10/2017",
  crime_type: "Unknown",
  crime_level: 0,
  suspension: true,
  suspension_date: "9/10/2017",
  suspension_games: 4,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"NYG")
Crime.create({
  player: "Dominique Rodgers-Cromartie",
  is_player: true,
  crime_date: "11/10/2017",
  crime_type: "Violating team rules",
  crime_level: 0,
  suspension: true,
  suspension_date: "11/10/2017",
  suspension_games: 1,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"BAL")
Crime.create({
  player: "Matt Elam",
  is_player: true,
  crime_date: "12/10/2017",
  crime_type: "Unknown",
  crime_level: 0,
  suspension: true,
  suspension_date: "12/10/2017",
  suspension_games: 6,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"OAK")
Crime.create({
  player: "Marshawn Lynch",
  is_player: true,
  crime_date: "20/10/2017",
  crime_type: "On-field incident",
  crime_level: 0,
  suspension: true,
  suspension_date: "20/10/2017",
  suspension_games: 1,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"MIN")
Crime.create({
  player: "Andrew Sendejo",
  is_player: true,
  crime_date: "23/10/2017",
  crime_type: "Illegal hit",
  crime_level: 0,
  suspension: true,
  suspension_date: "23/10/2017",
  suspension_games: 1,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"IND")
Crime.create({
  player: "Robert Mathis",
  is_player: false,
  crime_date: "24/10/2017",
  crime_type: "DUI",
  crime_level: 2,
  suspension: false,
  nflteam: nflteam})

nflteam = Nflteam.find_by(abbreviation:"CHI")
Crime.create({
  player: "Jerrell Freeman",
  is_player: true,
  crime_date: "30/10/2017",
  crime_type: "PED/Substance abuse",
  crime_level: 1,
  suspension: true,
  suspension_date: "30/10/2017",
  suspension_games: 10,
  nflteam: nflteam})

  nflteam = Nflteam.find_by(abbreviation:"NYG")
  Crime.create({
    player: "Janoris Jenkins",
    is_player: true,
    crime_date: "31/10/2017",
    crime_type: "Violating team rules",
    crime_level: 0,
    suspension: true,
    suspension_date: "31/10/2017",
    suspension_games: 1,
    nflteam: nflteam})
=end

# QUESTS

Quest.create({
  name: "Supporting Role",
  description: "Have a non player commit a crime (coach, practice squad, member of front office, or fan)"
})

Quest.create({
  name: "I Shot The Sheriff",
  description: "Have a player commit a crime involving a gun"
})

Quest.create({
  name: "Mulligan",
  description: "The first team you picked commits no crimes"
})

Quest.create({
  name: "Can't Stop Won't Stop",
  description: "One of your players commits multiple crimes"
})

Quest.create({
  name: "International Man of Mystery",
  description: "One of your players commits a crime outside of the US"
})

Quest.create({
  name: "Riding the Bench",
  description: "You have players totaling more than 15 games supended"
})

Quest.create({
  name: "Partners in Crime",
  description: "A crime involves multiple players"
})

Quest.create({
  name: "Narcotics",
  description: "Have 2 or more teams commit drug related crimes"
})

=begin
Quest.create({
  name: "Cookie Jar Criminal",
  description: "have a player commit a theft related crime"
})

Quest.create({
  name: "Can't Stop Won't Stop 1",
  description: "have a player suspended for a repeat offense"
})
Quest.create({
  name: "Under The Influence",
  description: "drugs or alcohol were the accomplice used to influence two of your players crimes"
})
Quest.create({
  name: "I Used To Do Drugs, I Still Do",
  description: "have a player commit a repeat drug offense"
})
Quest.create({
  name: "CTE Master",
  description: "have a player helmet to helmet multiple times in the season"
})
Quest.create({
  name: "Can't Stop Won't Stop",
  description: "one of your players gets arrested and it isn't their first time"
})
Quest.create({
  name: "I Am The Danger",
  description: "alcohol induced assault"
})

Quest.create({
  name: "Substance Abuse",
  description: "draft the team with the most drug offenses"
})

Quest.create({
  name: "I Dunno What You Talkin' Bout",
  description: "resisting/deny an obvious infraction"
})
=end

# TEAMS

=begin
Team.create({
  season: 2018,
  name: "Adam 'Slammer Rammers'",
  quest_id: Quest.find_by(name: "I Dunno What You Talkin' Bout").id,
  description: "Oakland: I mean wow talk about value, this is a team that’s players and fans take part in so many shenanigans, that they are literally building a prison in their new Vegas stadium: https://raiderswire.usatoday.com/2018/08/20/new-raiders-stadium-in-las-vegas-will-include-jail-and-courthouse/ \n
  San Francisco: The 9ers blow for one, and they have had a solid and consistent record of crimes committed.  Moreover these crimes have been diverse/plentiful and range from domestic violence to drugs and assault. \n
  Denver: Bc they have the most crime of all teams, including almost twice the number of domestic violence crimes than the next highest team.  Something about the thin air and sucking at football, will get under their skin this season."
  })
    team = Team.last
    pick1 = Nflteam.find_by(abbreviation:"OAK")
    pick2 = Nflteam.find_by(abbreviation:"SF")
    pick3 = Nflteam.find_by(abbreviation:"DEN")
    Pick.create({team: team, nflteam: pick1})
    Pick.create({team: team, nflteam: pick2})
    Pick.create({team: team, nflteam: pick3})
=end

=begin
Team.create({
  season: 2018,
  name: "Drucker 'Shawshank Reception'",
  quest_id: Quest.find_by(name: "CTE Master").id,
  description: "Atlanta: Cause A Town mofucka that’s why \n
  Detroit: Without Aretha Franklin to keep the peace you know shit's about to get Detroity \n
  New York (Giants): Because this year is definitely the year OBJ shoots his own dick off"
  })
    team = Team.last
    pick1 = Nflteam.find_by(abbreviation:"ATL")
    pick2 = Nflteam.find_by(abbreviation:"DET")
    pick3 = Nflteam.find_by(abbreviation:"NYG")
    Pick.create({team: team, nflteam: pick1})
    Pick.create({team: team, nflteam: pick2})
    Pick.create({team: team, nflteam: pick3})

Team.create({
  season: 2018,
  name: "Yair 'Pitch Burfict'",
  quest_id: Quest.find_by(name: "Can't Stop Won't Stop").id,
  description: "Baltimore: Hard to believe that the team that generated the most fantasy points last year (tied with the Jets) hasn’t been picked yet. Most fantasy prison league experts rank it in their top 3. \n
  Buffalo: With suspension looming for LeSean McCoy, I’m hoping to cash in on some fantasy points early on in the season. Plus I believe they’re going to be one of the worst teams this year which often translates to more crimes. \n
  Carolina: A late-round sleeper and a top-5 in fantasy prison league points producer last year (my mission is related to repeat offenses, so trying to pick teams that were top offenders last season)."
  })
    team = Team.last
    pick1 = Nflteam.find_by(abbreviation:"BAL")
    pick2 = Nflteam.find_by(abbreviation:"BUF")
    pick3 = Nflteam.find_by(abbreviation:"CAR")
    Pick.create({team: team, nflteam: pick1})
    Pick.create({team: team, nflteam: pick2})
    Pick.create({team: team, nflteam: pick3})

Team.create({
  season: 2018,
  name: "Carolina 'Whip it: Adrian Peterson's Guide to Parenthood'",
  quest_id: Quest.find_by(name: "I Am The Danger").id,
  description: "Dallas: Because Texas is a lawless state and that’s not going to translate well when they travel. \n
  Houston: Continuing my Texas streak I’m taking Houston. I have high hopes for this state. \n
  Pittsburgh: Both the Steelers and the state of Pennsylvania have a reputation for hiring rapists so my odds are good here."
  })
    team = Team.last
    pick1 = Nflteam.find_by(abbreviation:"DAL")
    pick2 = Nflteam.find_by(abbreviation:"HOU")
    pick3 = Nflteam.find_by(abbreviation:"PIT")
    Pick.create({team: team, nflteam: pick1})
    Pick.create({team: team, nflteam: pick2})
    Pick.create({team: team, nflteam: pick3})

Team.create({
  season: 2018,
  name: "Joe 'Collisions & Collusion'",
  quest_id: Quest.find_by(name: "I Used To Do Drugs, I Still Do").id,
  description: "Green Bay: Every year we think 'GB is a good organization, there's no places to get in trouble, Aaron Rodgers is in charge' - but they still commit crimes. Every NFL player commits crimes! No longer will this gem of criminals in the north be overlooked. \n
  Cleveland: This team just went 0-16.  What's going to happen when they start off with a couple more losses? Chaos! Clearly Hue Jackson can't coach, there's no way he keeps them in line. Also: Josh Gordon. \n
  Arizona: Good teams have leaders to keep players in line and winning keeps player caring. Arizona is not a good team."
  })
    team = Team.last
    pick1 = Nflteam.find_by(abbreviation:"GB")
    pick2 = Nflteam.find_by(abbreviation:"CLE")
    pick3 = Nflteam.find_by(abbreviation:"AZ")
    Pick.create({team: team, nflteam: pick1})
    Pick.create({team: team, nflteam: pick2})
    Pick.create({team: team, nflteam: pick3})

Team.create({
  season: 2018,
  name: "Yoni 'Look what you made me do'",
  quest_id: Quest.find_by(name: "I Shot The Sheriff").id,
  description: "Chicago: Look, I'm just playing the odds here. Chicago has some of the best gun violence in the nation. Also, the bears topped the prison power rankings for 2017. Mitch Trubisky is a bust, and what better way for him or his teammates to channel their collective frustrations than with good ol' bloody murder. I'm taking this gift pick straight to the bank. \n
  Los Angelos (Rams): LA is a sprawling nightmare of a town with loads of juicy crime. The Rams still remember St. Louis, another crime ridden city. Fourth in the power rankings last year, Jared Goff is about to murder someone \n
  Tampa Bay: This is Florida, a state that we can only hope will be submerged due to global warming. Jameis Winston flashed some greatness in the offseason, and is guaranteed to be a fantasy-prison super star."
  })
    team = Team.last
    pick1 = Nflteam.find_by(abbreviation:"CHI")
    pick2 = Nflteam.find_by(abbreviation:"LAR")
    pick3 = Nflteam.find_by(abbreviation:"TB")
    Pick.create({team: team, nflteam: pick1})
    Pick.create({team: team, nflteam: pick2})
    Pick.create({team: team, nflteam: pick3})

Team.create({
  season: 2018,
  name: "Brett 'Team Rub 'N' Tugs'",
  quest_id: Quest.find_by(name: "Substance Abuse").id,
  description: "New York (Jets): Most infractions so far this year that I can see. Shithole city and an absolutely terrible team. \n
  Minnesota: Because what else is there to do in Minnesota besides drink and drive? \n
  Indianapolis: Same reason as Minnesota, except it's Indiana. Hoping for a lot of easy DUI/drug points. "
  })
    team = Team.last
    pick1 = Nflteam.find_by(abbreviation:"NYJ")
    pick2 = Nflteam.find_by(abbreviation:"MIN")
    pick3 = Nflteam.find_by(abbreviation:"IND")
    Pick.create({team: team, nflteam: pick1})
    Pick.create({team: team, nflteam: pick2})
    Pick.create({team: team, nflteam: pick3})

Team.create({
  season: 2018,
  name: "Brian",
  quest_id: Quest.find_by(name: "Supporting Role").id,
  description: "Cincinnati: Obviously becuase of https://www.sbnation.com/2018/3/16/17130500/vontaze-burfict-suspension-performance-enhancing-ped-cincinnati-bengals \n
  Miami: Gotta get a mediocre coastal city here in the second round. Represents a great value pick with lots of distractions and party scene. \n
  Los Angelos (Chargers): Adam's hometown team"
  })
    team = Team.last
    pick1 = Nflteam.find_by(abbreviation:"CIN")
    pick2 = Nflteam.find_by(abbreviation:"MIA")
    pick3 = Nflteam.find_by(abbreviation:"LAC")
    Pick.create({team: team, nflteam: pick1})
    Pick.create({team: team, nflteam: pick2})
    Pick.create({team: team, nflteam: pick3})
=end
