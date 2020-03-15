<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
  <xsl:output method="text" indent="yes" omit-xml-declaration="yes"/>
  <xsl:strip-space elements="*" />
  <xsl:template match="/dokument">
    <xsl:text>OZN493v17 - Oznámenie 49 ods 3</xsl:text>
    <xsl:apply-templates select="./hlavicka"/>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka">
    <xsl:apply-templates select="./dic"/>
    <xsl:text>&#xA;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>Za zdaňovacie obdobie</xsl:text>
    <xsl:apply-templates select="./zaRok"/>
    <xsl:apply-templates select="./datumOd"/>
    <xsl:apply-templates select="./datumDo"/>
    <xsl:apply-templates select="./dovodDoplnenia"/>
    <xsl:apply-templates select="./datumPovodne"/>
    <xsl:apply-templates select="./fyzickaOsoba"/>
    <xsl:apply-templates select="./pravnickaOsoba"/>
    <xsl:apply-templates select="./sidlo"/>
    <xsl:apply-templates select="./adresaSr"/>
    <xsl:apply-templates select="./novaLehota"/>
    <xsl:apply-templates select="./vypracoval"/>
    <xsl:apply-templates select="./podpis"/>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/fyzickaOsoba">
    <xsl:text>&#xA;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>Fyzick&#225; osoba</xsl:text>
    <xsl:apply-templates select="./priezvisko"/>
    <xsl:apply-templates select="./meno"/>
    <xsl:apply-templates select="./titulPred"/>
    <xsl:apply-templates select="./titulZa"/>
    <xsl:apply-templates select="./rodneCislo"/>
    <xsl:apply-templates select="./datumNarodenia"/>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/pravnickaOsoba">
    <xsl:text>&#xA;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>Pr&#225;vnick&#225; osoba</xsl:text>
    <xsl:apply-templates select="./obchodneMeno"/>
    <xsl:apply-templates select="./ico"/>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/novaLehota">
    <xsl:text>&#xA;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>Nová (predĺžená) lehota na podanie daňového priznania k dani z príjmov</xsl:text>
    <xsl:apply-templates select="./predlzenie493a"/>
    <xsl:apply-templates select="./predlzenie493b"/>
    <xsl:apply-templates select="./datumLehota"/>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/pravnickaOsoba/obchodneMeno">
    <xsl:text>&#xA;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>06 - Obchodné meno alebo názov: </xsl:text>
    <xsl:apply-templates select="./riadok"/>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/sidlo">
    <xsl:text>&#xA;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>Adresa trvalého pobytu (fyzická osoba) / Adresa sídla (právnická osoba) na území Slovenskej republiky alebo v zahraničí</xsl:text>
    <xsl:apply-templates select="./ulica"/>
    <xsl:apply-templates select="./supisneOrientacneCislo"/>
    <xsl:apply-templates select="./psc"/>
    <xsl:apply-templates select="./obec"/>
    <xsl:apply-templates select="./stat"/>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/adresaSr">
    <xsl:text>&#xA;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>Adresa na území Slovenskej republiky</xsl:text>
    <xsl:apply-templates select="./ulica"/>
    <xsl:apply-templates select="./supisneOrientacneCislo"/>
    <xsl:apply-templates select="./psc"/>
    <xsl:apply-templates select="./obec"/>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/vypracoval">
    <xsl:text>&#xA;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>Vypracoval</xsl:text>
    <xsl:apply-templates select="./vypr"/>
    <xsl:apply-templates select="./dna"/>
    <xsl:apply-templates select="./telefon"/>
  </xsl:template>
  <xsl:template match="/dokument/telo/priloha/udaje/rodneCislo/rcPredLom">
    <xsl:if test="./text()">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/telo/priloha/udaje/rodneCislo/rcZaLom">
    <xsl:if test="./text()">
      <xsl:text>/</xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/dic">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>01 - Daňové identifikačné číslo: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/zaRok">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>Za rok: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/pravnickaOsoba/ico">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>08 - IČO: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/datumOd">
    <xsl:if test="./text()">
      <xsl:text>&#09;</xsl:text>
      <xsl:text>Od:</xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/datumDo">
    <xsl:if test="./text()">
      <xsl:text>&#09;</xsl:text>
      <xsl:text>Do:</xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/datumPovodne">
    <xsl:if test="./text()">
      <xsl:text>&#09;</xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/dovodDoplnenia">
    <xsl:if test="./text() = '1'">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>Oznámenie podávam z dôvodu opravy údajov uvedených v predchádzajúcom oznámení 3), ktoré bolo správcovi dane podané dňa: </xsl:text>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/fyzickaOsoba/priezvisko">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>02 - Priezvisko: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/fyzickaOsoba/meno">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>03 - Meno: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/fyzickaOsoba/titulPred">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>04 - Titul pred menom: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/fyzickaOsoba/titulZa">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>Titul za priezviskom: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/fyzickaOsoba/rodneCislo">
    <xsl:text>&#xA;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>05 - Rodné číslo: </xsl:text>
    <xsl:apply-templates select="./rcPredLom"/>
    <xsl:apply-templates select="./rcZaLom"/>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/fyzickaOsoba/datumNarodenia">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>06 - Dátum narodenia: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/pravnickaOsoba/obchodneMeno/riadok">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/sidlo/ulica">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>09 - Ulica: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/sidlo/supisneOrientacneCislo">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>10 - Súpisné/orientačné číslo: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/sidlo/psc">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>11 - PSČ: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/sidlo/obec">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>12 - Obec: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/sidlo/stat">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>13 Št&#225;t: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/adresaSr/ulica">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>14 - Ulica: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/adresaSr/supisneOrientacneCislo">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>15 - Súpisné/orientačné číslo: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/adresaSr/psc">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>16 - PSČ: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/adresaSr/obec">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>17 - Obec: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/vypracoval/dna">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>Dňa: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/vypracoval/vypr">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>Vypracoval: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/vypracoval/telefon">
    <xsl:text>&#xA;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>&#09;</xsl:text>
    <xsl:text>Telef&#243;nne č&#237;slo: </xsl:text>
    <xsl:if test="./text()">
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/novaLehota/predlzenie493a">
    <xsl:if test="./text() = '1'">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>predĺženie lehoty podľa § 49 ods. 3 písm. a) zákona (najviac o tri celé kalendárne mesiace)</xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/novaLehota/predlzenie493b">
    <xsl:if test="./text() = '1'">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>predĺženie lehoty podľa § 49 ods. 3 písm. b) zákona (najviac o šesť celých kalendárnych mesiacov, ak súčasťou príjmov daňovníka sú zdaniteľné príjmy plynúce zo zdrojov v zahraničí)</xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/novaLehota/datumLehota">
    <xsl:if test="./text()">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>Dňa: </xsl:text>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="." />
        <xsl:with-param name="replace" select="'&#10;'" />
        <xsl:with-param name="by" select="'&#13;&#10;&#09;&#09;&#09;&#09;'" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/dokument/hlavicka/podpis">
    <xsl:if test="./text() = '1'">
      <xsl:text>&#xA;</xsl:text>
      <xsl:text>&#09;</xsl:text>
      <xsl:text>Vyhlasujem, že všetky údaje uvedené v oznámení sú správne a úplné.</xsl:text>
    </xsl:if>
  </xsl:template>
  <xsl:template name="formatToSkDate">
    <xsl:param name="date" />
    <xsl:variable name="dateString" select="string($date)" />
    <xsl:choose>
      <xsl:when test="$dateString != '' and string-length($dateString)=10 and string(number(substring($dateString, 1, 4))) != 'NaN' ">
        <xsl:value-of select="concat(substring($dateString, 9, 2), '.', substring($dateString, 6, 2), '.', substring($dateString, 1, 4))" />
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$dateString"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template name="booleanCheckboxToString">
    <xsl:param name="boolValue" />
    <xsl:variable name="boolValueString" select="string($boolValue)" />
    <xsl:choose>
      <xsl:when test="$boolValueString = 'true' ">
        <xsl:text>Áno</xsl:text>
      </xsl:when>
      <xsl:when test="$boolValueString = 'false' ">
        <xsl:text>Nie</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$boolValueString"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template name="formatTimeTrimMinutes">
    <xsl:param name="time" />
    <xsl:variable name="timeString" select="string($time)" />
    <xsl:if test="$timeString != ''">
      <xsl:value-of select="substring($timeString, 1, 5)" />
    </xsl:if>
  </xsl:template>
  <xsl:template name="string-replace-all">
    <xsl:param name="text"/>
    <xsl:param name="replace"/>
    <xsl:param name="by"/>
    <xsl:choose>
      <xsl:when test="contains($text, $replace)">
        <xsl:value-of select="substring-before($text,$replace)"/>
        <xsl:value-of select="$by"/>
        <xsl:call-template name="string-replace-all">
          <xsl:with-param name="text" select="substring-after($text,$replace)"/>
          <xsl:with-param name="replace" select="$replace"/>
          <xsl:with-param name="by" select="$by" />
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$text"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template name="formatToSkDateTime">
    <xsl:param name="dateTime" />
    <xsl:variable name="dateSubstring" select="substring($dateTime, 1, 10)" />
    <xsl:variable name="timeSubstring" select="substring($dateTime, 12, 8)" />
    <xsl:variable name="dateString">
      <xsl:choose>
        <xsl:when test="$dateSubstring != '' and string-length($dateSubstring)=10 and string(number(substring($dateSubstring, 1, 4))) != 'NaN' ">
          <xsl:value-of select="concat(substring($dateSubstring, 9, 2), '.', substring($dateSubstring, 6, 2), '.', substring($dateSubstring, 1, 4))" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$dateSubstring"></xsl:value-of>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="timeString">
      <xsl:if test="$timeSubstring != ''">
        <xsl:value-of select="substring($timeSubstring, 1, 5)" />
      </xsl:if>
    </xsl:variable>
    <xsl:value-of select="concat($dateString,' ',$timeString)"/>
  </xsl:template>
</xsl:stylesheet>

