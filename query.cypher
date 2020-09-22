//Consultas basicas

//Equipos y compañeros que Gareth y Sergio Reguilon tienen en comun
MATCH (a:Player { name: 'Gareth Bale' }),(b:Player { name: 'Sergio Reguilon' }), 
p = ((a)-[*]-(b)) 
RETURN p LIMIT 1

//Camino mas corto de Gareth a Sergio 
MATCH (a:Player { name: 'Gareth Bale' }),(b:Player { name: 'Sergio Reguilon' }), 
p = shortestPath((a)-[*]-(b))
RETURN p

//Jugadores entre Real Madrid y Real Sociedad
MATCH (n:Team),(m:Team),
p = ((n)-[*]-(m)) 
WHERE id(n) = 142 and id(m) = 11
RETURN p LIMIT 1

//Camino mas corto entre Real Madrid y Real Sociedad
match p=shortestPath((n)-[*]-(m)) 
where id(n) = 142 and id(m) = 11
return p;
