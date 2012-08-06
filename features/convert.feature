Feature: Import data
    Scenario: Import districts
      Given a file named "fylker.xml" with:
      """
      <?xml version="1.0" encoding="utf-8"?>
      <fylker_oversikt xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
        <versjon>1.0</versjon>
        <fylker_liste>
          <fylke>
            <versjon>1.0</versjon>
            <id>AA</id>
            <navn>Aust-Agder</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>VA</id>
            <navn>Vest-Agder</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>Ak</id>
            <navn>Akershus</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>Bu</id>
            <navn>Buskerud</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>Fi</id>
            <navn>Finnmark</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>He</id>
            <navn>Hedmark</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>Ho</id>
            <navn>Hordaland</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>MR</id>
            <navn>Møre og Romsdal</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>No</id>
            <navn>Nordland</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>Op</id>
            <navn>Oppland</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>Os</id>
            <navn>Oslo</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>Ro</id>
            <navn>Rogaland</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>SF</id>
            <navn>Sogn og Fjordane</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>Te</id>
            <navn>Telemark</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>Tr</id>
            <navn>Troms</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>NT</id>
            <navn>Nord-Trøndelag</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>ST</id>
            <navn>Sør-Trøndelag</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>Ve</id>
            <navn>Vestfold</navn>
          </fylke>
          <fylke>
            <versjon>1.0</versjon>
            <id>Øs</id>
            <navn>Østfold</navn>
          </fylke>
        </fylker_liste>
      </fylker_oversikt>
      """
      When I run `hdo-converter districts fylker.xml`
      Then the stdout should contain:
      """
      [
        {
          "kind": "hdo#district",
          "externalId": "AA",
          "name": "Aust-Agder"
        },
        {
          "kind": "hdo#district",
          "externalId": "VA",
          "name": "Vest-Agder"
        },
        {
          "kind": "hdo#district",
          "externalId": "Ak",
          "name": "Akershus"
        },
        {
          "kind": "hdo#district",
          "externalId": "Bu",
          "name": "Buskerud"
        },
        {
          "kind": "hdo#district",
          "externalId": "Fi",
          "name": "Finnmark"
        },
        {
          "kind": "hdo#district",
          "externalId": "He",
          "name": "Hedmark"
        },
        {
          "kind": "hdo#district",
          "externalId": "Ho",
          "name": "Hordaland"
        },
        {
          "kind": "hdo#district",
          "externalId": "MR",
          "name": "Møre og Romsdal"
        },
        {
          "kind": "hdo#district",
          "externalId": "No",
          "name": "Nordland"
        },
        {
          "kind": "hdo#district",
          "externalId": "Op",
          "name": "Oppland"
        },
        {
          "kind": "hdo#district",
          "externalId": "Os",
          "name": "Oslo"
        },
        {
          "kind": "hdo#district",
          "externalId": "Ro",
          "name": "Rogaland"
        },
        {
          "kind": "hdo#district",
          "externalId": "SF",
          "name": "Sogn og Fjordane"
        },
        {
          "kind": "hdo#district",
          "externalId": "Te",
          "name": "Telemark"
        },
        {
          "kind": "hdo#district",
          "externalId": "Tr",
          "name": "Troms"
        },
        {
          "kind": "hdo#district",
          "externalId": "NT",
          "name": "Nord-Trøndelag"
        },
        {
          "kind": "hdo#district",
          "externalId": "ST",
          "name": "Sør-Trøndelag"
        },
        {
          "kind": "hdo#district",
          "externalId": "Ve",
          "name": "Vestfold"
        },
        {
          "kind": "hdo#district",
          "externalId": "Øs",
          "name": "Østfold"
        }
      ]
      """