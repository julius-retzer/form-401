<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xml:lang="en" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:d = "http://docbook.org/ns/docbook" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:exsl="http://exslt.org/common"  exclude-result-prefixes="d" version="1.0">
  <xsl:template match="/">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">      
		<fo:layout-master-set>
    <fo:simple-page-master master-name="even"
      page-height="297mm" page-width="210mm"
      margin-top="20mm" margin-bottom="20mm"
      margin-left="25mm" margin-right="25mm">
      <fo:region-body margin-bottom="20mm"/>
      <fo:region-after region-name="footer-even" extent="10mm"/>
    </fo:simple-page-master>
    <fo:simple-page-master master-name="odd"
      page-height="297mm" page-width="210mm"
      margin-top="20mm" margin-bottom="20mm"
      margin-left="25mm" margin-right="25mm">
      <fo:region-body margin-bottom="20mm"/>
      <fo:region-after region-name="footer-odd" extent="10mm"/>
    </fo:simple-page-master>
    <fo:page-sequence-master master-name="document">
      <fo:repeatable-page-master-alternatives>
        <fo:conditional-page-master-reference odd-or-even="even"
          master-reference="even"/>
        <fo:conditional-page-master-reference odd-or-even="odd"
          master-reference="odd"/>
      </fo:repeatable-page-master-alternatives>
    </fo:page-sequence-master>
  </fo:layout-master-set>
  <fo:page-sequence master-reference="document" font-family="Arial">
    <fo:static-content flow-name="footer-even">
      <fo:block text-align="end"><fo:page-number/></fo:block>
    </fo:static-content>
    <fo:static-content flow-name="footer-odd">
      <fo:block text-align-last="end"><fo:page-number/></fo:block>
    </fo:static-content>
          <fo:flow flow-name="xsl-region-body">							     				
										<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaNazov">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>OZNÁMENIE</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>daňovníka o predĺžení lehoty na podanie daňového priznania</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>podľa § 49 ods. 3 písm. a) alebo b) zákona č. 595/2003 Z. z. o dani z príjmov v znení neskorších predpisov (ďalej len „zákon“)</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaNazovPodlaPar">
    			
				<fo:block text-align='justify'>Oznámenie o predĺžení lehoty na podanie daňového priznania k dani z príjmov fyzickej osoby alebo daňového priznania k dani z príjmov právnickej osoby (ďalej len „oznámenie“) podáva daňovník príslušnému správcovi dane do uplynutia lehoty na podanie daňového priznania podľa § 49 ods. 2 zákona, tzn. do troch kalendárnych mesiacov po uplynutí zdaňovacieho obdobia. Táto lehota sa predlžuje najviac o tri celé kalendárne mesiace alebo najviac o šesť celých kalendárnych mesiacov, ak súčasťou príjmov daňovníka sú zdaniteľné príjmy plynúce zo zdrojov v zahraničí. Tento postup neuplatňuje daňovník v konkurze, daňovník v likvidácii a dedič, ktorý podáva daňové priznanie za zomrelého daňovníka.1)</fo:block><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDicZdObdobie">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>01 - Daňové identifikačné číslo</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDicZdObdobie/tbDic'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaZdanObdobie">
    			<fo:block background-color='black' color='white'>Za zdaňovacie obdobie 2)</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Fyzická osoba</fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt'><fo:inline color='white'>___</fo:inline>Za rok</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaZdanObdobie/zaRok[text()='2017']">2017</xsl:if><xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaZdanObdobie/zaRok[text()='2018']">2018</xsl:if><xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaZdanObdobie/zaRok[text()='2019']">2019</xsl:if><xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaZdanObdobie/zaRok[text()='2020']">2020</xsl:if><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Právnická osoba</fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>od</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaZdanObdobie/dtpZdObdobieOd'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>do</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaZdanObdobie/dtpZdObdobieDo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDovod">
    			
						<xsl:for-each select="./sekciaDovod2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDovod/sekciaDovod2/cbDovod[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Oznámenie podávam z dôvodu opravy údajov uvedených v predchádzajúcom oznámení 3), ktoré bolo správcovi dane podané dňa:</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDovod/sekciaDovod2/dtpOznamDovodu'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1">
    			<fo:block background-color='black' color='white'>ÚDAJE O DAŇOVNÍKOVI</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./sekciaOdd1FO">
    			<fo:block background-color='black' color='white'>Fyzická osoba</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>05 - Rodné číslo</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>vypĺňa sa, ak ide o daňovníka, ktorý nemá pridelené DIČ</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>06 - Dátum narodenia</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>vypĺňa sa, ak ide o daňovníka,ktorý nemá pridelené DIČ anirodné číslo v Slovenskej republike</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/tbRodneCislo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/tbRodneCislo_2'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/dtpDatNarodenia'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>		<xsl:for-each select="./secpom_1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='53px'/><fo:table-column column-width='53px'/><fo:table-column column-width='42px'/><fo:table-column column-width='42px'/><fo:table-column column-width='33px'/><fo:table-column column-width='33px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>02 - Priezvisko</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>03 - Meno</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>04 - Titul (pred menom / za priezviskom)</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/secpom_1/tbOdd1Priezvisko'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/secpom_1/tbOdd1Meno'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/secpom_1/tbOdd1TitulPred'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>/</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/secpom_1/tbOdd1TitulZa'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./sekciaTPAdresa">
    			<fo:block background-color='black' color='white'>Adresa trvalého pobytu (fyzická osoba) / Adresa sídla (právnická osoba) na území Slovenskej republiky alebo v zahraničí</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./sekciaTPAdresa1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='42px'/><fo:table-column column-width='42px'/><fo:table-column column-width='38px'/><fo:table-column column-width='38px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>09 - Ulica</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>10 - Súpisné / orientačné číslo</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>09 - Ulica</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa1/tbTPUlica'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>10 - Súpisné / orientačné číslo</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa1/tdTPCislo'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./sekciaTPAdresa2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='35px'/><fo:table-column column-width='35px'/><fo:table-column column-width='40px'/><fo:table-column column-width='40px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>11 - PSČ</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>12 - Obec</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>13 - Štát</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>11 - PSČ</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa2/tbTPPSC'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>12 - Obec</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa2/tbTPObec'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>13 - Štát</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa2/tbTPStat'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./sekciaAdresaSK">
    			<fo:block background-color='black' color='white'>Adresa na území Slovenskej republiky 4)</fo:block><fo:block color='white'>|</fo:block>
						<xsl:for-each select="./sekciaAdresaSK1">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='42px'/><fo:table-column column-width='42px'/><fo:table-column column-width='38px'/><fo:table-column column-width='38px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>14 - Ulica</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>15 - Súpisné / orientačné číslo</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>14 - Ulica</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK/sekciaAdresaSK1/tbUlicaSK'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>15 - Súpisné / orientačné číslo</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK/sekciaAdresaSK1/tdCisloSK'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./sekciaAdresaSK2">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='35px'/><fo:table-column column-width='35px'/><fo:table-column column-width='40px'/><fo:table-column column-width='40px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>16 - PSČ</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>17 - Obec</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block font-size='10pt' hyphenate='true'>16 - PSČ</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK/sekciaAdresaSK2/tbPSCSK'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>17 - Obec</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK/sekciaAdresaSK2/tbObecSK'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<xsl:for-each select="./sekciaNovaLehota">
    			<fo:block background-color='black' color='white'>Nová (predĺžená) lehota na podanie daňového priznania k dani z príjmov 5)</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Daňovník vyznačí, podľa ktorého ustanovenia zákona si predlžuje lehotu na podanie daňového priznania a uvedie novú (predĺženú) lehotu.</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>predĺženie lehoty podľa § 49 ods. 3 písm. a) zákona (najviac o tri celé kalendárne mesiace)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaNovaLehota/cbPismA[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell><fo:table-cell><fo:block font-size='10pt' hyphenate='true'><fo:inline color='white'>___</fo:inline>nová lehota</fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaNovaLehota/dtpLehota'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>predĺženie lehoty podľa § 49 ods. 3 písm. b) zákona (najviac o šesť celých kalendárnych mesiacov, ak súčasťou príjmov daňovníka sú zdaniteľné príjmy plynúce zo zdrojov v zahraničí)</fo:block></fo:table-cell><fo:table-cell>
<fo:block font-size='12pt'>
<xsl:choose>
<xsl:when test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaNovaLehota/cbPismB[text()='1']">
<fo:inline font-family='Wingdings'>&#253;</fo:inline>
</xsl:when>
<xsl:otherwise>
<fo:inline font-family='Wingdings'>&#168;</fo:inline>
</xsl:otherwise>
</xsl:choose>
</fo:block>
</fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval">
    			
						<xsl:for-each select="./sekciaOdd3Vypracoval">
    			
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>Vypracoval</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Dňa</fo:block></fo:table-cell><fo:table-cell><fo:block><fo:inline color='white'>___</fo:inline>Telefónne číslo</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval/sekciaOdd3Vypracoval/tbOdd3Vypracoval'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval/sekciaOdd3Vypracoval/tbOdd3Dna'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell><fo:table-cell  border-width='0.1mm' border-style='solid' background-color='white'><fo:block><xsl:value-of select='/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval/sekciaOdd3Vypracoval/tbOdd3Telefon'/><fo:inline color='white'>___</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
				<fo:block background-color='white' color='white'>.</fo:block>
		
		</xsl:for-each>
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVysvetlivky">
    			<fo:block background-color='black' color='white'>Vysvetlivky k vyplneniu oznámenia:</fo:block><fo:block color='white'>|</fo:block>
				<fo:table table-layout='fixed' width='100%' border-collapse='separate'><fo:table-column column-width='15px'/><fo:table-column column-width='15px'/><fo:table-body><fo:table-row><fo:table-cell><fo:block>1) Daňovníkovi v konkurze alebo daňovníkovi v likvidácii môže správca dane predĺžiť lehotu na podanie daňového priznania k dani z príjmov len na základe žiadosti správcu konkurznej podstaty alebo daňovníka v likvidácii podanej najneskôr 15 dní pred uplynutím lehoty na podanie daňového priznania podľa § 49 ods. 2 zákona.Ak má povinnosť podať daňové priznanie k dani z príjmov fyzickej osoby dedič podľa § 49 ods. 4 a 5 zákona, správca dane môže lehotu na jeho podanie predĺžiť len na základe žiadosti dediča podanej najneskôr 15 dní pred uplynutím lehoty na podanie daňového priznania podľa § 49 ods. 4 a 5 zákona.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>2) Uvedie sa zdaňovacie obdobie, kalendárny rok u fyzickej osoby alebo kalendárny rok, hospodársky rok alebo iné zdaňovacie obdobie u právnickej osoby, za ktoré sa predlžuje lehota na podanie daňového priznania na základe oznámenia daňovníka.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>3) Ak daňovník zistí, že v podanom oznámení uviedol nesprávne alebo neúplné údaje, podá nové oznámenie, v ktorom uvedie správne údaje. Ak sa daňovník rozhodne, že daňové priznanie podá v inej (predĺženej) lehote, do uplynutia lehoty podľa § 49 ods. 2 zákona môže podať nové oznámenie, v ktorom uvedie novú (predĺženú) lehotu. Skutočnosť, že oznámenie podáva z týchto dôvodov, vyznačí krížikom a uvedie dátum podania predchádzajúceho oznámenia.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>4) Vypĺňa sa, len ak daňovník nemá na území Slovenskej republiky trvalý pobyt alebo sídlo. Fyzická osoba uvedie adresu pobytu na území Slovenskej republiky, kde sa v zdaňovacom období obvykle zdržiavala. Právnická osoba uvedie umiestnenie stálej prevádzkarne alebo organizačnej zložky.</fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block><fo:inline color='white'>|</fo:inline></fo:block></fo:table-cell></fo:table-row><fo:table-row><fo:table-cell><fo:block>5) Daňovník uvedie novú (predĺženú) lehotu, ktorou je koniec kalendárneho mesiaca, v ktorej podá daňové priznanie a v ktorej je aj daň splatná, napr. 30.04., 31.05. alebo 30.06., resp. ak súčasťou jeho príjmov sú zdaniteľné príjmy plynúce zo zdrojov v zahraničí aj 31.07., 31.08. alebo 30.09.</fo:block></fo:table-cell></fo:table-row></fo:table-body>                                        
                                  </fo:table><fo:block color='white'>|</fo:block>
		</xsl:for-each>
			<fo:block background-color='white' color='white'>.</fo:block>
						

			</fo:flow>
           </fo:page-sequence>
          </fo:root>
         </xsl:template>
        </xsl:stylesheet>
