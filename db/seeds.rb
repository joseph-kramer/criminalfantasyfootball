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
Nflteam.create({name: "Las Vegas Raiders", abbreviation: "LVR", image_file_name: "Oakland_Raiders.png"})
Nflteam.create({name: "Philadelphia Eagles", abbreviation: "PHI", image_file_name: "Philadelphia_Eagles.png"})
Nflteam.create({name: "Pittsburgh Steelers", abbreviation: "PIT", image_file_name: "Pittsburgh_Steelers.png"})
Nflteam.create({name: "San Francisco 49ers", abbreviation: "SF", image_file_name: "San_Francisco_49ers.png"})
Nflteam.create({name: "Seattle Seahawks", abbreviation: "SEA", image_file_name: "Seattle_Seahawks.png"})
Nflteam.create({name: "Tampa Bay Bucaneers", abbreviation: "TB", image_file_name: "Tampa_Bay_Buccaneers.png"})
Nflteam.create({name: "Tennessee Titans", abbreviation: "TEN", image_file_name: "Tennesse_Titans.png"})
Nflteam.create({name: "Washington ???", abbreviation: "WAS", image_file_name: "Washington_Redskins.png"})

# SCHEDULES

Schedule.create({
week: 0,
start_date: "19/8/2019",
end_date: "10/9/2020",
})

Schedule.create({
week: 1,
start_date: "10/9/2020",
end_date: "17/9/2020"
})

Schedule.create({
week: 2,
start_date: "17/9/2020",
end_date: "24/9/2020"
})

Schedule.create({
week: 3,
start_date: "24/9/2020",
end_date: "1/10/2020"
})

Schedule.create({
week: 4,
start_date: "1/10/2020",
end_date: "8/10/2020"
})

Schedule.create({
week: 5,
start_date: "8/10/2020",
end_date: "15/10/2020"
})

Schedule.create({
week: 6,
start_date: "15/10/2020",
end_date: "22/10/2020"
})

Schedule.create({
week: 7,
start_date: "22/10/2020",
end_date: "29/10/2020"
})

Schedule.create({
week: 8,
start_date: "29/10/2020",
end_date: "5/11/2020"
})

Schedule.create({
week: 9,
start_date: "5/11/2020",
end_date: "12/11/2020"
})

Schedule.create({
week: 10,
start_date: "12/11/2020",
end_date: "19/11/2020"
})

Schedule.create({
week: 11,
start_date: "19/11/2020",
end_date: "26/11/2020"
})

Schedule.create({
week: 12,
start_date: "26/11/2020",
end_date: "3/12/2020"
})

Schedule.create({
week: 13,
start_date: "3/12/2020",
end_date: "10/12/2020"
})

Schedule.create({
week: 14,
start_date: "10/12/2020",
end_date: "17/12/2020"
})

Schedule.create({
week: 15,
start_date: "17/12/2020",
end_date: "24/12/2020"
})

Schedule.create({
week: 16,
start_date: "24/12/2020",
end_date: "31/12/2020"
})

Schedule.create({
week: 17,
start_date: "31/12/2020",
end_date: "7/1/2021"
})

Schedule.create({
week: 18,
start_date: "7/1/2021",
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
  name: "Sportsmanship Award",
  points: -5,
  category: "type"
  })

#covid
Characteristic.create({
  name: "Covid Case",
  points: 1,
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
  name: "Resisting Arrest",
  points: 1,
  category: "additional"
  })

Characteristic.create({
  name: "Outside USA",
  points: 3,
  category: "additional"
  })

Characteristic.create({
  name: "Gambling",
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
  description: "One of the teams you picked commits no crimes"
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
  description: "You have players totaling more than 15 games suspended"
})

Quest.create({
  name: "Partners in Crime",
  description: "A crime involves multiple players"
})

Quest.create({
  name: "Narcotics",
  description: "Have 2 or more teams commit drug related crimes"
})

#covid
Quest.create({
  name: "Sharing is NOT caring",
  description: "Have the team with the most coronavirus infections"
})

# TEAMS

# USERS
