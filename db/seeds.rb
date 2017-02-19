# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first = {
"id_token": "eyJhbGciOiJSUzI1NiIsImtpZCI6IjFmY2MwOWEyNTU0ZjhiNDRhZGY1N2UzNDA2MTBiMmFiNzhlZTE4ZWQifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiaWF0IjoxNDg3NDY3NzU5LCJleHAiOjE0ODc0NzEzNTksImF0X2hhc2giOiJKSlVaODJvOVpNVW1tSHo3a1RUSENnIiwiYXVkIjoiMTQwOTE0ODE1NTUzLTNyY3E4MnNoNDN0MDV0M2RmbjViNWw0MHUyamExcWx0LmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA3ODIwNTE1MTY3MDQ0MjY1NTcwIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF6cCI6IjE0MDkxNDgxNTU1My0zcmNxODJzaDQzdDA1dDNkZm41YjVsNDB1MmphMXFsdC5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsImVtYWlsIjoieGltc2VyZ2lvQGdtYWlsLmNvbSJ9.XYTseE1BsbKRpn2FaBBLi4AdpaIqGIDrsEsVV8s7Ptnxw9_wJhS3plVQi8Du8KhkIrdBkvrCypZxLjgcLmAkpsYH2o37U8M10LvzcTU-cJYNpeefOG5gALiy1EJdaCOB7opuf6O3ZoTPZ0yrCLA3GSSOTBVVeZm-bEVQfeUInrEFdbyRJQQArE2NyLvlDE1OwwHJUvoMTpSSFP9t_j9jg4034EtX_nTamUnLRwiLT0H3gfLWP8jV27sfi6DlHE1toAnvLIIXlQIsw_0hOwsiPZpyNqWavxTuSBn7Q0Gv2DsYJF76GnVKoML0MmJpfDF-UzWyM0H3nv_H0w-6haw45g",
"access_token": "wdokokwadok21",
"refresh_token": "wdkajjpokfap32",
"name": {
"first_name": "Joseph",
"last_name": "Pena"
},
"email": "joe@pena.gov",
"address": {
"street": "111 Noob ave",
"city": "Gainesville",
"state": "Florida",
"zip": "32603"
},
"phone": "2817775729",
"emergency_contacts": [{
"name": {
  "first_name": "Conor",
  "last_name": "Landry"
},
"email": "conor@landry.com",
"relation": "Uncle",
"priority": "1"
}, {
"name": {
  "first_name": "Joseph",
  "last_name": "Pena"
},
"email": "joe@pena.com",
"relation": "Father",
"priority": "2"
}, {
"name": {
  "first_name": "Jacob",
  "last_name": "Ville"
},
"email": "jacob@ville.com",
"relation": "Mother",
"priority": "3"
}]}.to_hash

event_one = {"event": [{
  "title": "Motel 8 Meetup",
  "start_date": "2017-2-18",
  "end_date": "2017-2-18",
  "start_time": "800",
  "end_time": "1900",
  "geo_points": {
    "longitude": "123.024",
    "latitude": "-24.123"
  },
  "location_name": "Motel 8 in a Sketchy Place",
  "checked_in": "0"
}, {
  "title": "Motel 12 Meetup",
  "start_date": "2017-3-18",
  "end_date": "2017-3-18",
  "start_time": "1100",
  "end_time": "2100",
  "geo_points": {
    "longitude": "120.024",
    "latitude": "-17.123"
  },
  "location_name": "Motel 8 in a Sketchy Place",
  "checked_in": "0"
}]}.to_hash

user1 = User.create(first)
user1.update_attributes(:event => event_one)
user1.save

user2 = User.create(first)
user2.update_attributes(:event => event_one)
user2.save

user3 = User.create(first)
user3.update_attributes(:event => event_one)
user3.save
