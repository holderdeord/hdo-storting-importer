# encoding: UTF-8

module Hdo
  module StortingImporter
    describe Representative do

      def create_representative
        Representative.new('ADA', 'André Oktay', 'Dahl', 'M', '1975-07-07T00:00:00', '0001-01-01T00:00:00', 'Akershus', 'Høyre', ['Justiskomiteen'], '2011-2012')
      end

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
        rep = create_representative
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

      it 'can deserialize HDO XML' do
        rep = create_representative
        Representative.from_hdo_node(parse(rep.to_hdo_xml)).should == rep
      end

    end
  end
end
