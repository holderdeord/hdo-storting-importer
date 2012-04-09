Convert and import XML from data.stortinget.no

- saker m/ type representantforslag inneholder ikke hvilke representanter som har foreslått saken som data (kun som tekst i tittelen)
- voteringer knytter sak_id til votering_id

spm:

- hvordan blir en sak vedtatt med <personlig_votering>false</personlig_votering>? gjelder mange!
- kan vi stole på at 'id' feltet for representanter er unikt for all tid? (eksternalId på vår side)
- hva er greia med flere voteringer på samme sak? eks. "Motivasjon - Mestring - Muligheter. Ungdomstrinnet" har 9 voteringer
- alternativ votering: forvirrende

TODO:

- tests
- DTDs