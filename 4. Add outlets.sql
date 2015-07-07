INSERT INTO Outlets
select 'Silpo','Lviv, Zelena 100'
union all
select 'Magnus','Lviv, Sheptuckih 23'
union all
select 'Produktu','Lviv, Prurodna 100'
union all
select 'Furshet','Lviv, Chuprynky 100';

INSERT INTO Outlets (Name)
select 'Auchan'
union all
select 'Furshet'
union all
select 'Arsen';