Feature: Import data

  Scenario: Import representatives
    When I successfully run `hdo-converter --only-print representatives`
    Then the output should contain:
    """
    <?xml version="1.0" encoding="UTF-8"?>
    <representatives>
      <representative>
        <externalId>ADA</externalId>
        <firstName>André Oktay</firstName>
        <lastName>Dahl</lastName>
        <dateOfBirth>1975-07-07T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>AESO</externalId>
        <firstName>Arne</firstName>
        <lastName>Sortevik</lastName>
        <dateOfBirth>1947-03-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>AGES</externalId>
        <firstName>Åge</firstName>
        <lastName>Starheim</lastName>
        <dateOfBirth>1946-05-23T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sogn og Fjordane</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>AKSH</externalId>
        <firstName>Aksel</firstName>
        <lastName>Hagen</lastName>
        <dateOfBirth>1953-10-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ALEH</externalId>
        <firstName>Alf Egil</firstName>
        <lastName>Holmelid</lastName>
        <dateOfBirth>1947-12-13T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vest-Agder</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ALJ</externalId>
        <firstName>Anna</firstName>
        <lastName>Ljunggren</lastName>
        <dateOfBirth>1984-06-13T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ALYS</externalId>
        <firstName>Audun</firstName>
        <lastName>Lysbakken</lastName>
        <dateOfBirth>1977-09-30T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ANA</externalId>
        <firstName>Anders</firstName>
        <lastName>Anundsen</lastName>
        <dateOfBirth>1975-11-17T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ANMB</externalId>
        <firstName>Anne Marit</firstName>
        <lastName>Bjørnflaten</lastName>
        <dateOfBirth>1969-06-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ANNH</externalId>
        <firstName>Anniken</firstName>
        <lastName>Huitfeldt</lastName>
        <dateOfBirth>1969-11-29T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ANS</externalId>
        <firstName>Anne-Grete</firstName>
        <lastName>Strøm-Erichsen</lastName>
        <dateOfBirth>1949-10-21T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ARK</externalId>
        <firstName>Arve</firstName>
        <lastName>Kambe</lastName>
        <dateOfBirth>1974-11-25T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ASC</externalId>
        <firstName>Åse</firstName>
        <lastName>Michaelsen</lastName>
        <dateOfBirth>1960-06-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vest-Agder</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ATR</externalId>
        <firstName>Anette</firstName>
        <lastName>Trettebergstuen</lastName>
        <dateOfBirth>1981-05-25T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ATW</externalId>
        <firstName>Anne Tingelstad</firstName>
        <lastName>Wøien</lastName>
        <dateOfBirth>1965-06-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Senterpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>AWE</externalId>
        <firstName>Anders B.</firstName>
        <lastName>Werp</lastName>
        <dateOfBirth>1961-12-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BEHA</externalId>
        <firstName>Bendiks H.</firstName>
        <lastName>Arnesen</lastName>
        <dateOfBirth>1951-06-09T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BENH</externalId>
        <firstName>Bent</firstName>
        <lastName>Høie</lastName>
        <dateOfBirth>1971-05-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BLO</externalId>
        <firstName>Bjørn</firstName>
        <lastName>Lødemel</lastName>
        <dateOfBirth>1958-08-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sogn og Fjordane</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BT</externalId>
        <firstName>Borghild</firstName>
        <lastName>Tenden</lastName>
        <dateOfBirth>1951-06-23T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Venstre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BTH</externalId>
        <firstName>Bente</firstName>
        <lastName>Thorsen</lastName>
        <dateOfBirth>1958-10-31T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BVS</externalId>
        <firstName>Bård Vegar</firstName>
        <lastName>Solhjell</lastName>
        <dateOfBirth>1971-12-22T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BÅH</externalId>
        <firstName>Bård</firstName>
        <lastName>Hoksrud</lastName>
        <dateOfBirth>1973-03-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Telemark</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>CT</externalId>
        <firstName>Christian</firstName>
        <lastName>Tybring-Gjedde</lastName>
        <dateOfBirth>1963-08-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>DE</externalId>
        <firstName>Dagrun</firstName>
        <lastName>Eriksen</lastName>
        <dateOfBirth>1971-06-28T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vest-Agder</district>
        <party>Kristelig Folkeparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>DH</externalId>
        <firstName>Dagfinn</firstName>
        <lastName>Høybråten</lastName>
        <dateOfBirth>1957-12-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Kristelig Folkeparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>DOT</externalId>
        <firstName>Dag Ole</firstName>
        <lastName>Teigen</lastName>
        <dateOfBirth>1982-08-10T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>DTA</externalId>
        <firstName>Dag Terje</firstName>
        <lastName>Andersen</lastName>
        <dateOfBirth>1957-05-27T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>EAS</externalId>
        <firstName>Elisabeth</firstName>
        <lastName>Aspaker</lastName>
        <dateOfBirth>1962-10-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>EBO</externalId>
        <firstName>Else-May</firstName>
        <lastName>Botten</lastName>
        <dateOfBirth>1973-08-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>EIRS</externalId>
        <firstName>Eirik</firstName>
        <lastName>Sivertsen</lastName>
        <dateOfBirth>1971-03-17T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>EKS</externalId>
        <firstName>Eirin</firstName>
        <lastName>Sund</lastName>
        <dateOfBirth>1967-04-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ELN</externalId>
        <firstName>Elisabeth Røbekk</firstName>
        <lastName>Nørve</lastName>
        <dateOfBirth>1951-03-29T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ES</externalId>
        <firstName>Erna</firstName>
        <lastName>Solberg</lastName>
        <dateOfBirth>1961-02-24T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>EVH</externalId>
        <firstName>Eva Kristin</firstName>
        <lastName>Hansen</lastName>
        <dateOfBirth>1973-03-05T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>FBJ</externalId>
        <firstName>Frank</firstName>
        <lastName>Bakke-Jensen</lastName>
        <dateOfBirth>1965-03-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Finnmark</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>FR</externalId>
        <firstName>Freddy</firstName>
        <lastName>de Ruiter</lastName>
        <dateOfBirth>1969-04-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Aust-Agder</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GAG</externalId>
        <firstName>Gunnar</firstName>
        <lastName>Gundersen</lastName>
        <dateOfBirth>1956-05-21T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GEHN</externalId>
        <firstName>Geir-Ketil</firstName>
        <lastName>Hansen</lastName>
        <dateOfBirth>1956-03-13T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GJB</externalId>
        <firstName>Geir Jørgen</firstName>
        <lastName>Bekkevold</lastName>
        <dateOfBirth>1963-11-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Telemark</district>
        <party>Kristelig Folkeparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GJH</externalId>
        <firstName>Gjermund</firstName>
        <lastName>Hagesæter</lastName>
        <dateOfBirth>1960-12-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GJK</externalId>
        <firstName>Gerd Janne</firstName>
        <lastName>Kristoffersen</lastName>
        <dateOfBirth>1952-11-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nord-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GKG</externalId>
        <firstName>Gunn Karin</firstName>
        <lastName>Gjul</lastName>
        <dateOfBirth>1967-07-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GOK</externalId>
        <firstName>Gorm</firstName>
        <lastName>Kjernli</lastName>
        <dateOfBirth>1981-12-31T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GUE</externalId>
        <firstName>Gunvor</firstName>
        <lastName>Eldegard</lastName>
        <dateOfBirth>1963-04-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GUO</externalId>
        <firstName>Gunn</firstName>
        <lastName>Olsen</lastName>
        <dateOfBirth>1952-09-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Telemark</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HAFA</externalId>
        <firstName>Hans Frode Kielland</firstName>
        <lastName>Asmyhr</lastName>
        <dateOfBirth>1970-02-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HEH</externalId>
        <firstName>Heikki</firstName>
        <lastName>Holmås</lastName>
        <dateOfBirth>1972-06-28T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HEW</externalId>
        <firstName>Henning</firstName>
        <lastName>Warloe</lastName>
        <dateOfBirth>1961-03-24T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HHL</externalId>
        <firstName>Hallgeir H.</firstName>
        <lastName>Langeland</lastName>
        <dateOfBirth>1955-11-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HML</externalId>
        <firstName>Hilde</firstName>
        <lastName>Magnusson</lastName>
        <dateOfBirth>1970-06-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HOSY</externalId>
        <firstName>Hans Olav</firstName>
        <lastName>Syversen</lastName>
        <dateOfBirth>1966-11-25T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Kristelig Folkeparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HPED</externalId>
        <firstName>Helga</firstName>
        <lastName>Pedersen</lastName>
        <dateOfBirth>1973-01-13T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Finnmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HSK</externalId>
        <firstName>Henning</firstName>
        <lastName>Skumsvoll</lastName>
        <dateOfBirth>1947-03-15T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vest-Agder</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HTA</externalId>
        <firstName>Hadia</firstName>
        <lastName>Tajik</lastName>
        <dateOfBirth>1983-07-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HTN</externalId>
        <firstName>Harald T.</firstName>
        <lastName>Nesvik</lastName>
        <dateOfBirth>1966-05-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IAG</externalId>
        <firstName>Ingebjørg</firstName>
        <lastName>Godskesen</lastName>
        <dateOfBirth>1957-05-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Aust-Agder</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IBTH</externalId>
        <firstName>Ib</firstName>
        <lastName>Thomsen</lastName>
        <dateOfBirth>1961-10-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IHE</externalId>
        <firstName>Ingrid</firstName>
        <lastName>Heggø</lastName>
        <dateOfBirth>1961-08-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sogn og Fjordane</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IJ</externalId>
        <firstName>Irene</firstName>
        <lastName>Johansen</lastName>
        <dateOfBirth>1961-01-07T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IME</externalId>
        <firstName>Ine M. Eriksen</firstName>
        <lastName>Søreide</lastName>
        <dateOfBirth>1976-05-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IMT</externalId>
        <firstName>Inga Marte</firstName>
        <lastName>Thorkildsen</lastName>
        <dateOfBirth>1976-07-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IOL</externalId>
        <firstName>Ingalill</firstName>
        <lastName>Olsen</lastName>
        <dateOfBirth>1955-12-15T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Finnmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IRLN</externalId>
        <firstName>Irene Lange</firstName>
        <lastName>Nordahl</lastName>
        <dateOfBirth>1968-02-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Senterpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ISC</externalId>
        <firstName>Ingjerd</firstName>
        <lastName>Schou</lastName>
        <dateOfBirth>1955-01-20T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IVK</externalId>
        <firstName>Ivar</firstName>
        <lastName>Kristiansen</lastName>
        <dateOfBirth>1956-02-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JAE</externalId>
        <firstName>Jan Arild</firstName>
        <lastName>Ellingsen</lastName>
        <dateOfBirth>1958-10-09T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JASP</externalId>
        <firstName>Jorodd</firstName>
        <lastName>Asphjell</lastName>
        <dateOfBirth>1960-07-17T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JBO</externalId>
        <firstName>Jan</firstName>
        <lastName>Bøhler</lastName>
        <dateOfBirth>1952-03-01T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JES</externalId>
        <firstName>Jens</firstName>
        <lastName>Stoltenberg</lastName>
        <dateOfBirth>1959-03-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JF</externalId>
        <firstName>Jan-Henrik</firstName>
        <lastName>Fredriksen</lastName>
        <dateOfBirth>1956-10-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Finnmark</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JGS</externalId>
        <firstName>Jonas Gahr</firstName>
        <lastName>Støre</lastName>
        <dateOfBirth>1960-08-25T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JHR</externalId>
        <firstName>Jørund</firstName>
        <lastName>Rytman</lastName>
        <dateOfBirth>1977-05-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JKL</externalId>
        <firstName>Jenny</firstName>
        <lastName>Klinge</lastName>
        <dateOfBirth>1975-11-28T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Senterpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JONG</externalId>
        <firstName>Jon Jæger</firstName>
        <lastName>Gåsvatn</lastName>
        <dateOfBirth>1954-06-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JSN</externalId>
        <firstName>Janne Sjelmo</firstName>
        <lastName>Nordås</lastName>
        <dateOfBirth>1964-05-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Senterpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JTS</externalId>
        <firstName>Jan Tore</firstName>
        <lastName>Sanner</lastName>
        <dateOfBirth>1965-05-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KARH</externalId>
        <firstName>Kari</firstName>
        <lastName>Henriksen</lastName>
        <dateOfBirth>1955-08-10T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vest-Agder</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KES</externalId>
        <firstName>Kenneth</firstName>
        <lastName>Svendsen</lastName>
        <dateOfBirth>1954-08-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KETS</externalId>
        <firstName>Ketil</firstName>
        <lastName>Solvik-Olsen</lastName>
        <dateOfBirth>1972-02-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KHA</externalId>
        <firstName>Kristin</firstName>
        <lastName>Halvorsen</lastName>
        <dateOfBirth>1960-09-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KJR</externalId>
        <firstName>Kjell Ingolf</firstName>
        <lastName>Ropstad</lastName>
        <dateOfBirth>1985-06-01T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Aust-Agder</district>
        <party>Kristelig Folkeparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KJT</externalId>
        <firstName>Kjersti</firstName>
        <lastName>Toppe</lastName>
        <dateOfBirth>1967-10-20T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Senterpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KKK</externalId>
        <firstName>Kari Kjønaas</firstName>
        <lastName>Kjos</lastName>
        <dateOfBirth>1962-01-25T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KNAH</externalId>
        <firstName>Knut Arild</firstName>
        <lastName>Hareide</lastName>
        <dateOfBirth>1972-11-23T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Kristelig Folkeparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KNUS</externalId>
        <firstName>Knut</firstName>
        <lastName>Storberget</lastName>
        <dateOfBirth>1964-10-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KSIM</externalId>
        <firstName>Kåre</firstName>
        <lastName>Simensen</lastName>
        <dateOfBirth>1955-08-30T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Finnmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KSW</externalId>
        <firstName>Karin S.</firstName>
        <lastName>Woldseth</lastName>
        <dateOfBirth>1954-08-09T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KAAN</externalId>
        <firstName>Karin</firstName>
        <lastName>Andersen</lastName>
        <dateOfBirth>1952-12-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LAG</externalId>
        <firstName>Laila</firstName>
        <lastName>Gustavsen</lastName>
        <dateOfBirth>1973-10-24T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LAPB</externalId>
        <firstName>Lars Peder</firstName>
        <lastName>Brekk</lastName>
        <dateOfBirth>1955-10-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nord-Trøndelag</district>
        <party>Senterpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LCH</externalId>
        <firstName>Linda C. Hofstad</firstName>
        <lastName>Helleland</lastName>
        <dateOfBirth>1977-08-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LD</externalId>
        <firstName>Laila</firstName>
        <lastName>Dåvøy</lastName>
        <dateOfBirth>1948-08-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Kristelig Folkeparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LHH</externalId>
        <firstName>Line Henriette</firstName>
        <lastName>Hjemdal</lastName>
        <dateOfBirth>1971-10-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Kristelig Folkeparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LIC</externalId>
        <firstName>Lise</firstName>
        <lastName>Christoffersen</lastName>
        <dateOfBirth>1955-08-05T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LILH</externalId>
        <firstName>Lillian</firstName>
        <lastName>Hansen</lastName>
        <dateOfBirth>1957-05-17T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LMY</externalId>
        <firstName>Lars</firstName>
        <lastName>Myraune</lastName>
        <dateOfBirth>1944-08-05T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nord-Trøndelag</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LRE</externalId>
        <firstName>Laila Marie</firstName>
        <lastName>Reiertsen</lastName>
        <dateOfBirth>1960-10-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LSN</externalId>
        <firstName>Liv Signe</firstName>
        <lastName>Navarsete</lastName>
        <dateOfBirth>1958-10-23T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sogn og Fjordane</district>
        <party>Senterpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MAGR</externalId>
        <firstName>Magne</firstName>
        <lastName>Rommetveit</lastName>
        <dateOfBirth>1956-04-27T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MAKO</externalId>
        <firstName>Martin</firstName>
        <lastName>Kolberg</lastName>
        <dateOfBirth>1949-02-24T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MAM</externalId>
        <firstName>Marianne</firstName>
        <lastName>Marthinsen</lastName>
        <dateOfBirth>1980-08-25T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>METH</externalId>
        <firstName>Mette</firstName>
        <lastName>Hanekamhaug</lastName>
        <dateOfBirth>1987-06-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MIT</externalId>
        <firstName>Michael</firstName>
        <lastName>Tetzschner</lastName>
        <dateOfBirth>1954-02-09T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MMK</externalId>
        <firstName>Magnhild Meltveit</firstName>
        <lastName>Kleppa</lastName>
        <dateOfBirth>1948-11-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Senterpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MN</externalId>
        <firstName>Marit</firstName>
        <lastName>Nybakk</lastName>
        <dateOfBirth>1947-02-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MOJ</externalId>
        <firstName>Morten Ørsal</firstName>
        <lastName>Johansen</lastName>
        <dateOfBirth>1964-09-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MORH</externalId>
        <firstName>Morten</firstName>
        <lastName>Høglund</lastName>
        <dateOfBirth>1965-07-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MAAA</externalId>
        <firstName>Marianne</firstName>
        <lastName>Aasen</lastName>
        <dateOfBirth>1967-02-21T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>NA</externalId>
        <firstName>Nikolai</firstName>
        <lastName>Astrup</lastName>
        <dateOfBirth>1978-06-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>OBM</externalId>
        <firstName>Ola Borten</firstName>
        <lastName>Moe</lastName>
        <dateOfBirth>1976-06-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Senterpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>OG</externalId>
        <firstName>Oskar J.</firstName>
        <lastName>Grimstad</lastName>
        <dateOfBirth>1954-11-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>OLET</externalId>
        <firstName>Olemic</firstName>
        <lastName>Thommessen</lastName>
        <dateOfBirth>1956-04-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>OVA</externalId>
        <firstName>Øyvind</firstName>
        <lastName>Vaksdal</lastName>
        <dateOfBirth>1955-10-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>OYK</externalId>
        <firstName>Øyvind</firstName>
        <lastName>Korsberg</lastName>
        <dateOfBirth>1960-01-31T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PB</externalId>
        <firstName>Per Roar</firstName>
        <lastName>Bredvold</lastName>
        <dateOfBirth>1957-03-05T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PEG</externalId>
        <firstName>Peter Skovholt</firstName>
        <lastName>Gitmark</lastName>
        <dateOfBirth>1977-04-15T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vest-Agder</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PEMY</externalId>
        <firstName>Peter N.</firstName>
        <lastName>Myhre</lastName>
        <dateOfBirth>1954-11-29T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PES</externalId>
        <firstName>Per</firstName>
        <lastName>Sandberg</lastName>
        <dateOfBirth>1960-02-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PKF</externalId>
        <firstName>Per-Kristian</firstName>
        <lastName>Foss</lastName>
        <dateOfBirth>1950-07-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PO</externalId>
        <firstName>Per Arne</firstName>
        <lastName>Olsen</lastName>
        <dateOfBirth>1961-02-21T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>POL</externalId>
        <firstName>Per Olaf</firstName>
        <lastName>Lundteigen</lastName>
        <dateOfBirth>1953-04-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Senterpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PRH</externalId>
        <firstName>Per Rune</firstName>
        <lastName>Henriksen</lastName>
        <dateOfBirth>1960-03-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PTA</externalId>
        <firstName>Per-Willy</firstName>
        <lastName>Amundsen</lastName>
        <dateOfBirth>1971-01-21T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>RAE</externalId>
        <firstName>Rigmor Andersen</firstName>
        <lastName>Eide</lastName>
        <dateOfBirth>1954-06-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Kristelig Folkeparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>RE</externalId>
        <firstName>Robert</firstName>
        <lastName>Eriksson</lastName>
        <dateOfBirth>1974-04-23T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nord-Trøndelag</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>RIAJ</externalId>
        <firstName>Rigmor</firstName>
        <lastName>Aasrud</lastName>
        <dateOfBirth>1960-06-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SAF</externalId>
        <firstName>Svein</firstName>
        <lastName>Flåtten</lastName>
        <dateOfBirth>1944-10-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SAG</externalId>
        <firstName>Svein</firstName>
        <lastName>Gjelseth</lastName>
        <dateOfBirth>1950-02-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SHAR</externalId>
        <firstName>Svein</firstName>
        <lastName>Harberg</lastName>
        <dateOfBirth>1958-07-30T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Aust-Agder</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SHK</externalId>
        <firstName>Solveig</firstName>
        <lastName>Horne</lastName>
        <dateOfBirth>1969-01-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SIVJ</externalId>
        <firstName>Siv</firstName>
        <lastName>Jensen</lastName>
        <dateOfBirth>1969-06-01T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SME</externalId>
        <firstName>Siri A.</firstName>
        <lastName>Meling</lastName>
        <dateOfBirth>1963-02-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SMY</externalId>
        <firstName>Sverre</firstName>
        <lastName>Myrli</lastName>
        <dateOfBirth>1971-08-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SNV</externalId>
        <firstName>Snorre Serigstad</firstName>
        <lastName>Valen</lastName>
        <dateOfBirth>1984-09-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SOH</externalId>
        <firstName>Sigvald Oppebøen</firstName>
        <lastName>Hansen</lastName>
        <dateOfBirth>1950-09-21T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Telemark</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SOM</externalId>
        <firstName>Sonja</firstName>
        <lastName>Mandt</lastName>
        <dateOfBirth>1960-03-29T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SONS</externalId>
        <firstName>Sonja Irene</firstName>
        <lastName>Sjøli</lastName>
        <dateOfBirth>1949-06-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SRH</externalId>
        <firstName>Svein Roald</firstName>
        <lastName>Hansen</lastName>
        <dateOfBirth>1949-08-20T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>STEG</externalId>
        <firstName>Steinar</firstName>
        <lastName>Gullvåg</lastName>
        <dateOfBirth>1946-10-27T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SUB</externalId>
        <firstName>Susanne</firstName>
        <lastName>Bratli</lastName>
        <dateOfBirth>1966-06-10T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nord-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SYG</externalId>
        <firstName>Sylvi</firstName>
        <lastName>Graham</lastName>
        <dateOfBirth>1951-12-17T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TALI</externalId>
        <firstName>Tord</firstName>
        <lastName>Lien</lastName>
        <dateOfBirth>1975-09-10T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TAS</externalId>
        <firstName>Tor-Arne</firstName>
        <lastName>Strøm</lastName>
        <dateOfBirth>1952-05-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TBRE</externalId>
        <firstName>Tor</firstName>
        <lastName>Bremer</lastName>
        <dateOfBirth>1955-02-09T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sogn og Fjordane</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TEF</externalId>
        <firstName>Thor Erik</firstName>
        <lastName>Forsberg</lastName>
        <dateOfBirth>1980-04-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TELA</externalId>
        <firstName>Terje</firstName>
        <lastName>Aasland</lastName>
        <dateOfBirth>1965-02-15T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Telemark</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TG</externalId>
        <firstName>Trond</firstName>
        <lastName>Giske</lastName>
        <dateOfBirth>1966-11-07T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>THB</externalId>
        <firstName>Thomas</firstName>
        <lastName>Breen</lastName>
        <dateOfBirth>1972-09-13T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TKK</externalId>
        <firstName>Tove Karoline</firstName>
        <lastName>Knutsen</lastName>
        <dateOfBirth>1951-01-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TMI</externalId>
        <firstName>Torgeir</firstName>
        <lastName>Micaelsen</lastName>
        <dateOfBirth>1979-05-20T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TMS</externalId>
        <firstName>Tone Merete</firstName>
        <lastName>Sønsterud</lastName>
        <dateOfBirth>1959-05-17T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TMV</externalId>
        <firstName>Trygve Slagsvold</firstName>
        <lastName>Vedum</lastName>
        <dateOfBirth>1978-12-01T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Senterpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TO</externalId>
        <firstName>Torfinn</firstName>
        <lastName>Opheim</lastName>
        <dateOfBirth>1961-04-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TOHA</externalId>
        <firstName>Tore</firstName>
        <lastName>Hagebakken</lastName>
        <dateOfBirth>1961-01-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TON</externalId>
        <firstName>Tore</firstName>
        <lastName>Nordtun</lastName>
        <dateOfBirth>1949-09-30T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TOT</externalId>
        <firstName>Torgeir</firstName>
        <lastName>Trældal</lastName>
        <dateOfBirth>1965-01-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TOVT</externalId>
        <firstName>Tove-Lise</firstName>
        <lastName>Torve</lastName>
        <dateOfBirth>1964-06-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TR</externalId>
        <firstName>Torstein</firstName>
        <lastName>Rudihagen</lastName>
        <dateOfBirth>1951-08-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TRI</externalId>
        <firstName>Torbjørn Røe</firstName>
        <lastName>Isaksen</lastName>
        <dateOfBirth>1978-07-28T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Telemark</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TROH</externalId>
        <firstName>Trond</firstName>
        <lastName>Helleland</lastName>
        <dateOfBirth>1962-07-10T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TSG</externalId>
        <firstName>Trine Skei</firstName>
        <lastName>Grande</lastName>
        <dateOfBirth>1969-10-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Venstre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>UEK</externalId>
        <firstName>Ulf Erik</firstName>
        <lastName>Knudsen</lastName>
        <dateOfBirth>1964-12-20T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>UIL</externalId>
        <firstName>Ulf</firstName>
        <lastName>Leirstein</lastName>
        <dateOfBirth>1973-06-30T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>VKG</externalId>
        <firstName>Vigdis</firstName>
        <lastName>Giltun</lastName>
        <dateOfBirth>1952-03-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Fremskrittspartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>WO</externalId>
        <firstName>Wenche</firstName>
        <lastName>Olsen</lastName>
        <dateOfBirth>1965-11-30T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ØH</externalId>
        <firstName>Øyvind</firstName>
        <lastName>Håbrekke</lastName>
        <dateOfBirth>1969-12-20T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Kristelig Folkeparti</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ØYVH</externalId>
        <firstName>Øyvind</firstName>
        <lastName>Halleraker</lastName>
        <dateOfBirth>1951-10-27T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Høyre</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>AAST</externalId>
        <firstName>Arild</firstName>
        <lastName>Stokkan-Grande</lastName>
        <dateOfBirth>1978-04-05T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nord-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
    </representatives>
    <?xml version="1.0" encoding="UTF-8"?>
    <representatives>
      <representative>
        <externalId>FR</externalId>
        <firstName>Freddy</firstName>
        <lastName>de Ruiter</lastName>
        <dateOfBirth>1969-04-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Aust-Agder</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IAG</externalId>
        <firstName>Ingebjørg</firstName>
        <lastName>Godskesen</lastName>
        <dateOfBirth>1957-05-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Aust-Agder</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SHAR</externalId>
        <firstName>Svein</firstName>
        <lastName>Harberg</lastName>
        <dateOfBirth>1958-07-30T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Aust-Agder</district>
        <party>Høyre</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KJR</externalId>
        <firstName>Kjell Ingolf</firstName>
        <lastName>Ropstad</lastName>
        <dateOfBirth>1985-06-01T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Aust-Agder</district>
        <party>Kristelig Folkeparti</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ASC</externalId>
        <firstName>Åse</firstName>
        <lastName>Michaelsen</lastName>
        <dateOfBirth>1960-06-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vest-Agder</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KARH</externalId>
        <firstName>Kari</firstName>
        <lastName>Henriksen</lastName>
        <dateOfBirth>1955-08-10T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vest-Agder</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PEG</externalId>
        <firstName>Peter Skovholt</firstName>
        <lastName>Gitmark</lastName>
        <dateOfBirth>1977-04-15T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vest-Agder</district>
        <party>Høyre</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>DE</externalId>
        <firstName>Dagrun</firstName>
        <lastName>Eriksen</lastName>
        <dateOfBirth>1971-06-28T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vest-Agder</district>
        <party>Kristelig Folkeparti</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HSK</externalId>
        <firstName>Henning</firstName>
        <lastName>Skumsvoll</lastName>
        <dateOfBirth>1947-03-15T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vest-Agder</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ALEH</externalId>
        <firstName>Alf Egil</firstName>
        <lastName>Holmelid</lastName>
        <dateOfBirth>1947-12-13T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vest-Agder</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SMY</externalId>
        <firstName>Sverre</firstName>
        <lastName>Myrli</lastName>
        <dateOfBirth>1971-08-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MORH</externalId>
        <firstName>Morten</firstName>
        <lastName>Høglund</lastName>
        <dateOfBirth>1965-07-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JTS</externalId>
        <firstName>Jan Tore</firstName>
        <lastName>Sanner</lastName>
        <dateOfBirth>1965-05-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Høyre</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MAAA</externalId>
        <firstName>Marianne</firstName>
        <lastName>Aasen</lastName>
        <dateOfBirth>1967-02-21T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KKK</externalId>
        <firstName>Kari Kjønaas</firstName>
        <lastName>Kjos</lastName>
        <dateOfBirth>1962-01-25T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SONS</externalId>
        <firstName>Sonja Irene</firstName>
        <lastName>Sjøli</lastName>
        <dateOfBirth>1949-06-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Høyre</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GUE</externalId>
        <firstName>Gunvor</firstName>
        <lastName>Eldegard</lastName>
        <dateOfBirth>1963-04-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HAFA</externalId>
        <firstName>Hans Frode Kielland</firstName>
        <lastName>Asmyhr</lastName>
        <dateOfBirth>1970-02-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GOK</externalId>
        <firstName>Gorm</firstName>
        <lastName>Kjernli</lastName>
        <dateOfBirth>1981-12-31T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SYG</externalId>
        <firstName>Sylvi</firstName>
        <lastName>Graham</lastName>
        <dateOfBirth>1951-12-17T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Høyre</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>RAA</externalId>
        <firstName>Rannveig Kvifte</firstName>
        <lastName>Andresen</lastName>
        <dateOfBirth>1967-05-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
          <committee>Familie- og kulturkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>AREH</externalId>
        <firstName>Are</firstName>
        <lastName>Helseth</lastName>
        <dateOfBirth>1955-01-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BT</externalId>
        <firstName>Borghild</firstName>
        <lastName>Tenden</lastName>
        <dateOfBirth>1951-06-23T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Venstre</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IBTH</externalId>
        <firstName>Ib</firstName>
        <lastName>Thomsen</lastName>
        <dateOfBirth>1961-10-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Familie- og kulturkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ADA</externalId>
        <firstName>André Oktay</firstName>
        <lastName>Dahl</lastName>
        <dateOfBirth>1975-07-07T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Høyre</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KNAH</externalId>
        <firstName>Knut Arild</firstName>
        <lastName>Hareide</lastName>
        <dateOfBirth>1972-11-23T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Akershus</district>
        <party>Kristelig Folkeparti</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MAKO</externalId>
        <firstName>Martin</firstName>
        <lastName>Kolberg</lastName>
        <dateOfBirth>1949-02-24T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>UEK</externalId>
        <firstName>Ulf Erik</firstName>
        <lastName>Knudsen</lastName>
        <dateOfBirth>1964-12-20T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TROH</externalId>
        <firstName>Trond</firstName>
        <lastName>Helleland</lastName>
        <dateOfBirth>1962-07-10T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Høyre</party>
        <committees>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LIC</externalId>
        <firstName>Lise</firstName>
        <lastName>Christoffersen</lastName>
        <dateOfBirth>1955-08-05T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JHR</externalId>
        <firstName>Jørund</firstName>
        <lastName>Rytman</lastName>
        <dateOfBirth>1977-05-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TMI</externalId>
        <firstName>Torgeir</firstName>
        <lastName>Micaelsen</lastName>
        <dateOfBirth>1979-05-20T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>AWE</externalId>
        <firstName>Anders B.</firstName>
        <lastName>Werp</lastName>
        <dateOfBirth>1961-12-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Høyre</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LAG</externalId>
        <firstName>Laila</firstName>
        <lastName>Gustavsen</lastName>
        <dateOfBirth>1973-10-24T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>POL</externalId>
        <firstName>Per Olaf</firstName>
        <lastName>Lundteigen</lastName>
        <dateOfBirth>1953-04-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Buskerud</district>
        <party>Senterpartiet</party>
        <committees>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HPED</externalId>
        <firstName>Helga</firstName>
        <lastName>Pedersen</lastName>
        <dateOfBirth>1973-01-13T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Finnmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JF</externalId>
        <firstName>Jan-Henrik</firstName>
        <lastName>Fredriksen</lastName>
        <dateOfBirth>1956-10-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Finnmark</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KSIM</externalId>
        <firstName>Kåre</firstName>
        <lastName>Simensen</lastName>
        <dateOfBirth>1955-08-30T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Finnmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Familie- og kulturkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IOL</externalId>
        <firstName>Ingalill</firstName>
        <lastName>Olsen</lastName>
        <dateOfBirth>1955-12-15T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Finnmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>FBJ</externalId>
        <firstName>Frank</firstName>
        <lastName>Bakke-Jensen</lastName>
        <dateOfBirth>1965-03-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Finnmark</district>
        <party>Høyre</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KNUS</externalId>
        <firstName>Knut</firstName>
        <lastName>Storberget</lastName>
        <dateOfBirth>1964-10-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ATR</externalId>
        <firstName>Anette</firstName>
        <lastName>Trettebergstuen</lastName>
        <dateOfBirth>1981-05-25T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PB</externalId>
        <firstName>Per Roar</firstName>
        <lastName>Bredvold</lastName>
        <dateOfBirth>1957-03-05T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>THB</externalId>
        <firstName>Thomas</firstName>
        <lastName>Breen</lastName>
        <dateOfBirth>1972-09-13T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TMV</externalId>
        <firstName>Trygve Slagsvold</firstName>
        <lastName>Vedum</lastName>
        <dateOfBirth>1978-12-01T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Senterpartiet</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GAG</externalId>
        <firstName>Gunnar</firstName>
        <lastName>Gundersen</lastName>
        <dateOfBirth>1956-05-21T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Høyre</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TMS</externalId>
        <firstName>Tone Merete</firstName>
        <lastName>Sønsterud</lastName>
        <dateOfBirth>1959-05-17T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KAAN</externalId>
        <firstName>Karin</firstName>
        <lastName>Andersen</lastName>
        <dateOfBirth>1952-12-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hedmark</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HML</externalId>
        <firstName>Hilde</firstName>
        <lastName>Magnusson</lastName>
        <dateOfBirth>1970-06-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>AESO</externalId>
        <firstName>Arne</firstName>
        <lastName>Sortevik</lastName>
        <dateOfBirth>1947-03-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ES</externalId>
        <firstName>Erna</firstName>
        <lastName>Solberg</lastName>
        <dateOfBirth>1961-02-24T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Høyre</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>DOT</externalId>
        <firstName>Dag Ole</firstName>
        <lastName>Teigen</lastName>
        <dateOfBirth>1982-08-10T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GJH</externalId>
        <firstName>Gjermund</firstName>
        <lastName>Hagesæter</lastName>
        <dateOfBirth>1960-12-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ØYVH</externalId>
        <firstName>Øyvind</firstName>
        <lastName>Halleraker</lastName>
        <dateOfBirth>1951-10-27T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Høyre</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MAGR</externalId>
        <firstName>Magne</firstName>
        <lastName>Rommetveit</lastName>
        <dateOfBirth>1956-04-27T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LD</externalId>
        <firstName>Laila</firstName>
        <lastName>Dåvøy</lastName>
        <dateOfBirth>1948-08-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Kristelig Folkeparti</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KSW</externalId>
        <firstName>Karin S.</firstName>
        <lastName>Woldseth</lastName>
        <dateOfBirth>1954-08-09T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TLB</externalId>
        <firstName>Tove Linnea</firstName>
        <lastName>Brandvik</lastName>
        <dateOfBirth>1968-11-15T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HEW</externalId>
        <firstName>Henning</firstName>
        <lastName>Warloe</lastName>
        <dateOfBirth>1961-03-24T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Høyre</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KJT</externalId>
        <firstName>Kjersti</firstName>
        <lastName>Toppe</lastName>
        <dateOfBirth>1967-10-20T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Senterpartiet</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ALYS</externalId>
        <firstName>Audun</firstName>
        <lastName>Lysbakken</lastName>
        <dateOfBirth>1977-09-30T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JFC</externalId>
        <firstName>Jette F.</firstName>
        <lastName>Christensen</lastName>
        <dateOfBirth>1983-06-01T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LRE</externalId>
        <firstName>Laila Marie</firstName>
        <lastName>Reiertsen</lastName>
        <dateOfBirth>1960-10-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Hordaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>EBO</externalId>
        <firstName>Else-May</firstName>
        <lastName>Botten</lastName>
        <dateOfBirth>1973-08-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HTN</externalId>
        <firstName>Harald T.</firstName>
        <lastName>Nesvik</lastName>
        <dateOfBirth>1966-05-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ELN</externalId>
        <firstName>Elisabeth Røbekk</firstName>
        <lastName>Nørve</lastName>
        <dateOfBirth>1951-03-29T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Høyre</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SAG</externalId>
        <firstName>Svein</firstName>
        <lastName>Gjelseth</lastName>
        <dateOfBirth>1950-02-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>OG</externalId>
        <firstName>Oskar J.</firstName>
        <lastName>Grimstad</lastName>
        <dateOfBirth>1954-11-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TOVT</externalId>
        <firstName>Tove-Lise</firstName>
        <lastName>Torve</lastName>
        <dateOfBirth>1964-06-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JKL</externalId>
        <firstName>Jenny</firstName>
        <lastName>Klinge</lastName>
        <dateOfBirth>1975-11-28T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Senterpartiet</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>RAE</externalId>
        <firstName>Rigmor Andersen</firstName>
        <lastName>Eide</lastName>
        <dateOfBirth>1954-06-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Kristelig Folkeparti</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>METH</externalId>
        <firstName>Mette</firstName>
        <lastName>Hanekamhaug</lastName>
        <dateOfBirth>1987-06-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Møre og Romsdal</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TAS</externalId>
        <firstName>Tor-Arne</firstName>
        <lastName>Strøm</lastName>
        <dateOfBirth>1952-05-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KES</externalId>
        <firstName>Kenneth</firstName>
        <lastName>Svendsen</lastName>
        <dateOfBirth>1954-08-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ALJ</externalId>
        <firstName>Anna</firstName>
        <lastName>Ljunggren</lastName>
        <dateOfBirth>1984-06-13T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IVK</externalId>
        <firstName>Ivar</firstName>
        <lastName>Kristiansen</lastName>
        <dateOfBirth>1956-02-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Høyre</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JAE</externalId>
        <firstName>Jan Arild</firstName>
        <lastName>Ellingsen</lastName>
        <dateOfBirth>1958-10-09T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>EIRS</externalId>
        <firstName>Eirik</firstName>
        <lastName>Sivertsen</lastName>
        <dateOfBirth>1971-03-17T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JSN</externalId>
        <firstName>Janne Sjelmo</firstName>
        <lastName>Nordås</lastName>
        <dateOfBirth>1964-05-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Senterpartiet</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LILH</externalId>
        <firstName>Lillian</firstName>
        <lastName>Hansen</lastName>
        <dateOfBirth>1957-05-17T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GEHN</externalId>
        <firstName>Geir-Ketil</firstName>
        <lastName>Hansen</lastName>
        <dateOfBirth>1956-03-13T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TOT</externalId>
        <firstName>Torgeir</firstName>
        <lastName>Trældal</lastName>
        <dateOfBirth>1965-01-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nordland</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TR</externalId>
        <firstName>Torstein</firstName>
        <lastName>Rudihagen</lastName>
        <dateOfBirth>1951-08-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TOHA</externalId>
        <firstName>Tore</firstName>
        <lastName>Hagebakken</lastName>
        <dateOfBirth>1961-01-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MOJ</externalId>
        <firstName>Morten Ørsal</firstName>
        <lastName>Johansen</lastName>
        <dateOfBirth>1964-09-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>STRH</externalId>
        <firstName>Stine Renate</firstName>
        <lastName>Håheim</lastName>
        <dateOfBirth>1984-05-13T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ATW</externalId>
        <firstName>Anne Tingelstad</firstName>
        <lastName>Wøien</lastName>
        <dateOfBirth>1965-06-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Senterpartiet</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>OLET</externalId>
        <firstName>Olemic</firstName>
        <lastName>Thommessen</lastName>
        <dateOfBirth>1956-04-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Høyre</party>
        <committees>
          <committee>Familie- og kulturkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>AKSH</externalId>
        <firstName>Aksel</firstName>
        <lastName>Hagen</lastName>
        <dateOfBirth>1953-10-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oppland</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MN</externalId>
        <firstName>Marit</firstName>
        <lastName>Nybakk</lastName>
        <dateOfBirth>1947-02-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PKF</externalId>
        <firstName>Per-Kristian</firstName>
        <lastName>Foss</lastName>
        <dateOfBirth>1950-07-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Høyre</party>
        <committees>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SIVJ</externalId>
        <firstName>Siv</firstName>
        <lastName>Jensen</lastName>
        <dateOfBirth>1969-06-01T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JBO</externalId>
        <firstName>Jan</firstName>
        <lastName>Bøhler</lastName>
        <dateOfBirth>1952-03-01T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>AC</externalId>
        <firstName>Akhtar</firstName>
        <lastName>Chaudhry</lastName>
        <dateOfBirth>1961-07-23T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IME</externalId>
        <firstName>Ine M. Eriksen</firstName>
        <lastName>Søreide</lastName>
        <dateOfBirth>1976-05-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Høyre</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MAM</externalId>
        <firstName>Marianne</firstName>
        <lastName>Marthinsen</lastName>
        <dateOfBirth>1980-08-25T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>CT</externalId>
        <firstName>Christian</firstName>
        <lastName>Tybring-Gjedde</lastName>
        <dateOfBirth>1963-08-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HTA</externalId>
        <firstName>Hadia</firstName>
        <lastName>Tajik</lastName>
        <dateOfBirth>1983-07-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TSG</externalId>
        <firstName>Trine Skei</firstName>
        <lastName>Grande</lastName>
        <dateOfBirth>1969-10-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Venstre</party>
        <committees>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MIT</externalId>
        <firstName>Michael</firstName>
        <lastName>Tetzschner</lastName>
        <dateOfBirth>1954-02-09T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Høyre</party>
        <committees>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HAKH</externalId>
        <firstName>Håkon</firstName>
        <lastName>Haugli</lastName>
        <dateOfBirth>1969-05-21T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PEMY</externalId>
        <firstName>Peter N.</firstName>
        <lastName>Myhre</lastName>
        <dateOfBirth>1954-11-29T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>MLA</externalId>
        <firstName>Mari Lund</firstName>
        <lastName>Arnem</lastName>
        <dateOfBirth>1986-01-27T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TRUW</externalId>
        <firstName>Truls</firstName>
        <lastName>Wickholm</lastName>
        <dateOfBirth>1978-10-15T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>NA</externalId>
        <firstName>Nikolai</firstName>
        <lastName>Astrup</lastName>
        <dateOfBirth>1978-06-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Høyre</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HOSY</externalId>
        <firstName>Hans Olav</firstName>
        <lastName>Syversen</lastName>
        <dateOfBirth>1966-11-25T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Oslo</district>
        <party>Kristelig Folkeparti</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>KETS</externalId>
        <firstName>Ketil</firstName>
        <lastName>Solvik-Olsen</lastName>
        <dateOfBirth>1972-02-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TON</externalId>
        <firstName>Tore</firstName>
        <lastName>Nordtun</lastName>
        <dateOfBirth>1949-09-30T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BENH</externalId>
        <firstName>Bent</firstName>
        <lastName>Høie</lastName>
        <dateOfBirth>1971-05-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Høyre</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SHK</externalId>
        <firstName>Solveig</firstName>
        <lastName>Horne</lastName>
        <dateOfBirth>1969-01-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Familie- og kulturkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>EKS</externalId>
        <firstName>Eirin</firstName>
        <lastName>Sund</lastName>
        <dateOfBirth>1967-04-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>DH</externalId>
        <firstName>Dagfinn</firstName>
        <lastName>Høybråten</lastName>
        <dateOfBirth>1957-12-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Kristelig Folkeparti</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SME</externalId>
        <firstName>Siri A.</firstName>
        <lastName>Meling</lastName>
        <dateOfBirth>1963-02-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Høyre</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>OVA</externalId>
        <firstName>Øyvind</firstName>
        <lastName>Vaksdal</lastName>
        <dateOfBirth>1955-10-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TO</externalId>
        <firstName>Torfinn</firstName>
        <lastName>Opheim</lastName>
        <dateOfBirth>1961-04-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GP</externalId>
        <firstName>Geir</firstName>
        <lastName>Pollestad</lastName>
        <dateOfBirth>1978-08-13T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Senterpartiet</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ARK</externalId>
        <firstName>Arve</firstName>
        <lastName>Kambe</lastName>
        <dateOfBirth>1974-11-25T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Høyre</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BTH</externalId>
        <firstName>Bente</firstName>
        <lastName>Thorsen</lastName>
        <dateOfBirth>1958-10-31T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HHL</externalId>
        <firstName>Hallgeir H.</firstName>
        <lastName>Langeland</lastName>
        <dateOfBirth>1955-11-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Rogaland</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IHE</externalId>
        <firstName>Ingrid</firstName>
        <lastName>Heggø</lastName>
        <dateOfBirth>1961-08-12T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sogn og Fjordane</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ESAN</externalId>
        <firstName>Erling</firstName>
        <lastName>Sande</lastName>
        <dateOfBirth>1978-11-08T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sogn og Fjordane</district>
        <party>Senterpartiet</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>AGES</externalId>
        <firstName>Åge</firstName>
        <lastName>Starheim</lastName>
        <dateOfBirth>1946-05-23T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sogn og Fjordane</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TBRE</externalId>
        <firstName>Tor</firstName>
        <lastName>Bremer</lastName>
        <dateOfBirth>1955-02-09T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sogn og Fjordane</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BLO</externalId>
        <firstName>Bjørn</firstName>
        <lastName>Lødemel</lastName>
        <dateOfBirth>1958-08-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sogn og Fjordane</district>
        <party>Høyre</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TELA</externalId>
        <firstName>Terje</firstName>
        <lastName>Aasland</lastName>
        <dateOfBirth>1965-02-15T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Telemark</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BÅH</externalId>
        <firstName>Bård</firstName>
        <lastName>Hoksrud</lastName>
        <dateOfBirth>1973-03-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Telemark</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GUO</externalId>
        <firstName>Gunn</firstName>
        <lastName>Olsen</lastName>
        <dateOfBirth>1952-09-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Telemark</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Familie- og kulturkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TRI</externalId>
        <firstName>Torbjørn Røe</firstName>
        <lastName>Isaksen</lastName>
        <dateOfBirth>1978-07-28T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Telemark</district>
        <party>Høyre</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SOH</externalId>
        <firstName>Sigvald Oppebøen</firstName>
        <lastName>Hansen</lastName>
        <dateOfBirth>1950-09-21T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Telemark</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GJB</externalId>
        <firstName>Geir Jørgen</firstName>
        <lastName>Bekkevold</lastName>
        <dateOfBirth>1963-11-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Telemark</district>
        <party>Kristelig Folkeparti</party>
        <committees>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>BEHA</externalId>
        <firstName>Bendiks H.</firstName>
        <lastName>Arnesen</lastName>
        <dateOfBirth>1951-06-09T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>OYK</externalId>
        <firstName>Øyvind</firstName>
        <lastName>Korsberg</lastName>
        <dateOfBirth>1960-01-31T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Familie- og kulturkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ANMB</externalId>
        <firstName>Anne Marit</firstName>
        <lastName>Bjørnflaten</lastName>
        <dateOfBirth>1969-06-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>EAS</externalId>
        <firstName>Elisabeth</firstName>
        <lastName>Aspaker</lastName>
        <dateOfBirth>1962-10-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Høyre</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PTA</externalId>
        <firstName>Per-Willy</firstName>
        <lastName>Amundsen</lastName>
        <dateOfBirth>1971-01-21T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TKK</externalId>
        <firstName>Tove Karoline</firstName>
        <lastName>Knutsen</lastName>
        <dateOfBirth>1951-01-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IRLN</externalId>
        <firstName>Irene Lange</firstName>
        <lastName>Nordahl</lastName>
        <dateOfBirth>1968-02-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Troms</district>
        <party>Senterpartiet</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GJK</externalId>
        <firstName>Gerd Janne</firstName>
        <lastName>Kristoffersen</lastName>
        <dateOfBirth>1952-11-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nord-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>AAST</externalId>
        <firstName>Arild</firstName>
        <lastName>Stokkan-Grande</lastName>
        <dateOfBirth>1978-04-05T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nord-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Familie- og kulturkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>RE</externalId>
        <firstName>Robert</firstName>
        <lastName>Eriksson</lastName>
        <dateOfBirth>1974-04-23T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nord-Trøndelag</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>CNR</externalId>
        <firstName>Christina Nilsson</firstName>
        <lastName>Ramsøy</lastName>
        <dateOfBirth>1986-11-04T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nord-Trøndelag</district>
        <party>Senterpartiet</party>
        <committees>
          <committee>Familie- og kulturkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SUB</externalId>
        <firstName>Susanne</firstName>
        <lastName>Bratli</lastName>
        <dateOfBirth>1966-06-10T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nord-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LMY</externalId>
        <firstName>Lars</firstName>
        <lastName>Myraune</lastName>
        <dateOfBirth>1944-08-05T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Nord-Trøndelag</district>
        <party>Høyre</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>GKG</externalId>
        <firstName>Gunn Karin</firstName>
        <lastName>Gjul</lastName>
        <dateOfBirth>1967-07-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Familie- og kulturkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PES</externalId>
        <firstName>Per</firstName>
        <lastName>Sandberg</lastName>
        <dateOfBirth>1960-02-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JASP</externalId>
        <firstName>Jorodd</firstName>
        <lastName>Asphjell</lastName>
        <dateOfBirth>1960-07-17T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LCH</externalId>
        <firstName>Linda C. Hofstad</firstName>
        <lastName>Helleland</lastName>
        <dateOfBirth>1977-08-26T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Høyre</party>
        <committees>
          <committee>Familie- og kulturkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>EVH</externalId>
        <firstName>Eva Kristin</firstName>
        <lastName>Hansen</lastName>
        <dateOfBirth>1973-03-05T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TALI</externalId>
        <firstName>Tord</firstName>
        <lastName>Lien</lastName>
        <dateOfBirth>1975-09-10T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ARLH</externalId>
        <firstName>Arne L.</firstName>
        <lastName>Haugen</lastName>
        <dateOfBirth>1939-07-25T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SNV</externalId>
        <firstName>Snorre Serigstad</firstName>
        <lastName>Valen</lastName>
        <dateOfBirth>1984-09-16T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>HEIG</externalId>
        <firstName>Heidi</firstName>
        <lastName>Greni</lastName>
        <dateOfBirth>1962-07-03T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Senterpartiet</party>
        <committees>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ØH</externalId>
        <firstName>Øyvind</firstName>
        <lastName>Håbrekke</lastName>
        <dateOfBirth>1969-12-20T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Sør-Trøndelag</district>
        <party>Kristelig Folkeparti</party>
        <committees>
          <committee>Familie- og kulturkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>DTA</externalId>
        <firstName>Dag Terje</firstName>
        <lastName>Andersen</lastName>
        <dateOfBirth>1957-05-27T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ANA</externalId>
        <firstName>Anders</firstName>
        <lastName>Anundsen</lastName>
        <dateOfBirth>1975-11-17T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SAF</externalId>
        <firstName>Svein</firstName>
        <lastName>Flåtten</lastName>
        <dateOfBirth>1944-10-14T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Høyre</party>
        <committees>
          <committee>Næringskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SOM</externalId>
        <firstName>Sonja</firstName>
        <lastName>Mandt</lastName>
        <dateOfBirth>1960-03-29T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>PO</externalId>
        <firstName>Per Arne</firstName>
        <lastName>Olsen</lastName>
        <dateOfBirth>1961-02-21T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>STEG</externalId>
        <firstName>Steinar</firstName>
        <lastName>Gullvåg</lastName>
        <dateOfBirth>1946-10-27T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LAE</externalId>
        <firstName>Lars</firstName>
        <lastName>Egeland</lastName>
        <dateOfBirth>1957-12-06T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Vestfold</district>
        <party>Sosialistisk Venstreparti</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>SRH</externalId>
        <firstName>Svein Roald</firstName>
        <lastName>Hansen</lastName>
        <dateOfBirth>1949-08-20T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Utenriks- og forsvarskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>UIL</externalId>
        <firstName>Ulf</firstName>
        <lastName>Leirstein</lastName>
        <dateOfBirth>1973-06-30T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Justiskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>IJ</externalId>
        <firstName>Irene</firstName>
        <lastName>Johansen</lastName>
        <dateOfBirth>1961-01-07T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Finanskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>ISC</externalId>
        <firstName>Ingjerd</firstName>
        <lastName>Schou</lastName>
        <dateOfBirth>1955-01-20T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Høyre</party>
        <committees>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>JONG</externalId>
        <firstName>Jon Jæger</firstName>
        <lastName>Gåsvatn</lastName>
        <dateOfBirth>1954-06-19T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>TEF</externalId>
        <firstName>Thor Erik</firstName>
        <lastName>Forsberg</lastName>
        <dateOfBirth>1980-04-02T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>WO</externalId>
        <firstName>Wenche</firstName>
        <lastName>Olsen</lastName>
        <dateOfBirth>1965-11-30T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Arbeiderpartiet</party>
        <committees>
          <committee>Helse- og omsorgskomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>VKG</externalId>
        <firstName>Vigdis</firstName>
        <lastName>Giltun</lastName>
        <dateOfBirth>1952-03-11T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Fremskrittspartiet</party>
        <committees>
          <committee>Arbeids- og sosialkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
      <representative>
        <externalId>LHH</externalId>
        <firstName>Line Henriette</firstName>
        <lastName>Hjemdal</lastName>
        <dateOfBirth>1971-10-18T00:00:00</dateOfBirth>
        <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
        <district>Østfold</district>
        <party>Kristelig Folkeparti</party>
        <committees>
          <committee>Energi- og miljøkomiteen</committee>
        </committees>
        <period>2011-2012</period>
      </representative>
    </representatives>
   """    
    
  Scenario: Import promises
    When I run `hdo-converter --only-print promises`
    Then the output should contain:
    """
    <?xml version="1.0" encoding="UTF-8"?>
    <promises>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LØNN</topic>
          <topic>SYSSELSETTING</topic>
        </topics>
        <source>PP:10</source>
        <body>Ha et inntektspolitisk samarbeid og en økonomisk politikk som sikrer arbeid til alle. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FINANSER</topic>
        </topics>
        <source>PP:10</source>
        <body>Følge handlingsregelen for en forsvarlig bruk av oljepenger.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FINANSER</topic>
        </topics>
        <source>PP:10</source>
        <body>Bruke penger slik at det bidrar til å utjevne svingninger i økonomien.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>FINANSER</topic>
        </topics>
        <source>PP:10</source>
        <body>Sette ned et utvalg som skal gjennomgå årsakene til finanskrisen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FINANSER</topic>
        </topics>
        <source>PP:10</source>
        <body>Gjennomføre de tiltak som er nødvendig for å sikre et stabilt og fungerende finansmarked.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FINANSER</topic>
        </topics>
        <source>PP:10</source>
        <body>Stille etiske krav til forvaltning av statlig kapital. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>SKATTER</topic>
        </topics>
        <source>PP:10</source>
        <body>Holde de samlede skattene og avgiftene på samme nivå som i dag.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKATTER</topic>
        </topics>
        <source>PP:10</source>
        <body>Ha en grundig evaluering av skattereformen av 2006, med særlig blikk på fordelingsvirkningene. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKATTER</topic>
        </topics>
        <source>PP:10</source>
        <body>Opprettholde formueskatten, men gjøre den mer rettferdig.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKATTER</topic>
          <topic>NÆRINGSLIV</topic>
        </topics>
        <source>PP:10</source>
        <body>Ha stabile og konkurransedyktige skattemessige rammevilkår for næringslivet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKATTER</topic>
        </topics>
        <source>PP:10</source>
        <body>Styrke arbeidet for å hindre svart økonomi og skatteundragelser både nasjonalt og internasjonalt. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKATTER</topic>
          <topic>MILJØVERN</topic>
        </topics>
        <source>PP:10</source>
        <body>Forsere arbeidet med grønn skatteveksling.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKATTER</topic>
          <topic>ØKONOMISK SAMARBEID</topic>
        </topics>
        <source>PP:10</source>
        <body>Arbeide internasjonalt mot skattekonkurranse.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>STATSFORVALTNING</topic>
        </topics>
        <source>PP:11</source>
        <body>Fornye offentlig sektor ved å tilby bedre kvalitet, økt tilgjengelighet, større valgfrihet, større innflytelse, bedre samordning og kortere behandlingstid. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SOSIALVESEN</topic>
        </topics>
        <source>PP:11</source>
        <body>Styrke samarbeidet med frivillig og ideell virksomhet i velferdstilbudet. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>STATENS PERSONALPOLITIKK</topic>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:11</source>
        <body>Satse på etter- og videreutdanning av offentlig ansatte.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>KOMMUNENES ØKONOMI</topic>
        </topics>
        <source>PP:11</source>
        <body>At nye statlige pålegg eller reformer til kommunene fullfinansieres.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>FORBRUKERSAKER</topic>
        </topics>
        <source>PP:11</source>
        <body>Opprettholde Forbrukerrådet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>PRISER OG KONKURRANSEFORHOLD</topic>
          <topic>STATSFORVALTNING</topic>
          <topic>ARBEIDSVILKÅR</topic>
          <topic>MILJØVERN</topic>
        </topics>
        <source>PP:11</source>
        <body>Stille krav om forhold som etikk, antall lærlinger, arbeidstakerrettigheter og klimasertifisering ved offentlige innkjøp og anbud, og sikre at konkurransen er reell.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>STATSFORVALTNING</topic>
        </topics>
        <source>PP:11</source>
        <body>Effektivisere rapporteringssystemer innen offentlig sektor for å frigjøre tid til tjenesteproduksjon. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>STATENS PERSONALPOLITIKK</topic>
          <topic>STATSFORVALTNING</topic>
        </topics>
        <source>PP:11</source>
        <body>Styrke lederkompetansen i det offentlige gjennom blant annet god rekruttering, lederevaluering, kompetanse og økt bruk av åremål. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>STATSFORVALTNING</topic>
          <topic>TELEKOMMUNIKASJONER</topic>
        </topics>
        <source>PP:11</source>
        <body>At IT-løsninger i offentlig sektor i større grad skal basere seg på åpne standarder.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
          <topic>STATSFORVALTNING</topic>
        </topics>
        <source>PP:11</source>
        <body>Gjennomføre tiltak som øker innflytelsen til elevene i skolen og til brukere av offentlige tjenester.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSLIV</topic>
          <topic>ARBEIDSMILJØ</topic>
          <topic>NÆRINGSUTVIKLING</topic>
        </topics>
        <source>PP:11</source>
        <body>Styrke den reelle medvirkningen for de ansatte, tillitsvalgte og organisasjonene i arbeidslivet for å sikre arbeidsmiljøet og virksomhetenes utvikling</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VALG</topic>
        </topics>
        <source>PP:11</source>
        <body>Øke tilgjengeligheten for forhåndsstemming, og gi større mulighet til å avgi stemme ved offentlige institusjoner som sykehus, omsorgsboliger, høyere utdanningsinstitusjoner og videregående skoler</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VALG</topic>
        </topics>
        <source>PP:11</source>
        <body>Avskaffe prøveordningen med direkte ordførervalg</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>GRUNNLOVEN</topic>
          <topic>REGJERINGEN</topic>
          <topic>STORTINGET</topic>
        </topics>
        <source>PP:12</source>
        <body>Endre Grunnloven, slik at Stortinget skal gi tiltredende regjeringer uttrykkelig tillit (investitur), og slik at Regjeringen gis mulighet til oppløsingsrett og utlyse nyvalg. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>MASSEMEDIER</topic>
        </topics>
        <source>PP:12</source>
        <body>Videreføre og øke pressestøtten</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NORSK RIKSKRINGKASTING</topic>
        </topics>
        <source>PP:12</source>
        <body>Styrke NRK som allmennkringkaster og beholde lisensfinansieringen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VALG</topic>
        </topics>
        <source>PP:12</source>
        <body>Arbeide for å forenkle stemmegivningen, og gjennomføre forsøk med elektronisk valg</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSLIV</topic>
          <topic>TRYGDER</topic>
        </topics>
        <source>PP:12</source>
        <body>Opprettholde arbeidstakernes rettigheter i sykelønnsordningen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSLIV</topic>
          <topic>SYSSELSETTING</topic>
        </topics>
        <source>PP:12</source>
        <body>Styrke oppfølgingen av avtalen om inkluderende arbeidsliv (IA-avtalen). </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SYSSELSETTING</topic>
        </topics>
        <source>PP:12</source>
        <body>Ha et høyt nivå på arbeidsmarkedstiltak</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SYSSELSETTING</topic>
        </topics>
        <source>PP:12</source>
        <body>Satse på særskilt oppfølging av utsatte grupper på arbeidsmarkedet, herunder langtidsledige, personer med nedsatt funksjonsevne og innvandrerkvinner.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SYSSELSETTING</topic>
          <topic>TRYGD</topic>
        </topics>
        <source>PP:13</source>
        <body>Bruke trygd som lønnstilskudd for å få folk i arbeid. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSLIV</topic>
        </topics>
        <source>PP:13</source>
        <body>Ha gunstige finansieringsordninger for å dekke behovet for varig tilrettelagte arbeidsplasser. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SYSSELSETTING</topic>
        </topics>
        <source>PP:13</source>
        <body>Styrke arbeidsrettede tiltak og sikre forutsigbare og stabile rammebetingelser for vekst- og attføringsbedriftene. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSMILJØ</topic>
        </topics>
        <source>PP:13</source>
        <body>Styrke ansattes rett til vern av personlig integritet i arbeidsforhold.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:13</source>
        <body>Forenkle og effektivisere godkjenningsprosedyrer for utdanning tatt i utlandet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSMILJØ</topic>
        </topics>
        <source>PP:13</source>
        <body>Skjerpe innsatsen for et godt arbeidsmiljø både nasjonalt og i den enkelte virksomhet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSMILJØ</topic>
        </topics>
        <source>PP:13</source>
        <body>Styrke Arbeidstilsynet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LØNN</topic>
        </topics>
        <source>PP:13</source>
        <body>Innføre solidaransvar for lønn i hele kontraktskjeden der lønnsnivået i tariffavtale er allmenngjort.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSLIV</topic>
          <topic>VOKSENOPPLÆRING</topic>
        </topics>
        <source>PP:13</source>
        <body>Sikre mulighet for kompetanseheving/opplæring</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSMILJØ</topic>
        </topics>
        <source>PP:13</source>
        <body>Gjennomføre og styrke felleskontroller fra offentlige myndigheter for å forebygge brann, trygdemisbruk, sosial dumping, skatteunndragelser, ulovlig alkoholomsetning og andre straffbare forhold.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSVILKÅR</topic>
        </topics>
        <source>PP:13</source>
        <body>Redusere ufrivillig deltidsarbeid i offentlige virksomheter. Gjennom samarbeid med arbeidstakernes organisasjoner arbeide for å finne løsninger som har som mål å avskaffe uønsket deltidsarbeid.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSVILKÅR</topic>
        </topics>
        <source>PP:13</source>
        <body>At staten skal gjennomgå sin ansettelsespolitikk for å redusere bruk av midlertidig ansatte.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSVILKÅR</topic>
          <topic>FAMILIE</topic>
        </topics>
        <source>PP:13</source>
        <body>Gå inn for reformer som gir arbeidstakerne mer tid til omsorg for sine barn og sine eldre, og redusert arbeidstid for enkelte arbeidstakere.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SYSSELSETTING</topic>
        </topics>
        <source>PP:14</source>
        <body>Bevisstgjøre arbeidsgivere både i offentlig og privat sektor på en inkluderende rekrutteringspolitikk</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LIKESTILLING</topic>
          <topic>MENNESKERETTIGHETER</topic>
        </topics>
        <source>PP:14</source>
        <body>Styrke likestillings- og diskrimineringsombudet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>STATENS PERSONALPOLITIKK</topic>
          <topic>INNVANDRERE</topic>
        </topics>
        <source>PP:14</source>
        <body>At ved stillinger i det offentlige hvor det finnes kvalifiserte søkere med minoritetsbakgrunn, skal minst én kalles inn til intervju.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>INNVANDRERE</topic>
          <topic>ARBEIDSLIV</topic>
        </topics>
        <source>PP:14</source>
        <body>At innvandrere informeres om rettigheter og plikter i norsk arbeidsliv og velferdssystem.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SYSSELSETTING</topic>
        </topics>
        <source>PP:14</source>
        <body>Fjerne barrierer og sørge for universell utforming og tilgjengelighet for alle til å delta i samfunnet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>INNVANDRERE</topic>
          <topic>SPRÅK</topic>
          <topic>VOKSENOPPLÆRING</topic>
        </topics>
        <source>PP:14</source>
        <body>Gjennomgå det pedagogiske innholdet i språkopplæring for innvandrere.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>MENNESKERETTIGHETER</topic>
        </topics>
        <source>PP:14</source>
        <body>Motarbeide fanatisme og antidemokratiske holdninger i Norge.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
          <topic>FAMILIE</topic>
        </topics>
        <source>PP:14</source>
        <body>Intensivere forskningen på homofiles levekår. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>MENNESKERETTIGHETER</topic>
          <topic>POLITI OG PÅTALEMYNDIGHET</topic>
        </topics>
        <source>PP:14</source>
        <body>Arbeide mot hatkriminalitet</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LIKESTILLING</topic>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:15</source>
        <body>At det iverksettes et program i skolen for å oppnå mindre kjønnsdelte utdanningsutvalg, blant annet gjennom bedre yrkesrådgivning.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSVILKÅR</topic>
        </topics>
        <source>PP:15</source>
        <body>Styrke retten til heltid, og vurdere nye lovendringer for å få til dette.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSVILKÅR</topic>
        </topics>
        <source>PP:15</source>
        <body>Endre arbeidsmiljøloven slik at de som arbeider tredelt turnus får redusert arbeidstid. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSVILKÅR</topic>
        </topics>
        <source>PP:15</source>
        <body>Arbeide for at deltidssansatte i private og offentlige pensjonskasser får rettferdig pensjon.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSVILKÅR</topic>
          <topic>LIKESTILLING</topic>
        </topics>
        <source>PP:15</source>
        <body>Motvirke kjønnsdelt arbeidsmarked ved kvotering og andre tiltak til utdanning, tilsetting og ledelse.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LIKESTILLING</topic>
          <topic>HØYERE UTDANNING</topic>
          <topic>VIDEREGÅENDE SKOLER</topic>
        </topics>
        <source>PP:15</source>
        <body>Bevisst bygge miljøer rundt det underrepresenterte kjønn ved høyere utdanningsinstitusjoner og videregående skoler som er tradisjonelt kjønnsdelt.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>LIKESTILLING</topic>
          <topic>INNVANDRERE</topic>
          <topic>SPRÅK</topic>
          <topic>ARBEIDSLIV</topic>
        </topics>
        <source>PP:15</source>
        <body>Gi innvandrerkvinner tilbud om kvalifiseringsprogram der arbeidsrettet norskopplæring kombineres med ordinær arbeidspraksis</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
          <topic>LIKESTILLING</topic>
        </topics>
        <source>PP:15</source>
        <body>Arbeide for å styrke forskning rettet mot likestilling i samfunnet generelt.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
          <topic>SAMER</topic>
        </topics>
        <source>PP:15</source>
        <body>Sikre at samiske læremidler i skolen er tilgjengelig.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>KOMMUNENES ØKONOMI</topic>
          <topic>SPRÅK</topic>
          <topic>SKOLER</topic>
          <topic>MENNESKERETTIGHETER</topic>
          <topic>SAMER</topic>
        </topics>
        <source>PP:15</source>
        <body>Sikre kommunene tilstrekkelig med ressurser til å gi undervisning i samisk og nasjonale minoritetsspråk, og legge til rette for tospråklighet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>SAMER</topic>
          <topic>SKOLER</topic>
          <topic>SPRÅK</topic>
        </topics>
        <source>PP:15</source>
        <body>At skoleelever i de samiske områdene skal kunne velge samisk i stedet for sidemål.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMER</topic>
          <topic>SPRÅK</topic>
        </topics>
        <source>PP:15</source>
        <body>Styrke medie- og litteraturtilbudet på samisk. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMER</topic>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:15</source>
        <body>Utdanne flere samiske lærere, førskolelærere og helse-og sosialarbeidere.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMER</topic>
          <topic>KULTUR</topic>
        </topics>
        <source>PP:15</source>
        <body>Styrke det samiske kulturlivet ved å øke bevilgningene til Sametinget.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMER</topic>
          <topic>FORSKNING</topic>
        </topics>
        <source>PP:15</source>
        <body>Styrke samisk forskning og forskning om samiske forhold.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMER</topic>
          <topic>REISELIVSNÆRING</topic>
          <topic>HANDEL</topic>
        </topics>
        <source>PP:15</source>
        <body>Satse på samisk reiselivsutvikling og design/duodji. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMER</topic>
          <topic>REINDRIFT</topic>
        </topics>
        <source>PP:15</source>
        <body>Utforme rovdyrpolitikken slik at eksistensgrunnlaget for samiske næringer sikres. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMER</topic>
          <topic>MILJØVERN</topic>
        </topics>
        <source>PP:15</source>
        <body>At Sametinget skal tas med i utviklingen av klimapolitikken.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMER</topic>
          <topic>KULTUR</topic>
        </topics>
        <source>PP:15</source>
        <body>Bedre rammebetingelsene for samiske kunstnere og kulturutøvere og bidra til internasjonal profilering av samisk kultur.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMER</topic>
          <topic>BARNEHAGER</topic>
        </topics>
        <source>PP:15</source>
        <body>Øke antallet samiske barnehageplasser.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>MASSEMEDIER</topic>
          <topic>SAMER</topic>
          <topic>MENNESKERETTIGHETER</topic>
        </topics>
        <source>PP:16</source>
        <body>Sikre landsdekkende samiske aviser, og medier for ulike nasjonale minoriteter. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
          <topic>MENNESKERETTIGHETER</topic>
        </topics>
        <source>PP:16</source>
        <body>Styrke forskningen og kunnskapsutviklingen rundt nasjonale minoriteter.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>MENNESKERETTIGHETER</topic>
          <topic>KULTUR</topic>
        </topics>
        <source>PP:16</source>
        <body>Støtte tiltak som setter fokus på nasjonale minoriteters kultur.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>BARNEHAGER</topic>
        </topics>
        <source>PP:18</source>
        <body>Innføre tilbud om førskole i barnehage for alle 5-åringer som ikke har barnehageplass.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>BARNEHAGER</topic>
          <topic>INNVANDRERE</topic>
        </topics>
        <source>PP:18</source>
        <body>Tilby gratis kjernetid i barnehage for alle 3-5-åringer i områder med mange minoritetsspråklige, og utvide ordningen til flere områder enn i dag. Det er viktig å drive oppsøkende virksomhet for å øke bruken av tilbudet i målgruppen. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARNEHAGER</topic>
        </topics>
        <source>PP:18</source>
        <body>Holde maksimalprisen for barnehager på et lavt nivå.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARNEHAGER</topic>
          <topic>INNVANDRERE</topic>
        </topics>
        <source>PP:18</source>
        <body>Legge til rette for å øke andelen ansatte med minoritetsbakgrunn i barnehage og skole.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARNEHAGER</topic>
        </topics>
        <source>PP:18</source>
        <body>Arbeide for at flere menn ansettes i barnehagene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSVILKÅR</topic>
          <topic>BARNEHAGER</topic>
        </topics>
        <source>PP:18</source>
        <body>Sikre likeverdige lønns- og arbeidsforhold for ansatte i private og kommunale barnehager.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARNEHAGER</topic>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:18</source>
        <body>Utdanne og rekruttere nok førskolelærere, sikre tilfredsstillende voksentetthet og styrke de øvrige ansattes kompetanse for å gi barnehagene bedre kvalitet. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:19</source>
        <body>At alle elever skal ha sin primære tilhørighet til én fast klasse eller basisgruppe hvor hoveddelen av felles opplevelser skjer.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:19</source>
        <body>Gi elevene rett til å gå på den skolen som ligger nærmest eller den de sokner til, og mulighet til å tas inn på en annen skole dersom de ønsker det.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:19</source>
        <body>At lærestoffet og læremidlene skal gjenspeile mangfoldet i samfunnet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:19</source>
        <body>Sikre at læremidlene er tilgjengelige for alle elever fra skolestart, uansett målform eller tilretteleggingsbehov.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
          <topic>VIDEREGÅENDE SKOLER</topic>
        </topics>
        <source>PP:19</source>
        <body>Videreutvikle nasjonale kartleggingsprøver og innføre slike prøver i videregående opplæring</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:19</source>
        <body>Legge til rette for at resultatene fra nasjonale prøver ikke kan brukes til å rangere elever, klasser eller skoler, men til å heve det faglige nivået for hver enkelt elev.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:19</source>
        <body>Utarbeide konkrete læringsmål for hvert trinn til hjelp i lærernes læreplanarbeid.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:19</source>
        <body>Styrke arbeidet med elev- og lærlingvurdering, og sikre at hver enkelt får tilbakemeldinger som fremmer læring og mestring.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:19</source>
        <body>Opprette en nasjonal database med blant annet undervisningsopplegg, planarbeid og materiale til bruk i kontakten mellom skole og hjem.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:19</source>
        <body>Utvikle nettbaserte læremidler til bruk i undervisningen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
          <topic>BIBLIOTEK OG LITTERATUR</topic>
        </topics>
        <source>PP:19</source>
        <body>Satse på bemannede, utviklingsorienterte og dynamiske skolebibliotek som læringssentra i grunnskolen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:20</source>
        <body>Utvide timeantallet til 28 skoletimer i uka på barnetrinnet og videreutvikle heldagsskolen med fokus på grunnleggende ferdigheter og leksehjelp. Vi vil ha én time gratis SFO med fysisk aktivitet hver dag i de første fire årene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SPESIALUNDERVISNING</topic>
        </topics>
        <source>PP:20</source>
        <body>Gi spesialundervisning og oppfølging så tidlig som mulig i skoleløpet. Der en elev ligger under kritisk grense i grunnleggende ferdigheter, skal det umiddelbart iverksettes særskilt oppfølging</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:20</source>
        <body>At privatøkonomi ikke skal utelukke noen fra å delta på aktiviteter i skolens regi.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:20</source>
        <body>Motivere flere til å velge 2. fremmedspråk, og øke motivasjonen for realfag.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:20</source>
        <body>Ha en gjennomgang av morsmålsopplæringen for å sikre god kvalitet og at den går til de elever som har behov for det. Vi vil at flere får tilbud om morsmålsopplæring som 2. fremmedspråk.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
          <topic>VIDEREGÅENDE SKOLER</topic>
        </topics>
        <source>PP:20</source>
        <body>Sørge for nært samarbeid mellom ungdomsskolene og de videregående skolene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:20</source>
        <body>Legge til rette for tilbud om ungdomssbedrift på ungdomsskoler.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:20</source>
        <body>Sikre leksehjelp for alle som ønsker det.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:20</source>
        <body>Styrke både den sosialpedagogiske  rådgivningen og yrkesveiledningen ved å doble rådgivningsressursene og innføre kompetansekrav for rådgivere.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:20</source>
        <body>Legge til rette for at elevene i grunnskolen skal ha daglig  fysisk aktivitet</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:20</source>
        <body>Forsterke samarbeidet mellom hjem og skole</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:20</source>
        <body>Jobbe aktivt mot mobbing i skolen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:21</source>
        <body>Sørge for at elever på studieforberedende program kan ta deler av fag innenfor høyere utdanning</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
          <topic>NÆRINGSLIV</topic>
        </topics>
        <source>PP:21</source>
        <body>Styrke rekrutteringen til realfag og språkfag i samarbeid med lokalt arbeids- og næringsliv.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
        </topics>
        <source>PP:21</source>
        <body>Gjøre de teoretiske fagene i yrkesfaglige studieprogram mer praksisnære, og legge opp til mer varierte undervisningsformer</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
        </topics>
        <source>PP:21</source>
        <body>Øke antall læreplasser både i offentlig og privat sektor, blant annet gjennom å lovfeste retten til læreplass.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
        </topics>
        <source>PP:21</source>
        <body>Gi tilbud om alternative løp i videregående opplæring som er mer praktisk rettet, samt gi flere tilbud der hele eller større deler av opplæringen foregår i arbeidslivet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
        </topics>
        <source>PP:21</source>
        <body>Overføre god praksis i arbeidet mot frafall og sette inn tiltak der problemet er størst.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
          <topic>STUDIEFINANSIERING</topic>
        </topics>
        <source>PP:21</source>
        <body>At ingen med ungdomsrett skal måtte ta opp studielån for å gjennomføre videregående opplæring.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
          <topic>INNVANDRERE</topic>
        </topics>
        <source>PP:21</source>
        <body>Videreutvikle ordningen med minoritetsrådigvere på  skoler med flere enn 25 prosent elever med innvandrerbakgrunn.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:21</source>
        <body>At elever med fagbrev skal gis større mulighet til å søke høyere utdanning innenfor sitt fagområde.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
        </topics>
        <source>PP:21</source>
        <body>Videreutvikle lærekandidatordningen og forsøkene med praksisbrev.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
        </topics>
        <source>PP:21</source>
        <body>Gjennomføre forsøk med mentorordninger der ressurspersoner fra skoler og arbeidsliv følger opp enkeltelever som står i fare for avbryte opplæringen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
          <topic>KOMMUNER</topic>
        </topics>
        <source>PP:21</source>
        <body>Samarbeide med kommunene om miljøkontakter på de videregående skolene som kan bidra til å løse sosial problemer.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
        </topics>
        <source>PP:21</source>
        <body>Gi tilbud om intensiv undervisning før ny eksamen i fag eleven har strøket i.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:22</source>
        <body>Differansiere lærerutdanningene ved i større grad å spesialisere inn mot trinn og fag.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:22</source>
        <body>Etablere systematiske ordninger for etter- og videreutdanning av lærere, og innføre en rett og en plikt til å holde seg faglig oppdatert.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:22</source>
        <body>Utvikle nasjonalt rammeverk som sikrer økt lærertetthet i skolen og likeverdighet i opplæringstilbudet. Vi vil ha flere yrkesgrupper inn i skolen for å avlaste lærere og frigjøre tid til undervisning.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:22</source>
        <body>Gjennomføre tiltak som bidrar til å heve lærernes status og kompetanse i dialog med lærernes organisasjoner og KS. Målet er en bedre organisert skolehverdag hvor lærernes rolle styrkes. Fokuset må være på arbeidet i undervisningssituasjonen, og på at de samlede lærerressursene brukes best mulig.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:22</source>
        <body>Sikre rekruttering og tilgang på lærere og annet fagpersonell gjennom blant annet seniortiltak, ordninger for avskriving av studielån for språk- og realfagslærere og tilbud om pedagogisk utdannning for annet fagpersonell som tar jobb i skolen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:22</source>
        <body>Innføre sentralgitte prøver og sensur i sentrale undervisningsfag ved lærerhøyskolene for å sikre en jevn og høy faglig standard.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:22</source>
        <body>Gjennomgå plan- og rapporteringskravene med det formål å frigi lærertid til undervisning og oppfølging av den enkelte elev.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
          <topic>FORSKNING</topic>
        </topics>
        <source>PP:22</source>
        <body>Styrke pedagogikk, klasseledelse og undervisningspraksis i lærerutdanningen. Vi vil styrke undervisningsforskningen og øke forskningskompetanse.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>BARNEHAGE</topic>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:22</source>
        <body>Innføre inntektsgraderte satser, søskenmoderasjon og samordning mellom betaling i barnehage og skolefritidsordning.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:22</source>
        <body>Øke kvaliteten og ha flere ansatte med fagutdanning i skolefritidsordningen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSVILKÅR</topic>
          <topic>VOKSENOPPLÆRING</topic>
        </topics>
        <source>PP:23</source>
        <body>Legge til rette for en ordning hvor egne tillitsvalgte jobber spesielt med motivering og tilrettelegging av opplæring for ansatte.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VOKSENOPPLÆRING</topic>
        </topics>
        <source>PP:23</source>
        <body>Styrke voksenopplæringsorganisasjonene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:23</source>
        <body>Evaluere effekten av tiltakene som er gjennomført etter  gjennomgangen av etter- og videreutdanningspolitikken i 1990-årene, og vurdere behover for en ny helhetlig innsats.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VOKSENOPPLÆRING</topic>
        </topics>
        <source>PP:23</source>
        <body>Gjennomgå og styrke voksnes rettigheter og støtteordninger til grunnopplæring.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>VIDEREGÅENDE SKOLER</topic>
          <topic>VOKSENOPPLÆRING</topic>
        </topics>
        <source>PP:23</source>
        <body>At alle som ikke har videregående utdanning får mulighet til å ta dette - uavhengig av alder.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>UTDANNING</topic>
        </topics>
        <source>PP:23</source>
        <body>Senke aldersgrensen for realkompetansevurdering.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>INNVANDRERE</topic>
          <topic>UTDANNING</topic>
          <topic>LIKESTILLING</topic>
        </topics>
        <source>PP:23</source>
        <body>Gi tilbud om språkopplæring også til innvandrere - særlig kvinner - som har bodd i Norge lenge.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>UTDANNING</topic>
          <topic>ARBIEDSLIV</topic>
        </topics>
        <source>PP:23</source>
        <body>Sørge for at bedre ferdigheter i å lese og skrive er en del av arbeidsmarkedspolitikken.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:24</source>
        <body>Ha sterkere nasjonal styring for å sikre økt samarbeid, mer spesialisering og bedre arbeidsdeling mellom de høyere utdanningsinstitusjonene</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:24</source>
        <body>Styrke kvaliteten og relevansen til bachelorutdanningene, slik at de er mer tilpasset arbeidslivets behov</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:24</source>
        <body>Lage en nasjonal handlingsplan for næringsrettede utdanninger.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
          <topic>VOKSENOPPLÆRING</topic>
          <topic>ARBEIDSLIV</topic>
        </topics>
        <source>PP:24</source>
        <body>At utdanningsinstitusjonene i større grad enn i dag tilpasser sine tilbud for livslang læring og arbeidslivets behov.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:24</source>
        <body>Styrke det pedagogiske utviklingsarbeidet ved de høyere utdanningsinstitusjonene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:24</source>
        <body>Legge til rette for økt studentutveksling med andre land.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:24</source>
        <body>Styrke studentvelferden blant annet ved å sikre studentsamskipnadene gode vilkår.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>STUDIEFINANSIERING</topic>
        </topics>
        <source>PP:24</source>
        <body>At studielån og stipend reguleres i takt med prisstigningen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>STUDIEFINANSIERING</topic>
        </topics>
        <source>PP:24</source>
        <body>Øke bevilgningene og legge om utbetalingsstrukturen for studielån, slik at studiefinansiering betales ut over 11 måneder.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:24</source>
        <body>Evaluere dagens ordning med stykkprisfinansiering knyttet til antall uteksaminerte kandidater.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>UTDANNING</topic>
        </topics>
        <source>PP:24</source>
        <body>At flere av fagskolene bør ha offentlig finansiering, herunder de helsefaglige.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:24</source>
        <body>Bidra til at studentmedvirkning skal ivaretas på alle nivåer.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:24</source>
        <body>Gjøre entreprenørskap til en større del av flere utdanninger.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:24</source>
        <body>Videreutvikle fjernopplæringstilbud og desentralisere utdanningstilbud.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
        </topics>
        <source>PP:25</source>
        <body>At den samlede norske forskningen økes.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
          <topic>MILJØVERN</topic>
          <topic>ENERGI</topic>
          <topic>POLAROMRÅDER</topic>
          <topic></topic>
        </topics>
        <source>PP:25</source>
        <body>Satse spesielt på forskning innenfor områdene energi, miljø, maritim og marin sektor, samt på nordområdespørsmål.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
          <topic>DISTRIKTSPOLITIKK</topic>
        </topics>
        <source>PP:25</source>
        <body>Innrette forskning mot regionale satsingsområder og underbygge utviklingen av regionale fortrinn og regionale verdiskapingsmiljøer.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
        </topics>
        <source>PP:25</source>
        <body>Øke grunnforskningen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>UTDANNING</topic>
          <topic>FORSKNING</topic>
        </topics>
        <source>PP:25</source>
        <body>Sikre vitenskapsteoretisk og etisk kompetanse i forskerutdanningen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
        </topics>
        <source>PP:25</source>
        <body>Styrke forskerrekrutteringen og innføre flere post.doc-stillinger og faste stillinger.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
          <topic>INTERNASJONALT SAMARBEID</topic>
        </topics>
        <source>PP:25</source>
        <body>Legge til rette for økt forskerutveksling med andre land og for at norske forskere deltar mer i EUs rammeprogrammer.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
          <topic>NÆRINGSLIV</topic>
        </topics>
        <source>PP:25</source>
        <body>Styrke virkemidler som utløser økt forskning i næringslivet, som brukerstyrte program og nærings-ph.d.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
        </topics>
        <source>PP:25</source>
        <body>At forskere, studenter og bedrifter har tilgang til relevant moderne utstyr.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:25</source>
        <body>Arbeide for å fremme en kultur for entreprenørskap i høyere utdanning.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NÆRINGSLIV</topic>
          <topic>FORSKNING</topic>
        </topics>
        <source>PP:26</source>
        <body>Satse videre på de områdene der vi har spesielle forutsetninger for å være gode, som energi og miljø, reiseliv, maritim og marin sektor, blant annet gjennom satsing på forskning og utvikling.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>SKULLE</topic>
        </topics>
        <source>PP:26</source>
        <body>Si nei til salg av StatoilHydro og til delprivatisering eller salg av Statkraft og Statnett.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>ENERGI</topic>
          <topic>STATSBEDRIFTER</topic>
        </topics>
        <source>PP:26</source>
        <body>Fortsatt sikre hjemfallsinstituttet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>STATSBEDRIFTER</topic>
        </topics>
        <source>PP:27</source>
        <body>At bedrifter som staten eier skal ta samfunnsansvar både lokalt, regionalt, nasjonalt og internasjonalt.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NÆRINGSUTVIKLING</topic>
        </topics>
        <source>PP:27</source>
        <body>Sørge for tilgang til kapital gjennom bevilgninger til såkornkapital og etableringsstipend til gründere.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NÆRINGSUTVIKLING</topic>
        </topics>
        <source>PP:27</source>
        <body>At virkemiddelapparatet skal treffe bedriftenes behov.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NÆRINGSUTVIKLING</topic>
        </topics>
        <source>PP:27</source>
        <body>At virkemiddelapparatet skal ha spesielt fokus på behovene til små og mellomstore bedrifter.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NÆRINGSUTVIKLING</topic>
        </topics>
        <source>PP:27</source>
        <body>Bruke statens kapitalstyrke som kapitalkilde til konkurransedyktige nyskapingsprosjekter.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NÆRINGSUTVIKLING</topic>
          <topic>FORSKNING</topic>
        </topics>
        <source>PP:27</source>
        <body>At det offentlige i større grad bruker sin stilling som stor innkjøper for å bidra til teknologiutvikling i næringslivet, og øke satsingen på på offentlige forsknings- og utviklingskontrakter.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>SKATTEFRADRAG</topic>
          <topic>NÆRINGSUTVIKLING</topic>
          <topic>FORSKNING</topic>
        </topics>
        <source>PP:27</source>
        <body>Videreføre Skattefunn-ordningen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NÆRINGSLIV</topic>
        </topics>
        <source>PP:27</source>
        <body>Forenkle næringslivets krav til rapportering gjennom et kontinuerlig forenklingsarbeid.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LIKESTILLING</topic>
          <topic>NÆRINGSUTVIKLING</topic>
        </topics>
        <source>PP:27</source>
        <body>Arbeide for at flere kvinner etablerer og videreutvikler bedrifter gjennom oppfølging av handlingsplan for mer entreprenørskap blant kvinner.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ENERGI</topic>
        </topics>
        <source>PP:27</source>
        <body>Fortsette å skaffe til veie ny kraft gjennom Enova og ny nettutbygging, og så langt som mulig innenfor EØS-regelverket, utvikle garanti- og finansordninger for kraftkjøp til konsortium.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NÆRINGSUTVIKLING</topic>
        </topics>
        <source>PP:27</source>
        <body>Fortsette styrkingen av designdrevet næringsutvikling.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>KULTUR</topic>
          <topic>NÆRING</topic>
        </topics>
        <source>PP:27</source>
        <body>Stimulere til næringsvirksomhet i skjæringspunktet mellom kultur og næring.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NÆRINGSLIV</topic>
          <topic>STATSFORVALTNING</topic>
        </topics>
        <source>PP:27</source>
        <body>At det offentlige som byggherre, regulator og kontrollmyndighet bidrar til at bygge- og anleggsbransjen utvikler seg som en produktiv, innovativ og kompetanseutviklende næring.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>REISELIVSNÆRING</topic>
        </topics>
        <source>PP:27</source>
        <body>Videreutvikle reiselivsnæringen med fokus på kvalitet og markedsføringen av Norge i utlandet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NÆRINGSLIV</topic>
          <topic>MILJØVERN</topic>
        </topics>
        <source>PP:27</source>
        <body>Videreutvikle den maritime næringen med fokus på forskning og innovasjon rettet mot utvikling av mer miljøvennlige løsninger.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NÆRINGSLIV</topic>
          <topic>MILJØVERN</topic>
        </topics>
        <source>PP:27</source>
        <body>Legge til rette for fremtidig verdiskapning gjennom økt utvikling og bruk av norsk miljøteknologi.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>NÆRINGSLIV</topic>
        </topics>
        <source>PP:27</source>
        <body>Utarbeide en nasjonal næringspolitisk strategi for privat tjenesteytende sektor.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LANDBRUK</topic>
          <topic>SYSSELSETTING</topic>
        </topics>
        <source>PP:28</source>
        <body>Prioritere bønder som henter en vesentlig del av sysselsetting og inntekt fra gården og annen primærnæringsvirksomhet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LANDBRUK</topic>
        </topics>
        <source>PP:28</source>
        <body>Stimulere til samdrifter og samarbeidstiltak, gjennom et fremtidsrettet og fleksibelt regelverk.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LANDBRUK</topic>
          <topic>SKOGBRUK</topic>
          <topic>REINDRIFT</topic>
        </topics>
        <source>PP:28</source>
        <body>Videreutvikle verdiskapingsprogrammene for mat, trevirke, reindrift og bioenergi.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>REISELIVSNÆRING</topic>
          <topic>DISTRIKTSPOLITIKK</topic>
        </topics>
        <source>PP:28</source>
        <body>Satse på grønt reiseliv og bygdeutviklingstiltak.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LANDBRUK</topic>
        </topics>
        <source>PP:28</source>
        <body>Satse på økologisk landbruk, og stimulere til utvikling av nisjeprodukter.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LANDBRUKSPRODUKTER</topic>
        </topics>
        <source>PP:28</source>
        <body>At norsk matproduksjon skal verdsettes og fortsatt være en viktig del av den totale verdikjeden.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>REINDRIFT</topic>
        </topics>
        <source>PP:28</source>
        <body>Stimulere til økologisk og økonomisk bærekraftig reindrift.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LANDBRUK</topic>
        </topics>
        <source>PP:28</source>
        <body>Sikre rekrutteringen til landbruket, samt stimulere til mangfold i landbruket.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LANDBRUK</topic>
        </topics>
        <source>PP:28</source>
        <body>Sikre jordbruksarealer for framtiden som grunnlag til matproduksjon og for å holde kulturlandskapet i hevd.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HUSDYR</topic>
        </topics>
        <source>PP:28</source>
        <body>At håndtering av dyr skal skje med omsorg og respekt for dyrets egenart. Arbeiderpartiet mener at dyr har egenverdi.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HAVBRUK</topic>
        </topics>
        <source>PP:29</source>
        <body>Sikre en bærekraftig forvaltning av de marine ressursene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FISKERIER</topic>
        </topics>
        <source>PP:29</source>
        <body>Sikre god ressurskontroll i fiskeriene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FANGST</topic>
        </topics>
        <source>PP:29</source>
        <body>Bekjempe ulovlig, uregulert og urapportert fiske.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
          <topic>HAVBRUK</topic>
        </topics>
        <source>PP:29</source>
        <body>Styrke den marine forskningen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HAVBRUK</topic>
          <topic>MILJØVERN</topic>
        </topics>
        <source>PP:29</source>
        <body>Styrke kunnskapen om hvilke effekter klimaendringer vil ha på havets økosystemer og det kystbaserte næringslivet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HAVBRUK</topic>
          <topic>FORURENSNING</topic>
        </topics>
        <source>PP:29</source>
        <body>Arbeide for å redusere utslipp av miljøgifter og klimagasser fra fiskeflåten og landindustrien.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HAVBRUK</topic>
        </topics>
        <source>PP:29</source>
        <body>Forebygge arealkonflikter og legge til rette for sameksistens mellom de ulike aktørene som benytter kystsonen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HAVBRUK</topic>
          <topic>REISELIVSNÆRING</topic>
        </topics>
        <source>PP:29</source>
        <body>Utvikle mulighetene i samspillet mellom marin sektor og reiselivsnæringen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HAVBRUK</topic>
        </topics>
        <source>PP:29</source>
        <body>Styrke den nasjonale satsingen på fangstbasert havbruk og oppdrett av nye arter.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>HAVBRUK</topic>
          <topic>FORSKNING</topic>
        </topics>
        <source>PP:29</source>
        <body>Utarbeide en nasjonal strategi for marin bioprospektering.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FISKEOMSETNING</topic>
        </topics>
        <source>PP:29</source>
        <body>Styrke innelands markedsføring av sjømat. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>FANGST</topic>
        </topics>
        <source>PP:29</source>
        <body>Utarbeide en strategi som har til hensikt å beskytte og bygge opp lokale kystbestander av fisk.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HAVBRUK</topic>
        </topics>
        <source>PP:29</source>
        <body>Styrke økosystembasert forvaltning for å sikre at bestander som i dag indirekte bidrar til verdiskaping som fôr og mat til andre arter, også forvaltes bærekraftig.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VEGTRAFIKK</topic>
          <topic>JERNBANER</topic>
          <topic>HAVNER</topic>
        </topics>
        <source>PP:30</source>
        <body>Gjennomføre et løft for transport og kommunikasjon gjennom å øke satsingen på vei, jernbane og havner og farleder.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VEGTRAFIKK</topic>
          <topic>JERNBANER</topic>
        </topics>
        <source>PP:30</source>
        <body>Prioritere vedlikehold og trafikksikkerhet vesentlig høyere innenfor bevilgningene til vei og bane.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VEGTRAFIKK</topic>
          <topic>FORURENSNING</topic>
        </topics>
        <source>PP:30</source>
        <body>Fortsette å legge om bilavgifter slik at det lønner seg å ha en bil som forurenser lite.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VEGTRAFIKK</topic>
        </topics>
        <source>PP:30</source>
        <body>Satse på sammenhengende sykkelveinett i byområder.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VEGTRAFIKK</topic>
          <topic>SAMFERDSEL</topic>
        </topics>
        <source>PP:30</source>
        <body>Støtte bypakker med tiltak for å redusere biltrafikken og øke kollektivsatsing.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>JERNBANER</topic>
        </topics>
        <source>PP:30</source>
        <body>Satse spesielt i det såkalte Intercity-triangelet for å få en rask økning i kapasiteten til godstransport med jernbane.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>JERNBANER</topic>
        </topics>
        <source>PP:30</source>
        <body>Prioritere kraftig opprustning og forbedring av dagens jernbanenett, noe som vil redusere reisetiden og øke avgangsfrekvensen for jernbane.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMFERDSEL</topic>
        </topics>
        <source>PP:30</source>
        <body>Øke innsatsen på kollektivtransport gjennom økt togtilbud og en vesentlig økning av belønningsordningen til kollektivtrafikk.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>JERNBANER</topic>
        </topics>
        <source>PP:30</source>
        <body>Vurdere hvordan mulige konsepter for høyhastighetsbaner kan tilpasses norske forhold.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMFERDSEL</topic>
        </topics>
        <source>PP:30</source>
        <body>Utvikle ungdomsrabatter i kollektivtransporten slik at ungdom, elever, lærlinger og studenter får rett til 50 prosent rabatt.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMFERDSEL</topic>
        </topics>
        <source>PP:30</source>
        <body>Støtte bybaneløsninger.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>JERNBANER</topic>
          <topic>HAVNER</topic>
        </topics>
        <source>PP:30</source>
        <body>Tilrettelegge havner og godsterminaler for å få gods over på tog og bane.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SJØFART</topic>
        </topics>
        <source>PP:30</source>
        <body>Øke innsatsen til merking og utbedring av farledene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SIKKERHET TIL SJØS</topic>
        </topics>
        <source>PP:30</source>
        <body>Styrke oljevernberedskapen og slepebåtkapasiteten.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FERGER</topic>
        </topics>
        <source>PP:30</source>
        <body>Arbeide for fornyelse av fergeflåten.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMFERDSEL</topic>
          <topic>DISTRIKTSPOLITIKK</topic>
        </topics>
        <source>PP:30</source>
        <body>Se syketransport og drosjetilbud og evt. andre transporttilbud i sammenheng for å sikre et godt tilbud.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>POST</topic>
        </topics>
        <source>PP:31</source>
        <body>Opprettholde likeverdige tilbud av posttjenester til lik pris over hele landet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>KOMMUNIKASJON</topic>
          <topic>STATSEIENDOMMER</topic>
        </topics>
        <source>PP:31</source>
        <body>Beholde NSB, Posten og Avinor i statlig eie og si nei til salg av Telenor.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SAMFERDSEL</topic>
          <topic>MILJØVERN</topic>
        </topics>
        <source>PP:31</source>
        <body>Arbeide for å bruke biogass i kollektivtrafikken.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VEGTRAFIKK</topic>
          <topic>JERNBANER</topic>
        </topics>
        <source>PP:31</source>
        <body>For å sikre rasjonell framdrift av større samferdselsprosjekter vil Arbeiderpartiet gå inn for prosjektfinansiering av vei- og jernbanestrekninger.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>AVGIFTER</topic>
          <topic>DISTRIKTSPOLITIKK</topic>
        </topics>
        <source>PP:31</source>
        <body>Beholde differensiert arbeidsgiveravgift.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LOKALFORVALTNING</topic>
        </topics>
        <source>PP:31</source>
        <body>Følge opp satsingsområdene i Groruddalen og i Oslo Sør, og ha satsinger i andre byområder med tilsvarende utfordringer.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>STATSBEDRIFTER</topic>
          <topic>DISTRIKTSPOLITIKK</topic>
        </topics>
        <source>PP:31</source>
        <body>At ny statslig virksomhet skal lokaliseres ut fra regionale og distriktspolitiske hensyn. Vi vil ikke foreta omfattende utflytting av eksisterende statlige virksomheter.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>LOKALFORVALTNING</topic>
        </topics>
        <source>PP:31</source>
        <body>Bidra til omstilling i lokalsamfunn med særskilte utfordringer.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FYLKESKOMMUNENES ØKONOMI</topic>
        </topics>
        <source>PP:31</source>
        <body>At alle fylker sikres tilstrekkelig med midler til å skjøtte sitt ansvar for regional utvikling. Vi vil utvikle virkemidler for å sikre at også fylker med flere eller alle kommuner det distriktspolitiske virkeområdet skal ha grunnlag for å drive regionalt utviklingsarbeid i hele fylket.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>FORSKNING</topic>
          <topic>MILJØVERN</topic>
        </topics>
        <source>PP:33</source>
        <body>Etablere et storstilt og langsiktig forskningsprogram for fornybar energi, herunder offshore vindkraft.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ENERGI</topic>
        </topics>
        <source>PP:34</source>
        <body>Ha en betydelig økning av bevilgningene til vindkraft og andre fornybare energikilder. Disse skal ha rammebetingelser som er langsiktige og forutsigbare.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ENERGI</topic>
        </topics>
        <source>PP:34</source>
        <body>Styrke innsatsen for å øke bruken av bioenergi</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ELEKTRISITET</topic>
        </topics>
        <source>PP:34</source>
        <body>Bidra til flere fjernvarmeanlegg og biokraftanlegg gjennom støtteordninger og effektiv konsesjonsbehandling.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ELEKTRISITET</topic>
        </topics>
        <source>PP:34</source>
        <body>Arbeide for et grønt sertifikatmarked som omfatter Sverige og på sikt også de øvrige nordiske og europeiske landene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ENERGI</topic>
        </topics>
        <source>PP:34</source>
        <body>Styrke kapasiteten i NVE.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>VASSDRAGSREGULERING</topic>
        </topics>
        <source>PP:34</source>
        <body>Legge til rette for opprustning av eksisterende vannkraftverk.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ELEKTRISITET</topic>
        </topics>
        <source>PP:34</source>
        <body>Vurdere forenklinger i regelverket for konsesjonsbehandling.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ENERGI</topic>
          <topic>STATSBEDRIFTER</topic>
        </topics>
        <source>PP:34</source>
        <body>Bidra til å utvikle de regionale kraftselskapene gjennom et langsiktig offentlig og regionalt eierskap.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>ELEKTRISITET</topic>
        </topics>
        <source>PP:34</source>
        <body>Utarbeide en nasjonal strategi for energieffektivisering.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>OLJEUTVINNING</topic>
        </topics>
        <source>PP:34</source>
        <body>Ha åpenhet i forvaltningen av norsk petroleumsvirksomhet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>OLJEOMSETNING</topic>
        </topics>
        <source>PP:34</source>
        <body>Legge til rette for at en større andel av gass fra norsk sokkel kan benyttes til innenlandsk industriell verdiskaping ved blant annet å bidra til utbygging av infrastruktur for gasstransport.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>ELEKTRISITET</topic>
        </topics>
        <source>PP:34</source>
        <body>At de gitte konsesjoner for gasskraft skal stå ved lag. Nye konsesesjoner skal basere seg på CO2-fjerning.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
          <topic>FORURENSNING</topic>
        </topics>
        <source>PP:34</source>
        <body>Utvikle Mongstad til et permanent internasjonalt forskingssenter for fangst og lagring av C02.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>OLJEUTVINNING</topic>
        </topics>
        <source>PP:34</source>
        <body>Gi petroleumsindustrien tilgang til interessante leteområder for olje og gass.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FISKERIER</topic>
          <topic>OLJEUTVINNING</topic>
        </topics>
        <source>PP:34</source>
        <body>Bidra til god sameksistens mellom petroleumsvirksomhet og fiskeriinteresser.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SJØFART</topic>
          <topic>OLJE</topic>
        </topics>
        <source>PP:34</source>
        <body>Bidra til økt bruk av naturgass som drivstoff på skip.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>MILJØVERN</topic>
        </topics>
        <source>PP:34</source>
        <body>Nordland VI og VII og Troms II er i dag ikke åpent for petroleumsvirksomhet. Arbeiderpartiet vil ta stilling til leteboring i disse områdene ved behandling av forvaltningsplanen i 2010. Vi vil basere beslutningen på føre-var-prinsippet og på ny kunnskap, og hvorvidt utvinning kan skje på en forsvarlig måte for miljø og fiskeriressurser, og med lokale ringvirkninger. </body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
          <topic>OLJEUTVINNING</topic>
        </topics>
        <source>PP:34</source>
        <body>Øke forskning på utslippsberedskap innenfor petroleumsvirksomhet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>INTERNASJONALT SAMARBEID</topic>
          <topic>MILJØVERN</topic>
        </topics>
        <source>PP:35</source>
        <body>Oppfylle våre forpliktelser i internasjonale miljøavtaler.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NATURVERN</topic>
        </topics>
        <source>PP:35</source>
        <body>Stanse tapet av biologisk mangfold og øke barskogvernet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>NATURVERN</topic>
        </topics>
        <source>PP:35</source>
        <body>Fullføre vernepelanen for nasjonalparker.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NATURVERN</topic>
        </topics>
        <source>PP:35</source>
        <body>Ha levedyktige rovdyrstammer i Norge, og utøve en aktiv og målrettet rovdyrforvaltning slik at konfliktnivået blir redusert. Vi vil ha gode erstatningsordnigner.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NATURVERN</topic>
        </topics>
        <source>PP:35</source>
        <body>Trappe opp kalking av vassdrag.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>NATURVERN</topic>
        </topics>
        <source>PP:35</source>
        <body>Etablere en nasjonal hovedregel om forbud mot bygging av hytter og fritidsboliger på snaufjellet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>NATURVERN</topic>
          <topic>DISTRIKTSPOLITIKK</topic>
        </topics>
        <source>PP:35</source>
        <body>Øke kunnskapen om konsekvensene av vern og sikre lokal medvirkning i vernesaker. Det er viktig at det legges til rette for verdiskaping i tilknytning til verneområdene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FAMILIE</topic>
        </topics>
        <source>PP:37</source>
        <body>Er imot konstantstøtten og vil gradvis avvikle denne når full barnehagedekning er oppnådd og alternative ordninger etablert.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>FAMILIE</topic>
        </topics>
        <source>PP:37</source>
        <body>Utvide foreldrepermisjonen til 48 uker med 100 prosent lønn, og at 14 av disse ukene skal forbeholdes far.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FAMILIE</topic>
        </topics>
        <source>PP:37</source>
        <body>Styrke fars selvstendige permisjonsrettigheter. Hver av foreldrene skal gis foreldrepenger på basis av egen opptjening.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>FAMILIE</topic>
        </topics>
        <source>PP:37</source>
        <body>Utrede hvordan ordningen med den to uker lange omsorgspermisjonen for far ved fødsel eller omsorgsovertakelse kan gjøres bedre.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FAMILIE</topic>
        </topics>
        <source>PP:37</source>
        <body>Innføre tiltak mot samværssabotasje og manglende betaling av bidrag.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>FAMILIE</topic>
        </topics>
        <source>PP:37</source>
        <body>At adopsjonsstøtten skal knyttes til folketrygden og settes til 1 G.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FAMILIE</topic>
        </topics>
        <source>PP:37</source>
        <body>Arbeide for å åpne for adopsjon fra flere land.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARNEVERN</topic>
        </topics>
        <source>PP:37</source>
        <body>Ha en opptrappingsplan for styrking av barnevernet i kommunene gjennom kompetanseheving og å øke antall ansatte.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARNEVERN</topic>
          <topic>INNVANDRERE</topic>
        </topics>
        <source>PP:38</source>
        <body>Målrette atferdsprogrammer brukt i barnevernet, slik at de bedre kan brukes i familier med innvandrerbakgrunn.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARN</topic>
        </topics>
        <source>PP:38</source>
        <body>Bedre oversikten over antall norske barn som til enhver tid oppholder seg i utlandet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARN</topic>
        </topics>
        <source>PP:38</source>
        <body>Følge opp barn som har mangler i norskkunnskaper ved 4-årskontroll, samt deres foreldre.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARN</topic>
          <topic>INNVANDRERE</topic>
        </topics>
        <source>PP:38</source>
        <body>Gi tilbud om sommerskole, inkludert fritidsaktiviteter, for barn i områder med mange minoritetsspråklige familier.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARN</topic>
          <topic>FUNKSJONSHEMMEDE</topic>
        </topics>
        <source>PP:38</source>
        <body>Gi tilskudd til nødvendige ombygginger av bolig med hensyn til barn med nedsatt funksjonsevne.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARN</topic>
          <topic>TRYGDER</topic>
        </topics>
        <source>PP:38</source>
        <body>At barn i familier som lever på sosialstønad skal ha selvstendig rett til aktivitetsutøvelse.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARN</topic>
          <topic>SOSIALVESEN</topic>
        </topics>
        <source>PP:38</source>
        <body>At avlastningstilbud for familier med barn med spesielt krevende behov må bygges ut.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARN</topic>
        </topics>
        <source>PP:38</source>
        <body>Gi domstolen en mulighet for å idømme delt bosted dersom det er barnets beste.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SYKEHUS</topic>
        </topics>
        <source>PP:39</source>
        <body>Sikre et sykehustilbud med nærhet til akuttfunksjoner og fødetilbud.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEPERSONELL</topic>
        </topics>
        <source>PP:39</source>
        <body>Samle høyspesialisert medisin for å sikre sterke fagmiljøer.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:39</source>
        <body>Gjennomføre en samhandlingsreform i helsevesenet, hvor de økonomiske, juridiske og organisatoriske ordningene tilpasses slik at pasienten opplever et helsetilbud som henger sammen, og ressursene utnyttes best mulig.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SYKEHUS</topic>
        </topics>
        <source>PP:39</source>
        <body>At sykehusene i det vesentlige skal være eid og drevet av det offentlige.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
          <topic>INNVANDRERE</topic>
        </topics>
        <source>PP:39</source>
        <body>Arbeide for at minoritetsbefolkningen får likeverdige helsetjenester ved å styrke tolketjenesten og øke kunnskapen i helsevesenet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:39</source>
        <body>Holde egenandeler i helsevesenet på et lavt nivå.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEINSTITUSJONER</topic>
          <topic>DISTRIKTSPOLITIKK</topic>
        </topics>
        <source>PP:39</source>
        <body>Opprette flere distrikts- og lokalmedisinske sentra.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:39</source>
        <body>Forbedre den elektroniske informasjonsflyten i alle deler av helsevesenet, og innføre kvalitetsregistre.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:39</source>
        <body>Sikre god politisk styring gjennom ny nasjonal helseplan som skal være et strategisk styringsdokument for helse- og omsorgstjenesten. Planen skal behandles av Stortinget.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
          <topic>NÆRINGSUTVIKLING</topic>
        </topics>
        <source>PP:39</source>
        <body>Forlenge satsingen på behovsdrevet innovasjon og næringsutvikling i helsesektoren, og utvide denne til også å omfatte forskningsbasert innovasjon.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:39</source>
        <body>Forbedre det kommunale tilbudet for psykisk syke, og gjennomgå tilbudet til de sykeste av disse.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:39</source>
        <body>Bedre tilgjengeligheten til akutte tjenester for psykisk syke, og gi et oppfølgingstilbud til pårørende</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:39</source>
        <body>Ha tilrettelagt bo- og aktivitetstilbud for psykisk syke.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>BARN</topic>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:39</source>
        <body>At barn med alvorlig syke foreldre må følges opp på en god måte i sykehusene og kommunene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEINSTITUSJONER</topic>
        </topics>
        <source>PP:39</source>
        <body>Opprette lindrende enheter for pasienter med inkurabel kreftsykdom og andre alvorlige kroniske diagnoser.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SYKDOMMER</topic>
        </topics>
        <source>PP:39</source>
        <body>Støtte forskning på ME / kronisk utmattelssyndrom, og la ME-pasienter få dekket utgifter til medisinsk behandling i utlandet fram til tilfredsstillende medisinsk  behandling er etablert i Norge.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SVANGERSKAP</topic>
        </topics>
        <source>PP:39</source>
        <body>Øke antallet forsøk ved assistert befruktning.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SVANGERSKAP</topic>
        </topics>
        <source>PP:39</source>
        <body>At gravide skal ha tilbud om tidlig ultralyd.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:40</source>
        <body>Styrke rehabiliterings- og habiliteringstjenestene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FOLKEHELSE</topic>
        </topics>
        <source>PP:40</source>
        <body>At en større del av helsekronene brukes på helsefremmende og forebyggende helsearbeid i kommune.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:40</source>
        <body>At skolehelsetjenesten må bli et tilgjengelig tilbud for alle elever fra barneskoletrinnet opp til videregående skole. Nasjonale standarder må settes i forhold til utbredelse og innhold. Skolene må ha tilgang på psykisk helsepersonell.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ARBEIDSLIV</topic>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:40</source>
        <body>Styrke arbeidsmedisinske avdelinger, og øke kapasiteten slik at det kan bli bedre samordning for forebygging og behandling av yrkesrelaterte sykdommer og helseplager.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEINSTITUSJONER</topic>
        </topics>
        <source>PP:40</source>
        <body>Styrke bedriftshelsetjenesten.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FOLKEHELSE</topic>
          <topic>ARBEIDSMILJØ</topic>
        </topics>
        <source>PP:40</source>
        <body>Samarbeide med arbeidslivets parter slik at den enkelte arbeidsplass kan gi tilbud om fysisk aktivitet, tobakksluttkurs og utvikler godt arbeidsmiljø.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FOLKEHELSE</topic>
          <topic>INNVANDRERE</topic>
        </topics>
        <source>PP:40</source>
        <body>Ha konkrete sykdomsforebyggende og kunnskapsøkende tiltak rettet mot minoritetsmiljøer som er særlig utsatt for enkelte livsstilssykdommer.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FOLKEHELSE</topic>
          <topic>LOKALFORVALTNING</topic>
        </topics>
        <source>PP:40</source>
        <body>At kommuner og fylkeskommuner har en sentral rolle i arbeidet med folkehelse og mot sosiale helseforskjeller.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:41</source>
        <body>At det offentlige gradvis tar et større ansvar på tannhelsefeltet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>HELSEVESEN</topic>
          <topic>ELDREOMSORG</topic>
        </topics>
        <source>PP:41</source>
        <body>I perioden 2009-2013 vil vi etablere gratis årlig tannhelsekontroll for eldre over 75 år.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
          <topic>HELSEINSTITUSJONER</topic>
        </topics>
        <source>PP:41</source>
        <body>I perioden 2009-2013 vil vi forbedre tannhelsetilbudet for dem som bor i institusjon og utvide det til også å gjelde heldøgns omsorgstilbud utenfor institusjon.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:41</source>
        <body>I perioden 2009-2013 vil vi utvide tannhelsetilbudet for psykisk syke med en alvorlig diagnose.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>HELSEVESEN</topic>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:41</source>
        <body>I perioden 2009-2013 vil vi ta bor egenandelen for 19- og 20-åringer hos skoletannlege.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>HELSEVESEN</topic>
          <topic>SOSIALVESEN</topic>
        </topics>
        <source>PP:41</source>
        <body>I perioden 2009-2013 vil vi at de som deltar i NAVs kvalifiseringsprogram skal ha gratis tannbehandling på linje med dem som har sosialhjelp som hovedinntektskilde eller omfattes av kommunale rustiltak.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:41</source>
        <body>I perioden 2009-2013 vil vi at det settes tak for hvor mye den enkelte selv skal dekke av utgifter til nødvendig tannbehandling, slik at alle får råd til å ivareta sin tannhelse på en god måte.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:41</source>
        <body>Etablere flere oppsøkende tilbud til dem som ikke ellers oppsøker tannhelsetjenester.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
          <topic>HØYERE UTDANNING</topic>
        </topics>
        <source>PP:41</source>
        <body>Øke utdanningskapasiteten for tannpleiere.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:41</source>
        <body>Legge til rette for desentralisert spesialistutdanning og regionale kompetansesentra innen tannhelse.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:41</source>
        <body>Arbeide for at det skal være tannlegevakt i alle fylker.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>RUSMIDLER</topic>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:42</source>
        <body>Trappe opp tilbudet og kapasiteten innenfor alle deler av rusomsorgen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>RUSMIDLER</topic>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:42</source>
        <body>At ventetiden for behandling av rusavhengighet skal reduseres, og at behandlingstilbudene er differensierte og individuelt tilpasset.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>RUSMIDLER</topic>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:42</source>
        <body>At de som ber om hjelp for sin rusavhengighet skal få oppfølging fra første dag.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>RUSMIDLER</topic>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:42</source>
        <body>Etablere rusakutt i Oslo, og vurdere etablering også i de andre store byene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FOLKEHELSE</topic>
          <topic>RUSMIDLER</topic>
        </topics>
        <source>PP:42</source>
        <body>Øke den forebyggende innsatsen på skoler og arbeidsplasser for å forhindre rusmisbruk og avhengighet.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>RUSMIDLER</topic>
        </topics>
        <source>PP:42</source>
        <body>Overvåke situasjonen med overdose- og rusrelaterte dødsfall og skaffe mer kunnskap om årsak til slike dødsfall med sikte på å forbedre overlevelsesprognosen for rusavhengige.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>RUSMIDLER</topic>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:42</source>
        <body>At rusavhengige skal få innfridd sine pasientrettigheter og sikres rett til behandling på riktig nivå og til rett tid ut fra en individuell vurdering.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>RUSMIDLER</topic>
          <topic>KOMMUNER</topic>
        </topics>
        <source>PP:42</source>
        <body>At alle kommuner utarbeider rusmiddelpolitiske handlingsplaner.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>RUSMIDLER</topic>
        </topics>
        <source>PP:42</source>
        <body>Ha sterkere statlig tilsyn og kontroll med skjenkepolitikken, samt vurdere innskrenkning i åpningstidenes maksimalgrense for utsalgs- og skjenkesteder.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
          <topic>RUSMIDLER</topic>
        </topics>
        <source>PP:42</source>
        <body>Sikre et alkoholfritt miljø for barn og unge ved skoler og fritidsanlegg.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FORSKNING</topic>
          <topic>RUSMIDLER</topic>
        </topics>
        <source>PP:42</source>
        <body>Styrke rusmiddelforskningen.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FENGSLER</topic>
          <topic>RUSMIDLER</topic>
        </topics>
        <source>PP:42</source>
        <body>Fortsette å bygge ut rusbehandlingstiltak i fengslene, og jobbe for at alle landets fengsler skal bli rusfrie.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:42</source>
        <body>At personer med både rusavhengighet og psykiske problemer får et bedre og mer samordnet tilbud.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FAMILIE</topic>
          <topic>RUSMIDLER</topic>
        </topics>
        <source>PP:42</source>
        <body>At barn og unge som har foreldre med rusproblemer fanges bedre opp ved helsestasjoner, barnehager og skoler. Disse må gis tilstrekkelig kunnskap til å følge opp i forhold til barna og deres familier.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>FAMILIE</topic>
          <topic>RUSMIDLER</topic>
        </topics>
        <source>PP:42</source>
        <body>Følge opp pårørende til rusavhengige bedre.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HØYERE UTDANNING</topic>
          <topic>RUSMIDLER</topic>
        </topics>
        <source>PP:42</source>
        <body>At utdanning om rus styrkes i pleie-, omsorgs- og helserelaterte utdanninger.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>HELSEVESEN</topic>
          <topic>RUSMIDLER</topic>
        </topics>
        <source>PP:42</source>
        <body>I større grad ta i bruk muligheten til tvangsbehandling, spesielt mot unge rusmisbrukere.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>ELDREOMSORG</topic>
        </topics>
        <source>PP:43</source>
        <body>Bygge eller gi tilsagn om bygging av minst 12.000 sykehjemsplasser eller heldøgns omsorgsplasser innen 2015.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ELDREOMSORG</topic>
        </topics>
        <source>PP:43</source>
        <body>Sørge for en god og faglig sterk legetjeneste i omsorgsboliger og sykehjem.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ELDREOMSORG</topic>
        </topics>
        <source>PP:43</source>
        <body>Øke valgfriheten i pleie- og omsorgstilbudene. De som mottar hjemmetjenester skal ha faste hjemmehjelpere, innflytelse på hvem som kommer hjem til seg og medbestemmelse over hva som skal utføres.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>false</general>
        <topics>
          <topic>ELDREOMSORG</topic>
        </topics>
        <source>PP:43</source>
        <body>Bedre tilbudet og lovfeste dagtilbud til demente.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>UTDANNING</topic>
          <topic>SOSIALVESEN</topic>
          <topic>HELSEVESEN</topic>
        </topics>
        <source>PP:43</source>
        <body>Styrke etter- og videreutdanning av kommunalt ansatte i pleie og omsorg.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ELDREOMSORG</topic>
        </topics>
        <source>PP:43</source>
        <body>At institusjoner for eldre skal ha lokaler og betjening som kan ivareta behovet for aktivisering.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ELDREOMSORG</topic>
          <topic>FAMILIE</topic>
        </topics>
        <source>PP:43</source>
        <body>At det som ledd i tilbudet til eldre legges til rette for et nært samspill med pårørende og andre frivillige krefter.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ELDREOMSORG</topic>
        </topics>
        <source>PP:43</source>
        <body>Etablere tilskuddsordninger for eldresentre, besøkstjenester og andre former for møteplasser.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ELDREOMSORG</topic>
        </topics>
        <source>PP:43</source>
        <body>Trekke inn frivillige organisasjoner, biblioteker og eldresentra for å gi eldre muligheter til å lære bruk av IKT.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ELDREOMSORG</topic>
        </topics>
        <source>PP:43</source>
        <body>Gjøre mer aktiv bruk av eldrerådene.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ELDREOMSORG</topic>
        </topics>
        <source>PP:43</source>
        <body>Styrke satsingen på kultur for eldre.</body>
      </promise>
      <promise>
        <party>A</party>
        <general>true</general>
        <topics>
          <topic>ELDREOMSORG</topic>
        </topics>
        <source>PP:43</source>
        <body>Utvikle tilbudene med senioruniversiteter slik at flere pensjonister får tilgang til ny kunnskap.</body>
      </promise>
    </promises>
    <?xml version="1.0" encoding="UTF-8"?>
    <promises>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:8</source>
        <body>Styrke undervisningen i lesing, skriving, regning og engelsk.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:8</source>
        <body>Innføre obligatorisk kartlegging av grunnleggende ferdigheter, først og fremst med hensyn til språk, ved fireårskontrollen i hele landet, og gi språkstimulering og annen oppfølgin der det er nødvendig. Tilbudet må også gjelde barn som ikke går i barnehage.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:8</source>
        <body>I forbindelse med skolestart kartlegge elevens grunnleggende ferdigheter slik at det tidlig kan iverksettes nye tiltak for å sikre at alle barn starter skolegangen med et godt utgangspunkt, og la dette være grunnlag for undervisning som er tilpasset elevenes ferdighet.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:8</source>
        <body>Stille strengere krav til orden og oppførsel for å hindre at uro ødelegger undervisningen.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:8</source>
        <body>Sikre skolene muligheten til bortvisningen eller andre sanksjoner for elever som forstyrrer undervisningen.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:8</source>
        <body>Gjeninnføre fravær på vitnemålet fra grunnskolen.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:8</source>
        <body>Forsvare karakterenes plass i skolen, samt innføre karakterer fra 5. trinn.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:8</source>
        <body>Videreføre nasjonale prøver og sikre åpenhet om resultatene, bl.a. gjennom en videreutviklingen av nettportalen Skoleporten.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:8</source>
        <body>Hver kommune skal gi et tilbud om leksehjelp og det bør komme tilbud om frivillig sommerskole over hele landet. </body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:8</source>
        <body>Legge opp til bedre kvalitet i skolefritidsordningen (SFO) og la idretten og andre få tilgang der.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:8</source>
        <body>Innføre et praktisk rettet, obligatorisk 2. fremmedspråk for alle elever på ungdomstrinnet. Skoler som ønsker og har kompetanse til det, skal oppmuntres til å innføre dette allerede fra barnetrinnet.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:8</source>
        <body>Opprette finansieringsordning for kommuner og skoler som vil etablere spesialiserte programmer for undervisning i f.eks. kinesisk  eller russisk i ungdomsskolen.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:8</source>
        <body>Innføre krav om skolelederkompetanse for å kunne jobbe som rektor.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:8</source>
        <body>Styrke arbeidet mot mobbing med konkrete tiltak og konkrete mål.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:8</source>
        <body>Gradvis utvide timetallet i takt med at skolen får et tilstrekkelig antall kvalifiserte lærere - målet er å øke det ukentlige timetallet på barnetrinnet til 30 timer. </body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:8</source>
        <body>Legge til rette for at foreldrene skal ha muligheten til å kunne foreta et aktivt skolevalg i grunnskolen også uavhengig av kommunegrensene.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
        </topics>
        <source>PP:</source>
        <body>Gi skolene større lokal handlefrihet innenfor gratisprinsippet for å gjøre det mulig å ha leirskoler, skoleturer og sosiale arrangementer i skolens regi.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>GRUNNSKOLE</topic>
          <topic>FORSKNING</topic>
        </topics>
        <source>PP:8</source>
        <body>Styrke de regionale Vitensentrene for tidigere å få elever interessert i realfag.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
          <topic>HøGSKOLER</topic>
        </topics>
        <source>PP:8</source>
        <body>Gjennomføre en rekrutteringsplan for å gjøre læreryrket til et mer attraktivt yrkesvalg for ungdom. </body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>Styrke etter- og videreutdanningstilbudet ved å gjøre det obligatorisk og systematisk.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>Innføre en godkjenningsordning for lærere knyttet til kompetanseheving gjennom systematisk etterutdanning. En slik godkjenning vil være en forutsetning for å få fast ansettelse i skoleverket.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>HøGSKOLER</topic>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>Heve opptakskravene til allmennlærerutdanningene.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>HøGSKOLER</topic>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>I løpet av perioden omgjøre dagens allmenlærerutdanning til en femårig mastergradsutdanning hvor ett års lønnet praksis inngår i utdanningen.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>SKOLER</topic>
          <topic>LøNN</topic>
        </topics>
        <source>PP:9</source>
        <body>Innføre seniortiltak for å få eldre lærere til å stå lenger i arbeid, f.eks. gjennom økonomiske bonusordninger og redusert undervisningstid kombinert med veiledningsarbeid for yngre lærere. </body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>Gjøre det lettere å få godkjent realkompetanse eller annen høyere utdanning som grunnlag for å jobbe som lærer.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>Lærere skal ha faglig fordypning i fagene de underviser i.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>Innføre en rett og plikt til veiledning for nyutdannede lærere.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>SKOLER</topic>
          <topic>LøNN</topic>
        </topics>
        <source>PP:9</source>
        <body>Gi rektor utvidet myndighet til å avlønne lærere individuelt.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>VIDEREGåENDE SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>Innføre systematisk elevdeltakelse i evaluering av undervisningen.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>VIDEREGåENDE SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>Iverksette et program for å stoppe frafall i skolen, med særlig vekt på de yrkesfaglige utdanningsprogrammene bl.a. ved å styrke rådgivningstjenesten og dele denne i sosialrådgivning og yrkes- og utdanningsveiledning, og å gjøre systematiske forsøk med miljøarbeider på skoler med høyt frafall.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>VIDEREGåENDE SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>Arbeide for et mer tilpasset og differensiert undervisningstilbud innenfor yrkesfaglige utdanningsprogram.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>VIDEREGåENDE SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>Åpne for bransjedrevne opplæringsløp i samarbeid med offentlige skoler i yrkesfaglige utdanningsprogram. </body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>VIDEREGåENDE SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>Åpne for at flere kommuner skal kunne drive videregående skoler også før fylkeskommunen blir nedlagt. </body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>VIDEREGåENDE SKOLER</topic>
          <topic>VOKSENOPPLæRING</topic>
        </topics>
        <source>PP:9</source>
        <body>Oppheve aldersgrensen for rett til videregående opplæring. </body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>VIDEREGåENDE SKOLER</topic>
          <topic>SPRåK</topic>
        </topics>
        <source>PP:9</source>
        <body>Innføre valgfri skriftlig sidemålsundervisning.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>false</general>
        <topics>
          <topic>VIDEREGåENDE SKOLER</topic>
        </topics>
        <source>PP:9</source>
        <body>Innføre en lovfestet rett til fritt, karakterbasert skolevalg i videregående skoler, også på tvers av fylkesgrensene.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>PRIVATSKOLER</topic>
        </topics>
        <source>PP:</source>
        <body>Tillate at det kan opprettes friskoler dersom disse oppfyller kvalitetskravene, samt at disse skal kunne motta offentlig støtte slik at elever kan tas opp uavhengig av familiens økonomi.</body>
      </promise>
      <promise>
        <party>H</party>
        <general>true</general>
        <topics>
          <topic>VIDEREGåENDE SKOLE</topic>
          <topic>NæRINGSLIV</topic>
        </topics>
        <source>PP:</source>
        <body>Stimulere til gründerånd og kunnskap om næringslivet gjennom bl.a. Ungt Entreprenørskap, ordninger som Tekniske og allemenne fag og tettere kontakt mellom skole og næringsliv.</body>
      </promise>
    </promises>
    """
    
    Scenario: Import parties
      When I run `hdo-converter --only-print parties`
      Then the output should contain:
      """
      <?xml version="1.0" encoding="UTF-8"?>
      <parties>
        <party>
          <externalId>A</externalId>
          <name>Arbeiderpartiet</name>
        </party>
        <party>
          <externalId>FrP</externalId>
          <name>Fremskrittspartiet</name>
        </party>
        <party>
          <externalId>H</externalId>
          <name>Høyre</name>
        </party>
        <party>
          <externalId>Sp</externalId>
          <name>Senterpartiet</name>
        </party>
        <party>
          <externalId>SV</externalId>
          <name>Sosialistisk Venstreparti</name>
        </party>
        <party>
          <externalId>KrF</externalId>
          <name>Kristelig Folkeparti</name>
        </party>
        <party>
          <externalId>V</externalId>
          <name>Venstre</name>
        </party>
      </parties>
      """
      
    Scenario: Import committees
      When I run `hdo-converter --only-print committees`
      Then the output should contain:
      """
      <?xml version="1.0" encoding="UTF-8"?>
      <committees>
        <committee>
          <externalId>ARBSOS</externalId>
          <name>Arbeids- og sosialkomiteen</name>
        </committee>
        <committee>
          <externalId>SÆRKOM</externalId>
          <name>Den særskilte komité til å behandle redegjørelse fra justisministeren og forsvarsministeren i Stortingets møte 10. november 2011 om angrepene 22. juli</name>
        </committee>
        <committee>
          <externalId>UUFK</externalId>
          <name>Den utvidede utenriks- og forsvarskomité</name>
        </committee>
        <committee>
          <externalId>ENERGI</externalId>
          <name>Energi- og miljøkomiteen</name>
        </committee>
        <committee>
          <externalId>FAMKULT</externalId>
          <name>Familie- og kulturkomiteen</name>
        </committee>
        <committee>
          <externalId>FINANS</externalId>
          <name>Finanskomiteen</name>
        </committee>
        <committee>
          <externalId>FULLMAKT</externalId>
          <name>Fullmaktskomiteen</name>
        </committee>
        <committee>
          <externalId>HELSEOMS</externalId>
          <name>Helse- og omsorgskomiteen</name>
        </committee>
        <committee>
          <externalId>JUSTIS</externalId>
          <name>Justiskomiteen</name>
        </committee>
        <committee>
          <externalId>KIRKE</externalId>
          <name>Kirke-, utdannings- og forskningskomiteen</name>
        </committee>
        <committee>
          <externalId>KOMMFORV</externalId>
          <name>Kommunal- og forvaltningskomiteen</name>
        </committee>
        <committee>
          <externalId>KONTROLL</externalId>
          <name>Kontroll- og konstitusjonskomiteen</name>
        </committee>
        <committee>
          <externalId>NÆRING</externalId>
          <name>Næringskomiteen</name>
        </committee>
        <committee>
          <externalId>PRES</externalId>
          <name>Stortingets presidentskap</name>
        </committee>
        <committee>
          <externalId>TRANSKOM</externalId>
          <name>Transport- og kommunikasjonskomiteen</name>
        </committee>
        <committee>
          <externalId>UFK</externalId>
          <name>Utenriks- og forsvarskomiteen</name>
        </committee>
        <committee>
          <externalId>VALG</externalId>
          <name>Valgkomiteen</name>
        </committee>
      </committees>
      """
      
    Scenario: Import districts
      When I run `hdo-converter --only-print districts`
      Then the output should contain:
      """
      <?xml version="1.0" encoding="UTF-8"?>
      <districts>
        <district>
          <externalId>Ak</externalId>
          <name>Akershus</name>
        </district>
        <district>
          <externalId>Bu</externalId>
          <name>Buskerud</name>
        </district>
        <district>
          <externalId>Fi</externalId>
          <name>Finnmark</name>
        </district>
        <district>
          <externalId>He</externalId>
          <name>Hedmark</name>
        </district>
        <district>
          <externalId>Ho</externalId>
          <name>Hordaland</name>
        </district>
        <district>
          <externalId>MR</externalId>
          <name>Møre og Romsdal</name>
        </district>
        <district>
          <externalId>No</externalId>
          <name>Nordland</name>
        </district>
        <district>
          <externalId>NT</externalId>
          <name>Nord-Trøndelag</name>
        </district>
        <district>
          <externalId>Op</externalId>
          <name>Oppland</name>
        </district>
        <district>
          <externalId>Os</externalId>
          <name>Oslo</name>
        </district>
        <district>
          <externalId>Ro</externalId>
          <name>Rogaland</name>
        </district>
        <district>
          <externalId>SF</externalId>
          <name>Sogn og Fjordane</name>
        </district>
        <district>
          <externalId>ST</externalId>
          <name>Sør-Trøndelag</name>
        </district>
        <district>
          <externalId>Te</externalId>
          <name>Telemark</name>
        </district>
        <district>
          <externalId>Tr</externalId>
          <name>Troms</name>
        </district>
        <district>
          <externalId>VA</externalId>
          <name>Vest-Agder</name>
        </district>
        <district>
          <externalId>Ve</externalId>
          <name>Vestfold</name>
        </district>
        <district>
          <externalId>Øs</externalId>
          <name>Østfold</name>
        </district>
        <district>
          <externalId>AA</externalId>
          <name>Aust-Agder</name>
        </district>
      </districts>
      """
      
    Scenario: Import topics
      When I run `hdo-converter --only-print topics`
      Then the output should contain:
      """
      <?xml version="1.0" encoding="UTF-8"?>
      <topics>
        <topic>
          <externalId>5</externalId>
          <name>ARBEIDSLIV</name>
          <subtopics>
            <topic>
              <externalId>205</externalId>
              <name>ARBEIDSMILJØ</name>
            </topic>
            <topic>
              <externalId>94</externalId>
              <name>ARBEIDSVILKÅR</name>
            </topic>
            <topic>
              <externalId>95</externalId>
              <name>LØNN</name>
            </topic>
            <topic>
              <externalId>7</externalId>
              <name>SYSSELSETTING</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>173</externalId>
          <name>EFTA/EU</name>
          <subtopics>
            <topic>
              <externalId>173</externalId>
              <name>EFTA/EU</name>
            </topic>
            <topic>
              <externalId>170</externalId>
              <name>EUROPARÅDET</name>
            </topic>
            <topic>
              <externalId>168</externalId>
              <name>FN</name>
            </topic>
            <topic>
              <externalId>169</externalId>
              <name>FN-STYRKER</name>
            </topic>
            <topic>
              <externalId>180</externalId>
              <name>FREDSARBEID</name>
            </topic>
            <topic>
              <externalId>165</externalId>
              <name>GRENSESPØRSMÅL</name>
            </topic>
            <topic>
              <externalId>200</externalId>
              <name>INTERNASJONAL RETT</name>
            </topic>
            <topic>
              <externalId>22</externalId>
              <name>INTERNASJONALT SAMARBEID</name>
            </topic>
            <topic>
              <externalId>167</externalId>
              <name>MENNESKERETTIGHETER</name>
            </topic>
            <topic>
              <externalId>177</externalId>
              <name>NATO</name>
            </topic>
            <topic>
              <externalId>171</externalId>
              <name>NORDISK SAMARBEID</name>
            </topic>
            <topic>
              <externalId>175</externalId>
              <name>POLAROMRÅDER</name>
            </topic>
            <topic>
              <externalId>176</externalId>
              <name>SVALBARD</name>
            </topic>
            <topic>
              <externalId>166</externalId>
              <name>TRAKTATER</name>
            </topic>
            <topic>
              <externalId>174</externalId>
              <name>UTVIKLINGSHJELP</name>
            </topic>
            <topic>
              <externalId>172</externalId>
              <name>ØKONOMISK SAMARBEID</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>4</externalId>
          <name>ENERGI</name>
          <subtopics>
            <topic>
              <externalId>72</externalId>
              <name>ATOMKRAFT</name>
            </topic>
            <topic>
              <externalId>71</externalId>
              <name>ELEKTRISITET</name>
            </topic>
            <topic>
              <externalId>74</externalId>
              <name>OLJE</name>
            </topic>
            <topic>
              <externalId>75</externalId>
              <name>OLJEOMSETNING</name>
            </topic>
            <topic>
              <externalId>190</externalId>
              <name>OLJEUTVINNING</name>
            </topic>
            <topic>
              <externalId>178</externalId>
              <name>STATOIL ASA</name>
            </topic>
            <topic>
              <externalId>73</externalId>
              <name>VASSDRAGSREGULERING</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>40</externalId>
          <name>FAMILIE</name>
          <subtopics>
            <topic>
              <externalId>41</externalId>
              <name>BARN</name>
            </topic>
            <topic>
              <externalId>42</externalId>
              <name>BARNEHAGER</name>
            </topic>
            <topic>
              <externalId>43</externalId>
              <name>BARNEVERN</name>
            </topic>
            <topic>
              <externalId>24</externalId>
              <name>LIKESTILLING</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>187</externalId>
          <name>FINANSER</name>
          <subtopics>
            <topic>
              <externalId>192</externalId>
              <name>AKSJER</name>
            </topic>
            <topic>
              <externalId>80</externalId>
              <name>AVGIFTER</name>
            </topic>
            <topic>
              <externalId>87</externalId>
              <name>BANKER</name>
            </topic>
            <topic>
              <externalId>50</externalId>
              <name>FORSIKRING</name>
            </topic>
            <topic>
              <externalId>81</externalId>
              <name>MERVERDIAVGIFT</name>
            </topic>
            <topic>
              <externalId>88</externalId>
              <name>NORGES BANK</name>
            </topic>
            <topic>
              <externalId>83</externalId>
              <name>PRISER OG KONKURRANSEFORHOLD</name>
            </topic>
            <topic>
              <externalId>53</externalId>
              <name>SKATTEADMINISTRASJON</name>
            </topic>
            <topic>
              <externalId>54</externalId>
              <name>SKATTEAVTALER</name>
            </topic>
            <topic>
              <externalId>57</externalId>
              <name>SKATTEFRADRAG</name>
            </topic>
            <topic>
              <externalId>58</externalId>
              <name>SKATTER</name>
            </topic>
            <topic>
              <externalId>89</externalId>
              <name>STATSBANKER</name>
            </topic>
            <topic>
              <externalId>185</externalId>
              <name>STATSBUDSJETTET</name>
            </topic>
            <topic>
              <externalId>86</externalId>
              <name>STATSLÅN</name>
            </topic>
            <topic>
              <externalId>191</externalId>
              <name>SÆRAVGIFTER</name>
            </topic>
            <topic>
              <externalId>82</externalId>
              <name>TOLL</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>8</externalId>
          <name>FISKERIER</name>
          <subtopics>
            <topic>
              <externalId>9</externalId>
              <name>FANGST</name>
            </topic>
            <topic>
              <externalId>91</externalId>
              <name>FISKEOMSETNING</name>
            </topic>
            <topic>
              <externalId>92</externalId>
              <name>HAVBRUK</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>45</externalId>
          <name>FORSKNING</name>
          <subtopics>
          </subtopics>
        </topic>
        <topic>
          <externalId>59</externalId>
          <name>FORSVAR</name>
          <subtopics>
            <topic>
              <externalId>93</externalId>
              <name>ATOMVÅPEN</name>
            </topic>
            <topic>
              <externalId>60</externalId>
              <name>FORSVARSMATERIELL</name>
            </topic>
            <topic>
              <externalId>193</externalId>
              <name>MILITÆRT PERSONELL</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>61</externalId>
          <name>HELSEVESEN</name>
          <subtopics>
            <topic>
              <externalId>188</externalId>
              <name>FOLKEHELSE</name>
            </topic>
            <topic>
              <externalId>49</externalId>
              <name>FUNKSJONSHEMMEDE</name>
            </topic>
            <topic>
              <externalId>62</externalId>
              <name>HELSEINSTITUSJONER</name>
            </topic>
            <topic>
              <externalId>64</externalId>
              <name>HELSEPERSONELL</name>
            </topic>
            <topic>
              <externalId>65</externalId>
              <name>SVANGERSKAP</name>
            </topic>
            <topic>
              <externalId>66</externalId>
              <name>SYKDOMMER</name>
            </topic>
            <topic>
              <externalId>63</externalId>
              <name>SYKEHUS</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>2</externalId>
          <name>KOMMUNIKASJON</name>
          <subtopics>
            <topic>
              <externalId>111</externalId>
              <name>FERGER</name>
            </topic>
            <topic>
              <externalId>107</externalId>
              <name>JERNBANER</name>
            </topic>
            <topic>
              <externalId>109</externalId>
              <name>LUFTFART</name>
            </topic>
            <topic>
              <externalId>3</externalId>
              <name>POST</name>
            </topic>
            <topic>
              <externalId>106</externalId>
              <name>SAMFERDSEL</name>
            </topic>
            <topic>
              <externalId>179</externalId>
              <name>TELEKOMMUNIKASJONER</name>
            </topic>
            <topic>
              <externalId>47</externalId>
              <name>VEGTRAFIKK</name>
            </topic>
            <topic>
              <externalId>189</externalId>
              <name>VEGVESEN</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>6</externalId>
          <name>KULTUR</name>
          <subtopics>
            <topic>
              <externalId>67</externalId>
              <name>BIBLIOTEK OG LITTERATUR</name>
            </topic>
            <topic>
              <externalId>127</externalId>
              <name>IDRETT</name>
            </topic>
            <topic>
              <externalId>70</externalId>
              <name>KRINGKASTING</name>
            </topic>
            <topic>
              <externalId>121</externalId>
              <name>KULTURVERN</name>
            </topic>
            <topic>
              <externalId>68</externalId>
              <name>KUNST</name>
            </topic>
            <topic>
              <externalId>142</externalId>
              <name>LOTTERI OG SPILL</name>
            </topic>
            <topic>
              <externalId>122</externalId>
              <name>MASSEMEDIER</name>
            </topic>
            <topic>
              <externalId>126</externalId>
              <name>NORSK RIKSKRINGKASTING</name>
            </topic>
            <topic>
              <externalId>124</externalId>
              <name>SPRÅK</name>
            </topic>
            <topic>
              <externalId>125</externalId>
              <name>UNGDOMSARBEID</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>46</externalId>
          <name>LANDBRUK</name>
          <subtopics>
            <topic>
              <externalId>129</externalId>
              <name>HUSDYR</name>
            </topic>
            <topic>
              <externalId>128</externalId>
              <name>JORDBRUK</name>
            </topic>
            <topic>
              <externalId>69</externalId>
              <name>LANDBRUKSPRODUKTER</name>
            </topic>
            <topic>
              <externalId>132</externalId>
              <name>REINDRIFT</name>
            </topic>
            <topic>
              <externalId>196</externalId>
              <name>SKOGBRUK</name>
            </topic>
            <topic>
              <externalId>133</externalId>
              <name>VETERINÆRVESEN</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>184</externalId>
          <name>LOKALFORVALTNING</name>
          <subtopics>
            <topic>
              <externalId>38</externalId>
              <name>BOLIGSAKER</name>
            </topic>
            <topic>
              <externalId>136</externalId>
              <name>BYGNINGSVESEN</name>
            </topic>
            <topic>
              <externalId>220</externalId>
              <name>DISTRIKTSPOLITIKK</name>
            </topic>
            <topic>
              <externalId>37</externalId>
              <name>FYLKER</name>
            </topic>
            <topic>
              <externalId>134</externalId>
              <name>FYLKESKOMMUNENES ØKONOMI</name>
            </topic>
            <topic>
              <externalId>138</externalId>
              <name>HUSBANKEN</name>
            </topic>
            <topic>
              <externalId>18</externalId>
              <name>INNVANDRERE</name>
            </topic>
            <topic>
              <externalId>135</externalId>
              <name>KOMMUNENES ØKONOMI</name>
            </topic>
            <topic>
              <externalId>52</externalId>
              <name>KOMMUNER</name>
            </topic>
            <topic>
              <externalId>39</externalId>
              <name>SAMER</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>139</externalId>
          <name>MILJØVERN</name>
          <subtopics>
            <topic>
              <externalId>21</externalId>
              <name>FORURENSNING</name>
            </topic>
            <topic>
              <externalId>140</externalId>
              <name>KARTVERK</name>
            </topic>
            <topic>
              <externalId>131</externalId>
              <name>NATURSKADER</name>
            </topic>
            <topic>
              <externalId>23</externalId>
              <name>NATURVERN</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>113</externalId>
          <name>NÆRINGSLIV</name>
          <subtopics>
            <topic>
              <externalId>115</externalId>
              <name>BERGVERK</name>
            </topic>
            <topic>
              <externalId>98</externalId>
              <name>FORBRUKERSAKER</name>
            </topic>
            <topic>
              <externalId>20</externalId>
              <name>HANDEL</name>
            </topic>
            <topic>
              <externalId>223</externalId>
              <name>INDUSTRI</name>
            </topic>
            <topic>
              <externalId>114</externalId>
              <name>NÆRINGSUTVIKLING</name>
            </topic>
            <topic>
              <externalId>112</externalId>
              <name>REISELIVSNÆRING</name>
            </topic>
            <topic>
              <externalId>119</externalId>
              <name>STATSBEDRIFTER</name>
            </topic>
            <topic>
              <externalId>99</externalId>
              <name>UTENRIKSHANDEL</name>
            </topic>
            <topic>
              <externalId>97</externalId>
              <name>VAREHANDEL</name>
            </topic>
            <topic>
              <externalId>195</externalId>
              <name>VERFTSINDUSTRI</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>11</externalId>
          <name>RETTSVESEN</name>
          <subtopics>
            <topic>
              <externalId>12</externalId>
              <name>DOMSTOLER</name>
            </topic>
            <topic>
              <externalId>19</externalId>
              <name>FENGSLER</name>
            </topic>
            <topic>
              <externalId>16</externalId>
              <name>KRIMINALOMSORG</name>
            </topic>
            <topic>
              <externalId>17</externalId>
              <name>PERSONVERN</name>
            </topic>
            <topic>
              <externalId>141</externalId>
              <name>POLITI OG PÅTALEMYNDIGHET</name>
            </topic>
            <topic>
              <externalId>15</externalId>
              <name>REDNINGSTJENESTE</name>
            </topic>
            <topic>
              <externalId>181</externalId>
              <name>SIVIL BEREDSKAP</name>
            </topic>
            <topic>
              <externalId>198</externalId>
              <name>SIVILE VERNEPLIKTIGE</name>
            </topic>
            <topic>
              <externalId>13</externalId>
              <name>SIVILRETT</name>
            </topic>
            <topic>
              <externalId>14</externalId>
              <name>STRAFFERETT</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>143</externalId>
          <name>SJØFART</name>
          <subtopics>
            <topic>
              <externalId>147</externalId>
              <name>HAVNER</name>
            </topic>
            <topic>
              <externalId>146</externalId>
              <name>SIKKERHET TIL SJØS</name>
            </topic>
            <topic>
              <externalId>145</externalId>
              <name>SJØFOLK</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>10</externalId>
          <name>SOSIALVESEN</name>
          <subtopics>
            <topic>
              <externalId>148</externalId>
              <name>BARNETRYGD</name>
            </topic>
            <topic>
              <externalId>48</externalId>
              <name>ELDREOMSORG</name>
            </topic>
            <topic>
              <externalId>211</externalId>
              <name>RUSMIDLER</name>
            </topic>
            <topic>
              <externalId>186</externalId>
              <name>TRYGDER</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>151</externalId>
          <name>STATSFORFATNING</name>
          <subtopics>
            <topic>
              <externalId>221</externalId>
              <name>GRUNNLOVEN</name>
            </topic>
            <topic>
              <externalId>182</externalId>
              <name>KONGEN</name>
            </topic>
            <topic>
              <externalId>154</externalId>
              <name>POLITISKE PARTIER</name>
            </topic>
            <topic>
              <externalId>25</externalId>
              <name>REGJERINGEN</name>
            </topic>
            <topic>
              <externalId>28</externalId>
              <name>RETTFERDSVEDERLAG</name>
            </topic>
            <topic>
              <externalId>29</externalId>
              <name>RIKSREVISJONEN</name>
            </topic>
            <topic>
              <externalId>203</externalId>
              <name>STORTINGET</name>
            </topic>
            <topic>
              <externalId>222</externalId>
              <name>STORTINGETS FORRETNINGSORDEN</name>
            </topic>
            <topic>
              <externalId>153</externalId>
              <name>STORTINGETS OMBUDSMANN FOR FORVALTNINGEN</name>
            </topic>
            <topic>
              <externalId>26</externalId>
              <name>STORTINGSREPRESENTANTER</name>
            </topic>
            <topic>
              <externalId>30</externalId>
              <name>VALG</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>155</externalId>
          <name>STATSFORVALTNING</name>
          <subtopics>
            <topic>
              <externalId>51</externalId>
              <name>DEPARTEMENTER</name>
            </topic>
            <topic>
              <externalId>44</externalId>
              <name>STATENS PERSONALPOLITIKK</name>
            </topic>
            <topic>
              <externalId>157</externalId>
              <name>STATSEIENDOMMER</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>105</externalId>
          <name>TROSSAMFUNN</name>
          <subtopics>
            <topic>
              <externalId>1</externalId>
              <name>DEN NORSKE KIRKE</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>32</externalId>
          <name>UTDANNING</name>
          <subtopics>
            <topic>
              <externalId>183</externalId>
              <name>GRUNNSKOLE</name>
            </topic>
            <topic>
              <externalId>160</externalId>
              <name>HØGSKOLER</name>
            </topic>
            <topic>
              <externalId>159</externalId>
              <name>HØYERE UTDANNING</name>
            </topic>
            <topic>
              <externalId>33</externalId>
              <name>PRIVATSKOLER</name>
            </topic>
            <topic>
              <externalId>31</externalId>
              <name>SKOLER</name>
            </topic>
            <topic>
              <externalId>34</externalId>
              <name>SPESIALUNDERVISNING</name>
            </topic>
            <topic>
              <externalId>36</externalId>
              <name>STUDIEFINANSIERING</name>
            </topic>
            <topic>
              <externalId>35</externalId>
              <name>UNIVERSITETER</name>
            </topic>
            <topic>
              <externalId>158</externalId>
              <name>VIDEREGÅENDE SKOLER</name>
            </topic>
            <topic>
              <externalId>212</externalId>
              <name>VOKSENOPPLÆRING</name>
            </topic>
          </subtopics>
        </topic>
        <topic>
          <externalId>163</externalId>
          <name>UTENRIKSSAKER</name>
          <subtopics>
            <topic>
              <externalId>173</externalId>
              <name>EFTA/EU</name>
            </topic>
            <topic>
              <externalId>170</externalId>
              <name>EUROPARÅDET</name>
            </topic>
            <topic>
              <externalId>168</externalId>
              <name>FN</name>
            </topic>
            <topic>
              <externalId>169</externalId>
              <name>FN-STYRKER</name>
            </topic>
            <topic>
              <externalId>180</externalId>
              <name>FREDSARBEID</name>
            </topic>
            <topic>
              <externalId>165</externalId>
              <name>GRENSESPØRSMÅL</name>
            </topic>
            <topic>
              <externalId>200</externalId>
              <name>INTERNASJONAL RETT</name>
            </topic>
            <topic>
              <externalId>22</externalId>
              <name>INTERNASJONALT SAMARBEID</name>
            </topic>
            <topic>
              <externalId>167</externalId>
              <name>MENNESKERETTIGHETER</name>
            </topic>
            <topic>
              <externalId>177</externalId>
              <name>NATO</name>
            </topic>
            <topic>
              <externalId>171</externalId>
              <name>NORDISK SAMARBEID</name>
            </topic>
            <topic>
              <externalId>175</externalId>
              <name>POLAROMRÅDER</name>
            </topic>
            <topic>
              <externalId>176</externalId>
              <name>SVALBARD</name>
            </topic>
            <topic>
              <externalId>166</externalId>
              <name>TRAKTATER</name>
            </topic>
            <topic>
              <externalId>174</externalId>
              <name>UTVIKLINGSHJELP</name>
            </topic>
            <topic>
              <externalId>172</externalId>
              <name>ØKONOMISK SAMARBEID</name>
            </topic>
          </subtopics>
        </topic>
      </topics>
      """

    Scenario: Import issues
      When I run `hdo-converter --only-print issues`
      Then the output should contain:
      """
      <?xml version="1.0" encoding="UTF-8"?>
      <issues>
        <issue>
          <externalId>53520</externalId>
          <summary>Inngåelse av avtale om opprettelse av sekretariatet for Den nordlige dimensjons partnerskap for helse og livskvalitet (NDPHS)</summary>
          <description>Samtykke til inngåelse av avtale av 25. november 2011 om opprettelse av sekretariatet for Den nordlige dimensjons partnerskap for helse og livskvalitet (NDPHS)</description>
          <type>alminneligsak</type>
          <status>mottatt</status>
          <lastUpdate>2012-04-20T00:00:00</lastUpdate>
          <reference>Prop. 90 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>NORDISK SAMARBEID</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53521</externalId>
          <summary>Pansra køyrety til Hæren</summary>
          <description>Pansra køyrety til Hæren</description>
          <type>alminneligsak</type>
          <status>mottatt</status>
          <lastUpdate>2012-04-20T00:00:00</lastUpdate>
          <reference>Prop. 93 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <topics>
            <topic>FORSVAR</topic>
            <topic>FORSVARSMATERIELL</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53522</externalId>
          <summary>Endringer i helseregisterloven mv. (opprettelse av nasjonal kjernejournal m.m.)</summary>
          <description>Endringer i helseregisterloven mv. (opprettelse av nasjonal kjernejournal m.m.)</description>
          <type>lovsak</type>
          <status>mottatt</status>
          <lastUpdate>2012-04-20T00:00:00</lastUpdate>
          <reference>Prop. 89 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
        </issue>
        <issue>
          <externalId>53523</externalId>
          <summary>Endringer i plan- og bygningsloven</summary>
          <description>Endringer i plan- og bygningsloven</description>
          <type>lovsak</type>
          <status>mottatt</status>
          <lastUpdate>2012-04-20T00:00:00</lastUpdate>
          <reference>Prop. 91 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
        </issue>
        <issue>
          <externalId>53524</externalId>
          <summary>Endringer i studentsamskipnadsloven</summary>
          <description>Endringer i studentsamskipnadsloven</description>
          <type>lovsak</type>
          <status>mottatt</status>
          <lastUpdate>2012-04-20T00:00:00</lastUpdate>
          <reference>Prop. 92 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
        </issue>
        <issue>
          <externalId>53514</externalId>
          <summary>Representantforslag om å utvide bruk av velferdsteknologi i helse- og omsorgssektoren</summary>
          <description>Representantforslag fra stortingsrepresentantene Gjermund Hagesæter, Jon Jæger Gåsvatn, Bente Thorsen og  Vigdis Giltun om å utvide bruk av velferdsteknologi i helse- og omsorgssektoren</description>
          <type>alminneligsak</type>
          <status>mottatt</status>
          <lastUpdate>2012-04-18T00:00:00</lastUpdate>
          <reference>Dokument 8:102 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
        </issue>
        <issue>
          <externalId>53432</externalId>
          <summary>Representantforslag om å gjøre "Barnas transportplan" til en integrert del av Nasjonal transportplan</summary>
          <description>Representantforslag fra stortingsrepresentantene Knut Arild Hareide, Kjell Ingolf Ropstad, Rigmor Andersen Eide og Dagrun Eriksen om å gjøre "Barnas transportplan" til en integrert del av Nasjonal transportplan</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Dokument 8:100 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
        </issue>
        <issue>
          <externalId>53433</externalId>
          <summary>Representantforslag om at det utarbeides en stortingsmelding om industriens rammebetingelser</summary>
          <description>Representantforslag fra stortingsrepresentantene Ketil Solvik-Olsen, Harald T. Nesvik og Bård Hoksrud om at det utarbeides en stortingsmelding om industriens rammebetingelser</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Dokument 8:101 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
        </issue>
        <issue>
          <externalId>53356</externalId>
          <summary>Representantforslag om en total gjennomgang av styringen med sykehussektoren</summary>
          <description>Representantforslag fra stortingsrepresentantene Siv Jensen, Per Arne Olsen, Jon Jæger Gåsvatn og Kari Kjønaas Kjos om en total gjennomgang av styringen med sykehussektoren</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Dokument 8:91 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
            <topic>SYKEHUS</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53429</externalId>
          <summary>Representantforslag om bestemmelser om oppbevaringsplikt for regnskapsdokumenter</summary>
          <description>Representantforslag fra stortingsrepresentantene Jørund Rytman, Arve Kambe, Hans Olav Syversen og Borghild Tenden om endring av bestemmelser om oppbevaringsplikt for regnskapsdokumenter</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Dokument 8:97 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
        </issue>
        <issue>
          <externalId>53430</externalId>
          <summary>Representantforslag om resultatmåling av forenklingsløftet</summary>
          <description>Representantforslag fra stortingsrepresentantene Harald T. Nesvik, Svein Flåtten, Rigmor Andersen Eide og Borghild Tenden om resultatmåling av forenklingsløftet</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Dokument 8:98 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
        </issue>
        <issue>
          <externalId>53360</externalId>
          <summary>Representantforslag om effektivitetsgevinster i offentlig sektor</summary>
          <description>Representantforslag fra stortingsrepresentantene Ketil Solvik-Olsen, Gjermund Hagesæter, Åge Starheim, Kenneth Svendsen, Christian Tybring-Gjedde og Jørund Rytman om effektivitetsgevinster i offentlig sektor</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Dokument 8:93 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>FYLKER</topic>
            <topic>KOMMUNER</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51464</externalId>
          <summary>Nordområdene</summary>
          <description>Nordområdene. Visjon og virkemidler</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Meld. St. 7 (2011-2012), Innst. 236 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>FISKERIER</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>FORSKNING</topic>
            <topic>FORSVAR</topic>
            <topic>MILJØVERN</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>GRENSESPØRSMÅL</topic>
            <topic>POLAROMRÅDER</topic>
            <topic>OLJEUTVINNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51670</externalId>
          <summary>Årsrapport fra Stortingets delegasjon for arktisk parlamentarisk samarbeid</summary>
          <description>Årsrapport fra Stortingets delegasjon for arktisk parlamentarisk samarbeid for perioden 15. september 2010 til 1. oktober 2011</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Dokument 14 (2011-2012), Innst. 235 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>POLAROMRÅDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51434</externalId>
          <summary>Datatilsynets og Personvernnemndas årsmeldinger for 2010</summary>
          <description>Datatilsynet og Personvernnemndas årsmeldinger for 2010</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-04-16T00:00:00</lastUpdate>
          <reference>Meld. St. 6 (2011-2012), Innst. 164 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53457</externalId>
          <summary>Endringer i statsbudsjettet for 2012 under Justis- og beredskapsdepartementet (Rettssaken etter terrorangrepene 22. juli 2011 mv.)</summary>
          <description>Endringer i statsbudsjettet for 2012 under Justis- og beredskapsdepartementet (Rettssaken etter terrorangrepene 22. juli 2011 mv.)</description>
          <type>budsjett</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-16T00:00:00</lastUpdate>
          <reference>Prop. 79 S (2011-2012), kap. 2445</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>STATSFORVALTNING</topic>
            <topic>STATSEIENDOMMER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53458</externalId>
          <summary>Endringar i opplæringslova og privatskolelova (undervisningskompetanse m.m.)</summary>
          <description>Endringar i opplæringslova og privatskolelova (undervisningskompetanse m.m.)</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-16T00:00:00</lastUpdate>
          <reference>Prop. 84 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>SKOLER</topic>
            <topic>UTDANNING</topic>
            <topic>VIDEREGÅENDE SKOLER</topic>
            <topic>GRUNNSKOLE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53459</externalId>
          <summary>Utbygging og drift av Edvard Grieg-feltet</summary>
          <description>Utbygging og drift av Edvard Grieg-feltet</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-16T00:00:00</lastUpdate>
          <reference>Prop. 88 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>OLJEUTVINNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53463</externalId>
          <summary>Endringer i statsbudsjettet for 2012 under Justis- og beredskapsdepartementet (Rettssaken etter terrorangrepene 22. juli 2011 mv.)</summary>
          <description>Endringer i statsbudsjettet for 2012 under Justis- og beredskapsdepartementet (Rettssaken etter terrorangrepene 22. juli 2011 mv.)</description>
          <type>budsjett</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-16T00:00:00</lastUpdate>
          <reference>Prop. 79 S (2011-2012), kap. 410, 430, 440, 441 og 473</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>DOMSTOLER</topic>
            <topic>SIVILRETT</topic>
            <topic>FENGSLER</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52719</externalId>
          <summary>Endringer i utlendingsloven m.m. (delegering av avslagskompetanse i visumsaker til andre Schengenland mv.)</summary>
          <description>Endringer i utlendingsloven m.m. (delegering av avslagskompetanse i visumsaker til andre Schengenland mv.)
      </description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-16T00:00:00</lastUpdate>
          <reference>Prop. 87 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53357</externalId>
          <summary>Representantforslag om bruk av skattemessige tiltak for å stimulere til klimavennlige investeringer i egen bolig</summary>
          <description>Representantforslag fra stortingsrepresentantene Nikolai Astrup, Svein Flåtten, Svein Harberg og Jan Tore Sanner om bruk av skattemessige tiltak for å stimulere til klimavennlige investeringer i egen bolig</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Dokument 8:92 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>BOLIGSAKER</topic>
            <topic>MERVERDIAVGIFT</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53358</externalId>
          <summary>Representantforslag om IKT-havarikommisjon og styrket personvern</summary>
          <description>Representantforslag fra stortingsrepresentantene Per Sandberg og Bård Hoksrud om IKT-havarikommisjon og styrket personvern</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Dokument 8:94 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53359</externalId>
          <summary>Representantforslag om å innføre _skattefradrag for håndverkstjenester og serviceoppdrag_ utført i _egen bolig og fritidsbolig_</summary>
          <description>Representantforslag fra stortingsrepresentantene Robert Eriksson, Laila Marie Reiertsen, Vigdis Giltun, Per Sandberg, Harald T. Nesvik og Ketil Solvik-Olsen om å innføre skattefradrag for håndverkstjenester og serviceoppdrag utført i egen bolig og fritidsbolig</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Dokument 8:95 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTEFRADRAG</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53295</externalId>
          <summary>Representantforslag om oppdatering av regelverket for sykemelding av studenter</summary>
          <description>Representantforslag fra stortingsrepresentantene Borghild Tenden og Trine Skei Grande om oppdatering av regelverket for sykemelding av studenter</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Dokument 8:86 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53296</externalId>
          <summary>Representantforslag om et særskilt videreutdanningsløft for tilsatte i grunnskolen som mangler undervisningskompetanse</summary>
          <description>Representantforslag fra stortingsrepresentantene Borghild Tenden og Trine Skei Grande om et særskilt videreutdanningsløft for tilsatte i grunnskolen som mangler undervisningskompetanse</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Dokument 8:87 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>UTDANNING</topic>
            <topic>HØYERE UTDANNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53324</externalId>
          <summary>Representantforslag om informasjon til hver enkelt skattyter om hva skattepengene brukes til</summary>
          <description>Representantforslag fra stortingsrepresentantene Christian Tybring-Gjedde, Ketil Solvik-Olsen, Kenneth Svendsen og Jørund Rytman om informasjon til hver enkelt skattyter om hva skattepengene brukes til</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Dokument 8:89 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53325</externalId>
          <summary>Representantforslag om kompliserte spareprodukter, klageorgan og Finanstilsynets rolle</summary>
          <description>Representantforslag fra stortingsrepresentantene Hans Olav Syversen, Dagfinn Høybråten, Line Henriette Hjemdal og Øyvind Håbrekke om kompliserte spareprodukter, klageorgan og Finanstilsynets rolle</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Dokument 8:88 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>BANKER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53329</externalId>
          <summary>Representantforslag om graderte parkeringsbøter</summary>
          <description>Representantforslag fra stortingsrepresentantene Ketil Solvik-Olsen, Kenneth Svendsen, Christian Tybring-Gjedde og Jørund Rytman om graderte parkeringsbøter</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Dokument 8:90 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>SAMFERDSEL</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53335</externalId>
          <summary>Oppnevning av leder og nestleder til Personvernnemda</summary>
          <description>Oppnevning av leder og nestleder til Personvernnemda</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Innst. 221 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Stortingets presidentskap</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53352</externalId>
          <summary>Årsmelding til Stortinget fra Stortingets EOS-utvalg for 2011</summary>
          <description>Årsmelding til Stortinget fra Stortingets kontrollutvalg for etterretnings-, overvåkings- og sikkerhetstjeneste (EOS-utvalget) for 2011</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Dokument 7:1 (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
            <topic>FORSVAR</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53366</externalId>
          <summary>Frihandelsavtale mellom EFTA-statene og Montenegro og en avtale om handel med landbruksvarer mellom Norge og Montenegro</summary>
          <description>Samtykke til ratifikasjon av en frihandelsavtale mellom EFTA-statene og Montenegro og en avtale om handel med landbruksvarer mellom Norge og Montenegro, begge av 14. november 2011</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Prop. 75 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>UTENRIKSHANDEL</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53367</externalId>
          <summary>Innlemmelse i EØS-avtalen av direktiv 2009/29/EF for å forbedre og utvide ordningen for handel med utslippskvoter for klimagasser i Fellesskapet</summary>
          <description>Samtykke til deltakelse i en beslutning i EØS-komiteen om innlemmelse i EØS-avtalen av direktiv 2009/29/EF for å forbedre og utvide ordningen for handel med utslippskvoter for klimagasser i Fellesskapet (revidert kvotedirektiv)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Prop. 77 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>FORURENSNING</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>MILJØVERN</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53368</externalId>
          <summary>Endringer i arbeidsmiljøloven og tjenestemannsloven mv. (likebehandling ved utleie av arbeidstakere og tiltak i den forbindelse mv.)</summary>
          <description>Endringer i arbeidsmiljøloven og tjenestemannsloven mv. (likebehandling ved utleie av arbeidstakere og tiltak i den forbindelse mv.)</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Prop. 74 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
        </issue>
        <issue>
          <externalId>53369</externalId>
          <summary>Endringer i skatte- og tollovgivningen</summary>
          <description>Endringer i skatte- og tollovgivningen</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Prop. 78 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTER</topic>
            <topic>TOLL</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53370</externalId>
          <summary>Forvaltningen av Statens pensjonsfond i 2011</summary>
          <description>Forvaltningen av Statens pensjonsfond i 2011</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Meld. St. 17 (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>SOSIALVESEN</topic>
            <topic>OLJE</topic>
            <topic>NORGES BANK</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
            <topic>AKSJER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53371</externalId>
          <summary>Gjennomføring av råfisklova og fiskeeksportlova i 2009 og 2010</summary>
          <description>Gjennomføring av råfisklova og fiskeeksportlova i 2009 og 2010</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Meld. St. 16 (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>FISKERIER</topic>
            <topic>FISKEOMSETNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53372</externalId>
          <summary>Lov om bustøtte (bustøttelova)</summary>
          <description>Lov om bustøtte (bustøttelova)</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Prop. 76 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>HUSBANKEN</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53373</externalId>
          <summary>Endringer i lov om laksefisk og innlandsfisk mv., i lov om forvaltning av naturens mangfold og i lov om rettsforhold og forvaltning av grunn og naturressurser i Finnmark fylke</summary>
          <description>Endringer i lov 15. mai 1992 nr. 47 om laksefisk og innlandsfisk mv., lov19. juni 2009 nr. 100 om forvaltning av naturens mangfold og lov 17. juni 2005 nr. 85 om rettsforhold og forvaltning av grunn og naturressurser i Finnmark fylke</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Prop. 86 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>FISKERIER</topic>
            <topic>SAMER</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53374</externalId>
          <summary>Endringer i naturmangfoldloven og friluftsloven</summary>
          <description>Endringer i naturmangfoldloven og friluftsloven</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Prop. 82 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>NATURVERN</topic>
            <topic>MILJØVERN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53375</externalId>
          <summary>Utbygging og drift av Martin Linge-feltet</summary>
          <description>Utbygging og drift av Martin Linge-feltet</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Prop. 85 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>OLJEOMSETNING</topic>
            <topic>OLJEUTVINNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53376</externalId>
          <summary>Om flom og skred</summary>
          <description>Hvordan leve med farene - Om flom og skred</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Meld. St. 15 (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>NATURSKADER</topic>
            <topic>MILJØVERN</topic>
            <topic>SIVIL BEREDSKAP</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53377</externalId>
          <summary>Utbygging og finansiering Tresfjordbrua og Vågstrandstunnelen på E136 i Møre og Romsdal</summary>
          <description>Utbygging og finansiering Tresfjordbrua og Vågstrandstunnelen på E136 i Møre og Romsdal</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Prop. 80 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>VEGVESEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53378</externalId>
          <summary>Endringar i veglova og vegtrafikkloven</summary>
          <description>Endringar i veglova og vegtrafikkloven</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Prop. 81 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>FORURENSNING</topic>
            <topic>VEGTRAFIKK</topic>
            <topic>MILJØVERN</topic>
            <topic>VEGVESEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53379</externalId>
          <summary>Endringer i luftfartsloven</summary>
          <description>Endringer i luftfartsloven</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Prop. 83 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>LUFTFART</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53398</externalId>
          <summary>Melding for året 2011 fra Sivilombudsmannen</summary>
          <description>Melding for året 2011 fra Sivilombudsmannen</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Dokument 4 (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGETS OMBUDSMANN FOR FORVALTNINGEN</topic>
            <topic>STATSFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51448</externalId>
          <summary>Landbruks- og matpolitikken</summary>
          <description>Landbruks- og matpolitikken. Velkommen til bords</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Meld. St. 9 (2011-2012), Innst. 234 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>LANDBRUK</topic>
            <topic>LANDBRUKSPRODUKTER</topic>
            <topic>JORDBRUK</topic>
            <topic>REINDRIFT</topic>
            <topic>SKOGBRUK</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53428</externalId>
          <summary>Representantforslag om forenklinger i rapportering, skjemaer og regelverk for næringslivet</summary>
          <description>Representantforslag fra stortingsrepresentantene Harald T. Nesvik, Svein Flåtten, Rigmor Andersen Eide og Borghild Tenden om forenklinger i rapportering, skjemaer og regelverk for næringslivet</description>
          <type>alminneligsak</type>
          <status>mottatt</status>
          <lastUpdate>2012-04-11T00:00:00</lastUpdate>
          <reference>Dokument 8:96 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
        </issue>
        <issue>
          <externalId>53431</externalId>
          <summary>Representantforslag om etablering av et eget "Regelråd"</summary>
          <description>Representantforslag fra stortingsrepresentantene Jørund Rytman, Arve Kambe, Hans Olav Syversen og Borghild Tenden om etablering av et eget "Regelråd"</description>
          <type>alminneligsak</type>
          <status>mottatt</status>
          <lastUpdate>2012-04-11T00:00:00</lastUpdate>
          <reference>Dokument 8:99 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
        </issue>
        <issue>
          <externalId>53283</externalId>
          <summary>Endringer i de faste komiteers sammensetning</summary>
          <description>Innberetning fra valgkomiteen om endringer i de faste komiteers sammensetning</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-29T00:00:00</lastUpdate>
          <reference>Innberetning 4 (2011-2012)</reference>
          <documentGroup>innberetning</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53284</externalId>
          <summary>Suppleringsvalg til Stortingets delegasjon til EFTA-parlamentarikerkomiteene og Den felles EØS-parlamentarikerkomiteen</summary>
          <description>Suppleringsvalg til Stortingets delegasjon til EFTA-parlamentarikerkomiteene og Den felles EØS-parlamentarikerkomiteen</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-29T00:00:00</lastUpdate>
          <reference>Innst. 223 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53285</externalId>
          <summary>Suppleringsvalg til Stortingets delegasjon til NATOs parlamentariske forsamling</summary>
          <description>Suppleringsvalg til Stortingets delegasjon til NATOs parlamentariske forsamling</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-29T00:00:00</lastUpdate>
          <reference>Innst. 224 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>NATO</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53286</externalId>
          <summary>Suppleringsvalg til Stortingets delegasjon for forbindelser med Europaparlamentet</summary>
          <description>Suppleringsvalg til Stortingets delegasjon for forbindelser med Europaparlamentet</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-29T00:00:00</lastUpdate>
          <reference>Innst. 225 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EUROPARÅDET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53287</externalId>
          <summary>Valg av et medlem til Stortingets delegasjon til parlamentarikerforsamlingen til Organisasjonen for sikkerhet og samarbeid i Europa (OSSE)</summary>
          <description>Valg av et medlem til Stortingets delegasjon til parlamentarikerforsamlingen til Organisasjonen for sikkerhet og samarbeid i Europa (OSSE)</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-29T00:00:00</lastUpdate>
          <reference>Innst. 226 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53288</externalId>
          <summary>Suppleringsvalg til Stortingets delegasjon for arktisk parlamentarisk samarbeid</summary>
          <description>Suppleringsvalg til Stortingets delegasjon for arktisk parlamentarisk samarbeid</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-29T00:00:00</lastUpdate>
          <reference>Innst. 227 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>POLAROMRÅDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53294</externalId>
          <summary>Rapport til Stortinget fra Norges Banks representantskap for 2011</summary>
          <description>Rapport til Stortinget fra Norges Banks representantskap for 2011
      </description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-29T00:00:00</lastUpdate>
          <reference>Dokument 9 (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>NORGES BANK</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52829</externalId>
          <summary>Representantforslag om statlig fullfinansiering av Oslopakke 3</summary>
          <description>Representantforslag fra stortingsrepresentantene Bård Hoksrud, Jan-Henrik Fredriksen, Ingebjørg Godskesen, Torkil Åmland, Peter N. Myhre, Christian Tybring-Gjedde, Morten Høglund og Hans Frode Kielland Asmyhr om statlig fullfinansiering av Oslopakke 3</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-29T00:00:00</lastUpdate>
          <reference>Dokument 8:57 S (2011-2012), Innst. 217 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>SAMFERDSEL</topic>
            <topic>JERNBANER</topic>
            <topic>VEGVESEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52377</externalId>
          <summary>Representantforslag om måling av kunde-/brukertilfredshet innenfor vei-, bane-, båt- og flytransport i Norge</summary>
          <description>Representantforslag fra stortingsrepresentantene Bård Hoksrud, Jan-Henrik Fredriksen, Ingebjørg Godskesen og Arne Sortevik om måling av kunde-/brukertilfredshet innenfor vei-, bane-, båt- og flytransport i Norge</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-29T00:00:00</lastUpdate>
          <reference>Dokument 8:44 S (2011-2012), Innst. 210 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>VEGTRAFIKK</topic>
            <topic>SAMFERDSEL</topic>
            <topic>JERNBANER</topic>
            <topic>LUFTFART</topic>
            <topic>FERGER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52415</externalId>
          <summary>Representantforslag om forskning på de positive effektene av å fjerne formuesskatten</summary>
          <description>Representantforslag fra stortingsrepresentantene Gunnar Gundersen, Jan Tore Sanner og  Arve Kambe om forskning på de positive effektene av å fjerne formuesskatten</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-29T00:00:00</lastUpdate>
          <reference>Dokument 8:47 S (2011-2012), Innst. 215 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52512</externalId>
          <summary>Representantforslag om finansieringsplan og organisatorisk opprydningen etter naturkatastrofene i 2011/2012</summary>
          <description>Representantforslag fra stortingsrepresentantene Arne Sortevik, Bård Hoksrud, Jan-Henrik Fredriksen, Ingebjørg Godskesen, Harald T. Nesvik og Åge Starheim om finansieringsplan og organisatorisk opprydning etter naturkatastrofene i 2011/2012</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-29T00:00:00</lastUpdate>
          <reference>Dokument 8:49 S (2011-2012), Innst. 209 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>ENERGI</topic>
            <topic>NATURSKADER</topic>
            <topic>MILJØVERN</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51251</externalId>
          <summary>Fordelingsmeldingen</summary>
          <description>Fordelingsmeldingen</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-29T00:00:00</lastUpdate>
          <reference>Meld. St. 30 (2010-2011), Innst. 222 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>UTDANNING</topic>
            <topic>BOLIGSAKER</topic>
            <topic>FAMILIE</topic>
            <topic>SKATTER</topic>
            <topic>HELSEVESEN</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52238</externalId>
          <summary>Utbygging og drift av Åsgard undervannskompresjon</summary>
          <description>Utbygging og drift av Åsgard undervannskompresjon</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Prop. 53 S (2011-2012), Innst. 220 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>OLJEOMSETNING</topic>
            <topic>OLJEUTVINNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52136</externalId>
          <summary>Representantforslag om en omstrukturering av Norsk kulturråd</summary>
          <description>Representantforslag fra stortingsrepresentantene Solveig Horne, Ib Thomsen og Øyvind Korsberg om en omstrukturering av Norsk kulturråd</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument 8:37 S (2011-2012), Innst. 208 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51878</externalId>
          <summary>Representantforslag om fredning av Nasjonalgalleriets Munch-sal</summary>
          <description>Representantforslag fra stortingsrepresentantene Solveig Horne, Ib Thomsen, Øyvind Korsberg og Christian Tybring-Gjedde om fredning av Nasjonalgalleriets Munch-sal</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument 8:28 S (2011-2012), Innst. 205 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>KUNST</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53227</externalId>
          <summary>Representantforslag om behovet for en helhetlig nasjonal plan for voksnes læring</summary>
          <description>Representantforslag fra stortingsrepresentantene Bente Thorsen, Mette Hanekamhaug og Siv Aida Rui Skattem om behovet for en helhetlig nasjonal plan for voksnes læring</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument 8:82 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>UTDANNING</topic>
            <topic>VIDEREGÅENDE SKOLER</topic>
            <topic>HØYERE UTDANNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53228</externalId>
          <summary>Representantforslag om behovet for en spissing av opplæringstilbudet som gis første året i videregående opplæring</summary>
          <description>Representantforslag fra stortingsrepresentantene Bente Thorsen, Mette Hanekamhaug og Siv Aida Rui Skattem om behovet for en spissing av opplæringstilbudet som gis første året i videregående opplæring</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument 8:83 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
        </issue>
        <issue>
          <externalId>53229</externalId>
          <summary>Representantforslag om endring av Stortingets forretningsorden § 53</summary>
          <description>Representantforslag fra stortingsrepresentant Trine Skei Grande om å endre Stortingets forretningsorden § 53 Spørretime</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument 8:84 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Stortingets presidentskap</committee>
          <topics>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGETS FORRETNINGSORDEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53245</externalId>
          <summary>Representantforslag om egen samferdselsstrategi for norsk reiseliv</summary>
          <description>Representantforslag fra stortingsrepresentantene Harald T. Nesvik, Per Roar Bredvold, Torgeir Trældal, Bård Hoksrud og Arne Sortevik om egen samferdselsstrategi for norsk reiseliv</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument 8:85 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>SAMFERDSEL</topic>
            <topic>REISELIVSNÆRING</topic>
            <topic>NÆRINGSLIV</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53262</externalId>
          <summary>Et forsvar for vår tid</summary>
          <description>Et forsvar for vår tid</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-26T00:00:00</lastUpdate>
          <reference>Prop. 73 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>FORSVAR</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53263</externalId>
          <summary>Endringer i folketrygdloven</summary>
          <description>Endringer i folketrygdloven</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-26T00:00:00</lastUpdate>
          <reference>Prop. 72 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
        </issue>
        <issue>
          <externalId>53181</externalId>
          <summary>Representantforslag om å styrke korpsbevegelsen i Norge</summary>
          <description>Representantforslag fra stortingsrepresentantene Øyvind Håbrekke, Hans Olav Syversen, Rigmor Andersen Eide og Line Henriette Hjemdal om å styrke korpsbevegelsen i Norge</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-26T00:00:00</lastUpdate>
          <reference>Dokument 8:80 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>KUNST</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53195</externalId>
          <summary>Representantforslag om reduksjon av Statens pensjonsfond utland sine investeringer i selskaper som ødelegger tropisk skog</summary>
          <description>Representantforslag fra stortingsrepresentant Trine Skei Grande om reduksjon av Statens pensjonsfond utland sine investeringer i selskaper som ødelegger tropisk skog</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-26T00:00:00</lastUpdate>
          <reference>Dokument 8:81 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51944</externalId>
          <summary>Riksrevisjonens rapport om den årlige revisjon og kontroll for budsjettåret 2010</summary>
          <description>Riksrevisjonens rapport om den årlige revisjon og kontroll for budsjettåret 2010</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-26T00:00:00</lastUpdate>
          <reference>Dokument 1 (2011-2012), Innst. 211 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RIKSREVISJONEN</topic>
            <topic>BARNEVERN</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52106</externalId>
          <summary>Riksrevisjonens undersøkelse av reorganiseringen av skatteetaten</summary>
          <description>Riksrevisjonens undersøkelse av reorganiseringen av skatteetaten</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-26T00:00:00</lastUpdate>
          <reference>Dokument 3:4 (2011-2012), Innst. 182 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RIKSREVISJONEN</topic>
            <topic>SKATTEADMINISTRASJON</topic>
            <topic>STATSFORFATNING</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52107</externalId>
          <summary>Riksrevisjonens oppfølging av parallellrevisjonen med den russiske riksrevisjonen om strålingssikkerhet og beskyttelse av miljøet mot forurensning fra radioaktive kilder i Nordvest-Russland</summary>
          <description>Riksrevisjonens oppfølging av parallellrevisjonen med den russiske riksrevisjonen om strålingssikkerhet og beskyttelse av miljøet mot forurensning fra radioaktive kilder i Nordvest-Russland</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-26T00:00:00</lastUpdate>
          <reference>Dokument 3:5 (2011-2012), Innst. 183 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>FORURENSNING</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>RIKSREVISJONEN</topic>
            <topic>ATOMKRAFT</topic>
            <topic>MILJØVERN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>POLAROMRÅDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52908</externalId>
          <summary>Endringer i voldsoffererstatningsloven og straffeprosessloven</summary>
          <description>Endringer i voldsoffererstatningsloven og straffeprosessloven</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-26T00:00:00</lastUpdate>
          <reference>Prop. 65 L (2011-2012), Innst. 219 L (2011-2012), Lovvedtak 49 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>DOMSTOLER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>41046</externalId>
          <summary>Grunnlovsforslag om oppløsningsrett og positiv parlamentarisme (investitur)</summary>
          <description>Grunnlovsforslag fra Carl I. Hagen, Øystein Djupedal, Hill-Marta Solberg, Olav Akselsen, Berit Brørby, Lodve Solholm, Svein Roald Hansen og Ivar Skulstad med sikte på å innføre en ordning med oppløsningsrett og positiv parlamentarisme (investitur)</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-26T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:14 (2007-2008), Innst. 212 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>REGJERINGEN</topic>
            <topic>VALG</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGET</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52151</externalId>
          <summary>Endringar i straffelova mv. (internasjonal barnebortføring mv.)</summary>
          <description>Endringar i straffelova mv. (internasjonal barnebortføring mv.)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-22T00:00:00</lastUpdate>
          <reference>Prop. 46 L (2011-2012), Innst. 176 L (2011-2012), Lovvedtak 47 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>STRAFFERETT</topic>
            <topic>FAMILIE</topic>
            <topic>BARN</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>INTERNASJONAL RETT</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52235</externalId>
          <summary>Endringer i personopplysningsloven</summary>
          <description>Endringer i personopplysningsloven</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-22T00:00:00</lastUpdate>
          <reference>Prop. 47 L (2011-2012), Innst. 175 L (2011-2012), Lovvedtak 48 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
            <topic>FAMILIE</topic>
            <topic>BARN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51987</externalId>
          <summary>Representantforslag om utredning av endringer i ordningen for tvangstrekk i lønn eller annen inntekt</summary>
          <description>Representantforslag fra stortingsrepresentantene Torbjørn Røe Isaksen, Sylvi Graham og Linda C. Hofstad Helleland om utredning av endringer i ordningen for tvangstrekk i lønn eller annen inntekt</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-22T00:00:00</lastUpdate>
          <reference>Dokument 8:31 S (2011-2012), Innst. 167 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>RETTSVESEN</topic>
            <topic>SIVILRETT</topic>
            <topic>LØNN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51876</externalId>
          <summary>Representantforslag om nasjonalt for reduksjon av matavfall og gjennomgang av merkeordningen for næringslivet</summary>
          <description>Representantforslag fra Line Henriette Hjemdal, Dagrun Eriksen, Geir Jørgen Bekkevold og Hans Olav Syversen om nasjonalt mål for reduksjon av matavfall og gjennomgang av merkeordningen for næringsmidler</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-20T00:00:00</lastUpdate>
          <reference>Dokument 8:27 S (2011-2012), Innst. 195 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>FORBRUKERSAKER</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>MILJØVERN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51841</externalId>
          <summary>Endringer i lov om offentlige anskaffelser og kommuneloven</summary>
          <description>Endringer i lov om offentlige anskaffelser og kommuneloven (gjennomføring av EUs håndhevelsesdirektiv i norsk rett)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-20T00:00:00</lastUpdate>
          <reference>Prop. 12 L (2011-2012), Innst. 185 L (2011-2012), Lovvedtak 46 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>KOMMUNER</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51845</externalId>
          <summary>Endringer i skipssikkerhetsloven</summary>
          <description>Endringer i skipssikkerhetsloven (gjennomføring av STCW-konvensjonens regler om hviletid)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-20T00:00:00</lastUpdate>
          <reference>Prop. 11 L (2011-2012), Innst. 162 L (2011-2012), Lovvedtak 45 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>SJØFART</topic>
            <topic>SJØFOLK</topic>
            <topic>SIKKERHET TIL SJØS</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52098</externalId>
          <summary>Representantforslag om en strategi for bruk av biogass</summary>
          <description>Representantforslag fra stortingsrepresentantene Nikolai Astrup, Siri A. Meling, Svein Flåtten, Øyvind Halleraker og Ingjerd Schou om en strategi for bruk av biogass</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-20T00:00:00</lastUpdate>
          <reference>Dokument 8:35 S (2011-2012), Innst. 194 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>ENERGI</topic>
            <topic>LANDBRUK</topic>
            <topic>ELEKTRISITET</topic>
            <topic>SAMFERDSEL</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52193</externalId>
          <summary>Representantforslag om motorferdsel i utmark</summary>
          <description>Representantforslag fra stortingsrepresentantene Linda C. Hofstad Helleland, Gunnar Gundersen, Øyvind Halleraker, Torbjørn Røe Isaksen, Anders B. Werp og Svein Harberg om motorferdsel i utmark</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-20T00:00:00</lastUpdate>
          <reference>Dokument 8:40 S (2011-2012), Innst. 216 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>NATURVERN</topic>
            <topic>MILJØVERN</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>DISTRIKTSPOLITIKK</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52084</externalId>
          <summary>Samtykke til godkjenning av EØS-komiteens beslutning nr. 83/2011</summary>
          <description>Samtykke til godkjenning av EØS-komiteens beslutning nr. 83/2011 av 1. juli 2011 om innlemmelse i EØS-avtalen av forordning (EF) nr. 1150/2009, forordning (EF) nr. 1177/2009 og direktiv 2007/66/EF om offentlige anskaffelser</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-20T00:00:00</lastUpdate>
          <reference>Prop. 44 S (2011-2012), Innst. 184 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52114</externalId>
          <summary>Representantforslag om lov om endringer i lov 24. februar 1995 nr. 12 om  helligdager og helligdagsfred. Avvikle åpningstidsbestemmelsene - herunder avskaffing av den såkalte "Brustad-bua"</summary>
          <description>Representantforslag fra stortingsrepresentantene Solveig Horne, Harald T. Nesvik, Ib Thomsen og Øyvind Korsberg om lov om endringer i lov 24. februar 1995 nr. 12 om  helligdager og helligdagsfred. Avvikle åpningstidsbestemmelsene - herunder avskaffing av den såkalte "Brustad-bua"</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-20T00:00:00</lastUpdate>
          <reference>Dokument 8:36 L (2011-2012), Innst. 206 L (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>VAREHANDEL</topic>
            <topic>FORBRUKERSAKER</topic>
            <topic>NÆRINGSLIV</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53204</externalId>
          <summary>Hjemmelsgrunnlaget for INFOFLYT-registeret</summary>
          <description>Hjemmelsgrunnlaget for INFOFLYT-registeret</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-17T00:00:00</lastUpdate>
          <reference>Innst. 243 S (2011-2012)</reference>
          <documentGroup>ikke_spesifisert</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </issue>
        <issue>
          <externalId>51459</externalId>
          <summary>Samtykke til ratifikasjon av avtale mellom EFTA-statene og Peru</summary>
          <description>Samtykke til ratifikasjon av en frihandelsavtale mellom EFTA-statene og Peru og en avtale om handel med landbruksvarer mellom Norge og Peru, begge av 24. juni 2010</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-20T00:00:00</lastUpdate>
          <reference>Prop. 35 S (2011-2012), Innst. 187 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>UTENRIKSHANDEL</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51648</externalId>
          <summary>Representantforslag om en regularisering av papirløse innvandere i Norge</summary>
          <description>Representantforslag fra stortingsrepresentantene Trine Skei Grande og  Borghild Tenden om en regularisering av papirløse innvandere i Norge</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:13 S (2011-2012), Innst. 199 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>HELSEVESEN</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51787</externalId>
          <summary>Representantforslag om endring av bostedskravet i fiskeriforbudsloven</summary>
          <description>Representantforslag fra stortingsrepresentantene Harald T. Nesvik, Per Roar Bredvold, Torgeir Trældal og Åge Starheim om endring av bostedskravet i fiskeriforbudsloven</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:19 S (2011-2012), Innst. 161 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>FISKERIER</topic>
            <topic>FANGST</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51439</externalId>
          <summary>Endringar i utlendingsloven, åremål</summary>
          <description>Endringar i utlendingsloven (avvikling av åremålsordninga for nemndleiarar i Utlendingsnemnda og rett til representant for einslege, mindreårige asylsøkjarar)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Prop. 51 L (2011-2012), Innst. 203 L (2011-2012), Lovvedtak 43 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52126</externalId>
          <summary>Representantforslag om økt tilgang til fersk fisk for norsk landindustri og forbrukere</summary>
          <description>Representantforslag fra stortingsrepresentantene Frank Bakke-Jensen, Ivar Kristiansen og Elisabeth Aspaker om økt tilgang til fersk fisk for norsk landindustri og forbrukere</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:38 S (2011-2012), Innst. 214 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>FISKERIER</topic>
            <topic>FISKEOMSETNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52234</externalId>
          <summary>Endringer i statsborgerloven</summary>
          <description>Endringer i statsborgerloven</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Prop. 50 L (2011-2012), Innst. 181 L (2011-2012), Lovvedtak 42 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>FAMILIE</topic>
            <topic>BARN</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52985</externalId>
          <summary>Representantforslag om å opprette en uavhengig tilsynsfunksjon for barnehagene</summary>
          <description>Representantforslag fra stortingsrepresentantene Solveig Horne, Ib Thomsen og Øyvind Korsberg om å opprette en uavhengig tilsynsfunksjon for barnehagene</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:64 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <topics>
            <topic>FAMILIE</topic>
            <topic>BARNEHAGER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53094</externalId>
          <summary>Representantforslag om å innføre et skjønn ved håndheving av regelbrudd ved skjemautfylling hvor det ikke foreligger noen personlig vinning</summary>
          <description>Representantforslag fra stortingsrepresentantene Arve Kambe, Eli Skoland, Svein Flåtten og Lars Myraune om å innføre et skjønn ved håndheving av regelbrudd ved skjemautfylling hvor det ikke foreligger noen personlig vinning</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:70 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>NÆRINGSLIV</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53095</externalId>
          <summary>Representantforslag om forbud mot tigging</summary>
          <description>Representantforslag fra stortingsrepresentantene Hans Frode Kielland Asmyhr, Åse Michaelsen, Ulf Leirstein og Siv Aida Rui Skattem om forbud mot tigging</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:71 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53096</externalId>
          <summary>Representantforslag om tiltak for økt boligbygging</summary>
          <description>Representantforslag fra stortingsrepresentantene Michael Tetzschner, Trond Helleland, Ingjerd Schou og André Oktay Dahl om tiltak for økt boligbygging</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:72 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>BOLIGSAKER</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53097</externalId>
          <summary>Representantforslag om tiltak for lavere priser på drivstoff</summary>
          <description>Representantforslag fra stortingsrepresentantene Ketil Solvik-Olsen, Kenneth Svendsen, Christian Tybring-Gjedde og Jørund Rytman om tiltak for lavere priser på drivstoff</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:74 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>PRISER OG KONKURRANSEFORHOLD</topic>
            <topic>FINANSER</topic>
            <topic>SÆRAVGIFTER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53104</externalId>
          <summary>Representantforslag om å innføre periodiseringsprinsippet i offentlig sektor</summary>
          <description>Representantforslag fra stortingsrepresentantene Bård Hoksrud, Ingebjørg Godskesen, Jan-Henrik Fredriksen, Arne Sortevik, Ketil Solvik-Olsen og Jørund Rytman om å innføre periodiseringsprinsippet i offentlig sektor</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:73 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>SAMFERDSEL</topic>
            <topic>JERNBANER</topic>
            <topic>FINANSER</topic>
            <topic>VEGVESEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53120</externalId>
          <summary>Representantforslag om merverdiavgift på bygg</summary>
          <description>Representantforslag fra stortingsrepresentantene Ketil Solvik-Olsen, Kenneth Svendsen, Christian Tybring-Gjedde og Jørund Rytman om merverdiavgift på bygg</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:75 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>MERVERDIAVGIFT</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53121</externalId>
          <summary>Representantforslag om fjerning av formuesskatten på formue som ikke er arbeidende kapital</summary>
          <description>Representantforslag fra stortingsrepresentantene Ketil Solvik-Olsen, Christian Tybring-Gjedde, Kenneth Svendsen og Jørund Rytman om fjerning av formuesskatten på formue som ikke er arbeidende kapital</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:76 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53122</externalId>
          <summary>Representantforslag om fjerning av formuesskatt på arbeidende kapital</summary>
          <description>Representantforslag fra stortingsrepresentantene Ketil Solvik-Olsen, Christian Tybring-Gjedde, Kenneth Svendsen og Jørund Rytman om fjerning av formuesskatt på arbeidende kapital</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:77 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53123</externalId>
          <summary>Representantforslag om en kapitalreform for økt innovasjon og entreprenørskap</summary>
          <description>Representantforslag fra stortingsrepresentant Ola Elvestuen om en kapitalreform for økt innovasjon og entreprenørskap</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:78 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53125</externalId>
          <summary>Representantforslag om å sikre at alle former for syntetisk cannabinoider og syntetisk opioider automatisk faller inn under narkotikalovgivningen</summary>
          <description>Representantforslag fra stortingsrepresentantene Hanne Thürmer, Laila Dåvøy og Kjell Ingolf Ropstad om å sikre at alle former for syntetisk cannabinoider og syntetisk opioider automatisk faller inn under narkotikalovgivningen</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:79 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>RUSMIDLER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53132</externalId>
          <summary>Samtykke til deltakelse i en beslutning i EØS-komiteen om innlemmelse i EØS-avtalen av direktiv 2008/104/EF om vikararbeid (vikarbyrådirektivet)</summary>
          <description>Samtykke til deltakelse i en beslutning i EØS-komiteen om innlemmelse i EØS-avtalen av direktiv 2008/104/EF om vikararbeid (vikarbyrådirektivet)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Prop. 69 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>ARBEIDSVILKÅR</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53133</externalId>
          <summary>Endringer i klimakvoteloven</summary>
          <description>Endringer i klimakvoteloven</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Prop. 68 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>FORURENSNING</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>MILJØVERN</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52721</externalId>
          <summary>Innføring av Schengen-standardisert oppholdskort med biometri</summary>
          <description>Endringer i  utlendingsloven  (innføring av Schengen-standardisert oppholdskort med biometri)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Prop. 59 L (2011-2012), Innst. 197 L (2011-2012), Lovvedtak 44 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
            <topic>INNVANDRERE</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52699</externalId>
          <summary>Endringer i kirkeloven m.m.</summary>
          <description>Endringer i kirkeloven m.m.</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Prop. 71 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52712</externalId>
          <summary>Endringar i deltakerloven, havrettslova og finnmarksloven (kystfiskeutvalet)</summary>
          <description>Endringar i deltakerloven, havressurslova og finnmarksloven (kystfiskutvalet)</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Prop. 70 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>FISKERIER</topic>
            <topic>SAMER</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51844</externalId>
          <summary>Representantforslag om utsettelse av forskrift om særskilte krav til akvakulturrelatert virksomhet i Hardangerfjorden</summary>
          <description>Representantforslag fra stortingsrepresentantene Harald T. Nesvik, Per Roar Bredvold, Torgeir Trældal, Arne Sortevik, Ketil Solvik-Olsen og Oskar J. Grimstad om utsettelse av forskrift om særskilte krav til akvakulturrelatert virksomhet i Hardangerfjorden</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:26 S (2011-2012), Innst. 160 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>FISKERIER</topic>
            <topic>HAVBRUK</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52005</externalId>
          <summary>Representantforslag om like struktureringsmuligheter for kystfiskefartøy over 15 meter</summary>
          <description>Representantforslag fra stortingsrepresentantene Frank Bakke-Jensen,Øyvind Halleraker, Bjørn Lødemel og Svein Flåtten om like struktureringsmuligheter for kystfiskefartøy over 15 meter</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-19T00:00:00</lastUpdate>
          <reference>Dokument 8:33 S (2011-2012), Innst. 213 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>FISKERIER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53059</externalId>
          <summary>Riksrevisjonens undersøkelse av havbruksforvaltning</summary>
          <description>Riksrevisjonens undersøkelse av havbruksforvaltning</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-08T00:00:00</lastUpdate>
          <reference>Dokument 3:9 (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>FISKERIER</topic>
            <topic>RIKSREVISJONEN</topic>
            <topic>HAVBRUK</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53060</externalId>
          <summary>Riksrevisjonens undersøkelse om effektiv ressursutnyttelse i NAVs ytelsesforvaltning</summary>
          <description>Riksrevisjonens undersøkelse om effektiv ressursutnyttelse i NAVs ytelsesforvaltning</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-08T00:00:00</lastUpdate>
          <reference>Dokument 3:10 (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>SYSSELSETTING</topic>
            <topic>SOSIALVESEN</topic>
            <topic>RIKSREVISJONEN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53061</externalId>
          <summary>Riksrevisjonens undersøkelse om rehabilitering innen helsetjenesten</summary>
          <description>Riksrevisjonens undersøkelse om rehabilitering innen helsetjenesten</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-08T00:00:00</lastUpdate>
          <reference>Dokument 3:11 (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RIKSREVISJONEN</topic>
            <topic>HELSEVESEN</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51622</externalId>
          <summary>Redegjørelse av justisministeren og forsvarsministeren om angrepene 22. juli 2011</summary>
          <description>Redegjørelse av justisministeren og forsvarsministeren om angrepene 22. juli 2011</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-08T00:00:00</lastUpdate>
          <reference>Innst. 207 S (2011-2012)</reference>
          <documentGroup>redegjørelse</documentGroup>
          <committee>Den særskilte komité til å behandle redegjørelse fra justisministeren og forsvarsministeren i Stortingets møte 10. november 2011 om angrepene 22. juli</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>REGJERINGEN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>STATSFORFATNING</topic>
            <topic>SIVIL BEREDSKAP</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51433</externalId>
          <summary>Nordisk samarbeid</summary>
          <description>Nordisk samarbeid</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-06T00:00:00</lastUpdate>
          <reference>Meld. St. 5 (2011-2012), Innst. 171 S (2011-2012), Meld. St. 5 (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>NORDISK SAMARBEID</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51541</externalId>
          <summary>Årsrapport fra Stortingets delegasjon til Nordisk Råd</summary>
          <description>Årsrapport fra Stortingets delegasjon til Nordisk Råd for 2. halvår 2010-1. halvår 2011</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-06T00:00:00</lastUpdate>
          <reference>Dokument 13 (2011-2012), Innst. 170 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>NORDISK SAMARBEID</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51447</externalId>
          <summary>Rapportering til database for vitenskapelig publisering</summary>
          <description>Endring i universitets- og høyskoleloven (rapportering til database for vitenskapelig publisering)</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Prop. 67 L (2011-2012), Innst. 241 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
            <topic>UTDANNING</topic>
            <topic>UNIVERSITETER</topic>
            <topic>FORSKNING</topic>
            <topic>HØGSKOLER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52634</externalId>
          <summary>Endringer i bustadbyggjelagslova</summary>
          <description>Endringer i bustadbyggjelagslova (fusjon mellom boligbyggelag og heleide datteraksjeselskaper)</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-18T00:00:00</lastUpdate>
          <reference>Prop. 66 L (2011-2012), Innst. 246 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>BOLIGSAKER</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>FINANSER</topic>
            <topic>AKSJER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52986</externalId>
          <summary>Representantforslag om en forpliktende opptrappingsplan for nye rekrutteringsstillinger i FoU-systemet</summary>
          <description>Representantforslag fra stortingsrepresentantene Borghild Tenden og Trine Skei Grande om en forpliktende opptrappingsplan for nye rekrutteringsstillinger i FoU-systemet</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-06T00:00:00</lastUpdate>
          <reference>Dokument 8:65 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>FORSKNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53017</externalId>
          <summary>Representantforslag om å skille markedsregulatorrollen og markedsaktørrollen i matvaresektoren</summary>
          <description>Representantforslag fra stortingsrepresentantene Harald T. Nesvik, Per Roar Bredvold og Torgeir Trældal om å skille markedsregulatorrollen og markedsaktørrollen i matvaresektoren</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-06T00:00:00</lastUpdate>
          <reference>Dokument 8:66 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>LANDBRUK</topic>
            <topic>LANDBRUKSPRODUKTER</topic>
            <topic>PRISER OG KONKURRANSEFORHOLD</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53018</externalId>
          <summary>Representantforslag om inntektspolitisk samarbeid gjennom statlig deltakelse i lønnsoppgjøret</summary>
          <description>Representantforslag fra stortingsrepresentantene Ketil Solvik-Olsen, Christian Tybring-Gjedde, Kenneth Svendsen, Jørund Rytman og Harald T. Nesvik om inntektspolitisk samarbeid gjennom statlig deltakelse i lønnsoppgjøret</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-06T00:00:00</lastUpdate>
          <reference>Dokument 8:67 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>SKATTER</topic>
            <topic>LØNN</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53021</externalId>
          <summary>Representantforslag om fritt rehabiliteringsvalg og forbedret kvalitet og tilgjengelighet i rehabiliteringstilbudet</summary>
          <description>Representantforslag fra stortingsrepresentantene Bent Høie, Sonja Irene Sjøli, Ingjerd Schou, Frank Bakke-Jensen og Elisabeth Røbekk Nørve om fritt rehabiliteringsvalg og forbedret kvalitet og tilgjengelighet i rehabiliteringstilbudet</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-06T00:00:00</lastUpdate>
          <reference>Dokument 8:68 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
            <topic>HELSEINSTITUSJONER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53029</externalId>
          <summary>Representantforslag om etablering av en ordning med kvalifiseringsstøtte for forskningsinstitutter som søker statlig basisfinansiering</summary>
          <description>Representantforslag fra stortingsrepresentanten Borghild Tenden om etablering av en ordning med kvalifiseringsstøtte for forskningsinstitutter som søker statlig basisfinansiering</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-06T00:00:00</lastUpdate>
          <reference>Dokument 8:69 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>FORSKNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53047</externalId>
          <summary>Utbygging av strømnettet</summary>
          <description>Vi bygger Norge - om utbygging av strømnettet</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-06T00:00:00</lastUpdate>
          <reference>Meld. St. 14 (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>ELEKTRISITET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52911</externalId>
          <summary>Representantforslag om klimatiltak i Norge</summary>
          <description>Representantforslag fra stortingsrepresentantene Trine Skei Grande og Borghild Tenden om klimatiltak i Norge</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-06T00:00:00</lastUpdate>
          <reference>Dokument 8:61 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>FORURENSNING</topic>
            <topic>LANDBRUK</topic>
            <topic>MILJØVERN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53054</externalId>
          <summary>Departementenes tilskuddsforvaltning</summary>
          <description>Departementenes tilskuddsforvaltning</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-05T00:00:00</lastUpdate>
          <reference></reference>
          <documentGroup>ikke_spesifisert</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </issue>
        <issue>
          <externalId>52233</externalId>
          <summary>Endring i lov om samordning av pensjons- og trygdeytelser</summary>
          <description>Endring i lov om samordning av pensjons- og trygdeytelser (tilpasning av offentlig tjenestepensjon til uføres alderspensjon fra folketrygden)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Prop. 48 L (2011-2012), Innst. 201 L (2011-2012), Lovvedtak 41 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52344</externalId>
          <summary>Samtykke til godkjennelse av EØS-komiteens beslutning om adgang til å starte og utøve forsikrings- og gjenforsikringsvirksomhet (Solvens II)</summary>
          <description>Samtykke til godkjennelse av EØS-komiteens beslutning nr. 78/2011 av 1. juli 2011 om innlemmelse i EØS-avtalen av direktiv 2009/138/EF av 25. november 2009 om adgang til å starte og utøve forsikrings- og gjenforsikringsvirksomhet (Solvens II)</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Prop. 54 S (2011-2012), Innst. 192 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>FORSIKRING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52346</externalId>
          <summary>Samtykke til å setje i kraft ein overeinskomst mellom Kongeriket Noreg og Republikken Mauritius om opplysningar i skattesaker</summary>
          <description>Samtykke til å setje i kraft ein overeinskomst mellom Kongeriket Noreg og Republikken Mauritius om opplysningar i skattesaker underskriven i Paris 
      1. desember 2011</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Prop. 55 S (2011-2012), Innst. 190 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTEAVTALER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52347</externalId>
          <summary>Samtykke til å setje i kraft ein overeinskomst mellom Kongeriket Noreg og Den Orientalske Republikken Uruguay om opplysningar i skattesaker</summary>
          <description>Samtykke til å setje i kraft ein overeinskomst mellom Kongeriket Noreg og Den Orientalske Republikken Uruguay om opplysningar i skattesaker, underskriven i Paris 14. desember 2011</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Prop. 56 S (2011-2012), Innst. 189 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTEAVTALER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52039</externalId>
          <summary>Representantforslag om å frita det ikke-mineralske miljødrivstoffet GTL fra mineraloljeavgift</summary>
          <description>Representantforslag fra stortingsrepresentantene Per-Willy Amundsen, Oskar J. Grimstad, Bård Hoksrud, Kenneth Svendsen og Ketil Solvik-Olsen om å frita det ikke-mineralske miljødrivstoffet GTL fra mineraloljeavgift</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:34 S (2011-2012), Innst. 193 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>FINANSER</topic>
            <topic>SÆRAVGIFTER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51958</externalId>
          <summary>Representantforslag om en bedre hverdag for yrkessjåførene</summary>
          <description>Representantforslag fra stortingsrepresentantene Bård Hoksrud, Jan-Henrik Fredriksen, Ingebjørg Godskesen og Arne Sortevik om en bedre hverdag for yrkessjåførene</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:30 S (2011-2012), Innst. 173 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>ARBEIDSLIV</topic>
            <topic>VEGTRAFIKK</topic>
            <topic>ARBEIDSVILKÅR</topic>
            <topic>FINANSER</topic>
            <topic>SÆRAVGIFTER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51840</externalId>
          <summary>Representantforslag om frihet til å bestemme skattemessig bopel ut fra faktiske forhold</summary>
          <description>Representantforslag fra stortingsrepresentantene Christian Tybring-Gjedde og Terje Halleland om frihet til å bestemme skattemessig bopel ut fra faktiske forhold</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:23 S (2011-2012), Innst. 191 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTEADMINISTRASJON</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52757</externalId>
          <summary>Endringer i statsbudsjettet for 2012 under Fiskeri- og kystdepartementet (garantiordning for førstehåndsomsetning av fisk)</summary>
          <description>Endringer i statsbudsjettet for 2012 under Fiskeri- og kystdepartementet (garantiordning for førstehåndsomsetning av fisk)</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Prop. 60 S (2011-2012), Innst. 188 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>FISKERIER</topic>
            <topic>FISKEOMSETNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51438</externalId>
          <summary>Endringar i helsepersonellova om pliktig fråhald m.m.</summary>
          <description>Endringar i helsepersonellova om pliktig fråhald m.m.</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Prop. 29 L (2011-2012), Innst. 180 L (2011-2012), Lovvedtak 39 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>HELSEVESEN</topic>
            <topic>HELSEPERSONELL</topic>
            <topic>RUSMIDLER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51547</externalId>
          <summary>Representantforslag om bedre kvalitet og pasientsikkerhet i helsetjenesten</summary>
          <description>Representantforslag fra stortingsrepresentantene Erna Solberg, Bent Høie og Sonja Irene Sjøli om bedre kvalitet og pasientsikkerhet i helsetjenesten</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:5 S (2011-2012), Innst. 177 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
            <topic>HELSEPERSONELL</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51595</externalId>
          <summary>Representantforslag om tiltak for å sikre kvinner rask rekonstruksjon av bryst etter kreftoperasjoner</summary>
          <description>Representantforslag fra stortingsrepresentantene Siv Jensen, Kari Kjønaas Kjos, Solveig Horne og Åse Michaelsen om tiltak for å sikre kvinner rask rekonstruksjon av bryst etter kreftoperasjoner</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:8 S (2011-2012), Innst. 200 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
            <topic>SYKDOMMER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51521</externalId>
          <summary>Representantforslag om å gjøre endringer i dagens regelverk i sosialhjelpen til mor eller far</summary>
          <description>Representantforslag fra stortingsrepresentantene Robert Eriksson, Laila Marie Reiertsen og Vigdis Giltun om å gjøre endringer i dagens regelverk i sosialhjelpen til mor eller far dersom de har barn som har egen biinntekt, samt gjøre den kommunale sosialhjelpen om til et statlig ansvar under Nav</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:4 S (2011-2012), Innst. 204 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51616</externalId>
          <summary>Representantforslag om en tiltaksplan for bekjempelse av selvmord</summary>
          <description>Representantforslag fra stortingsrepresentanten Ib Thomsen, Øyvind Korsberg, Kari Kjønaas Kjos og Robert Eriksson om en tiltaksplan for bekjempelse av selvmord</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:11 S (2011-2012), Innst. 178 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
            <topic>FOLKEHELSE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51788</externalId>
          <summary>Representantforslag om en reell behandlingsgaranti for kreftpasienter</summary>
          <description>Representantforslag fra stortingsrepresentantene Per Arne Olsen, Kari Kjønaas Kjos og Jon Jæger Gåsvatn om en reell behandlingsgaranti for kreftpasienter</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:18 S (2011-2012), Innst. 179 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
            <topic>SYKDOMMER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50876</externalId>
          <summary>Endringer i arbeidsmarkedsloven</summary>
          <description>Endringer i arbeidsmarkedsloven (krav om politiattest for ansatte i bedrifter som tilbyr tiltaket varig tilrettelagt arbeid)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Prop. 132 L (2010-2011), Innst. 163 L (2011-2012), Lovvedtak 40 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>SYSSELSETTING</topic>
            <topic>RETTSVESEN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50868</externalId>
          <summary>Representantforslag om å bedre rammebetingelsene for private omsorgsbedrifter</summary>
          <description>Representantforslag fra stortingsrepresentantene Solveig Horne, Ib Thomsen, Øyvind Korsberg, Harald T. Nesvik og Per Arne Olsen om å bedre rammebetingelsene for private omsorgsbedrifter</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:170 S (2010-2011), Innst. 198 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>ELDREOMSORG</topic>
            <topic>KOMMUNER</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50728</externalId>
          <summary>Representantforslag om en fremtidsplan for å sikre en valgfri og verdig eldreomsorg for alle</summary>
          <description>Representantforslag fra stortingsrepresentantene Per Sandberg, Per Arne Olsen, Kari Kjønaas Kjos, Erlend Wiborg og Harald T. Nesvik om en fremtidsplan for å sikre en valgfri og verdig eldreomsorg for alle</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:155 S (2010-2011), Innst. 196 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>ELDREOMSORG</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50830</externalId>
          <summary>Representantforslag om å styrke pasientenes rettigheter ved fastsettelse av frist for behandling og ved brudd på behandlingsfristen</summary>
          <description>Representantforslag fra stortingsrepresentantene Bent Høie, Sonja Irene Sjøli og Michael Tetzschner om å styrke pasientenes rettigheter ved fastsettelse av frist for behandling og ved brudd på behandlingsfristen</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:158 S (2010-2011), Innst. 174 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50836</externalId>
          <summary>Representantforslag om endring i forskrift om arbeidsmarkedstiltak - fjerning av individstønad</summary>
          <description>Representantforslag fra stortingsrepresentantene Laila Marie Reiertsen, Robert Eriksson, Vigdis Giltun og Tord Lien om endring i forskrift om arbeidsmarkedstiltak - fjerning av individstønad</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:162 S (2010-2011), Innst. 202 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>SYSSELSETTING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51374</externalId>
          <summary>Representantforslag om forbedring av ordningen med boligsparing for ungdom (BSU)</summary>
          <description>Representantforslag fra stortingsrepresentantene Christian Tybring-Gjedde, Gunnar Gundersen, Hans Olav Syversen og Borghild Tenden om forbedring av ordningen med boligsparing for ungdom (BSU)</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-03-01T00:00:00</lastUpdate>
          <reference>Dokument 8:1 S (2011-2012), Innst. 186 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTEFRADRAG</topic>
            <topic>BANKER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51789</externalId>
          <summary>Representantforslag om krav om uavhengige evalueringer av bistanden</summary>
          <description>Representantforslag fra stortingsrepresentantene Peter N. Myhre, Morten Høglund, Karin S. Woldseth, Jan Arild Ellingsen og Siv Jensen om krav om uavhengige evalueringer av bistanden</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-28T00:00:00</lastUpdate>
          <reference>Dokument 8:17 S (2011-2012), Innst. 169 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>UTVIKLINGSHJELP</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52823</externalId>
          <summary>Representantforslag om å ta opp svensk overvåkning av norske borgere etter FRA-loven med svenske myndigheter</summary>
          <description>Representantforslag fra stortingsrepresentantene Bård Hoksrud, Jan-Henrik Fredriksen, Ingebjørg Godskesen og Torkil Åmland om å ta opp svensk overvåkning av norske borgere etter FRA-loven med svenske myndigheter</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-28T00:00:00</lastUpdate>
          <reference>Dokument 8:56 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52909</externalId>
          <summary>Utdanning for velferd</summary>
          <description>Utdanning for velferd</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-28T00:00:00</lastUpdate>
          <reference>Meld. St. 13 (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>UTDANNING</topic>
            <topic>FORSKNING</topic>
            <topic>HELSEVESEN</topic>
            <topic>HELSEPERSONELL</topic>
            <topic>VIDEREGÅENDE SKOLER</topic>
            <topic>HØYERE UTDANNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52860</externalId>
          <summary>Representantforslag om å utvide ordningen med hjertepumpe som varig behanling, ikke bare som bro til transplantasjon</summary>
          <description>Representantforslag fra stortingsrepresentantene Jon Jæger Gåsvatn, Kari Kjønaas Kjos og Per Arne Olsen om å utvide ordningen med hjertepumpe som varig behandling, ikke bare som bro til transplantasjon</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-28T00:00:00</lastUpdate>
          <reference>Dokument 8:59 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52862</externalId>
          <summary>Representantforslag om å sikre helsepersonell faglig oppdatering på legemiddelfeltet</summary>
          <description>Representantforslag fra stortingsrepresentantene Per Arne Olsen, Kari Kjønaas Kjos og Jon Jæger Gåsvatn om å sikre helsepersonell faglig oppdatering på legemiddelfeltet</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-28T00:00:00</lastUpdate>
          <reference>Dokument 8:60 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
            <topic>HELSEPERSONELL</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52883</externalId>
          <summary>Representantforslag fra stortingsrepresentantene om en tiltaksplan for å redusere konsesjonsbehandlingstiden for kraftutbygginger og overføringsnett</summary>
          <description>Representantforslag fra stortingsrepresentantene Peter Skovholt Gitmark, Lars Myraune, Siri A. Meling, Nikolai Astrup og Bjørn Lødemel om en tiltaksplan for å redusere konsesjonsbehandlingstiden for kraftutbygginger og overføringsnett</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-28T00:00:00</lastUpdate>
          <reference>Dokument 8:62 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>ELEKTRISITET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52884</externalId>
          <summary>Representantforslag om incentiver for å få fortgang i arbeidet med en mer effektiv og robust kommunestruktur</summary>
          <description>Representantforslag fra stortingsrepresentantene Gjermund Hagesæter, Morten Ørsal Johansen og Åge Starheim om incentiver for å få fortgang i arbeidet med en mer effektiv og robust kommunestruktur</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-28T00:00:00</lastUpdate>
          <reference>Dokument 8:63 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>KOMMUNER</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52905</externalId>
          <summary>Samtykke til ratifikasjon av en frihandelsavtale og en avtale om arbeidstakerrettigheter mellom EFTA-statene og Hongkong SAR og en avtale om handel med landbruksvarer mellom Norge og Hongkong SAR, alle av 21. juni 2011</summary>
          <description>Samtykke til ratifikasjon av en frihandelsavtale og en avtale om arbeidstakerrettigheter mellom EFTA-statene og Hongkong SAR og en avtale om handel med landbruksvarer mellom Norge og Hongkong SAR, alle av 21. juni 2011</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-28T00:00:00</lastUpdate>
          <reference>Prop. 63 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>TOLL</topic>
            <topic>UTENRIKSHANDEL</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>EFTA/EU</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52906</externalId>
          <summary>Endringer i folketrygdloven (tredeling av foreldrepengeperioden)</summary>
          <description>Endringer i folketrygdloven (tredeling av foreldrepengeperioden)</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-28T00:00:00</lastUpdate>
          <reference>Prop. 64 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>LIKESTILLING</topic>
            <topic>FAMILIE</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52907</externalId>
          <summary>Samtykke til å sette i kraft en skatteavtale mellom Norge og Georgia, undertegnet i Tbilisi 10. november 2011</summary>
          <description>Samtykke til å sette i kraft en skatteavtale mellom Norge og Georgia, undertegnet i Tbilisi 10. november 2011</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Prop. 62 S (2011-2012), Innst. 238 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTEAVTALER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52830</externalId>
          <summary>Representantforslag om gradvis å innføre en takordning for tannhelseutgifter</summary>
          <description>Representantforslag fra stortingsrepresentantene Robert Eriksson, Jon Jæger Gåsvatn, Kari Kjønaas Kjos og Per Arne Olsen om gradvis å innføre en takordning for tannhelseutgifter</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-16T00:00:00</lastUpdate>
          <reference>Dokument 8:58 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52768</externalId>
          <summary>Utenriksministerens utenrikspolitiske redegjørelse</summary>
          <description>Utenriksministerens utenrikspolitiske redegjørelse</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-16T00:00:00</lastUpdate>
          <reference></reference>
          <documentGroup>redegjørelse</documentGroup>
          <topics>
            <topic>UTENRIKSSAKER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52809</externalId>
          <summary>Representantforslag om innføring av en antislaveridag i Norge</summary>
          <description>Representantforslag fra stortingsrepresentantene Dagfinn Høybråten, Geir Jørgen Bekkevold, Laila Dåvøy og Rigmor Andersen Eide om innføring av en antislaveridag i Norge</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Dokument 8:53 S (2011-2012), Innst. 242 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52810</externalId>
          <summary>Representantforslag om plan for å sikre retten til livshjelp ved livets slutt</summary>
          <description>Representantforslag fra stortingsrepresentantene Laila Dåvøy, Hans Olav Syversen, Knut Arild Hareide og Geir Jørgen Bekkevold om plan for å sikre retten til livshjelp ved livets slutt</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-16T00:00:00</lastUpdate>
          <reference>Dokument 8:54 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>ELDREOMSORG</topic>
            <topic>HELSEVESEN</topic>
            <topic>SYKEHUS</topic>
            <topic>HELSEPERSONELL</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52821</externalId>
          <summary>Regulering av lønnen for Høyesteretts medlemmer</summary>
          <description>Regulering av lønnen for Høyesteretts medlemmer</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-16T00:00:00</lastUpdate>
          <reference>Innst. 168 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Stortingets presidentskap</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>RETTSVESEN</topic>
            <topic>DOMSTOLER</topic>
            <topic>LØNN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52822</externalId>
          <summary>Representantforslag om å lovfeste vern av ytringsfrihet og anonymitet på Internett</summary>
          <description>Representantforslag fra stortingsrepresentantene Ingebjørg Godskesen, Bård Hoksrud, Jan-Henrik Fredriksen og Torkil Åmland om å lovfeste vern av ytringsfrihet og anonymitet på Internett</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-16T00:00:00</lastUpdate>
          <reference>Dokument 8:55 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51803</externalId>
          <summary>Representantforslag om å oppheve boplikten for prestene. Endring av kirkeloven</summary>
          <description>Representantforslag fra stortingsrepresentantene Tord Lien, Mette Hanekamhaug, Anders Anundsen og Bente Thorsen om å oppheve boplikten for prestene. Endring av kirkeloven</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-16T00:00:00</lastUpdate>
          <reference>Dokument 8:16 L (2011-2012), Innst. 172 L (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>TROSSAMFUNN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51444</externalId>
          <summary>Forholdet stat - kommune</summary>
          <description>Stat og kommune - styring og samspel</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-14T00:00:00</lastUpdate>
          <reference>Meld. St. 12 (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>FYLKER</topic>
            <topic>KOMMUNER</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52833</externalId>
          <summary>Luftkvaliteten og renere luft for Europa (luftkvalitetsdirektivet)</summary>
          <description>Samtykke til godkjennelse av EØS-komiteens beslutning nr. 121/2011 av 21. oktober 2011 om innlemmelse i EØS-avtalen av direktiv 2008/50/EF av 21. mai 2008 om luftkvaliteten og renere luft for Europa (luftkvalitetsdirektivet)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-14T00:00:00</lastUpdate>
          <reference>Prop. 61 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>FORURENSNING</topic>
            <topic>MILJØVERN</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52745</externalId>
          <summary>Endring i Stortingets forretningsorden vedrørende permisjoner.</summary>
          <description>Endring i Stortingets forretningsorden vedrørende permisjoner.</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-09T00:00:00</lastUpdate>
          <reference>Innst. 165 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Stortingets presidentskap</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGETS FORRETNINGSORDEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52746</externalId>
          <summary>Tilsetting av direktør i Stortingets administrasjon</summary>
          <description>Tilsetting av direktør i Stortingets administrasjon</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-09T00:00:00</lastUpdate>
          <reference>Innst. 166 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Stortingets presidentskap</committee>
          <topics>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51617</externalId>
          <summary>Riksrevisjonens undersøkelse av ordningen med rett til fritt sykehusvalg</summary>
          <description>Riksrevisjonens undersøkelse av ordningen med rett til fritt sykehusvalg</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-09T00:00:00</lastUpdate>
          <reference>Dokument 3:3 (2011-2012), Innst. 146 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RIKSREVISJONEN</topic>
            <topic>HELSEVESEN</topic>
            <topic>SYKEHUS</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51651</externalId>
          <summary>Representantforslag om et opprør mot voldtektsbølgen</summary>
          <description>Representantforslag fra stortingsrepresentantene Siv Jensen, Mette Hanekamhaug, Åse Michaelsen, Bente Thorsen, Solveig Horne, Kari Kjønaas Kjos,  Karin S. Woldseth, Siv Aida Rui Skattem, Åshild Karoline Haugland og Laila Marie Reiertsen om et opprør mot voldtektsbølgen</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Dokument 8:14 S (2011-2012), Innst. 159 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>INNVANDRERE</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51674</externalId>
          <summary>Representantforslag om bedre evaluering av ekstraordinære hendelser i politiet</summary>
          <description>Representantforslag fra stortingsrepresentantene André Oktay Dahl og Anders B. Werp om bedre evaluering av ekstraordinære hendelser i politiet, som grunnlag for utvikling av ny kunnskap og styrket terrorberedskap</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Dokument 8:15 S (2011-2012), Innst. 157 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51610</externalId>
          <summary>Riksrevisjonens oppfølging av forvaltningsrevisjoner som er behandlet av Stortinget</summary>
          <description>Riksrevisjonens oppfølging av forvaltningsrevisjoner som er behandlet av Stortinget</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Dokument 3:1 (2011-2012), Innst. 147 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>FORURENSNING</topic>
            <topic>RIKSREVISJONEN</topic>
            <topic>MILJØVERN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51566</externalId>
          <summary>Statsrådsprotokollene for tidsrommet 1. januar 2011 til 30. juni 2011</summary>
          <description>Statsrådsprotokollene for tidsrommet 1. januar 2011 til 30. juni 2011.</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Innst. 149 S (2011-2012)</reference>
          <documentGroup>ikke_spesifisert</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>REGJERINGEN</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51440</externalId>
          <summary>Endringer i lov om fritaking for militærtjeneste av overbevisningsgrunner</summary>
          <description>Endringer i lov 19. mars 1965 nr. 3 om fritaking for militærtjeneste av overbevisningsgrunner (avvikling av sivil verneplikt)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Prop. 10 L (2011-2012), Innst. 158 L (2011-2012), Lovvedtak 38 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>FORSVAR</topic>
            <topic>SIVILE VERNEPLIKTIGE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51418</externalId>
          <summary>Representantforslag om en bredt anlagt politistudie og økt samfunnssikkerhet</summary>
          <description>Representantforslag fra stortingsrepresentantene Erna Solberg, André Oktay Dahl, Anders B. Werp, Svein Harberg og Siri A. Meling om en bredt anlagt politistudie og økt samfunnssikkerhet</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Dokument 8:3 S (2011-2012), Innst. 156 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>SIVIL BEREDSKAP</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50730</externalId>
          <summary>Representantforslag om endringer i voldsoffererstatningsloven og opprettelse av en offeromsorg</summary>
          <description>Representantforslag fra stortingsrepresentantene Per Sandberg, Hans Frode Kielland Asmyhr, Åse Michaelsen og Morten Ørsal Johansen om endringer i voldsoffererstatningsloven og opprettelse av en offeromsorg</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Dokument 8:156 S (2010-2011), Innst. 150 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>40702</externalId>
          <summary>Grunnlovsforslag om samtykke til suverenitetsoverføring, etter rådgivende folkeavstemning</summary>
          <description>Grunnlovsforslag fra Per-Kristian Foss, Inge Lønning, Marianne Aasen og Svein Roald Hansen om endringer i Grunnloven § 93 med sikte på å åpne for at samtykke til suverenitetsoverføring kan gis med 2/3 flertall dersom det først er avholdt en rådgivende folkeavstemning</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:1 (2007-2008), Innst. 148 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>41055</externalId>
          <summary>Grunnlovsforslag om rådgivende folkeavstemming</summary>
          <description>Grunnlovsforslag fra Rune J. Skjælaaen, Anna Cecelie Brustad Mo og Kari Mette Prestrud om endring av Grunnloven § 93 (rådgivende folkeavstemming)</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:24 (2007-2008), Innst. 148 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52648</externalId>
          <summary>Representantforslag om en gjennomgang av sjablongreglene for beskatning av fri telefon og andre elektroniske kommunikasjonstjenester</summary>
          <description>Representantforslag fra stortingsrepresentantene Trine Skei Grande og Borghild Tenden om en gjennomgang av sjablongreglene for beskatning av fri telefon og andre elektroniske kommunikasjonstjenester</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Dokument 8:51 S (2011-2012), Innst. 239 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52650</externalId>
          <summary>Representantforslag om å gjøre Slottets kulturskatter tilgjengelige for publikum</summary>
          <description>Representantforslag fra stortingsrepresentantene Solveig Horne, Ib Thomsen og Øyvind Korsberg om å gjøre Slottets kulturskatter tilgjengelige for publikum</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-12T00:00:00</lastUpdate>
          <reference>Dokument 8:52 S (2011-2012), Innst. 237 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>KULTURVERN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>KONGEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52675</externalId>
          <summary>Global helse i utenriks- og utviklingspolitikken</summary>
          <description>Global helse i utenriks- og utviklingspolitikken</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Meld. St. 11 (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>HELSEVESEN</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>UTVIKLINGSHJELP</topic>
            <topic>FOLKEHELSE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52601</externalId>
          <summary>Representantforslag om endringer i utlendingsregelverket for å få mer rettferdige familiegjenforeningsregler</summary>
          <description>Representantforslag fra stortingsrepresentantene Trine Skei Grande og Borghild Tenden om endringer i utlendingsregelverket for å få mer rettferdige familiegjenforeningsregler</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Dokument 8:50 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52614</externalId>
          <summary>Riksrevisjonens undersøkelse av politiets arbeid med vinningskriminalitet</summary>
          <description>Riksrevisjonens undersøkelse av politiets arbeid med vinningskriminalitet</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Dokument 3:6 (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>RIKSREVISJONEN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52615</externalId>
          <summary>Riksrevisjonens undersøkelse om håndtering av farlig avfall</summary>
          <description>Riksrevisjonens undersøkelse om håndtering av farlig avfall</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument 3:7 (2011-2012), Innst. 232 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>FORURENSNING</topic>
            <topic>RIKSREVISJONEN</topic>
            <topic>MILJØVERN</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52616</externalId>
          <summary>Riksrevisjonens undersøkelse av Mattilsynet</summary>
          <description>Riksrevisjonens undersøkelse av Mattilsynet</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument 3:8 (2011-2012), Innst. 231 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RIKSREVISJONEN</topic>
            <topic>LANDBRUK</topic>
            <topic>LANDBRUKSPRODUKTER</topic>
            <topic>VETERINÆRVESEN</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51647</externalId>
          <summary>Representantforslag om umiddelbar oppfølging av tiltakene for bekjempelse av voldtekt slik skissert i NOU 2008:4 (Voldtektsutvalget)</summary>
          <description>Representantforslag fra stortingsrepresentantene Trine Skei Grande og  Borghild Tenden om umiddelbar oppfølging av tiltakene for bekjempelse av voldtekt slik skissert i NOU 2008:4 (Voldtektsutvalget)</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-02-07T00:00:00</lastUpdate>
          <reference>Dokument 8:12 S (2011-2012), Innst. 159 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52545</externalId>
          <summary>Lov om avtaler om deltidsbruksrett og langtidsferieprodukter mv.</summary>
          <description>Lov om avtaler om deltidsbruksrett og langtidsferieprodukter mv.</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-01-31T00:00:00</lastUpdate>
          <reference>Prop. 57 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>FORBRUKERSAKER</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52589</externalId>
          <summary>Lov om opphevelse av lov 24. juni 1988 nr. 64 om utlendingers adgang til riket og deres opphold her</summary>
          <description>Lov om opphevelse av lov 24. juni 1988 nr. 64 om utlendingers adgang til riket og deres opphold her (opphør av overgangsordningene for arbeidstakere fra Bulgaria og Romania)</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Prop. 58 L (2011-2012), Innst. 230 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52461</externalId>
          <summary>Representantforslag om etablering av kullkraftverk med fullskala fangst og lagring av CO2 på Svalbard</summary>
          <description>Representantforslag fra stortingsrepresentantene Nikolai Astrup, Siri A. Meling, Elisabeth Aspaker, Frank Bakke-Jensen og Erna Solberg om etablering av kullkraftverk med fullskala fangst og lagring av CO2 på Svalbard</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-01-31T00:00:00</lastUpdate>
          <reference>Dokument 8:48 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>FORURENSNING</topic>
            <topic>MILJØVERN</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>SVALBARD</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52462</externalId>
          <summary>Riksrevisjonens kontroll med forvaltningen av statlige selskaper for 2010</summary>
          <description>Riksrevisjonens kontroll med forvaltningen av statlige selskaper for 2010</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-01-31T00:00:00</lastUpdate>
          <reference>Dokument 3:2 (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RIKSREVISJONEN</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>STATSBEDRIFTER</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52378</externalId>
          <summary>Rapport fra Menneskerettighetsutvalget om menneskerettigheter i Grunnloven</summary>
          <description>Rapport fra Menneskerettighetsutvalget om menneskerettigheter i Grunnloven, avgitt 19. desember 2011</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-01-31T00:00:00</lastUpdate>
          <reference>Dokument 16 (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52009</externalId>
          <summary>Samtykke til å setje i kraft ein overeinskomst mellom Kongeriket Noreg og Republikken Costa Rica</summary>
          <description>Samtykke til å setje i kraft ein overeinskomst mellom Kongeriket Noreg og Republikken Costa Rica om opplysningar i skattesaker underskriven i Paris 29. juni 2011</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-01-31T00:00:00</lastUpdate>
          <reference>Prop. 36 S (2011-2012), Innst. 153 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTEAVTALER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52010</externalId>
          <summary>Samtykke til å setje i kraft ein overeinskomst mellom Kongeriket Noreg og Kongeriket Bahrain</summary>
          <description>Samtykke til å setje i kraft ein overeinskomst mellom Kongeriket Noreg og Kongeriket Bahrain om opplysningar i skattesaker underskriven i Paris 15. september 2011</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-01-31T00:00:00</lastUpdate>
          <reference>Prop. 37 S (2011-2012), Innst. 154 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTEAVTALER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52011</externalId>
          <summary>Samtykke til å sette i kraft en endringsprotokoll til skatteavtalen mellom Norge og Barbados</summary>
          <description>Samtykke til å sette i kraft en endringsprotokoll til skatteavtalen mellom Norge og Barbados, undertegnet i Paris 3. november 2011</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-01-31T00:00:00</lastUpdate>
          <reference>Prop. 38 S (2011-2012), Innst. 155 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTEAVTALER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52639</externalId>
          <summary>Grunnlovsforslag om å utelukke at stortingsrepresentanter kan beskikkes som statssekretærer</summary>
          <description>Grunnlovsforslag fra Dag Terje Andersen, Øyvind Korsberg, Per-Kristian Foss, Marit Nybakk, Dagfinn Høybråten, Trygve Slagsvold Vedum, Trine Skei Grande og Snorre Serigstad Valen om endring i Grunnloven § 14 med sikte på å utelukke at stortingsrepresentanter kan beskikkes som statssekretærer</description>
          <type>alminneligsak</type>
          <status>mottatt</status>
          <lastUpdate>2012-01-31T00:00:00</lastUpdate>
          <reference>Dokument 12:1 (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
        </issue>
        <issue>
          <externalId>51577</externalId>
          <summary>Representantforslag om å oppheve delingsforbudet i jordloven</summary>
          <description>Representantforslag fra stortingsrepresentantene Harald T. Nesvik, Per Roar Bredvold og Torgeir Trældal om å oppheve delingsforbudet i jordloven</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-01-31T00:00:00</lastUpdate>
          <reference>Dokument 8:10 S (2011-2012), Innst. 152 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>LANDBRUK</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51578</externalId>
          <summary>Representantforslag om en lovfestet, fullverdig nettolønnsordning for sjøfolk</summary>
          <description>Representantforslag fra stortingsrepresentantene Harald T. Nesvik, Per Roar Bredvold og Torgeir Trældal om en lovfestet, fullverdig nettolønnsordning for sjøfolk</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-01-31T00:00:00</lastUpdate>
          <reference>Dokument 8:9 S (2011-2012), Innst. 151 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>LØNN</topic>
            <topic>SJØFART</topic>
            <topic>SJØFOLK</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52455</externalId>
          <summary>Redegjørelse av nærings- og handelsministeren om håndteringen av statens eierskap i Telenor i forbindelse med A-pressens salg av aksjer i TV2</summary>
          <description>Redegjørelse av nærings- og handelsministeren om håndteringen av statens eierskap i Telenor i forbindelse med A-pressens salg av aksjer i TV2</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-01-19T00:00:00</lastUpdate>
          <reference></reference>
          <documentGroup>redegjørelse</documentGroup>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>KULTUR</topic>
            <topic>KRINGKASTING</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>STATSBEDRIFTER</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52470</externalId>
          <summary>Omstillingen ved Oslo universitetssykehus</summary>
          <description>Omstillingen ved Oslo universitetssykehus</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-01-17T00:00:00</lastUpdate>
          <reference></reference>
          <documentGroup>ikke_spesifisert</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </issue>
        <issue>
          <externalId>52391</externalId>
          <summary>Representantforslag om å opprette et nytt sårbarhetsutvalg</summary>
          <description>Representantforslag fra stortingsrepresentantene Bård Hoksrud, Jan-Henrik Fredriksen, Ingebjørg Godskesen, Arne Sortevik, Oskar J. Grimstad og Åge Starheim om å opprette et nytt sårbarhetsutvalg</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument 8:45 S (2011-2012), Innst. 228 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>ENERGI</topic>
            <topic>ELEKTRISITET</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52414</externalId>
          <summary>Representantforslag om en gjennomgang av forskrifter tilhørende til plan- og bygningsloven, med sikte på å gjøre det enklere å leie ut del av egen bolig</summary>
          <description>Representantforslag fra stortingsrepresentantene Trine Skei Grande og Borghild Tenden om en gjennomgang av forskrifter tilhørende til plan- og bygningsloven, med sikte på å gjøre det enklere å leie ut del av egen bolig</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-18T00:00:00</lastUpdate>
          <reference>Dokument 8:46 S (2011-2012), Innst. 244 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50936</externalId>
          <summary>Lov om arbeidstvister (arbeidstvistloven) og lov om lønnsnemnd i arbeidstvister (lønnsnemndloven) m.m.</summary>
          <description>Lov om arbeidstvister (arbeidstvistloven) og lov om lønnsnemnd i arbeidstvister (lønnsnemndloven) m.m.</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-01-12T00:00:00</lastUpdate>
          <reference>Prop. 134 L (2010-2011), Innst. 91 L (2011-2012), Lovvedtak 36-37 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>RETTSVESEN</topic>
            <topic>DOMSTOLER</topic>
            <topic>ARBEIDSVILKÅR</topic>
            <topic>LØNN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50946</externalId>
          <summary>Lov om kommunale vass- og avløpsanlegg</summary>
          <description>Lov om kommunale vass- og avløpsanlegg</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-01-10T00:00:00</lastUpdate>
          <reference>Prop. 136 L (2010-2011), Innst. 133 L (2011-2012), Lovvedtak 35 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>KOMMUNER</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>49372</externalId>
          <summary>Motivasjon - Mestring - Muligheter. Ungdomstrinnet</summary>
          <description>Motivasjon - Mestring - Muligheter. Ungdomstrinnet</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2012-01-09T00:00:00</lastUpdate>
          <reference>Meld. St. 22 (2010-2011), Innst. 145 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>UTDANNING</topic>
            <topic>GRUNNSKOLE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50717</externalId>
          <summary>Representantforslag om at Norge trer ut av ILO-konvensjon nr. 169, nedlegger Sametinget, opphever finnmarksloven og avvikler forvaltningsområdet for samiske språk</summary>
          <description>Representantforslag fra stortingsrepresentantene Gjermund Hagesæter, Per-Willy Amundsen, Åge Starheim og Jan-Henrik Fredriksen om at Norge trer ut av ILO-konvensjon nr. 169, nedlegger Sametinget, opphever finnmarksloven og avvikler forvaltningsområdet for samiske språk</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-20T00:00:00</lastUpdate>
          <reference>Dokument 8:154 S (2010-2011), Innst. 134 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>SAMER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51442</externalId>
          <summary>Endringer i statsbudsjettet for 2011 under Kommunal- og regionaldepartementet</summary>
          <description>Endringer i statsbudsjettet for 2011 under Kommunal- og regionaldepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-20T00:00:00</lastUpdate>
          <reference>Prop. 21 S (2011-2012), Innst. 127 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>KULTUR</topic>
            <topic>SOSIALVESEN</topic>
            <topic>SKOLER</topic>
            <topic>UTDANNING</topic>
            <topic>BOLIGSAKER</topic>
            <topic>ELDREOMSORG</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>HELSEVESEN</topic>
            <topic>STATSLÅN</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>KULTURVERN</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>HUSBANKEN</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51437</externalId>
          <summary>Endringer i statsbudsjettet for 2011 under Helse- og omsorgsdepartementet</summary>
          <description>Endringer i statsbudsjettet for 2011 under Helse- og omsorgsdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-20T00:00:00</lastUpdate>
          <reference>Prop. 16 S (2011-2012), Innst. 136 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>ELDREOMSORG</topic>
            <topic>HELSEVESEN</topic>
            <topic>HELSEINSTITUSJONER</topic>
            <topic>SYKEHUS</topic>
            <topic>HELSEPERSONELL</topic>
            <topic>STATSLÅN</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
            <topic>FOLKEHELSE</topic>
            <topic>RUSMIDLER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51426</externalId>
          <summary>Endringar i statsbudsjettet 2011 under Barne-, likestillings- og inkluderingsdepartementet</summary>
          <description>Kap. 821, 822, 3821 og 3822. Endringar i statsbudsjettet 2011 under Barne-, likestillings- og inkluderingsdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-20T00:00:00</lastUpdate>
          <reference>Prop. 19 S (2011-2012), kap. 821, 822, 3821 og 3822, Innst. 126 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>UTDANNING</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>VOKSENOPPLÆRING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51430</externalId>
          <summary>Nysaldering av statsbudsjettet 2011</summary>
          <description>Ny saldering av statsbudsjettet 2011</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-20T00:00:00</lastUpdate>
          <reference>Prop. 45 S (2011-2012), Innst. 144 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51431</externalId>
          <summary>Endring i statsbudsjettet for 2011</summary>
          <description>Unntatt kap. 1590. Endringer i statsbudsjettet for 2011 under Fornyings-, administrasjons- og kirkedepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-20T00:00:00</lastUpdate>
          <reference>Prop. 30 S (2011-2012), unntatt kap. 1590, Innst. 128 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>REGJERINGEN</topic>
            <topic>SAMER</topic>
            <topic>STATENS PERSONALPOLITIKK</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>ARBEIDSVILKÅR</topic>
            <topic>STATSFORFATNING</topic>
            <topic>POLITISKE PARTIER</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>STATSEIENDOMMER</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51843</externalId>
          <summary>Representantforslag om tiltak for å sikre kvalitet og pasientsikkerhet under omstillingsprosessen ved Oslo universitetssykehus</summary>
          <description>Representantforslag fra stortingsrepresentantene Per Arne Olsen, Bent Høie, Laila Dåvøy og Trine Skei Grande om tiltak for å sikre kvalitet og pasientsikkerhet under omstillingsprosessen ved Oslo universitetssykehus</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-20T00:00:00</lastUpdate>
          <reference>Dokument 8:24 S (2011-2012), Innst. 137 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
            <topic>SYKEHUS</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51940</externalId>
          <summary>Endringar i statsbudsjettet for 2011under Justis- og politidepartementet</summary>
          <description>Kap. 490, 3490 og 491. Endringar i statsbudsjettet for 2011 under Justis- og politidepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-20T00:00:00</lastUpdate>
          <reference>Prop. 18 S (2011-2012), kap. 490, 3490 og 491, Innst. 125 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51926</externalId>
          <summary>Endringer i statsbudsjettet for 2011 under Miljøverndepartementet</summary>
          <description>Endringer i statsbudsjettet for 2011 under Miljøverndepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-19T00:00:00</lastUpdate>
          <reference>Prop. 17 S (2011-2012), Innst. 141 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>FISKERIER</topic>
            <topic>RETTSVESEN</topic>
            <topic>SIVILRETT</topic>
            <topic>FORURENSNING</topic>
            <topic>NATURVERN</topic>
            <topic>FORSKNING</topic>
            <topic>HAVBRUK</topic>
            <topic>KULTURVERN</topic>
            <topic>MILJØVERN</topic>
            <topic>KARTVERK</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>POLAROMRÅDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52166</externalId>
          <summary>Representantforslag om bekjempelse av narkotika på skoler</summary>
          <description>Representantforslag fra stortingsrepresentantene André Oktay Dahl, Anders B. Werp, Jan Tore Sanner, Svein Harberg, Bent Høie og Linda C. Hofstad Helleland om bekjempelse av narkotika på skoler</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument 8:39 S (2011-2012), Innst. 229 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>RUSMIDLER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52194</externalId>
          <summary>Representantforslag om en pappastrategi for etablering av likeverdig foreldreskap</summary>
          <description>Representantforslag fra stortingsrepresentantene Øyvind Håbrekke, Laila Dåvøy, Rigmor Andersen Eide og Geir Jørgen Bekkevold om en pappastrategi for etablering av likeverdig foreldreskap</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-12-19T00:00:00</lastUpdate>
          <reference>Dokument 8:41 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>FAMILIE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52220</externalId>
          <summary>Representantforslag om forsterket innsats mot hat og ekstremisme</summary>
          <description>Representantforslag fra stortingsrepresentantene Erna Solberg, Jan Tore Sanner, Trond Helleland, André Oktay Dahl og Frank Bakke-Jensen om forsterket innsats mot hat og ekstremisme</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-18T00:00:00</lastUpdate>
          <reference>Dokument 8:42 S (2011-2012), Innst. 247 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>FORSKNING</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52230</externalId>
          <summary>Representantforslag om utvidet sykelønnsordning for kreftpasienter, samt adgang til en fleksibel sykelønnsordning.</summary>
          <description>Representantforslag fra stortingsrepresentantene Robert Eriksson, Per Arne Olsen og Laila Marie Reiertsen om utvidet sykelønnsordning for kreftpasienter, samt adgang til en fleksibel sykelønnsordning. (Endring i lov 28. februar 1997 nr. 19 om folketrygd)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-12-19T00:00:00</lastUpdate>
          <reference>Dokument 8:43 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>HELSEVESEN</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51443</externalId>
          <summary>Endringar i kommunelova m.m. (samkommune mv.)</summary>
          <description>Endringar i kommunelova m.m. (samkommune mv.)</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-12-19T00:00:00</lastUpdate>
          <reference>Prop. 49 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>FYLKER</topic>
            <topic>KOMMUNER</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51450</externalId>
          <summary>Endringar i statsbudsjettet for 2011 under Olje- og energidepartementet</summary>
          <description>Endringar i statsbudsjettet for 2011 under Olje- og energidepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-19T00:00:00</lastUpdate>
          <reference>Prop. 27 S (2011-2012), Innst. 142 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>KULTUR</topic>
            <topic>FORURENSNING</topic>
            <topic>ELEKTRISITET</topic>
            <topic>VASSDRAGSREGULERING</topic>
            <topic>OLJE</topic>
            <topic>OLJEOMSETNING</topic>
            <topic>STATSLÅN</topic>
            <topic>KULTURVERN</topic>
            <topic>NATURSKADER</topic>
            <topic>MILJØVERN</topic>
            <topic>FINANSER</topic>
            <topic>OLJEUTVINNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51463</externalId>
          <summary>Samtykke til godkjenning av EØS-komiteen om erstatningsansvar for transportørar ved ulykker under sjøtransport av passasjerar</summary>
          <description>Samtykke til godkjenning av EØS-komiteens vedtak nr. 17/2011 av 1. april 2011 om innlemming i EØS-avtalen av forordning (EF) nr. 392/2009 av 23. april 2009 om erstatningsansvar for transportørar ved ulykker under sjøtransport av passasjerar</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-20T00:00:00</lastUpdate>
          <reference>Prop. 52 S (2011-2012), Innst. 218 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>SAMFERDSEL</topic>
            <topic>SJØFART</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50949</externalId>
          <summary>En næring for framtida - om petroleumsvirksomheten</summary>
          <description>En næring for framtida - om petroleumsvirksomheten</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-19T00:00:00</lastUpdate>
          <reference>Meld. St. 28 (2010-2011), Innst. 143 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>FORURENSNING</topic>
            <topic>OLJE</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
            <topic>MILJØVERN</topic>
            <topic>OLJEUTVINNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50342</externalId>
          <summary>Endringer i energiloven og i enkelte andre lover</summary>
          <description>Endringer i energiloven og i enkelte andre lover</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-19T00:00:00</lastUpdate>
          <reference>Prop. 112 L (2010-2011), Innst. 140 L (2011-2012), Lovvedtak 34 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>RETTSVESEN</topic>
            <topic>ELEKTRISITET</topic>
            <topic>SIVIL BEREDSKAP</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51819</externalId>
          <summary>Representantforslag om å oppheve den såkalte miljøfartsgrensen i Oslo</summary>
          <description>Representantforslag fra stortingsrepresentantene Åshild Karoline Haugland, Bård Hoksrud, Jan-Henrik Fredriksen, Arne Sortevik, Christian Tybring-Gjedde og Peter N. Myhre om å oppheve den såkalte miljøfartsgrensen i Oslo</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-16T00:00:00</lastUpdate>
          <reference>Dokument 8:21 S (2011-2012), Innst. 115 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>FORURENSNING</topic>
            <topic>VEGTRAFIKK</topic>
            <topic>MILJØVERN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51820</externalId>
          <summary>Representantforslag om mer effektive planprosesser for raskere realisering av nye veiprosjekter</summary>
          <description>Representantforslag fra stortingsrepresentantene Knut Arild Hareide, Dagfinn Høybråten, Line Henriette Hjemdal og Geir Jørgen Bekkevold om mer effektive planprosesser for raskere realisering av nye veiprosjekter</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-16T00:00:00</lastUpdate>
          <reference>Dokument 8:22 S (2011-2012), Innst. 116 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>SAMFERDSEL</topic>
            <topic>VEGVESEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51835</externalId>
          <summary>Representantforslag om et nasjonalt bredbåndsløft</summary>
          <description>Representantforslag fra stortingsrepresentantene Åshild Karoline Haugland, Bård Hoksrud, Jan-Henrik Fredriksen og Arne Sortevik om et nasjonalt bredbåndsløft</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-16T00:00:00</lastUpdate>
          <reference>Dokument 8:20 S (2011-2012), Innst. 119 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51451</externalId>
          <summary>Forlenging av bompengeordninga i Nord-Jærenpakka i Rogaland</summary>
          <description>Forlenging av bompengeordninga i Nord-Jærenpakka i Rogaland</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-16T00:00:00</lastUpdate>
          <reference>Prop. 28 S (2011-2012), Innst. 117 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>SAMFERDSEL</topic>
            <topic>VEGVESEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52086</externalId>
          <summary>Endringer i jernbaneloven</summary>
          <description>Endringer i jernbaneloven</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-16T00:00:00</lastUpdate>
          <reference>Prop. 41 L (2011-2012), Innst. 139 L (2011-2012), Lovvedtak 33 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>FORBRUKERSAKER</topic>
            <topic>JERNBANER</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51846</externalId>
          <summary>Fellesprosjektet E6 - Dovrebanen</summary>
          <description>Fellesprosjektet E6 - Dovrebanen, utbygging og finansiering - E6 Minnesund - Skaberud - Dovrebanen Langset - Kleverud</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-16T00:00:00</lastUpdate>
          <reference>Prop. 13 S (2011-2012), Innst. 118 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>JERNBANER</topic>
            <topic>VEGVESEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51923</externalId>
          <summary>Endringer i statsbudsjettet for 2011 under Kulturdepartementet</summary>
          <description>Unntatt kap. 310. Endringer i statsbudsjettet for 2011 under Kulturdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-15T00:00:00</lastUpdate>
          <reference>Prop. 22 S (2011-2012), unntatt kap. 310, Innst. 132 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>RETTSVESEN</topic>
            <topic>SIVILRETT</topic>
            <topic>FORSKNING</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>KUNST</topic>
            <topic>KULTURVERN</topic>
            <topic>SPRÅK</topic>
            <topic>LOTTERI OG SPILL</topic>
            <topic>STATSFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51949</externalId>
          <summary>Endringer i statsbudsjettet for 2011 under Kunnskapsdepartementet</summary>
          <description>Kap. 231. Endringer i statsbudsjettet for 2011 under Kunnskapsdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-15T00:00:00</lastUpdate>
          <reference>Prop. 24 S (2011-2012), kap. 231, Innst. 130 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>FAMILIE</topic>
            <topic>BARNEHAGER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51938</externalId>
          <summary>Endringar i statsbudsjettet 2011 under Barne-, likestillings- og inkluderingsdepartementet</summary>
          <description>Unntatt kap. 821, 822, 3821 og 3822. Endringar i statsbudsjettet 2011 under Barne-, likestillings- og inkluderingsdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-15T00:00:00</lastUpdate>
          <reference>Prop. 19 S (2011-2012), unntatt kap. 821, 822, 3821 og 3822, Innst. 131 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>INNVANDRERE</topic>
            <topic>LIKESTILLING</topic>
            <topic>FAMILIE</topic>
            <topic>BARNEVERN</topic>
            <topic>FORSKNING</topic>
            <topic>HELSEVESEN</topic>
            <topic>SVANGERSKAP</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>BARNETRYGD</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51428</externalId>
          <summary>Fullmakt til å ta opp statslån o.a.</summary>
          <description>Fullmakt til å ta opp statslån o.a.</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-15T00:00:00</lastUpdate>
          <reference>Prop. 33 S (2011-2012), Innst. 122 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>STATSLÅN</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51396</externalId>
          <summary>Representantforslag om profesjonalisering og utvikling av kor- og vokalmusikken i Norge</summary>
          <description>Representantforslag fra stortingsrepresentantene Øyvind Håbrekke, Knut Arild Hareide, Dagrun Eriksen, Rigmor Andersen Eide om profesjonalisering og utvikling av kor- og vokalmusikken i Norge</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-15T00:00:00</lastUpdate>
          <reference>Dokument 8:2 S (2011-2012), Innst. 135 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>KUNST</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51391</externalId>
          <summary>Statsbudsjettet for 2012 (kapitler fordelt til familie- og kulturkomiteen)</summary>
          <description>Statsbudsjettet for 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-15T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 14 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>KULTUR</topic>
            <topic>SOSIALVESEN</topic>
            <topic>RETTSVESEN</topic>
            <topic>SIVILRETT</topic>
            <topic>INNVANDRERE</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>LIKESTILLING</topic>
            <topic>SAMER</topic>
            <topic>FAMILIE</topic>
            <topic>BARN</topic>
            <topic>BARNEHAGER</topic>
            <topic>BARNEVERN</topic>
            <topic>FORSKNING</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>HELSEVESEN</topic>
            <topic>SVANGERSKAP</topic>
            <topic>BIBLIOTEK OG LITTERATUR</topic>
            <topic>KUNST</topic>
            <topic>KRINGKASTING</topic>
            <topic>MERVERDIAVGIFT</topic>
            <topic>FORBRUKERSAKER</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
            <topic>KULTURVERN</topic>
            <topic>MASSEMEDIER</topic>
            <topic>SPRÅK</topic>
            <topic>UNGDOMSARBEID</topic>
            <topic>NORSK RIKSKRINGKASTING</topic>
            <topic>IDRETT</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>LOTTERI OG SPILL</topic>
            <topic>BARNETRYGD</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>EFTA/EU</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
            <topic>RUSMIDLER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50870</externalId>
          <summary>Representantforslag om å innføre løpende barnehageopptak</summary>
          <description>Representantforslag fra stortingsrepresentantene Solveig Horne, Ib Thomsen og Øyvind Korsberg om å innføre løpende barnehageopptak</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-15T00:00:00</lastUpdate>
          <reference>Dokument 8:168 S (2010-2011), Innst. 129 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>FAMILIE</topic>
            <topic>BARNEHAGER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51382</externalId>
          <summary>Statsbudsjettet 2012 (finansadministrasjonen, GIEK, 90-poster, Statens pensjonsfond utland)</summary>
          <description>Innst. 5 S Finansadministrasjon, GIEK, 90-poster, Statens pensjonsfond</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-15T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 5 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>ENERGI</topic>
            <topic>SOSIALVESEN</topic>
            <topic>RETTSVESEN</topic>
            <topic>FORURENSNING</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>UTDANNING</topic>
            <topic>STUDIEFINANSIERING</topic>
            <topic>STATENS PERSONALPOLITIKK</topic>
            <topic>FORSKNING</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>SKATTEADMINISTRASJON</topic>
            <topic>HELSEVESEN</topic>
            <topic>ELEKTRISITET</topic>
            <topic>OLJE</topic>
            <topic>AVGIFTER</topic>
            <topic>MERVERDIAVGIFT</topic>
            <topic>TOLL</topic>
            <topic>STATSLÅN</topic>
            <topic>BANKER</topic>
            <topic>NORGES BANK</topic>
            <topic>STATSBANKER</topic>
            <topic>UTENRIKSHANDEL</topic>
            <topic>LUFTFART</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
            <topic>STATSBEDRIFTER</topic>
            <topic>FYLKESKOMMUNENES ØKONOMI</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>HUSBANKEN</topic>
            <topic>MILJØVERN</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>UTVIKLINGSHJELP</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
            <topic>VEGVESEN</topic>
            <topic>DISTRIKTSPOLITIKK</topic>
            <topic>INDUSTRI</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51385</externalId>
          <summary>Statsbudsjettet for 2012 (kapitler fordelt til næringskomiteen)</summary>
          <description>Statsbudsjettet for 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-14T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 8 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>ARBEIDSLIV</topic>
            <topic>KULTUR</topic>
            <topic>SYSSELSETTING</topic>
            <topic>FISKERIER</topic>
            <topic>FANGST</topic>
            <topic>HANDEL</topic>
            <topic>FORURENSNING</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>NATURVERN</topic>
            <topic>FORSKNING</topic>
            <topic>LANDBRUK</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>HELSEVESEN</topic>
            <topic>LANDBRUKSPRODUKTER</topic>
            <topic>ELEKTRISITET</topic>
            <topic>AVGIFTER</topic>
            <topic>PRISER OG KONKURRANSEFORHOLD</topic>
            <topic>STATSLÅN</topic>
            <topic>FISKEOMSETNING</topic>
            <topic>HAVBRUK</topic>
            <topic>FORBRUKERSAKER</topic>
            <topic>UTENRIKSHANDEL</topic>
            <topic>REISELIVSNÆRING</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
            <topic>BERGVERK</topic>
            <topic>STATSBEDRIFTER</topic>
            <topic>KULTURVERN</topic>
            <topic>JORDBRUK</topic>
            <topic>HUSDYR</topic>
            <topic>NATURSKADER</topic>
            <topic>REINDRIFT</topic>
            <topic>VETERINÆRVESEN</topic>
            <topic>MILJØVERN</topic>
            <topic>LOTTERI OG SPILL</topic>
            <topic>SJØFART</topic>
            <topic>SJØFOLK</topic>
            <topic>SIKKERHET TIL SJØS</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>STATSEIENDOMMER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>SVALBARD</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
            <topic>FOLKEHELSE</topic>
            <topic>SÆRAVGIFTER</topic>
            <topic>SKOGBRUK</topic>
            <topic>DISTRIKTSPOLITIKK</topic>
            <topic>INDUSTRI</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50718</externalId>
          <summary>Representantforslag om tiltak for bergindustrien</summary>
          <description>Representantforslag fra stortingsrepresentantene Frank Bakke-Jensen, Siri A. Meling, Ivar Kristiansen og Elisabeth Aspaker om tiltak for bergindustrien</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-14T00:00:00</lastUpdate>
          <reference>Dokument 8:153 S (2010-2011), Innst. 109 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>SKATTEFRADRAG</topic>
            <topic>SKATTER</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
            <topic>BERGVERK</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50475</externalId>
          <summary>Representantforslag om virkemiddelapparatet for næringsutvikling og innovasjon</summary>
          <description>Representantforslag fra stortingsrepresentantene Elisabeth Røbekk Nørve, Frank Bakke-Jensen, Svein Flåtten og Henning Warloe om virkemiddelapparatet for næringsutvikling og innovasjon</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-14T00:00:00</lastUpdate>
          <reference>Dokument 8:149 S (2010-2011), Innst. 108 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50602</externalId>
          <summary>Representantforslag om en helhetlig anbudsstrategi som skal styrke forbrukerinteressene ved å innføre en uavhengig konkurransenemnd</summary>
          <description>Representantforslag fra stortingsrepresentantene Svein Flåtten, Harald T. Nesvik og Abid Q. Raja om en helhetlig anbudsstrategi som blant annet skal oppnå mer innovasjon og leverandørutvikling og styrke forbrukerinteressene ved å innføre en uavhengig konkurransenemnd</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-14T00:00:00</lastUpdate>
          <reference>Dokument 8:151 S (2010-2011), Innst. 110 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>PRISER OG KONKURRANSEFORHOLD</topic>
            <topic>FORBRUKERSAKER</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51449</externalId>
          <summary>Endringar på statsbudsjettet for 2011 under Nærings- og handelsdepartementet</summary>
          <description>Endringar på statsbudsjettet for 2011 under Nærings- og handelsdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-14T00:00:00</lastUpdate>
          <reference>Prop. 25 S (2011-2012), Innst. 124 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>ARBEIDSLIV</topic>
            <topic>SYSSELSETTING</topic>
            <topic>HANDEL</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>FORSKNING</topic>
            <topic>STATSLÅN</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
            <topic>STATSBEDRIFTER</topic>
            <topic>SJØFART</topic>
            <topic>SJØFOLK</topic>
            <topic>SIKKERHET TIL SJØS</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>FINANSER</topic>
            <topic>DISTRIKTSPOLITIKK</topic>
            <topic>INDUSTRI</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51925</externalId>
          <summary>Endringar i statsbudsjettet for 2011 under Landbruks- og matdepartementet</summary>
          <description>Endringar i statsbudsjettet for 2011 under Landbruks- og matdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-14T00:00:00</lastUpdate>
          <reference>Prop. 31 S (2011-2012), Innst. 123 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>LANDBRUK</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>LANDBRUKSPRODUKTER</topic>
            <topic>AVGIFTER</topic>
            <topic>PRISER OG KONKURRANSEFORHOLD</topic>
            <topic>STATSLÅN</topic>
            <topic>JORDBRUK</topic>
            <topic>HUSDYR</topic>
            <topic>NATURSKADER</topic>
            <topic>VETERINÆRVESEN</topic>
            <topic>MILJØVERN</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>STATSEIENDOMMER</topic>
            <topic>FINANSER</topic>
            <topic>SKOGBRUK</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51927</externalId>
          <summary>Eksportfinansiering</summary>
          <description>Eksportfinansiering</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-14T00:00:00</lastUpdate>
          <reference>Prop. 34 S (2011-2012), Innst. 138 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>STATSLÅN</topic>
            <topic>UTENRIKSHANDEL</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51848</externalId>
          <summary>Endringar av Prop. 1 S om statsbudsjettet for 2012</summary>
          <description>Endringar av Prop. 1 S om statsbudsjettet for 2012 under Landbruks- og matdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-14T00:00:00</lastUpdate>
          <reference>Prop. 1 S Tillegg 2 (2011-2012), Innst. 8 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>LANDBRUK</topic>
            <topic>LANDBRUKSPRODUKTER</topic>
            <topic>JORDBRUK</topic>
            <topic>NATURSKADER</topic>
            <topic>MILJØVERN</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52085</externalId>
          <summary>Endringer i Prop. 34 S (2011-2012). Eksportfinansiering</summary>
          <description>Endringer i Prop. 34 S (2011-2012). Eksportfinansiering</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-14T00:00:00</lastUpdate>
          <reference>Prop. 42 S (2011-2012), Innst. 138 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>STATSLÅN</topic>
            <topic>UTENRIKSHANDEL</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52137</externalId>
          <summary>Valg av medlemmer og varamedlemmer til Norges Banks representantskap og godtgjørelse for representantskapet og Den faste komité</summary>
          <description>Valg av medlemmer og varamedlemmer til Norges Banks representantskap og godtgjørelse for representantskapet og Den faste komité</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Innst. 121 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>NORGES BANK</topic>
            <topic>STATSFORFATNING</topic>
            <topic>FINANSER</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52148</externalId>
          <summary>Suppleringsvalg av et varamedlem til Nordisk Råd</summary>
          <description>Suppleringsvalg av et varamedlem til Nordisk Råd</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Innst. 120 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>NORDISK SAMARBEID</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51919</externalId>
          <summary>Endringar i statsbudsjettet for 2011 under Utanriksdepartementet</summary>
          <description>Endringar i statsbudsjettet for 2011 under Utanriksdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Prop. 20 S (2011-2012), Innst. 112 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>FN</topic>
            <topic>FN-STYRKER</topic>
            <topic>EUROPARÅDET</topic>
            <topic>NORDISK SAMARBEID</topic>
            <topic>ØKONOMISK SAMARBEID</topic>
            <topic>EFTA/EU</topic>
            <topic>UTVIKLINGSHJELP</topic>
            <topic>NATO</topic>
            <topic>FREDSARBEID</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51922</externalId>
          <summary>Endringar i statsbudsjettet for 2011 under Justis- og politidepartementet</summary>
          <description>Unntatt kap. 490, 3490, 491, 456, 3456 og 480. Endringar i statsbudsjettet for 2011 under Justis- og politidepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Prop. 18 S (2011-2012), unntatt kap. 490, 3490, 491, 456, 3456 og 480, Innst. 107 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>DOMSTOLER</topic>
            <topic>SIVILRETT</topic>
            <topic>KRIMINALOMSORG</topic>
            <topic>PERSONVERN</topic>
            <topic>INNVANDRERE</topic>
            <topic>FENGSLER</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>SIVIL BEREDSKAP</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>SIVILE VERNEPLIKTIGE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52008</externalId>
          <summary>Samtykke til at Norge deltar i kapitalpåfyllingen av Det internasjonale utviklingsfondet</summary>
          <description>Samtykke til at Norge deltar i kapitalpåfyllingen av Det internasjonale utviklingsfondet (IDA-16)</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Prop. 40 S (2011-2012), Innst. 114 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>ØKONOMISK SAMARBEID</topic>
            <topic>UTVIKLINGSHJELP</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51942</externalId>
          <summary>Endringar i statsbudsjettet for 2011 under Justis- og politidepartementet</summary>
          <description>Kap 480. Endringar i statsbudsjettet for 2011 under Justis- og politidepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Prop. 18 S (2011-2012), kap 480, Innst. 88 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>SVALBARD</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51454</externalId>
          <summary>Anmodnings- og utredningsvedtak i stortingssesjonen 2010-2011</summary>
          <description>Anmodnings- og utredningsvedtak i stortingssesjonen 2010-2011</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Meld. St. 4 (2011-2012), Innst. 84 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>REGJERINGEN</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50376</externalId>
          <summary>Beredskapen i Sivilforsvaret</summary>
          <description>Beredskapen i Sivilforsvaret</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Innst. 105 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>REDNINGSTJENESTE</topic>
            <topic>SIVIL BEREDSKAP</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51435</externalId>
          <summary>Endring i statsbudsjettet for 2011</summary>
          <description>Endringar i statsbudsjettet for 2011 under Forsvarsdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Prop. 14 S (2011-2012), Innst. 111 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>RETTSVESEN</topic>
            <topic>REDNINGSTJENESTE</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>FORSVAR</topic>
            <topic>FORSVARSMATERIELL</topic>
            <topic>KULTURVERN</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>NATO</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
            <topic>MILITÆRT PERSONELL</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51421</externalId>
          <summary>Svalbardbudsjettet 2012</summary>
          <description>Svalbardbudsjettet 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 17 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>SKATTER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>SVALBARD</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51691</externalId>
          <summary>Endring av Prop. 1 S om statsbudsjettet for 2012 (kapitler fordelt til utenriks- og forsvarskomiteen)</summary>
          <description>Endring av Prop. 1 S om statsbudsjettet for 2012 under Forsvarsdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Prop. 1 S Tillegg 1 (2011-2012), unntatt kap. 0455, Innst. 7 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>REDNINGSTJENESTE</topic>
            <topic>FORSVAR</topic>
            <topic>FORSVARSMATERIELL</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51458</externalId>
          <summary>Samtykke til at Noreg tek del i påfyllinga av Det afrikanske utviklingsfondet</summary>
          <description>Samtykke til at Noreg tek del i påfyllinga av Det afrikanske utviklingsfondet (AfDF-XII</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Prop. 39 S (2011-2012), Innst. 113 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>ØKONOMISK SAMARBEID</topic>
            <topic>UTVIKLINGSHJELP</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51384</externalId>
          <summary>Statsbudsjettet for 2012 (kapitler fordelt til utenriks- og forsvarskomiteen)</summary>
          <description>Statsbudsjettet for 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 7 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>RETTSVESEN</topic>
            <topic>REDNINGSTJENESTE</topic>
            <topic>INNVANDRERE</topic>
            <topic>FORURENSNING</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>LIKESTILLING</topic>
            <topic>REGJERINGEN</topic>
            <topic>FORSKNING</topic>
            <topic>LANDBRUK</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>FORSVAR</topic>
            <topic>FORSVARSMATERIELL</topic>
            <topic>ATOMVÅPEN</topic>
            <topic>UTENRIKSHANDEL</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
            <topic>KULTURVERN</topic>
            <topic>MILJØVERN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>FN</topic>
            <topic>FN-STYRKER</topic>
            <topic>EUROPARÅDET</topic>
            <topic>NORDISK SAMARBEID</topic>
            <topic>ØKONOMISK SAMARBEID</topic>
            <topic>EFTA/EU</topic>
            <topic>UTVIKLINGSHJELP</topic>
            <topic>POLAROMRÅDER</topic>
            <topic>SVALBARD</topic>
            <topic>NATO</topic>
            <topic>FREDSARBEID</topic>
            <topic>SIVIL BEREDSKAP</topic>
            <topic>KONGEN</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
            <topic>MILITÆRT PERSONELL</topic>
            <topic>INTERNASJONAL RETT</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50815</externalId>
          <summary>Særskilt melding til Stortinget EOS-utvalgets undersøkelse av POTs metodebruk i Treholt-saken</summary>
          <description>Særskilt melding fra Stortingets kontrollutvalg for etterretnings-, overvåkings- og sikkerhetstjeneste (EOS-utvalget) om POTs metodebruk i Treholt-saken</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Dokument 7:2 (2010-2011), Innst. 100 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>48970</externalId>
          <summary>Riksrevisjonens undersøkelse av resultatorienteringen i norsk bistand</summary>
          <description>Riksrevisjonens undersøkelse av resultatorienteringen i norsk bistand</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Dokument 3:4 (2010-2011), Innst. 104 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RIKSREVISJONEN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>UTVIKLINGSHJELP</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50689</externalId>
          <summary>Riksrevisjonens undersøkelse av intern kontroll i forsvarssektoren</summary>
          <description>Riksrevisjonens undersøkelse av intern kontroll i forsvarssektoren</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-13T00:00:00</lastUpdate>
          <reference>Dokument 3:9 (2010-2011), Innst. 101 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RIKSREVISJONEN</topic>
            <topic>FORSVAR</topic>
            <topic>FORSVARSMATERIELL</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50431</externalId>
          <summary>Endringer i matrikkellova og tinglysingsloven mv.</summary>
          <description>Endringer i matrikkellova og tinglysingsloven mv.</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-12T00:00:00</lastUpdate>
          <reference>Prop. 118 L (2010-2011), Innst. 92 L (2011-2012), Lovvedtak 28 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>SKATTEADMINISTRASJON</topic>
            <topic>BYGNINGSVESEN</topic>
            <topic>MILJØVERN</topic>
            <topic>KARTVERK</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51386</externalId>
          <summary>Statsbudsjettet for 2012 (kapitler fordelt til energi- og miljøkomiteen)</summary>
          <description>Statsbudsjettet for 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-12T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 9 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>KULTUR</topic>
            <topic>RETTSVESEN</topic>
            <topic>SIVILRETT</topic>
            <topic>FORURENSNING</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>NATURVERN</topic>
            <topic>FORSKNING</topic>
            <topic>LANDBRUK</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>HELSEVESEN</topic>
            <topic>ELEKTRISITET</topic>
            <topic>VASSDRAGSREGULERING</topic>
            <topic>OLJE</topic>
            <topic>OLJEOMSETNING</topic>
            <topic>AVGIFTER</topic>
            <topic>UTENRIKSHANDEL</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>KULTURVERN</topic>
            <topic>HUSDYR</topic>
            <topic>NATURSKADER</topic>
            <topic>MILJØVERN</topic>
            <topic>KARTVERK</topic>
            <topic>SJØFART</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>UTVIKLINGSHJELP</topic>
            <topic>POLAROMRÅDER</topic>
            <topic>SVALBARD</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
            <topic>FOLKEHELSE</topic>
            <topic>OLJEUTVINNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51092</externalId>
          <summary>Endringer i svalbardmiljøloven</summary>
          <description>Endringer i svalbardmiljøloven</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-12T00:00:00</lastUpdate>
          <reference>Prop. 147 L (2010-2011), Innst. 75 L (2011-2012), Lovvedtak 29 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>FORURENSNING</topic>
            <topic>NATURVERN</topic>
            <topic>KULTURVERN</topic>
            <topic>MILJØVERN</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>SVALBARD</topic>
          </topics>
        </issue>
        <issue>
          <externalId>49315</externalId>
          <summary>Endringer i folketrygdloven (ny uføretrygd og alderspensjon til uføre</summary>
          <description>Endringer i folketrygdloven (ny uføretrygd og alderspensjon til uføre)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-12T00:00:00</lastUpdate>
          <reference>Prop. 130 L (2010-2011), Innst. 80 L (2011-2012), Lovvedtak 30 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>SYSSELSETTING</topic>
            <topic>SOSIALVESEN</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51693</externalId>
          <summary>samtykke til deltakelse i en beslutning i EØS-komiteen om innlemmelse i EØS-avtalen om fornybare kilder</summary>
          <description>Samtykke til deltakelse i en beslutning i EØS-komiteen om innlemmelse i EØS-avtalen av direktiv 2009/28/EF om å fremme bruken av energi fra fornybare kilder (fornybardirektivet)</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-12T00:00:00</lastUpdate>
          <reference>Prop. 4 S (2011-2012), Innst. 98 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>ELEKTRISITET</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51427</externalId>
          <summary>Endringer i kontantstøtteloven</summary>
          <description>Endringer i kontantstøtteloven</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-12T00:00:00</lastUpdate>
          <reference>Prop. 8 L (2011-2012), Innst. 103 L (2011-2012), Lovvedtak 31 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>FAMILIE</topic>
            <topic>BARNEHAGER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51445</externalId>
          <summary>Endringar i lov om folkebibliotek</summary>
          <description>Endringar i lov om folkebibliotek</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-12T00:00:00</lastUpdate>
          <reference>Prop. 6 L (2011-2012), Innst. 102 L (2011-2012), Lovvedtak 32 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>BIBLIOTEK OG LITTERATUR</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51456</externalId>
          <summary>samtykke til inngåelse av avtale med Sverige om et felles marked for elsertifikater</summary>
          <description>Samtykke til inngåelse av avtale mellom Kongeriket Norges regjering og Kongeriket Sveriges regjering om et felles marked for elsertifikater av 29. juni 2011.</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-12T00:00:00</lastUpdate>
          <reference>Prop. 5 S (2011-2012), Innst. 99 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Energi- og miljøkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>ELEKTRISITET</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>NORDISK SAMARBEID</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51920</externalId>
          <summary>Endringar i statsbudsjettet for 2011 under Arbeidsdepartementet</summary>
          <description>Endringar i statsbudsjettet for 2011 under Arbeidsdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-12T00:00:00</lastUpdate>
          <reference>Prop. 26 S (2011-2012), Innst. 106 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>SYSSELSETTING</topic>
            <topic>SOSIALVESEN</topic>
            <topic>INNVANDRERE</topic>
            <topic>FAMILIE</topic>
            <topic>STATENS PERSONALPOLITIKK</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>FORSIKRING</topic>
            <topic>HELSEVESEN</topic>
            <topic>SYKDOMMER</topic>
            <topic>STATSLÅN</topic>
            <topic>ARBEIDSVILKÅR</topic>
            <topic>LØNN</topic>
            <topic>SJØFART</topic>
            <topic>SJØFOLK</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52150</externalId>
          <summary>Endringer i barnevernloven</summary>
          <description>Endringer i barnevernloven</description>
          <type>lovsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-12-12T00:00:00</lastUpdate>
          <reference>Prop. 43 L (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>FAMILIE</topic>
            <topic>BARNEVERN</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52152</externalId>
          <summary>Kultur, inkludering og deltaking</summary>
          <description>Kultur, inkludering og deltaking</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-12-12T00:00:00</lastUpdate>
          <reference>Meld. St. 10 (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>HELSEVESEN</topic>
            <topic>KUNST</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51763</externalId>
          <summary>Endring av Prop. 1 S om statsbudsjettet for 2012</summary>
          <description>Endring av Prop. 1 S om statsbudsjettet for 2012 under Kommunal- og regionaldepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-09T00:00:00</lastUpdate>
          <reference>Prop. 1 S Tillegg 3 (2011-2012), Innst. 16 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>KULTUR</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>KULTURVERN</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>HUSBANKEN</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51393</externalId>
          <summary>Statsbudsjettet for 2012 (kapitler fordelt til kommunal- og forvaltningskomiteen)</summary>
          <description>Statsbudsjettet for 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-09T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 16 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>KOMMUNIKASJON</topic>
            <topic>ARBEIDSLIV</topic>
            <topic>KULTUR</topic>
            <topic>SOSIALVESEN</topic>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
            <topic>INNVANDRERE</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>REGJERINGEN</topic>
            <topic>VALG</topic>
            <topic>SKOLER</topic>
            <topic>UTDANNING</topic>
            <topic>FYLKER</topic>
            <topic>BOLIGSAKER</topic>
            <topic>SAMER</topic>
            <topic>BARNEHAGER</topic>
            <topic>STATENS PERSONALPOLITIKK</topic>
            <topic>FORSKNING</topic>
            <topic>LANDBRUK</topic>
            <topic>ELDREOMSORG</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>HELSEVESEN</topic>
            <topic>STATSLÅN</topic>
            <topic>ARBEIDSVILKÅR</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
            <topic>KULTURVERN</topic>
            <topic>REINDRIFT</topic>
            <topic>FYLKESKOMMUNENES ØKONOMI</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>BYGNINGSVESEN</topic>
            <topic>HUSBANKEN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>POLITISKE PARTIER</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>STATSEIENDOMMER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>EUROPARÅDET</topic>
            <topic>EFTA/EU</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
            <topic>KONGEN</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
            <topic>VOKSENOPPLÆRING</topic>
            <topic>DISTRIKTSPOLITIKK</topic>
            <topic>INDUSTRI</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51389</externalId>
          <summary>Statsbudsjettet for 2012 (kapitler fordelt til kirke-, utdannings- og forskningskomiteen)</summary>
          <description>Statsbudsjettet for 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-08T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 12 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>ARBEIDSLIV</topic>
            <topic>KULTUR</topic>
            <topic>FISKERIER</topic>
            <topic>INNVANDRERE</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>SKOLER</topic>
            <topic>UTDANNING</topic>
            <topic>PRIVATSKOLER</topic>
            <topic>SPESIALUNDERVISNING</topic>
            <topic>UNIVERSITETER</topic>
            <topic>STUDIEFINANSIERING</topic>
            <topic>SAMER</topic>
            <topic>FAMILIE</topic>
            <topic>BARNEHAGER</topic>
            <topic>FORSKNING</topic>
            <topic>LANDBRUK</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>HELSEVESEN</topic>
            <topic>STATSLÅN</topic>
            <topic>FISKEOMSETNING</topic>
            <topic>HAVBRUK</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>KULTURVERN</topic>
            <topic>VETERINÆRVESEN</topic>
            <topic>FYLKESKOMMUNENES ØKONOMI</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>MILJØVERN</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>VIDEREGÅENDE SKOLER</topic>
            <topic>HØYERE UTDANNING</topic>
            <topic>HØGSKOLER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>EFTA/EU</topic>
            <topic>POLAROMRÅDER</topic>
            <topic>SVALBARD</topic>
            <topic>FREDSARBEID</topic>
            <topic>GRUNNSKOLE</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
            <topic>FOLKEHELSE</topic>
            <topic>VOKSENOPPLÆRING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51424</externalId>
          <summary>Lov om pensjonsordning for stortingsrepresentanter og regjeringsmedlemmer</summary>
          <description>Lov om pensjonsordning for stortingsrepresentanter og regjeringsmedlemmer</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-08T00:00:00</lastUpdate>
          <reference>Prop. 9 L (2011-2012), Innst. 97 L (2011-2012), Lovvedtak 26 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Stortingets presidentskap</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>REGJERINGEN</topic>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52069</externalId>
          <summary>Lov om godtgjørelser for stortingsrepresentantene</summary>
          <description>Lov om godtgjørelser for stortingsrepresentantene</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-08T00:00:00</lastUpdate>
          <reference>Innst. 89 L (2011-2012), Lovvedtak 27 (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Stortingets presidentskap</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52070</externalId>
          <summary>Forskrift om godtgjørelser for stortingsrepresentantene</summary>
          <description>Forskrift om godtgjørelser for stortingsrepresentantene</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-08T00:00:00</lastUpdate>
          <reference>Innst. 90 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Stortingets presidentskap</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>REGJERINGEN</topic>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>LØNN</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51924</externalId>
          <summary>Endringer i statsbudsjettet for 2011 under Kunnskapsdepartementet</summary>
          <description>Unntatt kap. 231. Endringer i statsbudsjettet for 2011 under Kunnskapsdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-08T00:00:00</lastUpdate>
          <reference>Prop. 24 S (2011-2012), unntatt kap. 231, Innst. 94 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>SKOLER</topic>
            <topic>UTDANNING</topic>
            <topic>PRIVATSKOLER</topic>
            <topic>SPESIALUNDERVISNING</topic>
            <topic>UNIVERSITETER</topic>
            <topic>STUDIEFINANSIERING</topic>
            <topic>SAMER</topic>
            <topic>FORSKNING</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>HELSEVESEN</topic>
            <topic>STATSLÅN</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>VIDEREGÅENDE SKOLER</topic>
            <topic>HØYERE UTDANNING</topic>
            <topic>HØGSKOLER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>SVALBARD</topic>
            <topic>GRUNNSKOLE</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>FINANSER</topic>
            <topic>VOKSENOPPLÆRING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51950</externalId>
          <summary>Endring i statsbudsjettet for 2011 under Fornyings-, administrasjons- og kirkedepartementet</summary>
          <description>Kap. 1590. Endringer i statsbudsjettet for 2011 under Fornyings-, administrasjons- og kirkedepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-08T00:00:00</lastUpdate>
          <reference>Prop. 30 S (2011-2012), kap. 1590, Innst. 95 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>SAMER</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51939</externalId>
          <summary>Endringer i statsbudsjettet for 2011 under Kulturdepartementet</summary>
          <description>Kap. 310. Endringer i statsbudsjettet for 2011 under Kulturdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-08T00:00:00</lastUpdate>
          <reference>Prop. 22 S (2011-2012) kap. 310, Innst. 93 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>TROSSAMFUNN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51947</externalId>
          <summary>Endringar i statsbudsjettet for 2011 under Fiskeri- og kystdepartementet</summary>
          <description>Kap. 1020. Endringar i statsbudsjettet for 2011 under Fiskeri- og kystdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-08T00:00:00</lastUpdate>
          <reference>Prop. 23 S (2011-2012), kap. 1020, 1021 og 1022, Innst. 96 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>FORSKNING</topic>
            <topic>MILJØVERN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51941</externalId>
          <summary>Endringar i statsbudsjettet for 2011 under Justis- og politidepartementet</summary>
          <description>Kap. 456 og 3456. Endringar i statsbudsjettet for 2011 under Justis- og politidepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-07T00:00:00</lastUpdate>
          <reference>Prop. 18 S (2011-2012), kap. 456 og 3456, Innst. 85 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>RETTSVESEN</topic>
            <topic>REDNINGSTJENESTE</topic>
            <topic>HELSEVESEN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51928</externalId>
          <summary>Endringar i statsbudsjettet for 2011 under Samferdselsdepartementet</summary>
          <description>Endringar i statsbudsjettet for 2011 under Samferdselsdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-07T00:00:00</lastUpdate>
          <reference>Prop. 32 S (2011-2012), Innst. 87 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>POST</topic>
            <topic>VEGTRAFIKK</topic>
            <topic>PRISER OG KONKURRANSEFORHOLD</topic>
            <topic>STATSLÅN</topic>
            <topic>SAMFERDSEL</topic>
            <topic>JERNBANER</topic>
            <topic>LUFTFART</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>STATSBEDRIFTER</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>FINANSER</topic>
            <topic>VEGVESEN</topic>
            <topic>DISTRIKTSPOLITIKK</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51921</externalId>
          <summary>Endringar i statsbudsjettet for 2011 under Fiskeri- og kystdepartementet</summary>
          <description>Unntatt kap. 1020. Endringar i statsbudsjettet for 2011 under Fiskeri- og kystdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-07T00:00:00</lastUpdate>
          <reference>Prop. 23 S (2011-2012), unntatt kap. 1020, 1021 og 1022, Innst. 86 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>FORURENSNING</topic>
            <topic>AVGIFTER</topic>
            <topic>MILJØVERN</topic>
            <topic>SJØFART</topic>
            <topic>SIKKERHET TIL SJØS</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51390</externalId>
          <summary>Statsbudsjettet for 2012 (kapitler fordelt til transport- og kommunikasjonskomiteen)</summary>
          <description>Statsbudsjettet for 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-07T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 13 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>POST</topic>
            <topic>RETTSVESEN</topic>
            <topic>REDNINGSTJENESTE</topic>
            <topic>FORURENSNING</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>FORSKNING</topic>
            <topic>VEGTRAFIKK</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>HELSEVESEN</topic>
            <topic>PRISER OG KONKURRANSEFORHOLD</topic>
            <topic>STATSLÅN</topic>
            <topic>BANKER</topic>
            <topic>SAMFERDSEL</topic>
            <topic>JERNBANER</topic>
            <topic>LUFTFART</topic>
            <topic>FERGER</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>STATSBEDRIFTER</topic>
            <topic>FYLKESKOMMUNENES ØKONOMI</topic>
            <topic>MILJØVERN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>SJØFART</topic>
            <topic>SIKKERHET TIL SJØS</topic>
            <topic>HAVNER</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>POLAROMRÅDER</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
            <topic>VEGVESEN</topic>
            <topic>DISTRIKTSPOLITIKK</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50945</externalId>
          <summary>Anskaffelse av nye redningshelikoptre i perioden 2013-2020</summary>
          <description>Anskaffelse av nye redningshelikoptre i perioden 2013-2020</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-06T00:00:00</lastUpdate>
          <reference>Prop. 146 S (2010-2011), Innst. 82 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>REDNINGSTJENESTE</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>SVALBARD</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51388</externalId>
          <summary>Statsbudsjettet for 2012 (kapitler fordelt til helse- og omsorgskomiteen)</summary>
          <description>Statsbudsjettet for 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-06T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 11 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>PERSONVERN</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>FYLKER</topic>
            <topic>FAMILIE</topic>
            <topic>BARNEVERN</topic>
            <topic>FORSKNING</topic>
            <topic>ELDREOMSORG</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>HELSEVESEN</topic>
            <topic>HELSEINSTITUSJONER</topic>
            <topic>SYKEHUS</topic>
            <topic>HELSEPERSONELL</topic>
            <topic>SVANGERSKAP</topic>
            <topic>SYKDOMMER</topic>
            <topic>STATSLÅN</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
            <topic>FOLKEHELSE</topic>
            <topic>RUSMIDLER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51765</externalId>
          <summary>Endring av Prop. 1 S om statsbudsjettet for 2012 (refusjon av legemidlet ticagrelor)</summary>
          <description>Endring av Prop. 1 S om statsbudsjettet for 2012 (refusjon av legemidlet ticagrelor)</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-06T00:00:00</lastUpdate>
          <reference>Prop. 1 S Tillegg 4 (2011-2012), Innst. 11 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>HELSEVESEN</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51128</externalId>
          <summary>Endringer i aksjeloven mv. (nedsettelse av kravet til minste aksjekapital mv.)</summary>
          <description>Endringer i aksjeloven mv. (nedsettelse av kravet til minste aksjekapital mv.)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-06T00:00:00</lastUpdate>
          <reference>Prop. 148 L (2010-2011), Innst. 57 L (2011-2012), Lovvedtak 25 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
            <topic>FINANSER</topic>
            <topic>AKSJER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50940</externalId>
          <summary>Endringer i straffeloven, straffeprosessloven, straffegjennomføringsloven, konfliktrådsloven m.fl. (barn og straff)</summary>
          <description>Endringer i straffeloven, straffeprosessloven, straffegjennomføringsloven, konfliktrådsloven m.fl. (barn og straff)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-06T00:00:00</lastUpdate>
          <reference>Prop. 135 L (2010-2011), Innst. 83 L (2011-2012), Lovvedtak 24 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>STRAFFERETT</topic>
            <topic>KRIMINALOMSORG</topic>
            <topic>FAMILIE</topic>
            <topic>BARNEVERN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50222</externalId>
          <summary>Representantforslag om å nedsette et offentlig utvalg som skal følge opp ansvarsreformen</summary>
          <description>Representantforslag fra stortingsrepresentantene Trine Skei Grande og Borghild Tenden om å nedsette et offentlig utvalg som skal følge opp ansvarsreformen for å bedre livssituasjonen til psykisk utviklingshemmede</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-06T00:00:00</lastUpdate>
          <reference>Dokument 8:139 S (2010-2011), Innst. 54 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>KOMMUNER</topic>
            <topic>HELSEVESEN</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50456</externalId>
          <summary>Representantforslag om raskere og bedre tilgang til legemidler</summary>
          <description>Representantforslag fra stortingsrepresentantene Bent Høie, Sonja Irene Sjøli og Erna Solberg om raskere og bedre tilgang til legemidler</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-06T00:00:00</lastUpdate>
          <reference>Dokument 8:146 S (2010-2011), Innst. 64 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
            <topic>PRISER OG KONKURRANSEFORHOLD</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50478</externalId>
          <summary>Representantforslag om opprettelsen av spesialiserte diagnosesentre</summary>
          <description>Representantforslag fra stortingsrepresentantene Bent Høie, Sonja Irene Sjøli, Michael Tetzschner og Elisabeth Røbekk Nørve om opprettelsen av spesialiserte diagnosesentre</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-06T00:00:00</lastUpdate>
          <reference>Dokument 8:147 S (2010-2011), Innst. 65 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Helse- og omsorgskomiteen</committee>
          <topics>
            <topic>HELSEVESEN</topic>
            <topic>SYKDOMMER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50943</externalId>
          <summary>Endringer i utlendingsloven (utvidet adgang til fengsling mv.)</summary>
          <description>Endringer i utlendingsloven (utvidet adgang til fengsling mv.)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-05T00:00:00</lastUpdate>
          <reference>Prop. 138 L (2010-2011), Innst. 78 L (2011-2012), Lovvedtak 21 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>INNVANDRERE</topic>
            <topic>FENGSLER</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50944</externalId>
          <summary>Endringer i utlendingsloven m.m. (høring av barn mv.)</summary>
          <description>Endringer i utlendingsloven m.m. (høring av barn mv.)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-05T00:00:00</lastUpdate>
          <reference>Prop. 141 L (2010-2011), Innst. 74 L (2011-2012), Lovvedtak 22 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>FAMILIE</topic>
            <topic>BARN</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51423</externalId>
          <summary>Samleproposisjon hausten 2011 (endringar i folketrygdlova)</summary>
          <description>Endringar i folketrygdlova og enkelte andre lover (samleproposisjon hausten 2011)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-05T00:00:00</lastUpdate>
          <reference>Prop. 7 L (2011-2012), Innst. 81 L (2011-2012), Lovvedtak 20 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>SOSIALVESEN</topic>
            <topic>ARBEIDSVILKÅR</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51446</externalId>
          <summary>Endring i pengespilloven</summary>
          <description>Midlertidig endring i pengespilloven (gave til Norges idrettsforbund og olympiske  og paralympiske komité)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-05T00:00:00</lastUpdate>
          <reference>Prop. 15 L (2011-2012), Innst. 79 L (2011-2012), Lovvedtak 23 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>IDRETT</topic>
            <topic>LOTTERI OG SPILL</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51392</externalId>
          <summary>Statsbudsjettet for 2012 (kapitler fordelt til arbeids- og sosialkomiteen)</summary>
          <description>Statsbudsjettet for 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-05T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 15 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>ENERGI</topic>
            <topic>ARBEIDSLIV</topic>
            <topic>SYSSELSETTING</topic>
            <topic>SOSIALVESEN</topic>
            <topic>INNVANDRERE</topic>
            <topic>FAMILIE</topic>
            <topic>STATENS PERSONALPOLITIKK</topic>
            <topic>FORSKNING</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>FORSIKRING</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>HELSEVESEN</topic>
            <topic>SVANGERSKAP</topic>
            <topic>SYKDOMMER</topic>
            <topic>OLJE</topic>
            <topic>OLJEOMSETNING</topic>
            <topic>AVGIFTER</topic>
            <topic>STATSLÅN</topic>
            <topic>ARBEIDSVILKÅR</topic>
            <topic>LØNN</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>SJØFART</topic>
            <topic>SJØFOLK</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
            <topic>OLJEUTVINNING</topic>
            <topic>ARBEIDSMILJØ</topic>
            <topic>RUSMIDLER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51692</externalId>
          <summary>Endring av Prop. 1 S om statsbudsjettet for 2012 ,  (kapittel fordelt til justiskomiteen)</summary>
          <description>kap. 0455. Endring av Prop. 1 S om statsbudsjettet for 2012 under Forsvarsdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-02T00:00:00</lastUpdate>
          <reference>Prop. 1 S Tillegg 1 (2011-2012) kap. 0455, Innst. 6 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>REDNINGSTJENESTE</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51383</externalId>
          <summary>Statsbudsjettet for 2012 (kapitler fordelt til justiskomiteen)</summary>
          <description>Statsbudsjettet for 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-02T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 6 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>DOMSTOLER</topic>
            <topic>SIVILRETT</topic>
            <topic>REDNINGSTJENESTE</topic>
            <topic>KRIMINALOMSORG</topic>
            <topic>PERSONVERN</topic>
            <topic>INNVANDRERE</topic>
            <topic>FENGSLER</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>RETTFERDSVEDERLAG</topic>
            <topic>FORSKNING</topic>
            <topic>LANDBRUK</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>GRENSESPØRSMÅL</topic>
            <topic>EFTA/EU</topic>
            <topic>SIVIL BEREDSKAP</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
            <topic>SIVILE VERNEPLIKTIGE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51387</externalId>
          <summary>Statsbudsjettet for 2012 (kapitler fordelt til kontroll- og konstitusjonskomiteen)</summary>
          <description>Statsbudsjettet for 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-01T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 10 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RIKSREVISJONEN</topic>
            <topic>FORSVAR</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGETS OMBUDSMANN FOR FORVALTNINGEN</topic>
            <topic>POLITISKE PARTIER</topic>
            <topic>KONGEN</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
            <topic>MILITÆRT PERSONELL</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50941</externalId>
          <summary>Samtykke til inngåing avavtale 28. juni 2006 mellom EU, Island og Noreg om overleveringsprosedyre mellom partane</summary>
          <description>S-delen. Lov om pågriping og overlevering til og frå Noreg for straffbare forhold på grunnlag av ein arrestordre (arrestordreloven) og om samtykke til inngåing av avtale 28. juni 2006 mellom EU, Island og Noreg om overleveringsprosedyre mellom partane</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-01T00:00:00</lastUpdate>
          <reference>Prop. 137 LS (2010-2011), Innst. 67 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>NORDISK SAMARBEID</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50942</externalId>
          <summary>Lov om pågriping og overlevering til og frå Noreg for straffbare forhold på grunnlag av ein arrestordre (arrestordreloven)</summary>
          <description>Lov-delen. Lov om pågriping og overlevering til og frå Noreg for straffbare forhold på grunnlag av ein arrestordre (arrestordreloven) og om samtykke til inngåing av avtale 28. juni 2006 mellom EU, Island og Noreg om overleveringsprosedyre mellom partane</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-01T00:00:00</lastUpdate>
          <reference>Prop. 137 LS (2010-2011), Innst. 68 L (2011-2012), Lovvedtak 19 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>SIVILRETT</topic>
            <topic>STRAFFERETT</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>NORDISK SAMARBEID</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50327</externalId>
          <summary>Representantforslag om lov om endring i domstolloven (fotoforbud overfor fornærmede og pårørende)</summary>
          <description>Representantforslag fra stortingsrepresentantene Hans Frode Kielland Asmyhr, Per Sandberg, Åse Michaelsen, Anders Anundsen og Morten Ørsal Johansen om lov om endring i domstolloven (fotoforbud overfor fornærmede og pårørende)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-01T00:00:00</lastUpdate>
          <reference>Dokument 8:143 L (2010-2011), Innst. 56 L (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>RETTSVESEN</topic>
            <topic>DOMSTOLER</topic>
            <topic>MASSEMEDIER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50483</externalId>
          <summary>Endringar i offentleglova</summary>
          <description>Endringar i offentleglova</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-01T00:00:00</lastUpdate>
          <reference>Prop. 125 L (2010-2011), Innst. 66 L (2011-2012), Lovvedtak 18 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
            <topic>LØNN</topic>
            <topic>STATSFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50878</externalId>
          <summary>Representantforslag om bekjempelse av 1 % MC-klubber</summary>
          <description>Representantforslag fra stortingsrepresentantene Anders B. Werp, André Oktay Dahl, Linda C. Hofstad Helleland, Arve Kambe og Ingjerd Schou om bekjempelse av 1 % MC-klubber</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-01T00:00:00</lastUpdate>
          <reference>Dokument 8:173 S (2010-2011), Innst. 58 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Justiskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50872</externalId>
          <summary>Representantforslag om å avgrense rett til kontantstøtte ut fra statsborgerskap</summary>
          <description>Representantforslag fra stortingsrepresentantene Per-Willy Amundsen, Solveig Horne, Robert Eriksson, Gjermund Hagesæter og Åge Starheim om å avgrense rett til kontantstøtte ut fra statsborgerskap</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-01T00:00:00</lastUpdate>
          <reference>Dokument 8:171 S (2010-2011), Innst. 72 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>FAMILIE</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50871</externalId>
          <summary>Representantforslag om å overfører fylkesnemndenes oppgaver for barnevern og sosiale saker til de ordinære domstolene</summary>
          <description>Representantforslag fra stortingsrepresentantene Solveig Horne, Ib Thomsen og Øyvind Korsberg om å overfører fylkesnemndenes oppgaver for barnevern og sosiale saker til de ordinære domstolene</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-01T00:00:00</lastUpdate>
          <reference>Dokument 8:169 S (2010-2011), Innst. 76 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>DOMSTOLER</topic>
            <topic>FAMILIE</topic>
            <topic>BARNEVERN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50831</externalId>
          <summary>Representantforslag om utredning av hjemmel for klarering av opphavsrettigheter fra andre land, tverrterritorial klarering</summary>
          <description>Representantforslag fra stortingsrepresentantene Olemic Thommessen og Svein Flåtten om utredning av hjemmel for klarering av opphavsrettigheter fra andre land, tverrterritorial klarering</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-01T00:00:00</lastUpdate>
          <reference>Dokument 8:159 S (2010-2011), Innst. 70 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>KRINGKASTING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>NORDISK SAMARBEID</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50833</externalId>
          <summary>Representantforslag om digital formidling fra teater- og musikkinstitusjoner</summary>
          <description>Representantforslag fra stortingsrepresentantene Ib Thomsen, Øyvind Håbrekke, Trine Skei Grande og Olemic Thommessen om digital formidling fra teater- og musikkinstitusjoner</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-01T00:00:00</lastUpdate>
          <reference>Dokument 8:160 S (2010-2011), Innst. 71 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>KULTUR</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50865</externalId>
          <summary>Representantforslag om ny giv for frivilligheten og det sivile samfunn</summary>
          <description>Representantforslag fra stortingsrepresentantene Øyvind Håbrekke, Knut Arild Hareide, Geir Jørgen Bekkevold og Dagrun Eriksen om ny giv for frivilligheten og det sivile samfunn</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-12-01T00:00:00</lastUpdate>
          <reference>Dokument 8:165 S (2010-2011), Innst. 77 S (2011-2012), Dokument 8:165 LS (2010-2011), Dokument 8:165 S (2010-2011)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>SKOLER</topic>
            <topic>UTDANNING</topic>
            <topic>SKATTEFRADRAG</topic>
            <topic>HELSEVESEN</topic>
            <topic>HELSEINSTITUSJONER</topic>
            <topic>MERVERDIAVGIFT</topic>
            <topic>FINANSER</topic>
            <topic>VOKSENOPPLÆRING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51988</externalId>
          <summary>Representantforslag om etablering av et uavhengig tvisteløsningsorgan mellom stat og kommune</summary>
          <description>Representantforslag fra stortingsrepresentantene Trond Helleland, Michael Tetzschner, Erna Solberg og Anders B. Werp om etablering av et uavhengig tvisteløsningsorgan mellom stat og kommune</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-12-01T00:00:00</lastUpdate>
          <reference>Dokument 8:32 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </issue>
        <issue>
          <externalId>50024</externalId>
          <summary>Representantforslag om en helhetlig gjennomgang av de ulike ombudene</summary>
          <description>Representantforslag fra stortingsrepresentantene Trine Skei Grande og Borghild Tenden om en helhetlig gjennomgang av de ulike ombudene</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-29T00:00:00</lastUpdate>
          <reference>Dokument 8:127 S (2010-2011), Innst. 52 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>STATSFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>49337</externalId>
          <summary>Utviklingen i Sørøst-Europa</summary>
          <description>Norsk innsats for stabilitet og utvikling i Sørøst-Europa</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-29T00:00:00</lastUpdate>
          <reference>Meld. St. 17 (2010-2011), Innst. 61 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>UTVIKLINGSHJELP</topic>
            <topic>NATO</topic>
            <topic>FREDSARBEID</topic>
          </topics>
        </issue>
        <issue>
          <externalId>49351</externalId>
          <summary>Eksport av forsvarsmateriell i 2010, eksportkontroll og internasjonalt ikke-spredningssamarbeid</summary>
          <description>Eksport av forsvarsmateriell fra Norge i 2010, eksportkontroll og internasjonalt ikke-spredningssamarbeid
      </description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-29T00:00:00</lastUpdate>
          <reference>Meld. St. 25 (2010-2011), Innst. 62 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>FORSVAR</topic>
            <topic>FORSVARSMATERIELL</topic>
            <topic>UTENRIKSHANDEL</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>UTENRIKSSAKER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50166</externalId>
          <summary>Representantforslag om å oppnevne en bredt sammensatt kommisjon som skal utarbeide forslag til en bedre integreringspolitikk for Norge</summary>
          <description>Representantforslag fra stortingsrepresentantene Per-Willy Amundsen, Gjermund Hagesæter og Åge Starheim om å oppnevne en bredt sammensatt kommisjon som skal utarbeide forslag til en bedre integreringspolitikk for Norge</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-29T00:00:00</lastUpdate>
          <reference>Dokument 8:136 S (2010-2011), Innst. 55 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51455</externalId>
          <summary>Samtykke til ratifikasjon av avtale mellom EFTA-statene og Ukraina</summary>
          <description>Samtykke til ratifikasjon av en frihandelsavtale mellom EFTA-statene og Ukraina og en avtale om handel med landbruksvarer mellom 
      Norge og Ukraina, begge av 24. juni 2010</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-29T00:00:00</lastUpdate>
          <reference>Prop. 2 S (2011-2012), Innst. 69 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>UTENRIKSHANDEL</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51436</externalId>
          <summary>Omdanning av Luftforsvarets hovedverksted Kjeller til statsforetak</summary>
          <description>Omdanning av Luftforsvarets hovedverksted Kjeller (LHK) til statsforetak og andre investeringer</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-29T00:00:00</lastUpdate>
          <reference>Prop. 3 S (2011-2012), Innst. 60 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>FORSVAR</topic>
            <topic>FORSVARSMATERIELL</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>STATSBEDRIFTER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51432</externalId>
          <summary>Sametingets virksomhet 2010</summary>
          <description>Sametingets virksomhet 2010</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-17T00:00:00</lastUpdate>
          <reference>Meld. St. 8 (2011-2012), Innst. 240 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
        </issue>
        <issue>
          <externalId>51171</externalId>
          <summary>Riksrevisjonens undersøking av vedlikehald og sikring av kyrkjebygg</summary>
          <description>Riksrevisjonens undersøking av vedlikehald og sikring av kyrkjebygg</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-28T00:00:00</lastUpdate>
          <reference>Dokument 3:10 (2010-2011), Innst. 41 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>KULTUR</topic>
            <topic>RIKSREVISJONEN</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>KULTURVERN</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51172</externalId>
          <summary>Riksrevisjonens undersøkelse av eiendomsforvaltningen i helseforetakene</summary>
          <description>Riksrevisjonens undersøkelse av eiendomsforvaltningen i helseforetakene</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-28T00:00:00</lastUpdate>
          <reference>Dokument 3:11 (2010-2011), Innst. 42 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RIKSREVISJONEN</topic>
            <topic>HELSEVESEN</topic>
            <topic>SYKEHUS</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>STATSEIENDOMMER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50879</externalId>
          <summary>Representantforslag om en bedre barnehage med mer mangfold og kvalitet</summary>
          <description>Representantforslag fra stortingsrepresentantene Linda C. Hofstad Helleland, Sylvi Graham, Sonja Irene Sjøli og Svein Harberg om en bedre barnehage med mer mangfold og kvalitet</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-28T00:00:00</lastUpdate>
          <reference>Dokument 8:172 S (2010-2011), Innst. 73 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>FAMILIE</topic>
            <topic>BARNEHAGER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50864</externalId>
          <summary>Representantforslag om en opptrappingsplan for de kommunale musikk- og kulturskolene</summary>
          <description>Representantforslag fra stortingsrepresentantene Øyvind Håbrekke, Dagrun Eriksen, Knut Arild Hareide og Geir Jørgen Bekkevold om en opptrappingsplan for de kommunale musikk- og kulturskolene</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-28T00:00:00</lastUpdate>
          <reference>Dokument 8:164 S (2010-2011), Innst. 49 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>UTDANNING</topic>
            <topic>GRUNNSKOLE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50001</externalId>
          <summary>Representantforslag om å forbedre ordningen med gruppe 2-biler til personer med alvorlige funksjonsnedsettelser</summary>
          <description>Representantforslag fra stortingsrepresentantene Vigdis Giltun, Robert Eriksson og Laila Marie Reiertsen om å forbedre ordningen med gruppe 2-biler til personer med alvorlige funksjonsnedsettelser</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-25T00:00:00</lastUpdate>
          <reference>Dokument 8:124 S (2010-2011), Innst. 43 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>HELSEVESEN</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50457</externalId>
          <summary>Representantforslag om en styrket innsats for kommersialisering av forskningsresultater</summary>
          <description>Representantforslag fra stortingsrepresentantene Henning Warloe, Linda C. Hofstad Helleland, Elisabeth Røbekk Nørve, Gunnar Gundersen og Nikolai Astrup om en styrket innsats for kommersialisering av forskningsresultater</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-25T00:00:00</lastUpdate>
          <reference>Dokument 8:148 S (2010-2011), Innst. 63 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>UTDANNING</topic>
            <topic>FORSKNING</topic>
            <topic>SKATTEFRADRAG</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
            <topic>HØYERE UTDANNING</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51880</externalId>
          <summary>Representantforslag om bedre tilrettelegging for førstegangsetablerere i boligmarkedet</summary>
          <description>Representantforslag fra stortingsrepresentantene Robert Eriksson, Ketil Solvik-Olsen, Jørund Rytman, Gjermund Hagesæter og Åge Starheim om bedre tilrettelegging for førstegangsetablerere i boligmarkedet</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-04-18T00:00:00</lastUpdate>
          <reference>Dokument 8:29 S (2011-2012), Innst. 245 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>BOLIGSAKER</topic>
            <topic>BYGNINGSVESEN</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>FINANSER</topic>
            <topic>SÆRAVGIFTER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51870</externalId>
          <summary>Endring av Prop. 1 S om statsbudsjettet for 2012 (Saldering)</summary>
          <description>Endring av Prop. 1 S om statsbudsjettet for 2012 (Saldering)</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-24T00:00:00</lastUpdate>
          <reference>Prop. 1 S Tillegg 5 (2011-2012), Innst. 3 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51871</externalId>
          <summary>Endring av Prop. 1 S om statsbudsjettet for 2012 (refusjon av legemidlet ticagrelor)</summary>
          <description>Endring av Prop. 1 S om statsbudsjettet for 2012 (refusjon av legemidlet ticagrelor)</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-24T00:00:00</lastUpdate>
          <reference>Prop. 1 S Tillegg 4 (2011-2012), Innst. 2 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51872</externalId>
          <summary>Endring av Prop. 1 S om statsbudsjettet for 2012</summary>
          <description>Endring av Prop. 1 S om statsbudsjettet for 2012 under Kommunal- og regionaldepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-24T00:00:00</lastUpdate>
          <reference>Prop. 1 S Tillegg 3 (2011-2012), Innst. 2 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51208</externalId>
          <summary>Finanstalen</summary>
          <description>Finansministerens redegjørelse om regjeringens forslag til statsbudsjett og om nasjonalbudsjettet for 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-24T00:00:00</lastUpdate>
          <reference></reference>
          <documentGroup>redegjørelse</documentGroup>
          <topics>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51378</externalId>
          <summary>Statsbudsjettet 2012</summary>
          <description>Finansinnstillingen - nasjonalbudsjettet og statsbudsjettet 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-24T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 2 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>REDNINGSTJENESTE</topic>
            <topic>BARNEHAGER</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51380</externalId>
          <summary>Rammeoverføringer, Skatte-, avgifts- og tollvedtak, utbytte mv. 2012</summary>
          <description>Innst. 3S Rammeoverføringer, skatter- og avgiftsvedtak, utbytte mv.</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-24T00:00:00</lastUpdate>
          <reference>Prop. 1 S (2011-2012), Innst. 3 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>POST</topic>
            <topic>ENERGI</topic>
            <topic>KULTUR</topic>
            <topic>FISKERIER</topic>
            <topic>SOSIALVESEN</topic>
            <topic>RETTSVESEN</topic>
            <topic>SIVILRETT</topic>
            <topic>FORURENSNING</topic>
            <topic>NATURVERN</topic>
            <topic>LANDBRUK</topic>
            <topic>VEGTRAFIKK</topic>
            <topic>FUNKSJONSHEMMEDE</topic>
            <topic>SKATTEFRADRAG</topic>
            <topic>SKATTER</topic>
            <topic>HELSEVESEN</topic>
            <topic>LANDBRUKSPRODUKTER</topic>
            <topic>KRINGKASTING</topic>
            <topic>ELEKTRISITET</topic>
            <topic>AVGIFTER</topic>
            <topic>MERVERDIAVGIFT</topic>
            <topic>TOLL</topic>
            <topic>STATSLÅN</topic>
            <topic>BANKER</topic>
            <topic>STATSBANKER</topic>
            <topic>HAVBRUK</topic>
            <topic>UTENRIKSHANDEL</topic>
            <topic>JERNBANER</topic>
            <topic>LUFTFART</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>NÆRINGSUTVIKLING</topic>
            <topic>BERGVERK</topic>
            <topic>STATSBEDRIFTER</topic>
            <topic>JORDBRUK</topic>
            <topic>FYLKESKOMMUNENES ØKONOMI</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>MILJØVERN</topic>
            <topic>LOTTERI OG SPILL</topic>
            <topic>SJØFART</topic>
            <topic>SIKKERHET TIL SJØS</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>STATSEIENDOMMER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>SVALBARD</topic>
            <topic>STATOIL ASA</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
            <topic>FOLKEHELSE</topic>
            <topic>OLJEUTVINNING</topic>
            <topic>SÆRAVGIFTER</topic>
            <topic>SKOGBRUK</topic>
            <topic>RUSMIDLER</topic>
            <topic>DISTRIKTSPOLITIKK</topic>
            <topic>INDUSTRI</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51381</externalId>
          <summary>Skatter, avgifter og toll 2012 - lovdelen</summary>
          <description>Innst. 4 L Skatter og avgifter - lovendringer</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-24T00:00:00</lastUpdate>
          <reference>Prop. 1 LS (2011-2012), Innst. 4 L (2011-2012), Lovvedtak 9-17 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>RETTSVESEN</topic>
            <topic>DOMSTOLER</topic>
            <topic>SKATTEADMINISTRASJON</topic>
            <topic>SKATTEFRADRAG</topic>
            <topic>SKATTER</topic>
            <topic>AVGIFTER</topic>
            <topic>MERVERDIAVGIFT</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
            <topic>SÆRAVGIFTER</topic>
            <topic>RUSMIDLER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51628</externalId>
          <summary>Endring av Prop. 1 S om statsbudsjettet for 2012</summary>
          <description>Endring av Prop. 1 S om statsbudsjettet for 2012 under Forsvarsdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-24T00:00:00</lastUpdate>
          <reference>Prop. 1 S Tillegg 1 (2011-2012), Innst. 2 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51766</externalId>
          <summary>Endringar av Prop. 1 S om statsbudsjettet for 2012 under Landbruks- og matdepartementet</summary>
          <description>Endringar av Prop. 1 S om statsbudsjettet for 2012 under Landbruks- og matdepartementet</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-24T00:00:00</lastUpdate>
          <reference>Prop. 1 S Tillegg 2 (2011-2012), Innst. 2 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51764</externalId>
          <summary>Endring av Prop. 1 S om statsbudsjettet for 2012 (Saldering)</summary>
          <description>Endring av Prop. 1 S om statsbudsjettet for 2012 (Saldering)</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-24T00:00:00</lastUpdate>
          <reference>Prop. 1 S Tillegg 5 (2011-2012), Innst. 2 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51404</externalId>
          <summary>Nasjonalbudsjettet 2012</summary>
          <description>Nasjonalbudsjettet 2012</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-24T00:00:00</lastUpdate>
          <reference>Meld. St. 1 (2011-2012), Innst. 2 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51419</externalId>
          <summary>Skatter, avgifter og toll 2012</summary>
          <description>Innst. 3 S Rammeoverføringer, skatter- og avgiftsvedtak, utbytte mv.</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-24T00:00:00</lastUpdate>
          <reference>Prop. 1 LS (2011-2012), Innst. 3 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>ENERGI</topic>
            <topic>SOSIALVESEN</topic>
            <topic>FORURENSNING</topic>
            <topic>LANDBRUK</topic>
            <topic>VEGTRAFIKK</topic>
            <topic>SKATTEFRADRAG</topic>
            <topic>SKATTER</topic>
            <topic>HELSEVESEN</topic>
            <topic>LANDBRUKSPRODUKTER</topic>
            <topic>ELEKTRISITET</topic>
            <topic>AVGIFTER</topic>
            <topic>MERVERDIAVGIFT</topic>
            <topic>TOLL</topic>
            <topic>UTENRIKSHANDEL</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>BERGVERK</topic>
            <topic>FYLKESKOMMUNENES ØKONOMI</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>MILJØVERN</topic>
            <topic>TELEKOMMUNIKASJONER</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
            <topic>FOLKEHELSE</topic>
            <topic>OLJEUTVINNING</topic>
            <topic>SÆRAVGIFTER</topic>
            <topic>RUSMIDLER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51777</externalId>
          <summary>Redegjørelse av utenriksministeren om viktige EU- og EØS-saker</summary>
          <description>Redegjørelse av utenriksministeren om viktige EU- og EØS-saker</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-22T00:00:00</lastUpdate>
          <reference></reference>
          <documentGroup>redegjørelse</documentGroup>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50935</externalId>
          <summary>Protokoll om beredskap, aksjon og samarbeid ved forurensingsuhell med farlige og skadelige stoffer,</summary>
          <description>Samtykke til tiltredelse av protokoll av 15. mars 2000 om beredskap, aksjon og samarbeid ved forurensingsuhell med farlige og skadelige stoffer, til konvensjon av 30. november 1990</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-22T00:00:00</lastUpdate>
          <reference>Prop. 133 S (2010-2011), Innst. 20 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>FORURENSNING</topic>
            <topic>MILJØVERN</topic>
            <topic>SJØFART</topic>
            <topic>SIKKERHET TIL SJØS</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51215</externalId>
          <summary>Oppheving av hermetikkavgiftsloven og endringar i enkelte andre lover</summary>
          <description>Oppheving av hermetikkavgiftsloven og endringar i enkelte andre lover</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-22T00:00:00</lastUpdate>
          <reference>Prop. 151 L (2010-2011), Innst. 29 L (2011-2012), Lovvedtak 8 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>FISKERIER</topic>
            <topic>FISKEOMSETNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50866</externalId>
          <summary>Representantforslag om å styrke oljevernberedskapen</summary>
          <description>Representantforslag fra stortingsrepresentantene Anders Anundsen, Bård Hoksrud, Per Arne Olsen, Ulf Leirstein, Jan-Henrik Fredriksen, Ingebjørg Godskesen, Arne Sortevik og Oskar J. Grimstad om å styrke oljevernberedskapen</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-22T00:00:00</lastUpdate>
          <reference>Dokument 8:166 S (2010-2011), Innst. 45 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>REDNINGSTJENESTE</topic>
            <topic>FORURENSNING</topic>
            <topic>MILJØVERN</topic>
            <topic>SJØFART</topic>
            <topic>SIKKERHET TIL SJØS</topic>
          </topics>
        </issue>
        <issue>
          <externalId>49343</externalId>
          <summary>Fiskeriavtalane Noreg har inngått med andre land for 2011 og fisket etter avtalane i 2009 og 2010</summary>
          <description>Fiskeriavtalane Noreg har inngått med andre land for 2011 og fisket etter avtalane i 2009 og 2010.</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-22T00:00:00</lastUpdate>
          <reference>Meld. St. 26 (2010-2011), Innst. 46 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>FISKERIER</topic>
            <topic>INTERNASJONALT SAMARBEID</topic>
            <topic>UTENRIKSSAKER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51893</externalId>
          <summary>Valg av medlemmer og varamedlemmer til Nobelkomiteen</summary>
          <description>Valg av medlemmer og varamedlemmer til Nobelkomiteen</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-22T00:00:00</lastUpdate>
          <reference>Innst. 59 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>FREDSARBEID</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51897</externalId>
          <summary>En særskilt komité til å behandle redegjørelse fra justisministeren og forsvarsministeren holdt i Stortingets møte 10. november 2011</summary>
          <description>Innberetning fra valgkomiteen om en særskilt komité til å behandle redegjørelse fra justisministeren og forsvarsministeren holdt i Stortingets møte 10. november 2011</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-18T00:00:00</lastUpdate>
          <reference>Innberetning 3 (2011-2012)</reference>
          <documentGroup>innberetning</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>REGJERINGEN</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>STATSFORFATNING</topic>
            <topic>SIVIL BEREDSKAP</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51874</externalId>
          <summary>Innberetning fra valgkomiteen om endringer i de faste komiteers sammensetning</summary>
          <description>Innberetning fra valgkomiteen om endringer i de faste komiteers sammensetning</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-18T00:00:00</lastUpdate>
          <reference>Innberetning 2 (2011-2012)</reference>
          <documentGroup>innberetning</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51875</externalId>
          <summary>Valg av et varamedlem til Stortingets delegasjon til NATOs parlamentariske forsamling</summary>
          <description>Valg av et varamedlem til Stortingets delegasjon til NATOs parlamentariske forsamling</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-18T00:00:00</lastUpdate>
          <reference>Innst. 53 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>NATO</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51842</externalId>
          <summary>Representantforslag om oppfølging av Stortingets intensjon vedrørende barnebidrag</summary>
          <description>Representantforslag fra stortingsrepresentantene Solveig Horne, Ib Thomsen, Øyvind Korsberg og Karin S. Woldseth om oppfølging av Stortingets intensjon vedrørende barnebidrag</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-11-18T00:00:00</lastUpdate>
          <reference>Dokument 8:25 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>FAMILIE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50181</externalId>
          <summary>Tidlig innsats og bedre læring for elever med særskilte behov (unntatt kapittel 6)</summary>
          <description>(Unnt. kap. 6) Læring og fellesskap.Tidlig innsats og gode læringsmiljøer for barn, unge og voksne med særlige behov</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-18T00:00:00</lastUpdate>
          <reference>Meld. St. 18 (2010-2011), unntatt kap. 6, Innst. 50 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>UTDANNING</topic>
            <topic>SPESIALUNDERVISNING</topic>
            <topic>FAMILIE</topic>
            <topic>BARNEHAGER</topic>
            <topic>FORSKNING</topic>
            <topic>VIDEREGÅENDE SKOLER</topic>
            <topic>GRUNNSKOLE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50599</externalId>
          <summary>Representantforslag vedrørende å åpne for forsøk med muntlige karakterer i 7. klasse på barnetrinnet</summary>
          <description>Representantforslag fra stortingsrepresentantene Jan Tore Sanner, Elisabeth Aspaker, Svein Harberg, Henning Warloe og Peter Skovholt Gitmark om å åpne for forsøk med muntlige karakterer i 7. klasse på barnetrinnet</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-18T00:00:00</lastUpdate>
          <reference>Dokument 8:152 S (2010-2011), Innst. 23 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>UTDANNING</topic>
            <topic>GRUNNSKOLE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>49348</externalId>
          <summary>Mot en grønnere utvikling - om sammenhengen i miljø- og utviklingspolitikken</summary>
          <description>Mot en grønnere utvikling - om sammenhengen i miljø- og utviklingspolitikken</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-17T00:00:00</lastUpdate>
          <reference>Meld. St. 14 (2010-2011), Innst. 44 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>MILJØVERN</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>UTVIKLINGSHJELP</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51214</externalId>
          <summary>Hjelp til tørkeofre på Afrikas Horn</summary>
          <description>Hjelp til tørkeofre på Afrikas Horn</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-17T00:00:00</lastUpdate>
          <reference>Prop. 152 S (2010-2011), Innst. 19 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>FN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50939</externalId>
          <summary>Samtykke til at Noreg sluttar seg til reform av styresamansetjing, kvotar og røysterett i IMF</summary>
          <description>Samtykke til at Noreg sluttar seg til reform av styresamansetjing, kvotar og røysterett i IMF</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-17T00:00:00</lastUpdate>
          <reference>Prop. 142 S (2010-2011), Innst. 40 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>ØKONOMISK SAMARBEID</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50948</externalId>
          <summary>SAS AB - konvertible obligasjonslån</summary>
          <description>SAS AB - konvertible obligasjonslån</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-15T00:00:00</lastUpdate>
          <reference>Prop. 145 S (2010-2011), Innst. 48 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>LUFTFART</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>NORDISK SAMARBEID</topic>
            <topic>FINANSER</topic>
            <topic>AKSJER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50947</externalId>
          <summary>Endringar i sjøloven (gjennomføring av direktiv 2009/18/EF om gransking av sjøulykker mv.)</summary>
          <description>Endringar i sjølova (gjennomføring av direktiv 2009/18/EF om gransking av sjøulykker mv.)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-15T00:00:00</lastUpdate>
          <reference>Prop. 143 L (2010-2011), Innst. 51 L (2011-2012), Lovvedtak 7 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>SJØFART</topic>
            <topic>SIKKERHET TIL SJØS</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>49301</externalId>
          <summary>Lov om næringsberedskap</summary>
          <description>Lov om næringsberedskap (næringsberedskapsloven)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-15T00:00:00</lastUpdate>
          <reference>Prop. 111 L (2010-2011), Innst. 47 L (2011-2012), Lovvedtak 6 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Næringskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>SIVIL BEREDSKAP</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50135</externalId>
          <summary>Representantforslag om gjennomgang av grunnlaget for beregning av tilskudd til friskoler</summary>
          <description>Representantforslag fra stortingsrepresentantene  Elisabeth Aspaker,  Henning Warloe og Svein Harberg om gjennomgang av grunnlaget for beregning av tilskudd til friskoler</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-11T00:00:00</lastUpdate>
          <reference>Dokument 8:134 S (2010-2011), Innst. 24 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>UTDANNING</topic>
            <topic>PRIVATSKOLER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50298</externalId>
          <summary>Representantforslag om å utarbeide undervisningsmateriell om norske krigsseileres innsats under andre verdenskrig</summary>
          <description>Representantforslag fra stortingsrepresentantene Bente Thorsen, Tord Lien og Jon Georg Dale om å utarbeide undervisningsmateriell om norske krigsseileres innsats under andre verdenskrig</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-11T00:00:00</lastUpdate>
          <reference>Dokument 8:142 S (2010-2011), Innst. 22 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kirke-, utdannings- og forskningskomiteen</committee>
          <topics>
            <topic>UTDANNING</topic>
            <topic>SJØFART</topic>
            <topic>SJØFOLK</topic>
            <topic>GRUNNSKOLE</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51718</externalId>
          <summary>Innstilling fra Stortingets presidentskap om endring av retningslinjene for stortingsgruppenes og uavhengige representanters bruk av tildelte midler</summary>
          <description>Endring av retningslinjene for stortingsgruppenes og uavhengige representanters bruk av tildelte midler</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-11T00:00:00</lastUpdate>
          <reference>Innst. 39 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Stortingets presidentskap</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>POLITISKE PARTIER</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51719</externalId>
          <summary>Valg av et varamedlem til Stortingets delegasjon til EFTA- parlamentarikerkomiteen og Den felles EØS-parlamentarikerkomiteen</summary>
          <description>Valg av et varamedlem til Stortingets delegasjon til EFTA- parlamentarikerkomiteen og Den felles EØS-parlamentarikerkomiteen</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Innst. 38 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51216</externalId>
          <summary>Merutgifter til norske styrkers deltakelse i operasjonen i Libya</summary>
          <description>Merutgifter til norske styrkers deltakelse i operasjonen i Libya i perioden 24. juni til 1. august 2011</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Prop. 150 S (2010-2011), Innst. 25 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Utenriks- og forsvarskomiteen</committee>
          <topics>
            <topic>FORSVAR</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>NATO</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50323</externalId>
          <summary>Representantforslag om ny fordelingsnøkkel for tippemidlene</summary>
          <description>Representantforslag fra stortingsrepresentantene Øyvind Korsberg, Solveig Horne og Ib Thomsen om ny fordelingsnøkkel for tippemidlene</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Dokument 8:144 S (2010-2011), Innst. 31 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>IDRETT</topic>
            <topic>LOTTERI OG SPILL</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50210</externalId>
          <summary>Representantforslag om endring av regelverket for yrkesskadeforsikring</summary>
          <description>Representantforslag fra stortingsrepresentantene Trine Skei Grande og Borghild Tenden om endring av regelverket for yrkesskadeforsikring</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Dokument 8:138 S (2010-2011), Innst. 32 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>SOSIALVESEN</topic>
            <topic>FORSIKRING</topic>
            <topic>FORSVAR</topic>
            <topic>TRYGDER</topic>
            <topic>FINANSER</topic>
            <topic>MILITÆRT PERSONELL</topic>
            <topic>ARBEIDSMILJØ</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50829</externalId>
          <summary>Representantforslag om opphevelse av § 7 annet ledd i lov om Stortingets ombudsmann for forvaltningen</summary>
          <description>Representantforslag fra stortingsrepresentantene Anders Anundsen, Martin Kolberg, Per Olaf Lundteigen, Per-Kristian Foss, Hans Olav Syversen, Hallgeir H. Langeland og Trine Skei Grande om opphevelse av § 7 annet ledd i lov om Stortingets ombudsmann for forvaltningen for å sikre Sivilombudsmannen adgang til forvaltningens saksdokumenter, samt enkelte andre rettinger</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Dokument 8:161 L (2010-2011), Innst. 35 L (2011-2012), Lovvedtak 1 (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGETS OMBUDSMANN FOR FORVALTNINGEN</topic>
            <topic>STATSFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50605</externalId>
          <summary>Representantforslag fra stortingsrepresentantene Trond Helleland, Michael Tetzschner, Siri A. Meling og Per-Kristian Foss om å sikre vekstfremmende arbeidsinnvandring</summary>
          <description>Representantforslag fra stortingsrepresentantene Trond Helleland, Michael Tetzschner, Siri A. Meling og Per-Kristian Foss om å sikre vekstfremmende arbeidsinnvandring</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Dokument 8:150 S (2010-2011), Innst. 36 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kommunal- og forvaltningskomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>INNVANDRERE</topic>
            <topic>NÆRINGSLIV</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50219</externalId>
          <summary>Endringar i folketrygdlova og i enkelte andre pensjonslover</summary>
          <description>Endringar i lov om folketrygd, lov om Statens pensjonskasse og i enkelte andre pensjonslover (presiseringar mv. i samband med pensjonsreforma)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Prop. 114 L (2010-2011), Innst. 34 L (2011-2012), Lovvedtak 2 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50877</externalId>
          <summary>Årsmelding 2010 for Pensjonsordningen for stortingsrepresentanter</summary>
          <description>Årsmelding 2010 for Pensjonsordningen for stortingsrepresentanter</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Meld. St. 27 (2010-2011), Innst. 37 S (2011-2012)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>SOSIALVESEN</topic>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>TRYGDER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51029</externalId>
          <summary>Endringer i vegtrafikklov 18. juni 1965 nr. 4 (utvidet adgang til pålegg om trafikksikkerhetstiltak mv.)</summary>
          <description>Endringer i vegtrafikklov 18. juni 1965 nr. 4 (utvidet adgang til pålegg om trafikksikkerhetstiltak mv.)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Prop. 144 L (2010-2011), Innst. 30 L (2011-2012), Lovvedtak 5 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Transport- og kommunikasjonskomiteen</committee>
          <topics>
            <topic>KOMMUNIKASJON</topic>
            <topic>SKOLER</topic>
            <topic>UTDANNING</topic>
            <topic>FYLKER</topic>
            <topic>VEGTRAFIKK</topic>
            <topic>KOMMUNER</topic>
            <topic>LOKALFORVALTNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50937</externalId>
          <summary>Endringer i betalingssystemloven og finansieringsvirksomhetsloven mv.</summary>
          <description>Endringer i betalingssystemloven og finansieringsvirksomhetsloven mv. (gjennomføring av EØS-regler som svarer til direktiv 2009/44/EF og direktiv 2009/110/EF)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Prop. 139 L (2010-2011), Innst. 28 L (2011-2012), Lovvedtak 3 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>BANKER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51185</externalId>
          <summary>Lov om verdipapirfond</summary>
          <description>Lov om verdipapirfond (verdipapirfondloven)</description>
          <type>lovsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Prop. 149 L (2010-2011), Innst. 27 L (2011-2012), Lovvedtak 4 (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>EFTA/EU</topic>
            <topic>FINANSER</topic>
            <topic>AKSJER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51252</externalId>
          <summary>Statsgaranti og tilsagn om statlig tilskudd for å arrangere olympiske vinterleker for ungdom i 2016</summary>
          <description>Statsgaranti og tilsagn om statlig tilskudd for å arrangere olympiske vinterleker for ungdom i 2016</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Prop. 153 S (2010-2011), Innst. 33 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>IDRETT</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50938</externalId>
          <summary>Samtykke til å sette i kraft en skatteavtale mellom Norge og India</summary>
          <description>Samtykke til å sette i kraft en skatteavtale mellom Norge og India, undertegnet i New Delhi 2. februar 2011</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-11-10T00:00:00</lastUpdate>
          <reference>Prop. 140 S (2010-2011), Innst. 26 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>SKATTEAVTALER</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>TRAKTATER</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51250</externalId>
          <summary>Tilleggsbevilgninger i statsbudsjettet 2011 i forbindelse med angrepene mot regjeringskvartalet og på Utøya.</summary>
          <description>Tilleggsbevilgninger i statsbudsjettet 2011 i forbindelse med angrepene mot regjeringskvartalet og på Utøya.</description>
          <type>budsjett</type>
          <status>behandlet</status>
          <lastUpdate>2011-10-27T00:00:00</lastUpdate>
          <reference>Prop. 154 S (2010-2011), Innst. 21 S (2011-2012)</reference>
          <documentGroup>proposisjon</documentGroup>
          <committee>Finanskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>KULTUR</topic>
            <topic>RETTSVESEN</topic>
            <topic>DOMSTOLER</topic>
            <topic>FENGSLER</topic>
            <topic>REGJERINGEN</topic>
            <topic>FYLKER</topic>
            <topic>DEPARTEMENTER</topic>
            <topic>FORSVAR</topic>
            <topic>HELSEVESEN</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>KULTURVERN</topic>
            <topic>KOMMUNENES ØKONOMI</topic>
            <topic>POLITI OG PÅTALEMYNDIGHET</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>STATSEIENDOMMER</topic>
            <topic>SIVIL BEREDSKAP</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51581</externalId>
          <summary>Valg av medlemmer og varamedlemmer til Nordisk Råd</summary>
          <description>Valg av medlemmer og varamedlemmer til Nordisk Råd</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-10-27T00:00:00</lastUpdate>
          <reference>Innst. 18 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>NORDISK SAMARBEID</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51589</externalId>
          <summary>Den Norske Nobelkomité meddeler at Nobels fredspris for 2011 er tildelt Ellen Johnson Sirleaf, Leymah Gbowee og Tawakkul Karman</summary>
          <description>Den Norske Nobelkomité meddeler at Nobels fredspris for 2011 er tildelt Ellen Johnson Sirleaf, Leymah Gbowee og Tawakkul Karman</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-10-20T00:00:00</lastUpdate>
          <reference></reference>
          <documentGroup>ikke_spesifisert</documentGroup>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>FREDSARBEID</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51522</externalId>
          <summary>Representantforslag om å endre lovverket til å bli tilpasset retningslinjer for amatør- og proffboksing</summary>
          <description>Representantforslag fra stortingsrepresentantene Øyvind Korsberg, Solveig Horne, Ib Thomsen og Mette Hanekamhaug om å endre lovverket til å bli tilpasset retningslinjer for amatør- og proffboksing</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-10-20T00:00:00</lastUpdate>
          <reference>Dokument 8:7 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
        </issue>
        <issue>
          <externalId>51534</externalId>
          <summary>Representantforslag om å nedsette et offentlig utvalg for å utrede lovfestet minstelønn</summary>
          <description>Representantforslag fra stortingsrepresentantene Robert Eriksson, Laila Marie Reiertsen og Vigdis Giltun om å nedsette et offentlig utvalg for å utrede lovfestet minstelønn - tiltak mot uønskede arbeidsbetingelser i det norske arbeidsmarkedet</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-10-20T00:00:00</lastUpdate>
          <reference>Dokument 8:6 S (2011-2012)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
        </issue>
        <issue>
          <externalId>51503</externalId>
          <summary>Budsjettkapitler og utkast til romertallsvedtak vedrørende forslaget til statsbudsjett for 2012</summary>
          <description>Fordeling til komiteene av rammeområder med budsjettkapitler og utkast til romertallsvedtak vedrørende forslaget til statsbudsjett for 2012</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-10-12T00:00:00</lastUpdate>
          <reference>Innst. 1 S (2011-2012)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Stortingets presidentskap</committee>
          <topics>
            <topic>STATSFORFATNING</topic>
            <topic>STATSBUDSJETTET</topic>
            <topic>FINANSER</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51478</externalId>
          <summary>Endringer i de faste komiteers sammensetning</summary>
          <description>Innberetning fra valgkomiteen om endringer i de faste komiteers sammensetning</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-10-11T00:00:00</lastUpdate>
          <reference>Innberetning 1 (2011-2012)</reference>
          <documentGroup>innberetning</documentGroup>
          <committee>Valgkomiteen</committee>
          <topics>
            <topic>STORTINGSREPRESENTANTER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGET</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51239</externalId>
          <summary>Endringer i Stortingets forretningsorden - behandling av anmodningsforslag som fremmes i tilknytning til lovforslag</summary>
          <description>Endringer i Stortingets forretningsorden - behandling av anmodningsforslag som fremmes i tilknytning til lovforslag</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-10-11T00:00:00</lastUpdate>
          <reference>Innst. 446 S (2010-2011)</reference>
          <documentGroup>innstillingssaker</documentGroup>
          <committee>Stortingets presidentskap</committee>
          <topics>
            <topic>STATSFORFATNING</topic>
            <topic>STORTINGET</topic>
            <topic>STORTINGETS FORRETNINGSORDEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>51207</externalId>
          <summary>Trontale</summary>
          <description>Hans Majestet Kongens tale til det 156. storting ved dets åpning og melding om Noregs rikes tilstand og styring (trontale)</description>
          <type>alminneligsak</type>
          <status>behandlet</status>
          <lastUpdate>2011-10-04T00:00:00</lastUpdate>
          <reference></reference>
          <documentGroup>redegjørelse</documentGroup>
          <topics>
            <topic>REGJERINGEN</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>52838</externalId>
          <summary>Statsrådsprotokollene for tidsrommet 1. juli 2011 til 31. desember 2011</summary>
          <description>Statsrådsprotokollene for tidsrommet 1. juli 2011 til 31. desember 2011</description>
          <type>alminneligsak</type>
          <status>varslet</status>
          <lastUpdate>2011-10-01T00:00:00</lastUpdate>
          <reference></reference>
          <documentGroup>ikke_spesifisert</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </issue>
        <issue>
          <externalId>52760</externalId>
          <summary>Grunnlovsforslag</summary>
          <description>Grunnlovsforslag fremsatt på det 156. Storting:</description>
          <type>alminneligsak</type>
          <status>mottatt</status>
          <lastUpdate>2011-10-01T00:00:00</lastUpdate>
          <reference>Dokument 12 (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
        </issue>
        <issue>
          <externalId>53466</externalId>
          <summary>Redegjørelse av fornyings-, administrasjons- og kirkeministeren om arbeidet med å fjerne grensehindre i Norden</summary>
          <description>Redegjørelse av fornyings-, administrasjons- og kirkeministeren om arbeidet med å fjerne grensehindre i Norden</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-10-01T00:00:00</lastUpdate>
          <reference></reference>
          <documentGroup>redegjørelse</documentGroup>
          <topics>
            <topic>UTENRIKSSAKER</topic>
            <topic>NORDISK SAMARBEID</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53473</externalId>
          <summary>Årsrapport for 2011 fra Stortingets utvalg for rettferdsvederlag</summary>
          <description>Årsrapport for 2011 fra Stortingets utvalg for rettferdsvederlag</description>
          <type>alminneligsak</type>
          <status>mottatt</status>
          <lastUpdate>2011-10-01T00:00:00</lastUpdate>
          <reference>Dokument 17 (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <topics>
            <topic>RETTFERDSVEDERLAG</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>53485</externalId>
          <summary>Utenriksministerens behandling av tilskudd til Senteret for Nordområdelogistikk</summary>
          <description>Utenriksministerens behandling av tilskudd til Senteret for Nordområdelogistikk</description>
          <type>alminneligsak</type>
          <status>mottatt</status>
          <lastUpdate>2011-10-01T00:00:00</lastUpdate>
          <reference></reference>
          <documentGroup>ikke_spesifisert</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
        </issue>
        <issue>
          <externalId>51091</externalId>
          <summary>Felles ansvar for eit godt og anstendig arbeidsliv</summary>
          <description>Felles ansvar for eit godt og anstendig arbeidsliv. Arbeidsforhold, arbeidsmiljø og sikkerheit
      </description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-09-30T00:00:00</lastUpdate>
          <reference>Meld. St. 29 (2010-2011)</reference>
          <documentGroup>melding</documentGroup>
          <committee>Arbeids- og sosialkomiteen</committee>
          <topics>
            <topic>ARBEIDSLIV</topic>
            <topic>ARBEIDSVILKÅR</topic>
            <topic>ARBEIDSMILJØ</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50778</externalId>
          <summary>Representantforslag om bedre beskyttelse av barn som er utsatt for menneskehandel.</summary>
          <description>Representantforslag fra stortingsrepresentantene Linda C. Hofstad Helleland,  Sonja Irene Sjøli,  André Oktay Dahl,  Michael Tetzschner om bedre beskyttelse av barn som er utsatt for menneskehandel.</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-06-17T00:00:00</lastUpdate>
          <reference>Dokument 8:157 S (2010-2011)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Familie- og kulturkomiteen</committee>
          <topics>
            <topic>FAMILIE</topic>
            <topic>BARNEVERN</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>50867</externalId>
          <summary>Representantforslag om at Riksrevisjonen foretar ensærskilt undersøkelse av anskaffelsesprosessen og grunnlaget for valget av Joint Strike Fighter (JSF) (F-35)</summary>
          <description>Representantforslag fra stortingsrepresentantene Anders Anundsen og Jan Arild Ellingsen om at Riksrevisjonen foretar en særskilt undersøkelse av anskaffelsesprosessen og grunnlaget for valget av Joint Strike Fighter (JSF) (F-35)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2011-06-17T00:00:00</lastUpdate>
          <reference>Dokument 8:167 S (2010-2011)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RIKSREVISJONEN</topic>
            <topic>FORSVAR</topic>
            <topic>FORSVARSMATERIELL</topic>
            <topic>STATSFORFATNING</topic>
          </topics>
        </issue>
        <issue>
          <externalId>46258</externalId>
          <summary>Representantforslag om å innføre kumulering ved stortingsvalg</summary>
          <description>Representantforslag fra stortingsrepresentantene Erna Solberg, Per-Kristian Foss, Jan Tore Sanner og Ingjerd Schou om å innføre kumulering ved stortingsvalg</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2010-03-26T00:00:00</lastUpdate>
          <reference>Dokument 8:101 S (2009-2010)</reference>
          <documentGroup>representantforslag</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>VALG</topic>
            <topic>STATSFORFATNING</topic>
            <topic>POLITISKE PARTIER</topic>
          </topics>
        </issue>
        <issue>
          <externalId>40684</externalId>
          <summary>Grunnlovsforslag</summary>
          <description>Grunnlovsforslag fremsatt på det 152. Storting:</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2009-10-13T00:00:00</lastUpdate>
          <reference>Dokument nr. 12 (2007-2008)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>STATSFORFATNING</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>41056</externalId>
          <summary>Grunnlovsforslag om ny organisering av forholdet mellom staten og Den norske kirke</summary>
          <description>Grunnlovsforslag fra Inger S. Enger, Trygve Slagsvold Vedum, Per Olaf Lundteigen, Anna Cecelie Brustad Moe og Kari Mette Prestrud om endringer i Grunnloven §§ 21, 22 og 27 med sikte på ny organisering av forholdet mellom staten og Den norske kirke</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:25 (2007-2008), Innst. 233 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>STATENS PERSONALPOLITIKK</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>40703</externalId>
          <summary>Grunnlovsforslag om bestemmelser om statskirkeordningen, statsskikk og menneskerettighetsforpliktelser</summary>
          <description>Innstilling fra kontroll- og konstitusjonskomiteen om grunnlovsforslag fra Torfinn Opheim, Anders Anundsen, Ine Marie Eriksen Søreide, Rolf Reikvam, Dagrun Eriksen, Rune J. Skjælaaen og Odd Einar Dørum endringer i Grunnloven §§ 2, 4,12, 16, 21, 22 og 27 med sikte på ny organisering av forholdet mellom staten og Den norske kirke</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:2 (2007-2008), Innst. 233 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>40707</externalId>
          <summary>Grunnlovsforslag om retten til bolig</summary>
          <description>Grunnlovsforslag fra Inga Marte Thorkildsen, Hallgeir H. Langeland og Karin Andersen om ny § 110 d alternativt ny § 110 e i Grunnloven (retten til bolig)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2008-09-30T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:4 (2007-2008)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>BOLIGSAKER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>40708</externalId>
          <summary>Grunnlovsforslag om vern mot diskriminering på grunn av kjønn og minoriteter</summary>
          <description>Grunnlovsforslag fra Karin Andersen, Hallgeir H. Langeland, May Hansen, Lars Peder Brekk og André N. Skjelstad om innføring av en egen grunnlovsbestemmelse om vern mot diskriminering på grunn av kjønn og diskriminering av minoriteter</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2008-09-30T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:5 (2007-2008)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>LIKESTILLING</topic>
            <topic>FAMILIE</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>41039</externalId>
          <summary>Grunnlovsforslag om ny organisering av forholdet mellom staten og Den norske kirke</summary>
          <description>Innstilling fra kontroll- og konstitusjonskomiteen om grunnlovsforslag fra Torfinn Opheim, Anders Anundsen, Ine Marie Eriksen Søreide, Rolf Reikvam, Dagrun Eriksen, Rune J. Skjælaaen og Odd Einar Dørum endringer i Grunnloven §§ 2, 4,12, 16, 21, 22 og 27 med sikte på ny organisering av forholdet mellom staten og Den norske kirke</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:10 (2007-2008), Innst. 233 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>41041</externalId>
          <summary>Grunnlovsforslag om ytringsfrihet og religion</summary>
          <description>Grunnlovsforslag fra Odd Einar Dørum og Gunnar Kvassheim om endringer i Grunnloven § 100 (om ytringsfrihet og religion)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2008-09-30T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:12 (2007-2008)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>TROSSAMFUNN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>41042</externalId>
          <summary>Grunnlovsforslag om lokaldemokratiet</summary>
          <description>Grunnlovsforslag fra Svein Roald Hansen, Tore Hagebakken, Berit Brørby, Ivar Skulstad, Øystein Djupedal, Bent Høie, Per-Willy Amundsen, Åge Starheim, Ib Thomsen, Ole T. Lånke, Lars Sponheim og Trygve Slagsvold Vedum om tillegg i Grunnloven § 49 (om grunnlovsfesting av lokaldemokratiet)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2008-09-30T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:13 (2007-2008)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>KOMMUNER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>41048</externalId>
          <summary>Grunnlovsforslag om språklig fornyelse av Grunnloven</summary>
          <description>Grunnlovsforslag fra Carl I. Hagen og Finn-Erik Vinje, vedtatt til fremsettelse av Carl I. Hagen om språklig fornyelse av Grunnloven</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2008-09-30T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:16 (2007-2008)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>KULTUR</topic>
            <topic>SPRÅK</topic>
            <topic>STATSFORFATNING</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>41049</externalId>
          <summary>Grunnlovsforslag om rett til asyl</summary>
          <description>Grunnlovsforslag fra Avhild Hedstein og Anne Margrethe Larsen om ny § 100 d i Grunnloven (om rett til asyl)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2008-09-30T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:17 (2007-2008)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>INNVANDRERE</topic>
            <topic>STATSFORFATNING</topic>
            <topic>LOKALFORVALTNING</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>41050</externalId>
          <summary>Grunnlovsforslag om privatlivets fred og personopplysninger</summary>
          <description>Grunnlovsforslag fra Vera Lysklætt og Odd Einar Dørum om ny § 100 b og ny § 100 c i Grunnloven (om privatlivets fred og personopplysninger)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2008-09-30T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:18 (2007-2008)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>PERSONVERN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>41051</externalId>
          <summary>Grunnlovsforslag om likhet for loven og om grunnleggende rettssikkerhetsgarantier</summary>
          <description>Grunnlovsforslag fra Odd Einar Dørum og Gunvald Ludvigsen om ny § 100 a i Grunnloven (om likhet for loven og om grunnleggende rettssikkerhetsgarantier)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2008-09-30T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:19 (2007-2008)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>RETTSVESEN</topic>
            <topic>DOMSTOLER</topic>
            <topic>STATSFORFATNING</topic>
            <topic>STATSFORVALTNING</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>41052</externalId>
          <summary>Grunnlovsforslag om forholdet stat/kirke</summary>
          <description>Grunnlovsforslag fra Alvhild Hedstein og Gunvald Ludvigsen om endringer i Grunnloven §§ 4 og 16 (om forholdet stat/kirke)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2012-03-27T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:20 (2007-2008), Innst. 233 S (2011-2012)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>DEN NORSKE KIRKE</topic>
            <topic>TROSSAMFUNN</topic>
            <topic>STATSFORFATNING</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
        <issue>
          <externalId>41054</externalId>
          <summary>Grunnlovsforslag om vern av liv</summary>
          <description>Grunnlovsforslag fra Åse Gunhild Voie Duesund, Laila Dåvøy, Line Henriette Holten Hjemdal og Dagfinn Høybråten om ny § 95 a i Grunnloven (Vern av liv)</description>
          <type>alminneligsak</type>
          <status>til_behandling</status>
          <lastUpdate>2008-09-30T00:00:00</lastUpdate>
          <reference>Dokument nr. 12:22 (2007-2008)</reference>
          <documentGroup>dokumentserien</documentGroup>
          <committee>Kontroll- og konstitusjonskomiteen</committee>
          <topics>
            <topic>FORSKNING</topic>
            <topic>HELSEVESEN</topic>
            <topic>SVANGERSKAP</topic>
            <topic>STATSFORFATNING</topic>
            <topic>UTENRIKSSAKER</topic>
            <topic>MENNESKERETTIGHETER</topic>
            <topic>GRUNNLOVEN</topic>
          </topics>
        </issue>
      </issues>
      """
      
      Scenario: Import votes
        When I run `hdo-converter --only-print votes`
        Then the output should contain:
        """
        <?xml version="1.0" encoding="UTF-8"?>
        <votes>
          <vote>
            <externalId>1984</externalId>
            <externalIssueId>40702</externalIssueId>
            <counts>
              <for>88</for>
              <against>80</against>
              <absent>1</absent>
            </counts>
            <enacted>true</enacted>
            <subject>Romertall I.</subject>
            <method>ikke_spesifisert</method>
            <resultType>ikke_spesifisert</resultType>
            <time>2012-02-07T12:40:29.687</time>
            <representatives>
              <representative>
                <externalId>PTA</externalId>
                <firstName>Per-Willy</firstName>
                <lastName>Amundsen</lastName>
                <dateOfBirth>1971-01-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>DTA</externalId>
                <firstName>Dag Terje</firstName>
                <lastName>Andersen</lastName>
                <dateOfBirth>1957-05-27T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KAAN</externalId>
                <firstName>Karin</firstName>
                <lastName>Andersen</lastName>
                <dateOfBirth>1952-12-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ANA</externalId>
                <firstName>Anders</firstName>
                <lastName>Anundsen</lastName>
                <dateOfBirth>1975-11-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>BEHA</externalId>
                <firstName>Bendiks H.</firstName>
                <lastName>Arnesen</lastName>
                <dateOfBirth>1951-06-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HAFA</externalId>
                <firstName>Hans Frode Kielland</firstName>
                <lastName>Asmyhr</lastName>
                <dateOfBirth>1970-02-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>EAS</externalId>
                <firstName>Elisabeth</firstName>
                <lastName>Aspaker</lastName>
                <dateOfBirth>1962-10-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JASP</externalId>
                <firstName>Jorodd</firstName>
                <lastName>Asphjell</lastName>
                <dateOfBirth>1960-07-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>absent</voteResult>
              </representative>
              <representative>
                <externalId>NA</externalId>
                <firstName>Nikolai</firstName>
                <lastName>Astrup</lastName>
                <dateOfBirth>1978-06-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AGEA</externalId>
                <firstName>Åge</firstName>
                <lastName>Austheim</lastName>
                <dateOfBirth>1983-11-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>FBJ</externalId>
                <firstName>Frank</firstName>
                <lastName>Bakke-Jensen</lastName>
                <dateOfBirth>1965-03-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>GKB</externalId>
                <firstName>Gina Knutson</firstName>
                <lastName>Barstad</lastName>
                <dateOfBirth>1986-04-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>GJB</externalId>
                <firstName>Geir Jørgen</firstName>
                <lastName>Bekkevold</lastName>
                <dateOfBirth>1963-11-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>EBO</externalId>
                <firstName>Else-May</firstName>
                <lastName>Botten</lastName>
                <dateOfBirth>1973-08-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TLB</externalId>
                <firstName>Tove Linnea</firstName>
                <lastName>Brandvik</lastName>
                <dateOfBirth>1968-11-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SUB</externalId>
                <firstName>Susanne</firstName>
                <lastName>Bratli</lastName>
                <dateOfBirth>1966-06-10T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>PB</externalId>
                <firstName>Per Roar</firstName>
                <lastName>Bredvold</lastName>
                <dateOfBirth>1957-03-05T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>THB</externalId>
                <firstName>Thomas</firstName>
                <lastName>Breen</lastName>
                <dateOfBirth>1972-09-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TBRE</externalId>
                <firstName>Tor</firstName>
                <lastName>Bremer</lastName>
                <dateOfBirth>1955-02-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JBO</externalId>
                <firstName>Jan</firstName>
                <lastName>Bøhler</lastName>
                <dateOfBirth>1952-03-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AC</externalId>
                <firstName>Akhtar</firstName>
                <lastName>Chaudhry</lastName>
                <dateOfBirth>1961-07-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>JFC</externalId>
                <firstName>Jette F.</firstName>
                <lastName>Christensen</lastName>
                <dateOfBirth>1983-06-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LIC</externalId>
                <firstName>Lise</firstName>
                <lastName>Christoffersen</lastName>
                <dateOfBirth>1955-08-05T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ADA</externalId>
                <firstName>André Oktay</firstName>
                <lastName>Dahl</lastName>
                <dateOfBirth>1975-07-07T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TORD</externalId>
                <firstName>Torgeir</firstName>
                <lastName>Dahl</lastName>
                <dateOfBirth>1953-12-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LD</externalId>
                <firstName>Laila</firstName>
                <lastName>Dåvøy</lastName>
                <dateOfBirth>1948-08-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SHEG</externalId>
                <firstName>Siri Hov</firstName>
                <lastName>Eggen</lastName>
                <dateOfBirth>1969-12-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>RAE</externalId>
                <firstName>Rigmor Andersen</firstName>
                <lastName>Eide</lastName>
                <dateOfBirth>1954-06-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>GUE</externalId>
                <firstName>Gunvor</firstName>
                <lastName>Eldegard</lastName>
                <dateOfBirth>1963-04-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JAE</externalId>
                <firstName>Jan Arild</firstName>
                <lastName>Ellingsen</lastName>
                <dateOfBirth>1958-10-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>DE</externalId>
                <firstName>Dagrun</firstName>
                <lastName>Eriksen</lastName>
                <dateOfBirth>1971-06-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>RE</externalId>
                <firstName>Robert</firstName>
                <lastName>Eriksson</lastName>
                <dateOfBirth>1974-04-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SAF</externalId>
                <firstName>Svein</firstName>
                <lastName>Flåtten</lastName>
                <dateOfBirth>1944-10-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TEF</externalId>
                <firstName>Thor Erik</firstName>
                <lastName>Forsberg</lastName>
                <dateOfBirth>1980-04-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>PKF</externalId>
                <firstName>Per-Kristian</firstName>
                <lastName>Foss</lastName>
                <dateOfBirth>1950-07-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JF</externalId>
                <firstName>Jan-Henrik</firstName>
                <lastName>Fredriksen</lastName>
                <dateOfBirth>1956-10-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>VKG</externalId>
                <firstName>Vigdis</firstName>
                <lastName>Giltun</lastName>
                <dateOfBirth>1952-03-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>PEG</externalId>
                <firstName>Peter Skovholt</firstName>
                <lastName>Gitmark</lastName>
                <dateOfBirth>1977-04-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SAG</externalId>
                <firstName>Svein</firstName>
                <lastName>Gjelseth</lastName>
                <dateOfBirth>1950-02-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>GKG</externalId>
                <firstName>Gunn Karin</firstName>
                <lastName>Gjul</lastName>
                <dateOfBirth>1967-07-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IAG</externalId>
                <firstName>Ingebjørg</firstName>
                <lastName>Godskesen</lastName>
                <dateOfBirth>1957-05-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Aust-Agder</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SYG</externalId>
                <firstName>Sylvi</firstName>
                <lastName>Graham</lastName>
                <dateOfBirth>1951-12-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TSG</externalId>
                <firstName>Trine Skei</firstName>
                <lastName>Grande</lastName>
                <dateOfBirth>1969-10-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Venstre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KGRA</externalId>
                <firstName>Knut</firstName>
                <lastName>Gravråk</lastName>
                <dateOfBirth>1985-05-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HEIG</externalId>
                <firstName>Heidi</firstName>
                <lastName>Greni</lastName>
                <dateOfBirth>1962-07-03T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>OG</externalId>
                <firstName>Oskar J.</firstName>
                <lastName>Grimstad</lastName>
                <dateOfBirth>1954-11-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>STEG</externalId>
                <firstName>Steinar</firstName>
                <lastName>Gullvåg</lastName>
                <dateOfBirth>1946-10-27T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LAG</externalId>
                <firstName>Laila</firstName>
                <lastName>Gustavsen</lastName>
                <dateOfBirth>1973-10-24T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JONG</externalId>
                <firstName>Jon Jæger</firstName>
                <lastName>Gåsvatn</lastName>
                <dateOfBirth>1954-06-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TOHA</externalId>
                <firstName>Tore</firstName>
                <lastName>Hagebakken</lastName>
                <dateOfBirth>1961-01-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AKSH</externalId>
                <firstName>Aksel</firstName>
                <lastName>Hagen</lastName>
                <dateOfBirth>1953-10-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>GJH</externalId>
                <firstName>Gjermund</firstName>
                <lastName>Hagesæter</lastName>
                <dateOfBirth>1960-12-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TERH</externalId>
                <firstName>Terje</firstName>
                <lastName>Halleland</lastName>
                <dateOfBirth>1966-04-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>METH</externalId>
                <firstName>Mette</firstName>
                <lastName>Hanekamhaug</lastName>
                <dateOfBirth>1987-06-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>GEHN</externalId>
                <firstName>Geir-Ketil</firstName>
                <lastName>Hansen</lastName>
                <dateOfBirth>1956-03-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LILH</externalId>
                <firstName>Lillian</firstName>
                <lastName>Hansen</lastName>
                <dateOfBirth>1957-05-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SOH</externalId>
                <firstName>Sigvald Oppebøen</firstName>
                <lastName>Hansen</lastName>
                <dateOfBirth>1950-09-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SHAR</externalId>
                <firstName>Svein</firstName>
                <lastName>Harberg</lastName>
                <dateOfBirth>1958-07-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Aust-Agder</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KNAH</externalId>
                <firstName>Knut Arild</firstName>
                <lastName>Hareide</lastName>
                <dateOfBirth>1972-11-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ARLH</externalId>
                <firstName>Arne L.</firstName>
                <lastName>Haugen</lastName>
                <dateOfBirth>1939-07-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HAKH</externalId>
                <firstName>Håkon</firstName>
                <lastName>Haugli</lastName>
                <dateOfBirth>1969-05-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IHE</externalId>
                <firstName>Ingrid</firstName>
                <lastName>Heggø</lastName>
                <dateOfBirth>1961-08-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LCH</externalId>
                <firstName>Linda C. Hofstad</firstName>
                <lastName>Helleland</lastName>
                <dateOfBirth>1977-08-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TROH</externalId>
                <firstName>Trond</firstName>
                <lastName>Helleland</lastName>
                <dateOfBirth>1962-07-10T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AREH</externalId>
                <firstName>Are</firstName>
                <lastName>Helseth</lastName>
                <dateOfBirth>1955-01-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KARH</externalId>
                <firstName>Kari</firstName>
                <lastName>Henriksen</lastName>
                <dateOfBirth>1955-08-10T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LHH</externalId>
                <firstName>Line Henriette</firstName>
                <lastName>Hjemdal</lastName>
                <dateOfBirth>1971-10-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>BÅH</externalId>
                <firstName>Bård</firstName>
                <lastName>Hoksrud</lastName>
                <dateOfBirth>1973-03-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ALEH</externalId>
                <firstName>Alf Egil</firstName>
                <lastName>Holmelid</lastName>
                <dateOfBirth>1947-12-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HEH</externalId>
                <firstName>Heikki</firstName>
                <lastName>Holmås</lastName>
                <dateOfBirth>1972-06-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SHK</externalId>
                <firstName>Solveig</firstName>
                <lastName>Horne</lastName>
                <dateOfBirth>1969-01-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>MORH</externalId>
                <firstName>Morten</firstName>
                <lastName>Høglund</lastName>
                <dateOfBirth>1965-07-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>BENH</externalId>
                <firstName>Bent</firstName>
                <lastName>Høie</lastName>
                <dateOfBirth>1971-05-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>DH</externalId>
                <firstName>Dagfinn</firstName>
                <lastName>Høybråten</lastName>
                <dateOfBirth>1957-12-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ØH</externalId>
                <firstName>Øyvind</firstName>
                <lastName>Håbrekke</lastName>
                <dateOfBirth>1969-12-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>STRH</externalId>
                <firstName>Stine Renate</firstName>
                <lastName>Håheim</lastName>
                <dateOfBirth>1984-05-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TRI</externalId>
                <firstName>Torbjørn Røe</firstName>
                <lastName>Isaksen</lastName>
                <dateOfBirth>1978-07-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SIVJ</externalId>
                <firstName>Siv</firstName>
                <lastName>Jensen</lastName>
                <dateOfBirth>1969-06-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IJ</externalId>
                <firstName>Irene</firstName>
                <lastName>Johansen</lastName>
                <dateOfBirth>1961-01-07T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>MOJ</externalId>
                <firstName>Morten Ørsal</firstName>
                <lastName>Johansen</lastName>
                <dateOfBirth>1964-09-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ARK</externalId>
                <firstName>Arve</firstName>
                <lastName>Kambe</lastName>
                <dateOfBirth>1974-11-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KKK</externalId>
                <firstName>Kari Kjønaas</firstName>
                <lastName>Kjos</lastName>
                <dateOfBirth>1962-01-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JKL</externalId>
                <firstName>Jenny</firstName>
                <lastName>Klinge</lastName>
                <dateOfBirth>1975-11-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>UEK</externalId>
                <firstName>Ulf Erik</firstName>
                <lastName>Knudsen</lastName>
                <dateOfBirth>1964-12-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TKK</externalId>
                <firstName>Tove Karoline</firstName>
                <lastName>Knutsen</lastName>
                <dateOfBirth>1951-01-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>MAKO</externalId>
                <firstName>Martin</firstName>
                <lastName>Kolberg</lastName>
                <dateOfBirth>1949-02-24T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>OYK</externalId>
                <firstName>Øyvind</firstName>
                <lastName>Korsberg</lastName>
                <dateOfBirth>1960-01-31T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IVK</externalId>
                <firstName>Ivar</firstName>
                <lastName>Kristiansen</lastName>
                <dateOfBirth>1956-02-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>GJK</externalId>
                <firstName>Gerd Janne</firstName>
                <lastName>Kristoffersen</lastName>
                <dateOfBirth>1952-11-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HHL</externalId>
                <firstName>Hallgeir H.</firstName>
                <lastName>Langeland</lastName>
                <dateOfBirth>1955-11-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SEL</externalId>
                <firstName>Stein Erik</firstName>
                <lastName>Lauvås</lastName>
                <dateOfBirth>1965-05-03T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>UIL</externalId>
                <firstName>Ulf</firstName>
                <lastName>Leirstein</lastName>
                <dateOfBirth>1973-06-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ALJ</externalId>
                <firstName>Anna</firstName>
                <lastName>Ljunggren</lastName>
                <dateOfBirth>1984-06-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>POL</externalId>
                <firstName>Per Olaf</firstName>
                <lastName>Lundteigen</lastName>
                <dateOfBirth>1953-04-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>BLO</externalId>
                <firstName>Bjørn</firstName>
                <lastName>Lødemel</lastName>
                <dateOfBirth>1958-08-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HML</externalId>
                <firstName>Hilde</firstName>
                <lastName>Magnusson</lastName>
                <dateOfBirth>1970-06-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SOM</externalId>
                <firstName>Sonja</firstName>
                <lastName>Mandt</lastName>
                <dateOfBirth>1960-03-29T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>MAM</externalId>
                <firstName>Marianne</firstName>
                <lastName>Marthinsen</lastName>
                <dateOfBirth>1980-08-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>BEM</externalId>
                <firstName>Bente Stein</firstName>
                <lastName>Mathisen</lastName>
                <dateOfBirth>1956-02-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SME</externalId>
                <firstName>Siri A.</firstName>
                <lastName>Meling</lastName>
                <dateOfBirth>1963-02-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TMI</externalId>
                <firstName>Torgeir</firstName>
                <lastName>Micaelsen</lastName>
                <dateOfBirth>1979-05-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ASC</externalId>
                <firstName>Åse</firstName>
                <lastName>Michaelsen</lastName>
                <dateOfBirth>1960-06-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>PEMY</externalId>
                <firstName>Peter N.</firstName>
                <lastName>Myhre</lastName>
                <dateOfBirth>1954-11-29T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LMY</externalId>
                <firstName>Lars</firstName>
                <lastName>Myraune</lastName>
                <dateOfBirth>1944-08-05T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SMY</externalId>
                <firstName>Sverre</firstName>
                <lastName>Myrli</lastName>
                <dateOfBirth>1971-08-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IRLN</externalId>
                <firstName>Irene Lange</firstName>
                <lastName>Nordahl</lastName>
                <dateOfBirth>1968-02-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TON</externalId>
                <firstName>Tore</firstName>
                <lastName>Nordtun</lastName>
                <dateOfBirth>1949-09-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>MN</externalId>
                <firstName>Marit</firstName>
                <lastName>Nybakk</lastName>
                <dateOfBirth>1947-02-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HIN</externalId>
                <firstName>Hilde Anita</firstName>
                <lastName>Nyvoll</lastName>
                <dateOfBirth>1976-05-29T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>EIN</externalId>
                <firstName>Eivind</firstName>
                <lastName>Nævdal-Bolstad</lastName>
                <dateOfBirth>1987-04-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JOD</externalId>
                <firstName>Jon Øyvind</firstName>
                <lastName>Odland</lastName>
                <dateOfBirth>1954-05-29T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IOL</externalId>
                <firstName>Ingalill</firstName>
                <lastName>Olsen</lastName>
                <dateOfBirth>1955-12-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>PO</externalId>
                <firstName>Per Arne</firstName>
                <lastName>Olsen</lastName>
                <dateOfBirth>1961-02-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>WO</externalId>
                <firstName>Wenche</firstName>
                <lastName>Olsen</lastName>
                <dateOfBirth>1965-11-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TO</externalId>
                <firstName>Torfinn</firstName>
                <lastName>Opheim</lastName>
                <dateOfBirth>1961-04-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HPED</externalId>
                <firstName>Helga</firstName>
                <lastName>Pedersen</lastName>
                <dateOfBirth>1973-01-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>GP</externalId>
                <firstName>Geir</firstName>
                <lastName>Pollestad</lastName>
                <dateOfBirth>1978-08-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>CNR</externalId>
                <firstName>Christina Nilsson</firstName>
                <lastName>Ramsøy</lastName>
                <dateOfBirth>1986-11-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LRE</externalId>
                <firstName>Laila Marie</firstName>
                <lastName>Reiertsen</lastName>
                <dateOfBirth>1960-10-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>MAGR</externalId>
                <firstName>Magne</firstName>
                <lastName>Rommetveit</lastName>
                <dateOfBirth>1956-04-27T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KJR</externalId>
                <firstName>Kjell Ingolf</firstName>
                <lastName>Ropstad</lastName>
                <dateOfBirth>1985-06-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Aust-Agder</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TR</externalId>
                <firstName>Torstein</firstName>
                <lastName>Rudihagen</lastName>
                <dateOfBirth>1951-08-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JHR</externalId>
                <firstName>Jørund</firstName>
                <lastName>Rytman</lastName>
                <dateOfBirth>1977-05-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>PES</externalId>
                <firstName>Per</firstName>
                <lastName>Sandberg</lastName>
                <dateOfBirth>1960-02-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ESAN</externalId>
                <firstName>Erling</firstName>
                <lastName>Sande</lastName>
                <dateOfBirth>1978-11-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ISC</externalId>
                <firstName>Ingjerd</firstName>
                <lastName>Schou</lastName>
                <dateOfBirth>1955-01-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KSIM</externalId>
                <firstName>Kåre</firstName>
                <lastName>Simensen</lastName>
                <dateOfBirth>1955-08-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SONS</externalId>
                <firstName>Sonja Irene</firstName>
                <lastName>Sjøli</lastName>
                <dateOfBirth>1949-06-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SSK</externalId>
                <firstName>Siv Aida Rui</firstName>
                <lastName>Skattem</lastName>
                <dateOfBirth>1970-04-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ELIS</externalId>
                <firstName>Eli</firstName>
                <lastName>Skoland</lastName>
                <dateOfBirth>1958-05-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HSK</externalId>
                <firstName>Henning</firstName>
                <lastName>Skumsvoll</lastName>
                <dateOfBirth>1947-03-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ES</externalId>
                <firstName>Erna</firstName>
                <lastName>Solberg</lastName>
                <dateOfBirth>1961-02-24T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>BVS</externalId>
                <firstName>Bård Vegar</firstName>
                <lastName>Solhjell</lastName>
                <dateOfBirth>1971-12-22T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KETS</externalId>
                <firstName>Ketil</firstName>
                <lastName>Solvik-Olsen</lastName>
                <dateOfBirth>1972-02-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AGES</externalId>
                <firstName>Åge</firstName>
                <lastName>Starheim</lastName>
                <dateOfBirth>1946-05-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>AAST</externalId>
                <firstName>Arild</firstName>
                <lastName>Stokkan-Grande</lastName>
                <dateOfBirth>1978-04-05T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KNUS</externalId>
                <firstName>Knut</firstName>
                <lastName>Storberget</lastName>
                <dateOfBirth>1964-10-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TAS</externalId>
                <firstName>Tor-Arne</firstName>
                <lastName>Strøm</lastName>
                <dateOfBirth>1952-05-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>EKS</externalId>
                <firstName>Eirin</firstName>
                <lastName>Sund</lastName>
                <dateOfBirth>1967-04-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KES</externalId>
                <firstName>Kenneth</firstName>
                <lastName>Svendsen</lastName>
                <dateOfBirth>1954-08-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HOSY</externalId>
                <firstName>Hans Olav</firstName>
                <lastName>Syversen</lastName>
                <dateOfBirth>1966-11-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TMS</externalId>
                <firstName>Tone Merete</firstName>
                <lastName>Sønsterud</lastName>
                <dateOfBirth>1959-05-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IME</externalId>
                <firstName>Ine M. Eriksen</firstName>
                <lastName>Søreide</lastName>
                <dateOfBirth>1976-05-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HTA</externalId>
                <firstName>Hadia</firstName>
                <lastName>Tajik</lastName>
                <dateOfBirth>1983-07-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>DOT</externalId>
                <firstName>Dag Ole</firstName>
                <lastName>Teigen</lastName>
                <dateOfBirth>1982-08-10T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>BT</externalId>
                <firstName>Borghild</firstName>
                <lastName>Tenden</lastName>
                <dateOfBirth>1951-06-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Venstre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>MIT</externalId>
                <firstName>Michael</firstName>
                <lastName>Tetzschner</lastName>
                <dateOfBirth>1954-02-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>OLET</externalId>
                <firstName>Olemic</firstName>
                <lastName>Thommessen</lastName>
                <dateOfBirth>1956-04-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IBTH</externalId>
                <firstName>Ib</firstName>
                <lastName>Thomsen</lastName>
                <dateOfBirth>1961-10-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IMT</externalId>
                <firstName>Inga Marte</firstName>
                <lastName>Thorkildsen</lastName>
                <dateOfBirth>1976-07-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>BTH</externalId>
                <firstName>Bente</firstName>
                <lastName>Thorsen</lastName>
                <dateOfBirth>1958-10-31T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KJT</externalId>
                <firstName>Kjersti</firstName>
                <lastName>Toppe</lastName>
                <dateOfBirth>1967-10-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KPT</externalId>
                <firstName>Knut Petter</firstName>
                <lastName>Torgersen</lastName>
                <dateOfBirth>1955-09-07T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TOVT</externalId>
                <firstName>Tove-Lise</firstName>
                <lastName>Torve</lastName>
                <dateOfBirth>1964-06-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ATR</externalId>
                <firstName>Anette</firstName>
                <lastName>Trettebergstuen</lastName>
                <dateOfBirth>1981-05-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TOT</externalId>
                <firstName>Torgeir</firstName>
                <lastName>Trældal</lastName>
                <dateOfBirth>1965-01-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>CT</externalId>
                <firstName>Christian</firstName>
                <lastName>Tybring-Gjedde</lastName>
                <dateOfBirth>1963-08-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SNV</externalId>
                <firstName>Snorre Serigstad</firstName>
                <lastName>Valen</lastName>
                <dateOfBirth>1984-09-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TMV</externalId>
                <firstName>Trygve Slagsvold</firstName>
                <lastName>Vedum</lastName>
                <dateOfBirth>1978-12-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LVE</externalId>
                <firstName>Line</firstName>
                <lastName>Vennesland</lastName>
                <dateOfBirth>1985-02-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Aust-Agder</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LVA</externalId>
                <firstName>Lene</firstName>
                <lastName>Vågslid</lastName>
                <dateOfBirth>1986-03-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HEW</externalId>
                <firstName>Henning</firstName>
                <lastName>Warloe</lastName>
                <dateOfBirth>1961-03-24T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AWE</externalId>
                <firstName>Anders B.</firstName>
                <lastName>Werp</lastName>
                <dateOfBirth>1961-12-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TRUW</externalId>
                <firstName>Truls</firstName>
                <lastName>Wickholm</lastName>
                <dateOfBirth>1978-10-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KSW</externalId>
                <firstName>Karin S.</firstName>
                <lastName>Woldseth</lastName>
                <dateOfBirth>1954-08-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ATW</externalId>
                <firstName>Anne Tingelstad</firstName>
                <lastName>Wøien</lastName>
                <dateOfBirth>1965-06-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TAML</externalId>
                <firstName>Torkil</firstName>
                <lastName>Åmland</lastName>
                <dateOfBirth>1966-12-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>MAAA</externalId>
                <firstName>Marianne</firstName>
                <lastName>Aasen</lastName>
                <dateOfBirth>1967-02-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TELA</externalId>
                <firstName>Terje</firstName>
                <lastName>Aasland</lastName>
                <dateOfBirth>1965-02-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
            </representatives>
            <propositions>
              <proposition>
                <externalId>40037677</externalId>
                <description>Komiteens tilråding romertall I. </description>
                <onBehalfOf></onBehalfOf>
                <body>&lt;p&gt;Dokument nr. 12:1 (2007–2008) – grunnlovsforslag
        fra Per-Kristian Foss, Inge Lønning, Marianne Aasen Agdestein og
        Svein Roald Hansen om endringer i Grunnloven § 93 med sikte på å
        åpne for at samtykke til suverenitetsoverføring kan gis med 2/3
        flertall dersom det først er avholdt en rådgivende folkeavstemning
        – alternativ 1 – bifalles.&lt;/p&gt;</body>
              </proposition>
            </propositions>
          </vote>
          <vote>
            <externalId>1985</externalId>
            <externalIssueId>40702</externalIssueId>
            <counts>
              <for>0</for>
              <against>0</against>
              <absent>0</absent>
            </counts>
            <enacted>true</enacted>
            <subject>Romertall II.</subject>
            <method>ikke_spesifisert</method>
            <resultType>enstemmig_vedtatt</resultType>
            <time>2012-02-07T12:42:39.183</time>
            <propositions>
              <proposition>
                <externalId>40037678</externalId>
                <description>Komiteens tilråding romertall II. </description>
                <onBehalfOf></onBehalfOf>
                <body>&lt;p&gt;Dokument nr. 12:1 (2007–2008) – grunnlovsforslag
        fra Per-Kristian Foss, Inge Lønning, Marianne Aasen Agdestein og
        Svein Roald Hansen om endringer i Grunnloven § 93 med sikte på å
        åpne for at samtykke til suverenitetsoverføring kan gis med 2/3
        flertall dersom det først er avholdt en rådgivende folkeavstemning
        – alternativ 2 – bifalles ikke.&lt;/p&gt;</body>
              </proposition>
            </propositions>
          </vote>
          <vote>
            <externalId>1987</externalId>
            <externalIssueId>40702</externalIssueId>
            <counts>
              <for>142</for>
              <against>25</against>
              <absent>2</absent>
            </counts>
            <enacted>true</enacted>
            <subject>Det voteres alternativt mellom innstillingen Romertall III og forslag nr..1 fra Sp og SV</subject>
            <method>ikke_spesifisert</method>
            <resultType>ikke_spesifisert</resultType>
            <time>2012-02-07T12:43:38.8</time>
            <representatives>
              <representative>
                <externalId>PTA</externalId>
                <firstName>Per-Willy</firstName>
                <lastName>Amundsen</lastName>
                <dateOfBirth>1971-01-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>DTA</externalId>
                <firstName>Dag Terje</firstName>
                <lastName>Andersen</lastName>
                <dateOfBirth>1957-05-27T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KAAN</externalId>
                <firstName>Karin</firstName>
                <lastName>Andersen</lastName>
                <dateOfBirth>1952-12-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ANA</externalId>
                <firstName>Anders</firstName>
                <lastName>Anundsen</lastName>
                <dateOfBirth>1975-11-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>BEHA</externalId>
                <firstName>Bendiks H.</firstName>
                <lastName>Arnesen</lastName>
                <dateOfBirth>1951-06-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HAFA</externalId>
                <firstName>Hans Frode Kielland</firstName>
                <lastName>Asmyhr</lastName>
                <dateOfBirth>1970-02-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>EAS</externalId>
                <firstName>Elisabeth</firstName>
                <lastName>Aspaker</lastName>
                <dateOfBirth>1962-10-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JASP</externalId>
                <firstName>Jorodd</firstName>
                <lastName>Asphjell</lastName>
                <dateOfBirth>1960-07-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>absent</voteResult>
              </representative>
              <representative>
                <externalId>NA</externalId>
                <firstName>Nikolai</firstName>
                <lastName>Astrup</lastName>
                <dateOfBirth>1978-06-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AGEA</externalId>
                <firstName>Åge</firstName>
                <lastName>Austheim</lastName>
                <dateOfBirth>1983-11-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>FBJ</externalId>
                <firstName>Frank</firstName>
                <lastName>Bakke-Jensen</lastName>
                <dateOfBirth>1965-03-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>GKB</externalId>
                <firstName>Gina Knutson</firstName>
                <lastName>Barstad</lastName>
                <dateOfBirth>1986-04-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>GJB</externalId>
                <firstName>Geir Jørgen</firstName>
                <lastName>Bekkevold</lastName>
                <dateOfBirth>1963-11-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>EBO</externalId>
                <firstName>Else-May</firstName>
                <lastName>Botten</lastName>
                <dateOfBirth>1973-08-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TLB</externalId>
                <firstName>Tove Linnea</firstName>
                <lastName>Brandvik</lastName>
                <dateOfBirth>1968-11-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SUB</externalId>
                <firstName>Susanne</firstName>
                <lastName>Bratli</lastName>
                <dateOfBirth>1966-06-10T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>PB</externalId>
                <firstName>Per Roar</firstName>
                <lastName>Bredvold</lastName>
                <dateOfBirth>1957-03-05T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>THB</externalId>
                <firstName>Thomas</firstName>
                <lastName>Breen</lastName>
                <dateOfBirth>1972-09-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TBRE</externalId>
                <firstName>Tor</firstName>
                <lastName>Bremer</lastName>
                <dateOfBirth>1955-02-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JBO</externalId>
                <firstName>Jan</firstName>
                <lastName>Bøhler</lastName>
                <dateOfBirth>1952-03-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AC</externalId>
                <firstName>Akhtar</firstName>
                <lastName>Chaudhry</lastName>
                <dateOfBirth>1961-07-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>JFC</externalId>
                <firstName>Jette F.</firstName>
                <lastName>Christensen</lastName>
                <dateOfBirth>1983-06-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LIC</externalId>
                <firstName>Lise</firstName>
                <lastName>Christoffersen</lastName>
                <dateOfBirth>1955-08-05T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ADA</externalId>
                <firstName>André Oktay</firstName>
                <lastName>Dahl</lastName>
                <dateOfBirth>1975-07-07T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TORD</externalId>
                <firstName>Torgeir</firstName>
                <lastName>Dahl</lastName>
                <dateOfBirth>1953-12-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LD</externalId>
                <firstName>Laila</firstName>
                <lastName>Dåvøy</lastName>
                <dateOfBirth>1948-08-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SHEG</externalId>
                <firstName>Siri Hov</firstName>
                <lastName>Eggen</lastName>
                <dateOfBirth>1969-12-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>RAE</externalId>
                <firstName>Rigmor Andersen</firstName>
                <lastName>Eide</lastName>
                <dateOfBirth>1954-06-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>GUE</externalId>
                <firstName>Gunvor</firstName>
                <lastName>Eldegard</lastName>
                <dateOfBirth>1963-04-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JAE</externalId>
                <firstName>Jan Arild</firstName>
                <lastName>Ellingsen</lastName>
                <dateOfBirth>1958-10-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>DE</externalId>
                <firstName>Dagrun</firstName>
                <lastName>Eriksen</lastName>
                <dateOfBirth>1971-06-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>RE</externalId>
                <firstName>Robert</firstName>
                <lastName>Eriksson</lastName>
                <dateOfBirth>1974-04-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SAF</externalId>
                <firstName>Svein</firstName>
                <lastName>Flåtten</lastName>
                <dateOfBirth>1944-10-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TEF</externalId>
                <firstName>Thor Erik</firstName>
                <lastName>Forsberg</lastName>
                <dateOfBirth>1980-04-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>PKF</externalId>
                <firstName>Per-Kristian</firstName>
                <lastName>Foss</lastName>
                <dateOfBirth>1950-07-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JF</externalId>
                <firstName>Jan-Henrik</firstName>
                <lastName>Fredriksen</lastName>
                <dateOfBirth>1956-10-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>VKG</externalId>
                <firstName>Vigdis</firstName>
                <lastName>Giltun</lastName>
                <dateOfBirth>1952-03-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>PEG</externalId>
                <firstName>Peter Skovholt</firstName>
                <lastName>Gitmark</lastName>
                <dateOfBirth>1977-04-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SAG</externalId>
                <firstName>Svein</firstName>
                <lastName>Gjelseth</lastName>
                <dateOfBirth>1950-02-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>GKG</externalId>
                <firstName>Gunn Karin</firstName>
                <lastName>Gjul</lastName>
                <dateOfBirth>1967-07-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IAG</externalId>
                <firstName>Ingebjørg</firstName>
                <lastName>Godskesen</lastName>
                <dateOfBirth>1957-05-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Aust-Agder</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SYG</externalId>
                <firstName>Sylvi</firstName>
                <lastName>Graham</lastName>
                <dateOfBirth>1951-12-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TSG</externalId>
                <firstName>Trine Skei</firstName>
                <lastName>Grande</lastName>
                <dateOfBirth>1969-10-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Venstre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KGRA</externalId>
                <firstName>Knut</firstName>
                <lastName>Gravråk</lastName>
                <dateOfBirth>1985-05-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HEIG</externalId>
                <firstName>Heidi</firstName>
                <lastName>Greni</lastName>
                <dateOfBirth>1962-07-03T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>OG</externalId>
                <firstName>Oskar J.</firstName>
                <lastName>Grimstad</lastName>
                <dateOfBirth>1954-11-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>STEG</externalId>
                <firstName>Steinar</firstName>
                <lastName>Gullvåg</lastName>
                <dateOfBirth>1946-10-27T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LAG</externalId>
                <firstName>Laila</firstName>
                <lastName>Gustavsen</lastName>
                <dateOfBirth>1973-10-24T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JONG</externalId>
                <firstName>Jon Jæger</firstName>
                <lastName>Gåsvatn</lastName>
                <dateOfBirth>1954-06-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TOHA</externalId>
                <firstName>Tore</firstName>
                <lastName>Hagebakken</lastName>
                <dateOfBirth>1961-01-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AKSH</externalId>
                <firstName>Aksel</firstName>
                <lastName>Hagen</lastName>
                <dateOfBirth>1953-10-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>GJH</externalId>
                <firstName>Gjermund</firstName>
                <lastName>Hagesæter</lastName>
                <dateOfBirth>1960-12-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TERH</externalId>
                <firstName>Terje</firstName>
                <lastName>Halleland</lastName>
                <dateOfBirth>1966-04-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>METH</externalId>
                <firstName>Mette</firstName>
                <lastName>Hanekamhaug</lastName>
                <dateOfBirth>1987-06-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>GEHN</externalId>
                <firstName>Geir-Ketil</firstName>
                <lastName>Hansen</lastName>
                <dateOfBirth>1956-03-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LILH</externalId>
                <firstName>Lillian</firstName>
                <lastName>Hansen</lastName>
                <dateOfBirth>1957-05-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SOH</externalId>
                <firstName>Sigvald Oppebøen</firstName>
                <lastName>Hansen</lastName>
                <dateOfBirth>1950-09-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SHAR</externalId>
                <firstName>Svein</firstName>
                <lastName>Harberg</lastName>
                <dateOfBirth>1958-07-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Aust-Agder</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KNAH</externalId>
                <firstName>Knut Arild</firstName>
                <lastName>Hareide</lastName>
                <dateOfBirth>1972-11-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ARLH</externalId>
                <firstName>Arne L.</firstName>
                <lastName>Haugen</lastName>
                <dateOfBirth>1939-07-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HAKH</externalId>
                <firstName>Håkon</firstName>
                <lastName>Haugli</lastName>
                <dateOfBirth>1969-05-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IHE</externalId>
                <firstName>Ingrid</firstName>
                <lastName>Heggø</lastName>
                <dateOfBirth>1961-08-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LCH</externalId>
                <firstName>Linda C. Hofstad</firstName>
                <lastName>Helleland</lastName>
                <dateOfBirth>1977-08-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TROH</externalId>
                <firstName>Trond</firstName>
                <lastName>Helleland</lastName>
                <dateOfBirth>1962-07-10T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AREH</externalId>
                <firstName>Are</firstName>
                <lastName>Helseth</lastName>
                <dateOfBirth>1955-01-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KARH</externalId>
                <firstName>Kari</firstName>
                <lastName>Henriksen</lastName>
                <dateOfBirth>1955-08-10T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LHH</externalId>
                <firstName>Line Henriette</firstName>
                <lastName>Hjemdal</lastName>
                <dateOfBirth>1971-10-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>BÅH</externalId>
                <firstName>Bård</firstName>
                <lastName>Hoksrud</lastName>
                <dateOfBirth>1973-03-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ALEH</externalId>
                <firstName>Alf Egil</firstName>
                <lastName>Holmelid</lastName>
                <dateOfBirth>1947-12-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HEH</externalId>
                <firstName>Heikki</firstName>
                <lastName>Holmås</lastName>
                <dateOfBirth>1972-06-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SHK</externalId>
                <firstName>Solveig</firstName>
                <lastName>Horne</lastName>
                <dateOfBirth>1969-01-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>MORH</externalId>
                <firstName>Morten</firstName>
                <lastName>Høglund</lastName>
                <dateOfBirth>1965-07-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>BENH</externalId>
                <firstName>Bent</firstName>
                <lastName>Høie</lastName>
                <dateOfBirth>1971-05-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>DH</externalId>
                <firstName>Dagfinn</firstName>
                <lastName>Høybråten</lastName>
                <dateOfBirth>1957-12-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ØH</externalId>
                <firstName>Øyvind</firstName>
                <lastName>Håbrekke</lastName>
                <dateOfBirth>1969-12-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>STRH</externalId>
                <firstName>Stine Renate</firstName>
                <lastName>Håheim</lastName>
                <dateOfBirth>1984-05-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TRI</externalId>
                <firstName>Torbjørn Røe</firstName>
                <lastName>Isaksen</lastName>
                <dateOfBirth>1978-07-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SIVJ</externalId>
                <firstName>Siv</firstName>
                <lastName>Jensen</lastName>
                <dateOfBirth>1969-06-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IJ</externalId>
                <firstName>Irene</firstName>
                <lastName>Johansen</lastName>
                <dateOfBirth>1961-01-07T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>MOJ</externalId>
                <firstName>Morten Ørsal</firstName>
                <lastName>Johansen</lastName>
                <dateOfBirth>1964-09-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ARK</externalId>
                <firstName>Arve</firstName>
                <lastName>Kambe</lastName>
                <dateOfBirth>1974-11-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KKK</externalId>
                <firstName>Kari Kjønaas</firstName>
                <lastName>Kjos</lastName>
                <dateOfBirth>1962-01-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JKL</externalId>
                <firstName>Jenny</firstName>
                <lastName>Klinge</lastName>
                <dateOfBirth>1975-11-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>UEK</externalId>
                <firstName>Ulf Erik</firstName>
                <lastName>Knudsen</lastName>
                <dateOfBirth>1964-12-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TKK</externalId>
                <firstName>Tove Karoline</firstName>
                <lastName>Knutsen</lastName>
                <dateOfBirth>1951-01-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>MAKO</externalId>
                <firstName>Martin</firstName>
                <lastName>Kolberg</lastName>
                <dateOfBirth>1949-02-24T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>OYK</externalId>
                <firstName>Øyvind</firstName>
                <lastName>Korsberg</lastName>
                <dateOfBirth>1960-01-31T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IVK</externalId>
                <firstName>Ivar</firstName>
                <lastName>Kristiansen</lastName>
                <dateOfBirth>1956-02-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>GJK</externalId>
                <firstName>Gerd Janne</firstName>
                <lastName>Kristoffersen</lastName>
                <dateOfBirth>1952-11-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HHL</externalId>
                <firstName>Hallgeir H.</firstName>
                <lastName>Langeland</lastName>
                <dateOfBirth>1955-11-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SEL</externalId>
                <firstName>Stein Erik</firstName>
                <lastName>Lauvås</lastName>
                <dateOfBirth>1965-05-03T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>UIL</externalId>
                <firstName>Ulf</firstName>
                <lastName>Leirstein</lastName>
                <dateOfBirth>1973-06-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ALJ</externalId>
                <firstName>Anna</firstName>
                <lastName>Ljunggren</lastName>
                <dateOfBirth>1984-06-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>POL</externalId>
                <firstName>Per Olaf</firstName>
                <lastName>Lundteigen</lastName>
                <dateOfBirth>1953-04-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>BLO</externalId>
                <firstName>Bjørn</firstName>
                <lastName>Lødemel</lastName>
                <dateOfBirth>1958-08-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HML</externalId>
                <firstName>Hilde</firstName>
                <lastName>Magnusson</lastName>
                <dateOfBirth>1970-06-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SOM</externalId>
                <firstName>Sonja</firstName>
                <lastName>Mandt</lastName>
                <dateOfBirth>1960-03-29T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>MAM</externalId>
                <firstName>Marianne</firstName>
                <lastName>Marthinsen</lastName>
                <dateOfBirth>1980-08-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>BEM</externalId>
                <firstName>Bente Stein</firstName>
                <lastName>Mathisen</lastName>
                <dateOfBirth>1956-02-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SME</externalId>
                <firstName>Siri A.</firstName>
                <lastName>Meling</lastName>
                <dateOfBirth>1963-02-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TMI</externalId>
                <firstName>Torgeir</firstName>
                <lastName>Micaelsen</lastName>
                <dateOfBirth>1979-05-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ASC</externalId>
                <firstName>Åse</firstName>
                <lastName>Michaelsen</lastName>
                <dateOfBirth>1960-06-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>PEMY</externalId>
                <firstName>Peter N.</firstName>
                <lastName>Myhre</lastName>
                <dateOfBirth>1954-11-29T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LMY</externalId>
                <firstName>Lars</firstName>
                <lastName>Myraune</lastName>
                <dateOfBirth>1944-08-05T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SMY</externalId>
                <firstName>Sverre</firstName>
                <lastName>Myrli</lastName>
                <dateOfBirth>1971-08-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IRLN</externalId>
                <firstName>Irene Lange</firstName>
                <lastName>Nordahl</lastName>
                <dateOfBirth>1968-02-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TON</externalId>
                <firstName>Tore</firstName>
                <lastName>Nordtun</lastName>
                <dateOfBirth>1949-09-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>MN</externalId>
                <firstName>Marit</firstName>
                <lastName>Nybakk</lastName>
                <dateOfBirth>1947-02-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HIN</externalId>
                <firstName>Hilde Anita</firstName>
                <lastName>Nyvoll</lastName>
                <dateOfBirth>1976-05-29T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>EIN</externalId>
                <firstName>Eivind</firstName>
                <lastName>Nævdal-Bolstad</lastName>
                <dateOfBirth>1987-04-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JOD</externalId>
                <firstName>Jon Øyvind</firstName>
                <lastName>Odland</lastName>
                <dateOfBirth>1954-05-29T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IOL</externalId>
                <firstName>Ingalill</firstName>
                <lastName>Olsen</lastName>
                <dateOfBirth>1955-12-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>PO</externalId>
                <firstName>Per Arne</firstName>
                <lastName>Olsen</lastName>
                <dateOfBirth>1961-02-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>WO</externalId>
                <firstName>Wenche</firstName>
                <lastName>Olsen</lastName>
                <dateOfBirth>1965-11-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TO</externalId>
                <firstName>Torfinn</firstName>
                <lastName>Opheim</lastName>
                <dateOfBirth>1961-04-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HPED</externalId>
                <firstName>Helga</firstName>
                <lastName>Pedersen</lastName>
                <dateOfBirth>1973-01-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>GP</externalId>
                <firstName>Geir</firstName>
                <lastName>Pollestad</lastName>
                <dateOfBirth>1978-08-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>CNR</externalId>
                <firstName>Christina Nilsson</firstName>
                <lastName>Ramsøy</lastName>
                <dateOfBirth>1986-11-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LRE</externalId>
                <firstName>Laila Marie</firstName>
                <lastName>Reiertsen</lastName>
                <dateOfBirth>1960-10-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>MAGR</externalId>
                <firstName>Magne</firstName>
                <lastName>Rommetveit</lastName>
                <dateOfBirth>1956-04-27T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KJR</externalId>
                <firstName>Kjell Ingolf</firstName>
                <lastName>Ropstad</lastName>
                <dateOfBirth>1985-06-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Aust-Agder</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TR</externalId>
                <firstName>Torstein</firstName>
                <lastName>Rudihagen</lastName>
                <dateOfBirth>1951-08-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JHR</externalId>
                <firstName>Jørund</firstName>
                <lastName>Rytman</lastName>
                <dateOfBirth>1977-05-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>PES</externalId>
                <firstName>Per</firstName>
                <lastName>Sandberg</lastName>
                <dateOfBirth>1960-02-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ESAN</externalId>
                <firstName>Erling</firstName>
                <lastName>Sande</lastName>
                <dateOfBirth>1978-11-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ISC</externalId>
                <firstName>Ingjerd</firstName>
                <lastName>Schou</lastName>
                <dateOfBirth>1955-01-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KSIM</externalId>
                <firstName>Kåre</firstName>
                <lastName>Simensen</lastName>
                <dateOfBirth>1955-08-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>absent</voteResult>
              </representative>
              <representative>
                <externalId>SONS</externalId>
                <firstName>Sonja Irene</firstName>
                <lastName>Sjøli</lastName>
                <dateOfBirth>1949-06-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SSK</externalId>
                <firstName>Siv Aida Rui</firstName>
                <lastName>Skattem</lastName>
                <dateOfBirth>1970-04-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ELIS</externalId>
                <firstName>Eli</firstName>
                <lastName>Skoland</lastName>
                <dateOfBirth>1958-05-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HSK</externalId>
                <firstName>Henning</firstName>
                <lastName>Skumsvoll</lastName>
                <dateOfBirth>1947-03-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ES</externalId>
                <firstName>Erna</firstName>
                <lastName>Solberg</lastName>
                <dateOfBirth>1961-02-24T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>BVS</externalId>
                <firstName>Bård Vegar</firstName>
                <lastName>Solhjell</lastName>
                <dateOfBirth>1971-12-22T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KETS</externalId>
                <firstName>Ketil</firstName>
                <lastName>Solvik-Olsen</lastName>
                <dateOfBirth>1972-02-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AGES</externalId>
                <firstName>Åge</firstName>
                <lastName>Starheim</lastName>
                <dateOfBirth>1946-05-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>AAST</externalId>
                <firstName>Arild</firstName>
                <lastName>Stokkan-Grande</lastName>
                <dateOfBirth>1978-04-05T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KNUS</externalId>
                <firstName>Knut</firstName>
                <lastName>Storberget</lastName>
                <dateOfBirth>1964-10-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TAS</externalId>
                <firstName>Tor-Arne</firstName>
                <lastName>Strøm</lastName>
                <dateOfBirth>1952-05-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>EKS</externalId>
                <firstName>Eirin</firstName>
                <lastName>Sund</lastName>
                <dateOfBirth>1967-04-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KES</externalId>
                <firstName>Kenneth</firstName>
                <lastName>Svendsen</lastName>
                <dateOfBirth>1954-08-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HOSY</externalId>
                <firstName>Hans Olav</firstName>
                <lastName>Syversen</lastName>
                <dateOfBirth>1966-11-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TMS</externalId>
                <firstName>Tone Merete</firstName>
                <lastName>Sønsterud</lastName>
                <dateOfBirth>1959-05-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IME</externalId>
                <firstName>Ine M. Eriksen</firstName>
                <lastName>Søreide</lastName>
                <dateOfBirth>1976-05-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HTA</externalId>
                <firstName>Hadia</firstName>
                <lastName>Tajik</lastName>
                <dateOfBirth>1983-07-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>DOT</externalId>
                <firstName>Dag Ole</firstName>
                <lastName>Teigen</lastName>
                <dateOfBirth>1982-08-10T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>BT</externalId>
                <firstName>Borghild</firstName>
                <lastName>Tenden</lastName>
                <dateOfBirth>1951-06-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Venstre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>MIT</externalId>
                <firstName>Michael</firstName>
                <lastName>Tetzschner</lastName>
                <dateOfBirth>1954-02-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>OLET</externalId>
                <firstName>Olemic</firstName>
                <lastName>Thommessen</lastName>
                <dateOfBirth>1956-04-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IBTH</externalId>
                <firstName>Ib</firstName>
                <lastName>Thomsen</lastName>
                <dateOfBirth>1961-10-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IMT</externalId>
                <firstName>Inga Marte</firstName>
                <lastName>Thorkildsen</lastName>
                <dateOfBirth>1976-07-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>BTH</externalId>
                <firstName>Bente</firstName>
                <lastName>Thorsen</lastName>
                <dateOfBirth>1958-10-31T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KJT</externalId>
                <firstName>Kjersti</firstName>
                <lastName>Toppe</lastName>
                <dateOfBirth>1967-10-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KPT</externalId>
                <firstName>Knut Petter</firstName>
                <lastName>Torgersen</lastName>
                <dateOfBirth>1955-09-07T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TOVT</externalId>
                <firstName>Tove-Lise</firstName>
                <lastName>Torve</lastName>
                <dateOfBirth>1964-06-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ATR</externalId>
                <firstName>Anette</firstName>
                <lastName>Trettebergstuen</lastName>
                <dateOfBirth>1981-05-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TOT</externalId>
                <firstName>Torgeir</firstName>
                <lastName>Trældal</lastName>
                <dateOfBirth>1965-01-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>CT</externalId>
                <firstName>Christian</firstName>
                <lastName>Tybring-Gjedde</lastName>
                <dateOfBirth>1963-08-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SNV</externalId>
                <firstName>Snorre Serigstad</firstName>
                <lastName>Valen</lastName>
                <dateOfBirth>1984-09-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TMV</externalId>
                <firstName>Trygve Slagsvold</firstName>
                <lastName>Vedum</lastName>
                <dateOfBirth>1978-12-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LVE</externalId>
                <firstName>Line</firstName>
                <lastName>Vennesland</lastName>
                <dateOfBirth>1985-02-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Aust-Agder</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LVA</externalId>
                <firstName>Lene</firstName>
                <lastName>Vågslid</lastName>
                <dateOfBirth>1986-03-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HEW</externalId>
                <firstName>Henning</firstName>
                <lastName>Warloe</lastName>
                <dateOfBirth>1961-03-24T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AWE</externalId>
                <firstName>Anders B.</firstName>
                <lastName>Werp</lastName>
                <dateOfBirth>1961-12-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TRUW</externalId>
                <firstName>Truls</firstName>
                <lastName>Wickholm</lastName>
                <dateOfBirth>1978-10-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KSW</externalId>
                <firstName>Karin S.</firstName>
                <lastName>Woldseth</lastName>
                <dateOfBirth>1954-08-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ATW</externalId>
                <firstName>Anne Tingelstad</firstName>
                <lastName>Wøien</lastName>
                <dateOfBirth>1965-06-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TAML</externalId>
                <firstName>Torkil</firstName>
                <lastName>Åmland</lastName>
                <dateOfBirth>1966-12-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>MAAA</externalId>
                <firstName>Marianne</firstName>
                <lastName>Aasen</lastName>
                <dateOfBirth>1967-02-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TELA</externalId>
                <firstName>Terje</firstName>
                <lastName>Aasland</lastName>
                <dateOfBirth>1965-02-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
            </representatives>
            <propositions>
              <proposition>
                <externalId>40037679</externalId>
                <description>Komiteens tilråding romertall III. </description>
                <onBehalfOf></onBehalfOf>
                <body>&lt;p&gt;Dokument nr. 12:24 (2007–2008) – grunnlovsforslag
        fra Rune J. Skjælaaen, Anna Ceselie Brustad Moe og Kari Mette Prestrud
        om endring av Grunnloven § 93 (rådgivende folkeavstemning) – bifalles
        ikke.&lt;/p&gt;</body>
              </proposition>
            </propositions>
          </vote>
          <vote>
            <externalId>1986</externalId>
            <externalIssueId>40702</externalIssueId>
            <counts>
              <for>25</for>
              <against>142</against>
              <absent>2</absent>
            </counts>
            <enacted>false</enacted>
            <subject>Det voteres alternativt mellom innstillingen Romertall III og forslag nr..1 fra Sp og SV</subject>
            <method>ikke_spesifisert</method>
            <resultType>ikke_spesifisert</resultType>
            <time>2012-02-07T12:43:38.8</time>
            <representatives>
              <representative>
                <externalId>PTA</externalId>
                <firstName>Per-Willy</firstName>
                <lastName>Amundsen</lastName>
                <dateOfBirth>1971-01-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>DTA</externalId>
                <firstName>Dag Terje</firstName>
                <lastName>Andersen</lastName>
                <dateOfBirth>1957-05-27T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KAAN</externalId>
                <firstName>Karin</firstName>
                <lastName>Andersen</lastName>
                <dateOfBirth>1952-12-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ANA</externalId>
                <firstName>Anders</firstName>
                <lastName>Anundsen</lastName>
                <dateOfBirth>1975-11-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>BEHA</externalId>
                <firstName>Bendiks H.</firstName>
                <lastName>Arnesen</lastName>
                <dateOfBirth>1951-06-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HAFA</externalId>
                <firstName>Hans Frode Kielland</firstName>
                <lastName>Asmyhr</lastName>
                <dateOfBirth>1970-02-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>EAS</externalId>
                <firstName>Elisabeth</firstName>
                <lastName>Aspaker</lastName>
                <dateOfBirth>1962-10-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>JASP</externalId>
                <firstName>Jorodd</firstName>
                <lastName>Asphjell</lastName>
                <dateOfBirth>1960-07-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>absent</voteResult>
              </representative>
              <representative>
                <externalId>NA</externalId>
                <firstName>Nikolai</firstName>
                <lastName>Astrup</lastName>
                <dateOfBirth>1978-06-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>AGEA</externalId>
                <firstName>Åge</firstName>
                <lastName>Austheim</lastName>
                <dateOfBirth>1983-11-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>FBJ</externalId>
                <firstName>Frank</firstName>
                <lastName>Bakke-Jensen</lastName>
                <dateOfBirth>1965-03-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>GKB</externalId>
                <firstName>Gina Knutson</firstName>
                <lastName>Barstad</lastName>
                <dateOfBirth>1986-04-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>GJB</externalId>
                <firstName>Geir Jørgen</firstName>
                <lastName>Bekkevold</lastName>
                <dateOfBirth>1963-11-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>EBO</externalId>
                <firstName>Else-May</firstName>
                <lastName>Botten</lastName>
                <dateOfBirth>1973-08-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TLB</externalId>
                <firstName>Tove Linnea</firstName>
                <lastName>Brandvik</lastName>
                <dateOfBirth>1968-11-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SUB</externalId>
                <firstName>Susanne</firstName>
                <lastName>Bratli</lastName>
                <dateOfBirth>1966-06-10T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>PB</externalId>
                <firstName>Per Roar</firstName>
                <lastName>Bredvold</lastName>
                <dateOfBirth>1957-03-05T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>THB</externalId>
                <firstName>Thomas</firstName>
                <lastName>Breen</lastName>
                <dateOfBirth>1972-09-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TBRE</externalId>
                <firstName>Tor</firstName>
                <lastName>Bremer</lastName>
                <dateOfBirth>1955-02-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>JBO</externalId>
                <firstName>Jan</firstName>
                <lastName>Bøhler</lastName>
                <dateOfBirth>1952-03-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>AC</externalId>
                <firstName>Akhtar</firstName>
                <lastName>Chaudhry</lastName>
                <dateOfBirth>1961-07-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>JFC</externalId>
                <firstName>Jette F.</firstName>
                <lastName>Christensen</lastName>
                <dateOfBirth>1983-06-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LIC</externalId>
                <firstName>Lise</firstName>
                <lastName>Christoffersen</lastName>
                <dateOfBirth>1955-08-05T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ADA</externalId>
                <firstName>André Oktay</firstName>
                <lastName>Dahl</lastName>
                <dateOfBirth>1975-07-07T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TORD</externalId>
                <firstName>Torgeir</firstName>
                <lastName>Dahl</lastName>
                <dateOfBirth>1953-12-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LD</externalId>
                <firstName>Laila</firstName>
                <lastName>Dåvøy</lastName>
                <dateOfBirth>1948-08-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SHEG</externalId>
                <firstName>Siri Hov</firstName>
                <lastName>Eggen</lastName>
                <dateOfBirth>1969-12-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>RAE</externalId>
                <firstName>Rigmor Andersen</firstName>
                <lastName>Eide</lastName>
                <dateOfBirth>1954-06-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>GUE</externalId>
                <firstName>Gunvor</firstName>
                <lastName>Eldegard</lastName>
                <dateOfBirth>1963-04-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>JAE</externalId>
                <firstName>Jan Arild</firstName>
                <lastName>Ellingsen</lastName>
                <dateOfBirth>1958-10-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>DE</externalId>
                <firstName>Dagrun</firstName>
                <lastName>Eriksen</lastName>
                <dateOfBirth>1971-06-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>RE</externalId>
                <firstName>Robert</firstName>
                <lastName>Eriksson</lastName>
                <dateOfBirth>1974-04-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SAF</externalId>
                <firstName>Svein</firstName>
                <lastName>Flåtten</lastName>
                <dateOfBirth>1944-10-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TEF</externalId>
                <firstName>Thor Erik</firstName>
                <lastName>Forsberg</lastName>
                <dateOfBirth>1980-04-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>PKF</externalId>
                <firstName>Per-Kristian</firstName>
                <lastName>Foss</lastName>
                <dateOfBirth>1950-07-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>JF</externalId>
                <firstName>Jan-Henrik</firstName>
                <lastName>Fredriksen</lastName>
                <dateOfBirth>1956-10-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>VKG</externalId>
                <firstName>Vigdis</firstName>
                <lastName>Giltun</lastName>
                <dateOfBirth>1952-03-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>PEG</externalId>
                <firstName>Peter Skovholt</firstName>
                <lastName>Gitmark</lastName>
                <dateOfBirth>1977-04-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SAG</externalId>
                <firstName>Svein</firstName>
                <lastName>Gjelseth</lastName>
                <dateOfBirth>1950-02-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>GKG</externalId>
                <firstName>Gunn Karin</firstName>
                <lastName>Gjul</lastName>
                <dateOfBirth>1967-07-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IAG</externalId>
                <firstName>Ingebjørg</firstName>
                <lastName>Godskesen</lastName>
                <dateOfBirth>1957-05-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Aust-Agder</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SYG</externalId>
                <firstName>Sylvi</firstName>
                <lastName>Graham</lastName>
                <dateOfBirth>1951-12-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TSG</externalId>
                <firstName>Trine Skei</firstName>
                <lastName>Grande</lastName>
                <dateOfBirth>1969-10-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Venstre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KGRA</externalId>
                <firstName>Knut</firstName>
                <lastName>Gravråk</lastName>
                <dateOfBirth>1985-05-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HEIG</externalId>
                <firstName>Heidi</firstName>
                <lastName>Greni</lastName>
                <dateOfBirth>1962-07-03T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>OG</externalId>
                <firstName>Oskar J.</firstName>
                <lastName>Grimstad</lastName>
                <dateOfBirth>1954-11-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>STEG</externalId>
                <firstName>Steinar</firstName>
                <lastName>Gullvåg</lastName>
                <dateOfBirth>1946-10-27T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LAG</externalId>
                <firstName>Laila</firstName>
                <lastName>Gustavsen</lastName>
                <dateOfBirth>1973-10-24T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>JONG</externalId>
                <firstName>Jon Jæger</firstName>
                <lastName>Gåsvatn</lastName>
                <dateOfBirth>1954-06-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TOHA</externalId>
                <firstName>Tore</firstName>
                <lastName>Hagebakken</lastName>
                <dateOfBirth>1961-01-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>AKSH</externalId>
                <firstName>Aksel</firstName>
                <lastName>Hagen</lastName>
                <dateOfBirth>1953-10-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>GJH</externalId>
                <firstName>Gjermund</firstName>
                <lastName>Hagesæter</lastName>
                <dateOfBirth>1960-12-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TERH</externalId>
                <firstName>Terje</firstName>
                <lastName>Halleland</lastName>
                <dateOfBirth>1966-04-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>METH</externalId>
                <firstName>Mette</firstName>
                <lastName>Hanekamhaug</lastName>
                <dateOfBirth>1987-06-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>GEHN</externalId>
                <firstName>Geir-Ketil</firstName>
                <lastName>Hansen</lastName>
                <dateOfBirth>1956-03-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LILH</externalId>
                <firstName>Lillian</firstName>
                <lastName>Hansen</lastName>
                <dateOfBirth>1957-05-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SOH</externalId>
                <firstName>Sigvald Oppebøen</firstName>
                <lastName>Hansen</lastName>
                <dateOfBirth>1950-09-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SHAR</externalId>
                <firstName>Svein</firstName>
                <lastName>Harberg</lastName>
                <dateOfBirth>1958-07-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Aust-Agder</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KNAH</externalId>
                <firstName>Knut Arild</firstName>
                <lastName>Hareide</lastName>
                <dateOfBirth>1972-11-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ARLH</externalId>
                <firstName>Arne L.</firstName>
                <lastName>Haugen</lastName>
                <dateOfBirth>1939-07-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HAKH</externalId>
                <firstName>Håkon</firstName>
                <lastName>Haugli</lastName>
                <dateOfBirth>1969-05-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IHE</externalId>
                <firstName>Ingrid</firstName>
                <lastName>Heggø</lastName>
                <dateOfBirth>1961-08-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LCH</externalId>
                <firstName>Linda C. Hofstad</firstName>
                <lastName>Helleland</lastName>
                <dateOfBirth>1977-08-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TROH</externalId>
                <firstName>Trond</firstName>
                <lastName>Helleland</lastName>
                <dateOfBirth>1962-07-10T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>AREH</externalId>
                <firstName>Are</firstName>
                <lastName>Helseth</lastName>
                <dateOfBirth>1955-01-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KARH</externalId>
                <firstName>Kari</firstName>
                <lastName>Henriksen</lastName>
                <dateOfBirth>1955-08-10T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LHH</externalId>
                <firstName>Line Henriette</firstName>
                <lastName>Hjemdal</lastName>
                <dateOfBirth>1971-10-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>BÅH</externalId>
                <firstName>Bård</firstName>
                <lastName>Hoksrud</lastName>
                <dateOfBirth>1973-03-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ALEH</externalId>
                <firstName>Alf Egil</firstName>
                <lastName>Holmelid</lastName>
                <dateOfBirth>1947-12-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>HEH</externalId>
                <firstName>Heikki</firstName>
                <lastName>Holmås</lastName>
                <dateOfBirth>1972-06-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SHK</externalId>
                <firstName>Solveig</firstName>
                <lastName>Horne</lastName>
                <dateOfBirth>1969-01-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>MORH</externalId>
                <firstName>Morten</firstName>
                <lastName>Høglund</lastName>
                <dateOfBirth>1965-07-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>BENH</externalId>
                <firstName>Bent</firstName>
                <lastName>Høie</lastName>
                <dateOfBirth>1971-05-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>DH</externalId>
                <firstName>Dagfinn</firstName>
                <lastName>Høybråten</lastName>
                <dateOfBirth>1957-12-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ØH</externalId>
                <firstName>Øyvind</firstName>
                <lastName>Håbrekke</lastName>
                <dateOfBirth>1969-12-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>STRH</externalId>
                <firstName>Stine Renate</firstName>
                <lastName>Håheim</lastName>
                <dateOfBirth>1984-05-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TRI</externalId>
                <firstName>Torbjørn Røe</firstName>
                <lastName>Isaksen</lastName>
                <dateOfBirth>1978-07-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SIVJ</externalId>
                <firstName>Siv</firstName>
                <lastName>Jensen</lastName>
                <dateOfBirth>1969-06-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IJ</externalId>
                <firstName>Irene</firstName>
                <lastName>Johansen</lastName>
                <dateOfBirth>1961-01-07T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>MOJ</externalId>
                <firstName>Morten Ørsal</firstName>
                <lastName>Johansen</lastName>
                <dateOfBirth>1964-09-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ARK</externalId>
                <firstName>Arve</firstName>
                <lastName>Kambe</lastName>
                <dateOfBirth>1974-11-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KKK</externalId>
                <firstName>Kari Kjønaas</firstName>
                <lastName>Kjos</lastName>
                <dateOfBirth>1962-01-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>JKL</externalId>
                <firstName>Jenny</firstName>
                <lastName>Klinge</lastName>
                <dateOfBirth>1975-11-28T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>UEK</externalId>
                <firstName>Ulf Erik</firstName>
                <lastName>Knudsen</lastName>
                <dateOfBirth>1964-12-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TKK</externalId>
                <firstName>Tove Karoline</firstName>
                <lastName>Knutsen</lastName>
                <dateOfBirth>1951-01-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>MAKO</externalId>
                <firstName>Martin</firstName>
                <lastName>Kolberg</lastName>
                <dateOfBirth>1949-02-24T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>OYK</externalId>
                <firstName>Øyvind</firstName>
                <lastName>Korsberg</lastName>
                <dateOfBirth>1960-01-31T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IVK</externalId>
                <firstName>Ivar</firstName>
                <lastName>Kristiansen</lastName>
                <dateOfBirth>1956-02-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>GJK</externalId>
                <firstName>Gerd Janne</firstName>
                <lastName>Kristoffersen</lastName>
                <dateOfBirth>1952-11-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HHL</externalId>
                <firstName>Hallgeir H.</firstName>
                <lastName>Langeland</lastName>
                <dateOfBirth>1955-11-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>SEL</externalId>
                <firstName>Stein Erik</firstName>
                <lastName>Lauvås</lastName>
                <dateOfBirth>1965-05-03T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>UIL</externalId>
                <firstName>Ulf</firstName>
                <lastName>Leirstein</lastName>
                <dateOfBirth>1973-06-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ALJ</externalId>
                <firstName>Anna</firstName>
                <lastName>Ljunggren</lastName>
                <dateOfBirth>1984-06-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>POL</externalId>
                <firstName>Per Olaf</firstName>
                <lastName>Lundteigen</lastName>
                <dateOfBirth>1953-04-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>BLO</externalId>
                <firstName>Bjørn</firstName>
                <lastName>Lødemel</lastName>
                <dateOfBirth>1958-08-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HML</externalId>
                <firstName>Hilde</firstName>
                <lastName>Magnusson</lastName>
                <dateOfBirth>1970-06-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SOM</externalId>
                <firstName>Sonja</firstName>
                <lastName>Mandt</lastName>
                <dateOfBirth>1960-03-29T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>MAM</externalId>
                <firstName>Marianne</firstName>
                <lastName>Marthinsen</lastName>
                <dateOfBirth>1980-08-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>BEM</externalId>
                <firstName>Bente Stein</firstName>
                <lastName>Mathisen</lastName>
                <dateOfBirth>1956-02-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SME</externalId>
                <firstName>Siri A.</firstName>
                <lastName>Meling</lastName>
                <dateOfBirth>1963-02-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TMI</externalId>
                <firstName>Torgeir</firstName>
                <lastName>Micaelsen</lastName>
                <dateOfBirth>1979-05-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ASC</externalId>
                <firstName>Åse</firstName>
                <lastName>Michaelsen</lastName>
                <dateOfBirth>1960-06-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>PEMY</externalId>
                <firstName>Peter N.</firstName>
                <lastName>Myhre</lastName>
                <dateOfBirth>1954-11-29T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LMY</externalId>
                <firstName>Lars</firstName>
                <lastName>Myraune</lastName>
                <dateOfBirth>1944-08-05T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SMY</externalId>
                <firstName>Sverre</firstName>
                <lastName>Myrli</lastName>
                <dateOfBirth>1971-08-26T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IRLN</externalId>
                <firstName>Irene Lange</firstName>
                <lastName>Nordahl</lastName>
                <dateOfBirth>1968-02-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TON</externalId>
                <firstName>Tore</firstName>
                <lastName>Nordtun</lastName>
                <dateOfBirth>1949-09-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>MN</externalId>
                <firstName>Marit</firstName>
                <lastName>Nybakk</lastName>
                <dateOfBirth>1947-02-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HIN</externalId>
                <firstName>Hilde Anita</firstName>
                <lastName>Nyvoll</lastName>
                <dateOfBirth>1976-05-29T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Troms</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>EIN</externalId>
                <firstName>Eivind</firstName>
                <lastName>Nævdal-Bolstad</lastName>
                <dateOfBirth>1987-04-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>JOD</externalId>
                <firstName>Jon Øyvind</firstName>
                <lastName>Odland</lastName>
                <dateOfBirth>1954-05-29T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>IOL</externalId>
                <firstName>Ingalill</firstName>
                <lastName>Olsen</lastName>
                <dateOfBirth>1955-12-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>PO</externalId>
                <firstName>Per Arne</firstName>
                <lastName>Olsen</lastName>
                <dateOfBirth>1961-02-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>WO</externalId>
                <firstName>Wenche</firstName>
                <lastName>Olsen</lastName>
                <dateOfBirth>1965-11-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TO</externalId>
                <firstName>Torfinn</firstName>
                <lastName>Opheim</lastName>
                <dateOfBirth>1961-04-12T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HPED</externalId>
                <firstName>Helga</firstName>
                <lastName>Pedersen</lastName>
                <dateOfBirth>1973-01-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>GP</externalId>
                <firstName>Geir</firstName>
                <lastName>Pollestad</lastName>
                <dateOfBirth>1978-08-13T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>CNR</externalId>
                <firstName>Christina Nilsson</firstName>
                <lastName>Ramsøy</lastName>
                <dateOfBirth>1986-11-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LRE</externalId>
                <firstName>Laila Marie</firstName>
                <lastName>Reiertsen</lastName>
                <dateOfBirth>1960-10-19T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>MAGR</externalId>
                <firstName>Magne</firstName>
                <lastName>Rommetveit</lastName>
                <dateOfBirth>1956-04-27T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KJR</externalId>
                <firstName>Kjell Ingolf</firstName>
                <lastName>Ropstad</lastName>
                <dateOfBirth>1985-06-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Aust-Agder</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TR</externalId>
                <firstName>Torstein</firstName>
                <lastName>Rudihagen</lastName>
                <dateOfBirth>1951-08-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>JHR</externalId>
                <firstName>Jørund</firstName>
                <lastName>Rytman</lastName>
                <dateOfBirth>1977-05-04T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>PES</externalId>
                <firstName>Per</firstName>
                <lastName>Sandberg</lastName>
                <dateOfBirth>1960-02-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ESAN</externalId>
                <firstName>Erling</firstName>
                <lastName>Sande</lastName>
                <dateOfBirth>1978-11-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>ISC</externalId>
                <firstName>Ingjerd</firstName>
                <lastName>Schou</lastName>
                <dateOfBirth>1955-01-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Østfold</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KSIM</externalId>
                <firstName>Kåre</firstName>
                <lastName>Simensen</lastName>
                <dateOfBirth>1955-08-30T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Finnmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>absent</voteResult>
              </representative>
              <representative>
                <externalId>SONS</externalId>
                <firstName>Sonja Irene</firstName>
                <lastName>Sjøli</lastName>
                <dateOfBirth>1949-06-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SSK</externalId>
                <firstName>Siv Aida Rui</firstName>
                <lastName>Skattem</lastName>
                <dateOfBirth>1970-04-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ELIS</externalId>
                <firstName>Eli</firstName>
                <lastName>Skoland</lastName>
                <dateOfBirth>1958-05-11T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HSK</externalId>
                <firstName>Henning</firstName>
                <lastName>Skumsvoll</lastName>
                <dateOfBirth>1947-03-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vest-Agder</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ES</externalId>
                <firstName>Erna</firstName>
                <lastName>Solberg</lastName>
                <dateOfBirth>1961-02-24T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>BVS</externalId>
                <firstName>Bård Vegar</firstName>
                <lastName>Solhjell</lastName>
                <dateOfBirth>1971-12-22T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KETS</externalId>
                <firstName>Ketil</firstName>
                <lastName>Solvik-Olsen</lastName>
                <dateOfBirth>1972-02-14T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>AGES</externalId>
                <firstName>Åge</firstName>
                <lastName>Starheim</lastName>
                <dateOfBirth>1946-05-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sogn og Fjordane</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>AAST</externalId>
                <firstName>Arild</firstName>
                <lastName>Stokkan-Grande</lastName>
                <dateOfBirth>1978-04-05T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nord-Trøndelag</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KNUS</externalId>
                <firstName>Knut</firstName>
                <lastName>Storberget</lastName>
                <dateOfBirth>1964-10-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TAS</externalId>
                <firstName>Tor-Arne</firstName>
                <lastName>Strøm</lastName>
                <dateOfBirth>1952-05-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>EKS</externalId>
                <firstName>Eirin</firstName>
                <lastName>Sund</lastName>
                <dateOfBirth>1967-04-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KES</externalId>
                <firstName>Kenneth</firstName>
                <lastName>Svendsen</lastName>
                <dateOfBirth>1954-08-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HOSY</externalId>
                <firstName>Hans Olav</firstName>
                <lastName>Syversen</lastName>
                <dateOfBirth>1966-11-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Kristelig Folkeparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TMS</externalId>
                <firstName>Tone Merete</firstName>
                <lastName>Sønsterud</lastName>
                <dateOfBirth>1959-05-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IME</externalId>
                <firstName>Ine M. Eriksen</firstName>
                <lastName>Søreide</lastName>
                <dateOfBirth>1976-05-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HTA</externalId>
                <firstName>Hadia</firstName>
                <lastName>Tajik</lastName>
                <dateOfBirth>1983-07-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>DOT</externalId>
                <firstName>Dag Ole</firstName>
                <lastName>Teigen</lastName>
                <dateOfBirth>1982-08-10T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>BT</externalId>
                <firstName>Borghild</firstName>
                <lastName>Tenden</lastName>
                <dateOfBirth>1951-06-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Venstre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>MIT</externalId>
                <firstName>Michael</firstName>
                <lastName>Tetzschner</lastName>
                <dateOfBirth>1954-02-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>OLET</externalId>
                <firstName>Olemic</firstName>
                <lastName>Thommessen</lastName>
                <dateOfBirth>1956-04-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IBTH</externalId>
                <firstName>Ib</firstName>
                <lastName>Thomsen</lastName>
                <dateOfBirth>1961-10-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>IMT</externalId>
                <firstName>Inga Marte</firstName>
                <lastName>Thorkildsen</lastName>
                <dateOfBirth>1976-07-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Vestfold</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>BTH</externalId>
                <firstName>Bente</firstName>
                <lastName>Thorsen</lastName>
                <dateOfBirth>1958-10-31T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Rogaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KJT</externalId>
                <firstName>Kjersti</firstName>
                <lastName>Toppe</lastName>
                <dateOfBirth>1967-10-20T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>KPT</externalId>
                <firstName>Knut Petter</firstName>
                <lastName>Torgersen</lastName>
                <dateOfBirth>1955-09-07T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TOVT</externalId>
                <firstName>Tove-Lise</firstName>
                <lastName>Torve</lastName>
                <dateOfBirth>1964-06-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Møre og Romsdal</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ATR</externalId>
                <firstName>Anette</firstName>
                <lastName>Trettebergstuen</lastName>
                <dateOfBirth>1981-05-25T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TOT</externalId>
                <firstName>Torgeir</firstName>
                <lastName>Trældal</lastName>
                <dateOfBirth>1965-01-02T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Nordland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>CT</externalId>
                <firstName>Christian</firstName>
                <lastName>Tybring-Gjedde</lastName>
                <dateOfBirth>1963-08-08T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>SNV</externalId>
                <firstName>Snorre Serigstad</firstName>
                <lastName>Valen</lastName>
                <dateOfBirth>1984-09-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Sør-Trøndelag</district>
                <party>Sosialistisk Venstreparti</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TMV</externalId>
                <firstName>Trygve Slagsvold</firstName>
                <lastName>Vedum</lastName>
                <dateOfBirth>1978-12-01T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hedmark</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>LVE</externalId>
                <firstName>Line</firstName>
                <lastName>Vennesland</lastName>
                <dateOfBirth>1985-02-06T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Aust-Agder</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>LVA</externalId>
                <firstName>Lene</firstName>
                <lastName>Vågslid</lastName>
                <dateOfBirth>1986-03-17T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>HEW</externalId>
                <firstName>Henning</firstName>
                <lastName>Warloe</lastName>
                <dateOfBirth>1961-03-24T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>AWE</externalId>
                <firstName>Anders B.</firstName>
                <lastName>Werp</lastName>
                <dateOfBirth>1961-12-16T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Buskerud</district>
                <party>Høyre</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TRUW</externalId>
                <firstName>Truls</firstName>
                <lastName>Wickholm</lastName>
                <dateOfBirth>1978-10-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oslo</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>KSW</externalId>
                <firstName>Karin S.</firstName>
                <lastName>Woldseth</lastName>
                <dateOfBirth>1954-08-09T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>ATW</externalId>
                <firstName>Anne Tingelstad</firstName>
                <lastName>Wøien</lastName>
                <dateOfBirth>1965-06-18T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Oppland</district>
                <party>Senterpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>for</voteResult>
              </representative>
              <representative>
                <externalId>TAML</externalId>
                <firstName>Torkil</firstName>
                <lastName>Åmland</lastName>
                <dateOfBirth>1966-12-23T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Hordaland</district>
                <party>Fremskrittspartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>MAAA</externalId>
                <firstName>Marianne</firstName>
                <lastName>Aasen</lastName>
                <dateOfBirth>1967-02-21T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Akershus</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
              <representative>
                <externalId>TELA</externalId>
                <firstName>Terje</firstName>
                <lastName>Aasland</lastName>
                <dateOfBirth>1965-02-15T00:00:00</dateOfBirth>
                <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
                <district>Telemark</district>
                <party>Arbeiderpartiet</party>
                <committees>
                </committees>
                <period>2011-2012</period>
                <voteResult>against</voteResult>
              </representative>
            </representatives>
            <propositions>
              <proposition>
                <externalId>40037680</externalId>
                <description>Forslag  fra Sosialistisk Venstreparti og Senterpartiet</description>
                <onBehalfOf>Sosialistisk Venstreparti og Senterpartiet</onBehalfOf>
                <body>&lt;p&gt;Dokument nr. 12:24 (2007–2008) fra Rune J. Skjælaaen,
        Anna Ceselie Brustad Moe og Kari Mette Prestrud om endring av Grunnloven
        § 93 (rådgivende folkeavstemning) – bifalles. &lt;/p&gt;</body>
              </proposition>
            </propositions>
          </vote>
        </votes>
        """