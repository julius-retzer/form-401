<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="xhtml" xpath-default-namespace="http://www.w3.org/1999/xhtml" indent="yes" omit-xml-declaration="yes"/>
<xsl:template match="/">
<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;</xsl:text>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<title>OZN493v17 - Oznámenie o predĺžení lehoty na podanie daňového priznania</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="language" content="sk-SK" />
<style type="text/css">
body { 
	font-family: 'Open Sans', 'Segoe UI', 'Trebuchet MS', 'Geneva CE', lucida, sans-serif;
	background-color:transparent;
	color: #646464;
}
.ui-tabs {
	padding: .2em;
	position: relative;
	zoom: 1;
}
.ui-widget-content {
	background: #f9f9f9;
	border: 2px solid #d4d4d4;
	color: #3e3e3e;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px
}
.ui-widget-header {					 
	font-weight: 400;	
	border: 1px solid #5f5247;
	background-color: #5f5247;
	color: #fff;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px
}								
.clear { clear: both; }
.layoutMain {
	margin: 0px auto;
	padding: 5px 5px 5px 5px;	
}				
.layoutRow { margin-bottom: 5px; }				
.caption { /*width: 100%; border-bottom: solid 1px black;*/ }
.nocaption > .caption { border: 0px !important; }
.nocaption > .caption span {
	background: none !important;
	display: none;
} 
.caption .title { padding-left: 5px; }
.headercorrection {	
	margin: 0px;
}				
.labelVis {
	float: left;
	font-weight: bold;
	font-family: 'Open Sans', 'Segoe UI', 'Trebuchet MS', 'Geneva CE', lucida, sans-serif;
	line-height: 25px;
	margin: 0px 18px 0px 0px;
	padding: 0;
	width: 190px;
}
.contentVis {    	     
	float: left;	
	line-height: 25px;
	margin: 0px;
	padding: 0px;
	vertical-align: top;			
}
.wordwrap { 
   white-space: pre-wrap;      
   white-space: -moz-pre-wrap; 
   white-space: -pre-wrap;     
   white-space: -o-pre-wrap;   
   word-wrap: break-word;      
}				
</style>
</head>
<body>
<div id="main" class="layoutMain">
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">OznamenieOVykonaniUpravyZakladuDane176v16</div>
</div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaNazov/text()"><div><label class="labelVis">sekciaNazov: </label><span class="contentVis wordwrap"><xsl:value-of select="./sekciaNazov"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaNazovPodlaPar/text()"><div><label class="labelVis">sekciaNazovPodlaPar: </label><span class="contentVis wordwrap"><xsl:value-of select="./sekciaNazovPodlaPar"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDicZdObdobie">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaDicZdObdobie</div>
</div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDicZdObdobie/tbDic/text()"><div><label class="labelVis">01 - Daňové identifikačné číslo: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbDic"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaZdanObdobie">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaZdanObdobie</div>
</div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaZdanObdobie/zaRok/text()"><div><label class="labelVis">Za rok: </label><span class="contentVis wordwrap"><xsl:value-of select="./zaRok"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaZdanObdobie/dtpZdObdobieOd/text()"><div><label class="labelVis">od: </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./dtpZdObdobieOd" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaZdanObdobie/dtpZdObdobieDo/text()"><div><label class="labelVis">do: </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./dtpZdObdobieDo" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDovod">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaDovod</div>
</div>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDovod/sekciaDovod2">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaDovod2</div>
</div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDovod/sekciaDovod2/cbDovod/text()"><div><label class="labelVis">Oznámenie podávam z dôvodu opravy údajov uvedených v predchádzajúcom oznámení, ktoré bolo správcovi dane podané dňa:: </label><span class="contentVis wordwrap"><xsl:value-of select="./cbDovod"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDovod/sekciaDovod2/dtpOznamDovodu/text()"><div><label class="labelVis">Dátum podania dôvodu opravy údajov uvedených v predchádzajúcom oznámení správcovi: </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./dtpOznamDovodu" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaOdd1</div>
</div>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaOdd1FO</div>
</div>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/secpom_1">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">secpom_1</div>
</div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/secpom_1/tbOdd1Priezvisko/text()"><div><label class="labelVis">02 - Priezvisko: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbOdd1Priezvisko"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/secpom_1/tbOdd1Meno/text()"><div><label class="labelVis">03 - Meno: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbOdd1Meno"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/secpom_1/tbOdd1TitulPred/text()"><div><label class="labelVis">04 - Titul (pred menom): </label><span class="contentVis wordwrap"><xsl:value-of select="./tbOdd1TitulPred"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/secpom_1/tbOdd1TitulZa/text()"><div><label class="labelVis">04 - Titul (za menom): </label><span class="contentVis wordwrap"><xsl:value-of select="./tbOdd1TitulZa"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/tbRodneCislo/text()"><div><label class="labelVis">05 - Rodné číslo (pred lomkou): </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCislo"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/tbRodneCislo_2/text()"><div><label class="labelVis">05 -Rodné číslo (za lomkou): </label><span class="contentVis wordwrap"><xsl:value-of select="./tbRodneCislo_2"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/dtpDatNarodenia/text()"><div><label class="labelVis">06 - Dátum narodenia: </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./dtpDatNarodenia" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1PO">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaOdd1PO</div>
</div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1PO/taOdd1ObchMeno/text()"><div><label class="labelVis">07 - Obchodné meno alebo názov: </label><span class="contentVis wordwrap"><xsl:value-of select="./taOdd1ObchMeno"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1PO/ico/text()"><div><label class="labelVis">08 - IČO: </label><span class="contentVis wordwrap"><xsl:value-of select="./ico"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaTPAdresa</div>
</div>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa1">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaTPAdresa1</div>
</div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa1/tbTPUlica/text()"><div><label class="labelVis">09 - Ulica: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbTPUlica"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa1/tdTPCislo/text()"><div><label class="labelVis">10 - Súpisné / orientačné číslo: </label><span class="contentVis wordwrap"><xsl:value-of select="./tdTPCislo"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa2">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaTPAdresa2</div>
</div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa2/tbTPPSC/text()"><div><label class="labelVis">11 - PSČ: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbTPPSC"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa2/tbTPObec/text()"><div><label class="labelVis">12 - Obec: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbTPObec"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa2/tbTPStat/text()"><div><label class="labelVis">13 - Štát: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbTPStat"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaAdresaSK</div>
</div>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK/sekciaAdresaSK1">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaAdresaSK1</div>
</div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK/sekciaAdresaSK1/tbUlicaSK/text()"><div><label class="labelVis">14 - Ulica: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbUlicaSK"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK/sekciaAdresaSK1/tdCisloSK/text()"><div><label class="labelVis">15 - Súpisné / orientačné číslo: </label><span class="contentVis wordwrap"><xsl:value-of select="./tdCisloSK"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK/sekciaAdresaSK2">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaAdresaSK2</div>
</div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK/sekciaAdresaSK2/tbPSCSK/text()"><div><label class="labelVis">16 - PSČ: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbPSCSK"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK/sekciaAdresaSK2/tbObecSK/text()"><div><label class="labelVis">17 - Obec: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbObecSK"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaNovaLehota">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaNovaLehota</div>
</div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaNovaLehota/cbPismA/text()"><div><label class="labelVis">predĺženie lehoty podľa § 49 ods. 3 písm. a) zákona (najviac o tri celé kalendárne mesiace): </label><span class="contentVis wordwrap"><xsl:value-of select="./cbPismA"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaNovaLehota/cbPismB/text()"><div><label class="labelVis">predĺženie lehoty podľa § 49 ods. 3 písm. b) zákona (najviac o šesť celých kalendárnych mesiacov, ak súčasťou príjmov daňovníka sú zdaniteľné príjmy plynúce zo zdrojov v zahraničí): </label><span class="contentVis wordwrap"><xsl:value-of select="./cbPismB"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaNovaLehota/dtpLehota/text()"><div><label class="labelVis">nová lehota: </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./dtpLehota" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaVypracoval</div>
</div>
<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval/sekciaOdd3Vypracoval">
<div id="" class="layoutRow ui-tabs ui-widget-content" title="" >
<div class="caption ui-widget-header">
<div class="headercorrection">sekciaOdd3Vypracoval</div>
</div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval/sekciaOdd3Vypracoval/tbOdd3Vypracoval/text()"><div><label class="labelVis">Vypracoval: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbOdd3Vypracoval"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval/sekciaOdd3Vypracoval/tbOdd3Dna/text()"><div><label class="labelVis">Dňa: </label><span class="contentVis wordwrap"><xsl:call-template name="formatToSkDate"><xsl:with-param name="date" select="./tbOdd3Dna" /></xsl:call-template></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval/sekciaOdd3Vypracoval/tbOdd3Telefon/text()"><div><label class="labelVis">Telefónne číslo: </label><span class="contentVis wordwrap"><xsl:value-of select="./tbOdd3Telefon"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval/sekciaOdd3Vyhlasenie/text()"><div><label class="labelVis">sekciaOdd3Vyhlasenie: </label><span class="contentVis wordwrap"><xsl:value-of select="./sekciaOdd3Vyhlasenie"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVysvetlivky/text()"><div><label class="labelVis">sekciaVysvetlivky: </label><span class="contentVis wordwrap"><xsl:value-of select="./sekciaVysvetlivky"/></span></div><div class="clear"></div></xsl:if>
<div class="clear"></div>
</div>
</xsl:for-each>
</div>
</body>
</html>
</xsl:template>
<xsl:template name="formatToSkDate">
<xsl:param name="date" />
<xsl:value-of select="concat(substring($date, 9, 2), '.', substring($date, 6, 2), '.', substring($date, 1, 4))" />
</xsl:template>
</xsl:stylesheet>

