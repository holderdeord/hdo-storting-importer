# encoding: UTF-8

module Hdo
  module StortingImporter
    describe Representative do

      it "builds representatives from the Storting XML list" do
        xml = <<-XML
        <?xml version="1.0" encoding="utf-8"?>
        <representanter_oversikt xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://data.stortinget.no">
          <versjon>1.0</versjon>
          <representanter_liste>
            <representant>
              <versjon>1.0</versjon>
              <doedsdato>0001-01-01T00:00:00</doedsdato>
              <etternavn>Dahl</etternavn>
              <foedselsdato>1975-07-07T00:00:00</foedselsdato>
              <fornavn>André Oktay</fornavn>
              <id>ADA</id>
              <kjoenn>mann</kjoenn>
              <fylke>
                <versjon>1.0</versjon>
                <id>Ak</id>
                <navn>Akershus</navn>
              </fylke>
              <parti>
                <versjon>1.0</versjon>
                <id>H</id>
                <navn>Høyre</navn>
              </parti>
            </representant>
          </representanter_liste>
        </representanter_oversikt>
        XML

        representatives = Representative.from_storting_doc(parse(xml))
        representatives.size.should == 1

        rep = representatives.first
        rep.first_name.should == 'André Oktay'
        rep.last_name.should == 'Dahl'
        rep.gender.should == 'M'
        rep.district.should == 'Akershus'
        rep.party.should == 'Høyre'
        rep.external_id.should == 'ADA'
        rep.date_of_birth.should == '1975-07-07T00:00:00'
        rep.date_of_death.should == '0001-01-01T00:00:00'
      end

      it 'converts itself into HDO XML' do
        rep = Representative.example
        rep.to_hdo_xml.should == <<-XML
<representative>
  <externalId>ADA</externalId>
  <firstName>André Oktay</firstName>
  <lastName>Dahl</lastName>
  <gender>M</gender>
  <dateOfBirth>1975-07-07T00:00:00</dateOfBirth>
  <dateOfDeath>0001-01-01T00:00:00</dateOfDeath>
  <district>Akershus</district>
  <party>Høyre</party>
  <committees>
    <committee>Justiskomiteen</committee>
  </committees>
  <period>2011-2012</period>
</representative>
        XML
      end

      it 'can deserialize a HDO XML node' do
        rep = Representative.example
        Representative.from_hdo_node(parse(rep.to_hdo_xml)).should == rep
      end

      it 'can deserialize a HDO XML doc' do
        rep = Representative.example
        Representative.from_hdo_doc(parse("<representatives>#{rep.to_hdo_xml}</representatives>")).should == [rep]
      end

      it 'has a type name' do
        Representative.type_name.should == 'representative'
      end

      it 'has a description' do
        Representative.description.should be_kind_of(String)
      end

      it 'has an XML example' do
        Representative.xml_example.should be_kind_of(String)
      end

      it 'has a list of fields' do
        Representative.fields.should_not be_empty
      end

      it 'unescapes non-ASCII characters in the external id' do
        rep = Representative.example

        rep.instance_variable_set("@external_id", '_AE_O_A')
        rep.external_id.should == "ÆØÅ"
      end

      it 'has #short_inspect' do
        Representative.example.short_inspect.should be_kind_of(String)
      end

    end
  end
end
