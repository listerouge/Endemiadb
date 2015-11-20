select NomTaxonBinomial,
  sum(case when SourceDonnee = 'Herbier NOU' then 1 else 0 end) 'Herbier NOU',
  sum(case when SourceDonnee = 'Herbier MNHN' then 1 else 0 end) 'Herbier MNHN',
  sum(case when SourceDonnee = 'Observation terrain' then 1 else 0 end) 'Observation terrain',
  sum(case when SourceDonnee = 'Herbier NOU/ MO' then 1 else 0 end) 'Herbier NOU/ MO' #rajouter ligne sum si besoin d'une nouvelle modalité
from occurence
where NomTaxonBinomial LIKE 'Hibbertia vieillardii'
  #and repair_date <= '2013-03-31'
#group by bike_no;