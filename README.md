Convert and import XML from data.stortinget.no

- saker m/ type representantforslag inneholder ikke hvilke representanter som har foreslått saken som data (kun som tekst i tittelen)
- voteringer knytter sak_id til votering_id
- hvordan blir en sak vedtatt med <personlig_votering>false</personlig_votering>?
- kan vi stole på at 'id' feltet for representanter er unikt for all tid? (eksternalId på vår side)
- varaer: kan dukke opp folk i voteringer som ikke finnes blant dagens representanter (ikke er valgt inn) (skal varaens stemme telle som originalens stemme?)

TODO:

- tests
- DTDs