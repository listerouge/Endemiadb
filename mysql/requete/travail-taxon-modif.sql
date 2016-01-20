select NomTaxon from occurence
inner join taxon
on taxon.NomScientifique = occurence.NomTaxon
where occurence.DateModification >= '2016/01/07'
and Famille like 'Orchid%'
group by NomTaxon