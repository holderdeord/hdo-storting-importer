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
      When I successfully run `hdo-converter districts fylker.xml` for up to 5 seconds
      Then the stdout should contain:
      """
      [
        {
          "kind": "hdo#district",
          "external_id": "AA",
          "name": "Aust-Agder"
        },
        {
          "kind": "hdo#district",
          "external_id": "VA",
          "name": "Vest-Agder"
        },
        {
          "kind": "hdo#district",
          "external_id": "Ak",
          "name": "Akershus"
        },
        {
          "kind": "hdo#district",
          "external_id": "Bu",
          "name": "Buskerud"
        },
        {
          "kind": "hdo#district",
          "external_id": "Fi",
          "name": "Finnmark"
        },
        {
          "kind": "hdo#district",
          "external_id": "He",
          "name": "Hedmark"
        },
        {
          "kind": "hdo#district",
          "external_id": "Ho",
          "name": "Hordaland"
        },
        {
          "kind": "hdo#district",
          "external_id": "MR",
          "name": "Møre og Romsdal"
        },
        {
          "kind": "hdo#district",
          "external_id": "No",
          "name": "Nordland"
        },
        {
          "kind": "hdo#district",
          "external_id": "Op",
          "name": "Oppland"
        },
        {
          "kind": "hdo#district",
          "external_id": "Os",
          "name": "Oslo"
        },
        {
          "kind": "hdo#district",
          "external_id": "Ro",
          "name": "Rogaland"
        },
        {
          "kind": "hdo#district",
          "external_id": "SF",
          "name": "Sogn og Fjordane"
        },
        {
          "kind": "hdo#district",
          "external_id": "Te",
          "name": "Telemark"
        },
        {
          "kind": "hdo#district",
          "external_id": "Tr",
          "name": "Troms"
        },
        {
          "kind": "hdo#district",
          "external_id": "NT",
          "name": "Nord-Trøndelag"
        },
        {
          "kind": "hdo#district",
          "external_id": "ST",
          "name": "Sør-Trøndelag"
        },
        {
          "kind": "hdo#district",
          "external_id": "Ve",
          "name": "Vestfold"
        },
        {
          "kind": "hdo#district",
          "external_id": "Øs",
          "name": "Østfold"
        }
      ]
      """