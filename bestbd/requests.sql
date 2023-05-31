#Вывод местоположения всех кузнецов из второй части игры

select 
games.title as game,
characters.name as blacksmith_name,
characters.type,
location.title as location
from articles
inner join games
on articles.games_id = games.id
inner join characters
on articles.characters_id = characters.id
inner join location
on articles.location_id = location.id
where 
games.title = 'Dark Souls II'
and
characters.type = 'blacksmith'
;

#Босс из первой части игры с наибольшим количеством падающих душ

select 
games.title as game,
characters.name as boss,
characters.souls,
location.title as location
from articles
inner join games
on articles.games_id = games.id
inner join characters
on articles.characters_id = characters.id
inner join location
on articles.location_id = location.id
where 
games.title = 'Dark Souls'
and
characters.type = 'boss'
order by characters.souls desc
limit 1
;

#Предметы, которые могут выпасть при убийстве Черных рыцарей на разных локациях

select distinct
games.title as game,
characters.name,
characters.souls,
weapons.title as weapon,
shields.title as shield,
armor.title as armor,
location.title as location
from articles
inner join games
on articles.games_id = games.id
inner join characters
on articles.characters_id = characters.id
inner join weapons
on articles.weapons_id = weapons.id
inner join shields
on articles.shields_id = shields.id
inner join armor
on articles.armor_id = armor.id
inner join location
on articles.location_id = location.id
where 
characters.name = 'Black Knight'
;

#Все рядовые противники из локации Катакомбы

select distinct
characters.name as enemy,
location.title as location
from articles
inner join games
on articles.games_id = games.id
inner join characters
on articles.characters_id = characters.id
inner join location
on articles.location_id = location.id
where
location.title = 'The Catacombs'
order by location asc
;

#Сет брони с наивысшим показателем защиты от магии из первой части

select
games.title as game,
armor.title as armor,
armor.magic_defense,
armor.weight,
armor.type,
location.title as location
from articles
inner join games
on articles.games_id = games.id
inner join armor
on articles.armor_id = armor.id
inner join location
on articles.location_id = location.id
order by magic_defense desc
limit 1
;