<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#xa0;">]>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" > 
<xsl:output method="xhtml" xpath-default-namespace="http://www.w3.org/1999/xhtml" omit-xml-declaration="yes"/>
<xsl:template match="/">
<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;</xsl:text>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>OZN493v17 - Oznámenie o predĺžení lehoty na podanie daňového priznania</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="language" content="sk-SK" />
		<script src="Scripts/jquery.min.js" type="text/javascript"></script>
<script src="Scripts/jquery-ui.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="Scripts/jquery-ui-timepicker-addon.js" type="text/javascript"></script>
<script src="Scripts/wrapper.js" type="text/javascript"></script>
<script src="Scripts/ego.statusDialog.js" type="text/javascript"></script>
<script src="Scripts/PFS_ego.js" type="text/javascript"></script>
<script src="Scripts/PFS_jquery.validate.js" type="text/javascript"></script>
<script src="Scripts/PFS_jquery.form.plugins.js" type="text/javascript"></script>
<script src="Scripts/p_pfs.js" type="text/javascript"></script>
<script src="Scripts/jquery.maskedinput.min.js" type="text/javascript"></script>
<script src="Scripts/form.401.xmlfdf.js" type="text/javascript"></script>
<link href="Styles/jquery-ui.css" rel="stylesheet" type="text/css"/>
<link href="Styles/base.css" rel="stylesheet" type="text/css"/>
<link href="Styles/ego.css" rel="stylesheet" type="text/css"/>
<link href="Styles/p_pfs.css" rel="stylesheet" type="text/css"/>

		<script type="text/javascript">
		(function($, undefined) {
			if (!$.validator) {
				throw '$.validator is missing.';
			}

			var custom = function(value, element, methodName) {
				if (!methodName) {
					throw 'Invalid method.';
				}
				
				var method = window[methodName];
				if (!method) {
					throw 'Invalid method ' + methodName + '.';
				}

				 return method.apply(this, [element, this.validatorObject.sectionScope ? this.validatorObject.sectionScope.page - 1 : '-1', 1]);
			}

			$.validator.addMethod('customE', function(value, element, methodName) {
				return custom(value, element, methodName);
			});
			
			$.validator.addMethod('customW', function(value, element, methodName) {
				return custom(value, element, methodName);
			});
		}(jQuery));

				<xsl:text disable-output-escaping="yes">
			/* <![CDATA[ */
		$.validator.addMethod
(
"tbDicRegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
return value.match(new RegExp(/^$|^\d{10}$/));
}
);

$.validator.addMethod
(
"tbRodneCisloRegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
return value.match(new RegExp(/^$|^\d{6}$/));
}
);

$.validator.addMethod
(
"tbRodneCislo_2RegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
return value.match(new RegExp(/^$|^\d{3,4}$/));
}
);

$.validator.addMethod
(
"icoRegEx",
function(value, element)
{
if ($(element).hasClass('disableValidators')) { return true; }
return value.match(new RegExp(/^$|^\d{8}$/));
}
);


		
		
		function inlinertppsc(element,sid) {
var stat_aut_val = $("[name='tbTPStat']").val();
var psc_aut_val = $("[name='tbTPPSC']").val();;


if (psc_aut_val != "")
{
return (stat_aut_val == "Slovensko"||stat_aut_val == "slovensko"||stat_aut_val == "SVK"||stat_aut_val == "SK"||stat_aut_val == "SR"||stat_aut_val == "Slovenská republika"||stat_aut_val == "Slovenská Republika"||stat_aut_val == "slovenská republika"||stat_aut_val == "Slovakia"||stat_aut_val == "Slovak Republic"||stat_aut_val == "sk"||stat_aut_val == "SLOVENSKO"||stat_aut_val == "SLOVENSKÁ REPUBLIKA"||stat_aut_val == "svk") && (!(/^\d+$/).test(psc_aut_val) || psc_aut_val.length != 5) ? 0 : 1;
}else  
return 1
}

function inlineoddo(element,sid) {
    function ParseDateToXsdDate(date) {
        if (!!date) {
            var parts = date.split('.');
            if (parts[0].length == 1)
                parts[0] = "0" + parts[0];
            if (parts[1].length == 1)
                parts[1] = "0" + parts[1];
            return parts[2] + "-" + parts[1] + "-" + parts[0];
        } else {
            return "";
        }
    }

    var fDVal = $("#dtpZdObdobieOd").val();
    var tDVal = $("#dtpZdObdobieDo").val();

    var fromDate = new Date(ParseDateToXsdDate(fDVal));
    var toDate = new Date(ParseDateToXsdDate(tDVal));

    if (fromDate <= toDate) {
        return 0;
    }
    return 1;
}

function inlinelimitdatumod(element,sid) {
var aktualnyDatum = new Date();
aktualnyDatum = $("#dtpZdObdobieOd").val();


  var hranicaDatum = new Date();
  hranicaDatum = '01.01.2016';


    dateComponents = aktualnyDatum .split(".");
    aktualnyDatum = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);

    dateComponents = hranicaDatum .split(".");
    hranicaDatum = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);

    if (aktualnyDatum >= hranicaDatum )
     {
      return 1; 
     }else{
      return 0;
     } 
}

function gettyppodania(element,sid) {
    if ($("#tbOdd1Priezvisko").val() != '' && $("#taOdd1ObchMeno").val() == '')
        return 'Oznámenie - FO';
    else if ($("#tbOdd1Priezvisko").val() == '' && $("#taOdd1ObchMeno").val() != '')
        return 'Oznámenie - PO';
    else
        return '';
}

function inlinelimitdatumdo(element,sid) {
var aktualnyDatum = new Date();
aktualnyDatum = $("#dtpZdObdobieDo").val();


  var hranicaDatum = new Date();
  hranicaDatum = '01.01.2017';


    dateComponents = aktualnyDatum .split(".");
    aktualnyDatum = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);

    dateComponents = hranicaDatum .split(".");
    hranicaDatum = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);

    if (aktualnyDatum >= hranicaDatum )
     {
      return 1; 
     }else{
      return 0;
     } 
}

function inlinelehotaposlednydenvmesiaci(element,sid) {
 var lehotaValue = $("#dtpLehota").val();
 if (lehotaValue == "")
  return 0;
  
 var dateComponents = lehotaValue.split(".");
    var lehota = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(lehota.getDate()))
  return 0;

 var lehotaODen = new Date(lehota);
 lehotaODen.setDate(lehotaODen.getDate() + 1);

    if (lehotaODen.getMonth() != lehota.getMonth()) {
  return 1;
 }
 else {
  return 0;
 } 
}

function inlinelehotazarok(element,sid) {
 var lehotaValue = $("#dtpLehota").val();
 var zaRokValue = parseInt($("#zaRok").val());
 if (lehotaValue == "" || isNaN(zaRokValue))
  return 0;
  
 var dateComponents = lehotaValue.split(".");
    var lehota = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(lehota.getDate()))
  return 0;
  
 var zaRok6Mes = new Date(zaRokValue + 1, 6, 0);

    if (lehota <= zaRok6Mes) {
  return 1;
 }
 else {
  return 0;
 }
}

function inlinelehotaobdobiedo(element,sid) {
 var lehotaValue = $("#dtpLehota").val();
 var obdobieDoValue = $("#dtpZdObdobieDo").val();
 if (lehotaValue == "" || obdobieDoValue == "")
  return 0;
  
 var dateComponents = lehotaValue.split(".");
    var lehota = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(lehota.getDate()))
  return 0;
  
 dateComponents = obdobieDoValue.split(".");
    var obdobieDo6Mes = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(obdobieDo6Mes.getDate()))
  return 0;
 obdobieDo6Mes = new Date(obdobieDo6Mes.getFullYear(), obdobieDo6Mes.getMonth() + 7, 0);

    if (lehota <= obdobieDo6Mes) {
  return 1;
 }
 else {
  return 0;
 }
}

function inlinelehotazarok_b(element,sid) {
 var lehotaValue = $("#dtpLehota").val();
 var zaRokValue = parseInt($("#zaRok").val());
 if (lehotaValue == "" || isNaN(zaRokValue))
  return 0;
  
 var dateComponents = lehotaValue.split(".");
    var lehota = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(lehota.getDate()))
  return 0;
  
 var zaRok9Mes = new Date(zaRokValue + 1, 9, 0);

    if (lehota <= zaRok9Mes) {
  return 1;
 }
 else {
  return 0;
 }
}

function inlinelehotaobdobiedo_b(element,sid) {
 var lehotaValue = $("#dtpLehota").val();
 var obdobieDoValue = $("#dtpZdObdobieDo").val();
 if (lehotaValue == "" || obdobieDoValue == "")
  return 0;
  
 var dateComponents = lehotaValue.split(".");
    var lehota = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(lehota.getDate()))
  return 0;
  
 dateComponents = obdobieDoValue.split(".");
    var obdobieDo9Mes = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(obdobieDo9Mes.getDate()))
  return 0;
 obdobieDo9Mes = new Date(obdobieDo9Mes.getFullYear(), obdobieDo9Mes.getMonth() + 10, 0);

    if (lehota <= obdobieDo9Mes) {
  return 1;
 }
 else {
  return 0;
 }
}

function inlinelehotaobdobiedo_zakonne(element,sid) {
var lehotaValue = $("#dtpLehota").val();
 var obdobieDoValue = $("#dtpZdObdobieDo").val();
 if (lehotaValue == "" || obdobieDoValue == "")
  return 0;
  
 var dateComponents = lehotaValue.split(".");
    var lehota = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(lehota.getDate()))
  return 0;
  
 dateComponents = obdobieDoValue.split(".");
    var obdobieDo3Mes = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(obdobieDo3Mes.getDate()))
  return 0;
 obdobieDo3Mes = new Date(obdobieDo3Mes.getFullYear(), obdobieDo3Mes.getMonth() + 4, 0);

    if (lehota <= obdobieDo3Mes) {
  return 1;
 }
 else {
  return 0;
 }
}

function inlinelehotazarok_zakonne(element,sid) {
 var lehotaValue = $("#dtpLehota").val();
 var zaRokValue = parseInt($("#zaRok").val());
 if (lehotaValue == "" || isNaN(zaRokValue))
  return 0;
  
 var dateComponents = lehotaValue.split(".");
    var lehota = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(lehota.getDate()))
  return 0;
  
 var zaRok3Mes = new Date(zaRokValue + 1, 3, 0);

    if (lehota <= zaRok3Mes) {
  return 1;
 }
 else {
  return 0;
 }
}

function inlinelehotatext(element,sid) {
if ($("#cbPismA").attr("checked")) return "3 kalendárne mesiace.";
else return "6 kalendárnych mesiacov."
}

function inliner16psc_w(element,sid) {
var patt = new RegExp("^\\d{5}$");
if (patt.test($("#tbPSCSK").val()))
 return 1;
else
 return 0;
}

function inlinednazarok_zakonne(element,sid) {
 var lehotaValue = $("#tbOdd3Dna").val();
 var zaRokValue = parseInt($("#zaRok").val());
 if (lehotaValue == "" || isNaN(zaRokValue))
  return 0;
  
 var dateComponents = lehotaValue.split(".");
    var lehota = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(lehota.getDate()))
  return 0;
  
 var zaRok3Mes = new Date(zaRokValue + 1, 3, 0);

    if (lehota <= zaRok3Mes) {
  return 1;
 }
 else {
  return 0;
 }
}

function inlinednaobdobiedo_zakonne(element,sid) {
var lehotaValue = $("#tbOdd3Dna").val();
 var obdobieDoValue = $("#dtpZdObdobieDo").val();
 if (lehotaValue == "" || obdobieDoValue == "")
  return 0;
  
 var dateComponents = lehotaValue.split(".");
    var lehota = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(lehota.getDate()))
  return 0;
  
 dateComponents = obdobieDoValue.split(".");
    var obdobieDo3Mes = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);
 if (isNaN(obdobieDo3Mes.getDate()))
  return 0;
 obdobieDo3Mes = new Date(obdobieDo3Mes.getFullYear(), obdobieDo3Mes.getMonth() + 4, 0);

    if (lehota <= obdobieDo3Mes) {
  return 1;
 }
 else {
  return 0;
 }
}

function inlinezarok(element,sid) {
var aktualnyDatum = $("#tbOdd3Dna").val();

var rok = Number($("#zaRok").val());
if (rok == 0) rok = 2017;

var hranicaDatum = "1.1." + (rok + 1);

dateComponents = aktualnyDatum.split(".");
aktualnyDatum = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);

dateComponents = hranicaDatum.split(".");
hranicaDatum = new Date(dateComponents[2], dateComponents[1] - 1, dateComponents[0]);

if (aktualnyDatum >= hranicaDatum) {
    return 1;
} else {
    return 0;
}
}

function inlinezaroklabel(element,sid) {
var rok = Number($("#zaRok").val());
if (rok == 0) rok = 2017;

return  "1.1." + rok;
}


		function GetExternalResourceIndex(resourcetype) {
  switch (resourcetype) {
    case 3:
      return 'ozn493_2017.xsd';
      break;
    case 4:
      return 'ozn493_2017Plaintext';
      break;
    case 6:
      return 'PDF0';
      break;
    default:
      return null;
  }
  return null;
}
function GetExternalResource(resourcetype, index) {
  switch (resourcetype) {
    case 3:
      if (index == null || index =='ozn493_2017.xsd') return 'form.401.sk.xsd';
      break;
    case 4:
      if (index == null || index =='ozn493_2017Plaintext') return 'form.401.sb.xslt';
      break;
    case 6:
      if (index == null || index =='PDF0') return 'form.401.OZN493-17-print-save.pdf';
      break;
    default:
      return null;
  }
  return null;
}

		function SetDefaultValue(key, value) {
  if (value == '' || key == '') {
    return;
	}
  if (key == 'dic') {
    $("#tbDic").val(value);
  }
  if (key == 'rodneCislo1cast') {
    $("#tbRodneCislo").val(value);
  }
  if (key == 'rodneCislo2cast') {
    $("#tbRodneCislo_2").val(value);
  }
  if (key == 'obchodneMeno') {
    if (druhSubjektu != 'FO')
        $("#taOdd1ObchMeno").val(value);
  }
  if (key == 'ulica') {
    $("#tbTPUlica").val(value);
  }
  if (key == 'cisloDomu') {
    $("#tdTPCislo").val(value);
  }
  if (key == 'psc') {
    $("#tbTPPSC").val(value);
  }
  if (key == 'obec') {
    $("#tbTPObec").val(value);
  }
  if (key == 'nazovStatu') {
    $("#tbTPStat").val(value);
  }
  if (key == 'ulica') {
    $("#tbUlicaSK").val(value);
  }
  if (key == 'cisloDomu') {
    $("#tdCisloSK").val(value);
  }
  if (key == 'psc') {
    $("#tbPSCSK").val(value);
  }
  if (key == 'obec') {
    $("#tbObecSK").val(value);
  }
  if (key == 'meno') {
    if (druhSubjektu != 'PO')
        $("#tbOdd1Meno").val(value);
  }
  if (key == 'titul') {
    if (druhSubjektu != 'PO')
        $("#tbOdd1TitulPred").val(value);
  }
  if (key == 'druhSubjektu') {
    druhSubjektu = value;
 
    if (value == 'FO') {
        $("#taOdd1ObchMeno").val('');
    }
    else if (value == 'PO') {
        $("#tbOdd1Priezvisko").val('');
        $("#tbOdd1Meno").val('');
        $("#tbOdd1TitulPred").val('');
    }
  } 
  if (key == 'priezvisko') {
    if (druhSubjektu != 'PO')
        $("#tbOdd1Priezvisko").val(value);
  }
}
function GetDefaultValue() {
  var retString = '';
  retString = retString + 'dic' + '¶'+ $("#tbDic").val() + '¶';
  retString = retString + 'rodneCislo1cast' + '¶'+ $("#tbRodneCislo").val() + '¶';
  retString = retString + 'rodneCislo2cast' + '¶'+ $("#tbRodneCislo_2").val() + '¶';
  retString = retString + 'obchodneMeno' + '¶'+ $("#taOdd1ObchMeno").val() + '¶';
  retString = retString + 'ulica' + '¶'+ $("#tbTPUlica").val() + '¶';
  retString = retString + 'cisloDomu' + '¶'+ $("#tdTPCislo").val() + '¶';
  retString = retString + 'psc' + '¶'+ $("#tbTPPSC").val() + '¶';
  retString = retString + 'obec' + '¶'+ $("#tbTPObec").val() + '¶';
  retString = retString + 'nazovStatu' + '¶'+ $("#tbTPStat").val() + '¶';
  retString = retString + 'ulica' + '¶'+ $("#tbUlicaSK").val() + '¶';
  retString = retString + 'cisloDomu' + '¶'+ $("#tdCisloSK").val() + '¶';
  retString = retString + 'psc' + '¶'+ $("#tbPSCSK").val() + '¶';
  retString = retString + 'obec' + '¶'+ $("#tbObecSK").val() + '¶';
  retString = retString + 'meno' + '¶'+ $("#tbOdd1Meno").val() + '¶';
  retString = retString + 'titul' + '¶'+ $("#tbOdd1TitulPred").val() + '¶';
  retString = retString + 'priezvisko' + '¶'+ $("#tbOdd1Priezvisko").val() + '¶';
  return retString;
}

				function InitConditionalRules(context, sid) {
			if (sid == null) {
			// pravidlo  - GlobalControl -

function MaxDesatMiesta(obj, e, n) {
    var newVal = $(obj).val() + (e.charCode !== 0 ? String.fromCharCode(e.charCode) : '')

    function predZaC(pom) {
        var pom_bodka = pom.indexOf(".");
        var pom_ciarka = pom.indexOf(",");
        if (pom_bodka > -1)
            return pom_bodka;
        if (pom_ciarka > -1)
            return pom_ciarka;
        else
            return pom.length;
    }

    if ((document.activeElement.selectionStart) == (document.activeElement.selectionEnd) && predZaC($(obj).val()) < (document.activeElement.selectionStart)) {
        if (n == 2) {
            if ($(obj).val().search(/(.*)[\.\,][0-9][0-9]/) === 0 && newVal.length > $(obj).val().length)
                return true;
        }
        else if (n == 3) {
            if ($(obj).val().search(/(.*)[\.\,][0-9][0-9][0-9]/) === 0 && newVal.length > $(obj).val().length)
                return true;
        }
        else if (n == 4) {
            if ($(obj).val().search(/(.*)[\.\,][0-9][0-9][0-9][0-9]/) === 0 && newVal.length > $(obj).val().length)
                return true;
        }
        else if (n == 5) {
            if ($(obj).val().search(/(.*)[\.\,][0-9][0-9][0-9][0-9][0-9]/) === 0 && newVal.length > $(obj).val().length)
                return true;
        }
        else if (n == 1) {
            if ($(obj).val().search(/(.*)[\.\,][0-9]/) === 0 && newVal.length > $(obj).val().length)
                return true;
        }
    }
    return false;
}


$('input[type=text]').live('keypress', function (pE) {
    if ($(this).val() !== '') {
        var htmlelement = $(this).attr('id');


        //////////////////////////////////////////////////////////////////

      //  if (htmlelement == 'tbOdd3Suma') { if (MaxDesatMiesta(this, pE, 2)) { pE.preventDefault(); } }

        //////////////////////////////////////////////////////////////////


    }
});




//------------------------------------------------------------------------------

$('input[type=text]').live('change blur', function () {
    if ($(this).val() !== '') {
        var zmen = 0;
        var htmlelement = $(this).attr('id');


        //////////////////////////////////////////////////////////////////

   //     if (htmlelement == 'tbOdd3Suma') { pom = zaokruhli_mate($(this).val().replace(',', '.'), 2); zmen = 1; }

        //////////////////////////////////////////////////////////////////


        if (zmen == 1) { if (!isNaN(pom)) { $(this).val(pom); } }
    }
});

/*
var datump = new Date();
var den = datump.getDate();
var mesiac = datump.getMonth()+1; //Januar je 0!
var rok = datump.getFullYear();

if(den<10){den='0'+den} if(mesiac<10){mesiac='0'+mesiac} 
datump = den+'.'+ mesiac+'.'+rok;

if($("#tbOdd3Dna").val()== "")
 {
  $("#tbOdd3Dna").val(datump);
}
*/


/*$( window ).load(function() {
  $("input[id='Dna']").datepicker("option","maxDate", new Date());
  $("input[id='Dna']").datepicker("option","minDate", new Date(2016,0,1));
*/
  $("#dtpZdObdobieOd").datepicker("option","minDate", new Date(2016, 1 - 1, 1));
  $("#dtpZdObdobieDo").datepicker("option","minDate", new Date(2017, 1 - 1, 1));

 /* $("#dtpZdObdobieDo").change(function() {
    var value = $("#dtpZdObdobieDo").val();
    if (value.search(/\d{2}\.\d{2}\.\d{4}/) >= 0)
      ChangeMinDate(Number(value.substring(3,5)), Number(value.substring(6,10)));
  });

});

function ChangeMinDate(mesiac, rok)
{
  if (mesiac == 12) {mesiac = 0; rok += 1;}
  $("input[id='Dna']").datepicker("option","minDate", new Date(rok,mesiac,1));
}
*/
/*
$("#zaRok").live('change', function() {
 var value = $(this).val();
 if (value == "2018") {
  $("#tbOdd3Dna").datepicker("option","minDate", new Date(2019, 1 - 1, 1));
  $("#tbOdd3Dna").val("01.01.2019");
 }
 if (value == "2019") {
  $("#tbOdd3Dna").datepicker("option","minDate", new Date(2020, 1 - 1, 1));
  $("#tbOdd3Dna").val("01.01.2020");
 }
});*/

/*
$( window ).load(function() {
  $("#zaRok").val("2018");
});
*/


			
			} else {

			}
		}
								function kontrola_tbDic(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbdic(sid);
				
			if (!iserr && !vypocet_tbdic_C0(sid))
			{
				validatorObject.settings.messages['tbDic']['customE'] = vypocet_tbdic_T0(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('tbRodneCislo'));
				validatorObject.element(document.getElementById('tbRodneCislo_2'));
				validatorObject.element(document.getElementById('dtpDatNarodenia'));
				validatorObject.element(document.getElementById('ico'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbdic(element, sid) {
			return hodnota(element, 'tbDic','n',sid,'layoutRow24194');
		}
		function vypocet_tbdic(sid) {
			return hodnota_tbDic(null, sid);
		}
				
			function vypocet_tbdic_C0(sid) {
			var t_tbdic = hodnota(null, 'tbDic','n',sid,'layoutRow24194','s');
			var t_tbrodnecislo = hodnota(null, 'tbRodneCislo','n',sid,'layoutRow24194','s');
			var t_dtpdatnarodenia = hodnota(null, 'dtpDatNarodenia','n',sid,'layoutRow24194','s');
			var t_ico = hodnota(null, 'ico','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(t_tbdic))>Math.round(100.0000000000001*(0))||Math.round(100.0000000000001*(t_tbrodnecislo))>Math.round(100.0000000000001*(0))||Math.round(100.0000000000001*(t_dtpdatnarodenia))>Math.round(100.0000000000001*(0))||Math.round(100.0000000000001*(t_ico))>Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbdic_T0(sid) {
var retval = ("Musí byť vyplnený aspoň jeden z identifikátorov: DIČ, Rodné číslo, Dátum narodenia, IČO");
				return retval; //;
			}
		function kontrola_dtpZdObdobieOd(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_dtpzdobdobieod(sid);
				
			if (!iserr && !vypocet_dtpzdobdobieod_C0(sid))
			{
				validatorObject.settings.messages['dtpZdObdobieOd']['customE'] = vypocet_dtpzdobdobieod_T0(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_dtpzdobdobieod_C1(sid))
			{
				validatorObject.settings.messages['dtpZdObdobieOd']['customE'] = vypocet_dtpzdobdobieod_T1(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_dtpzdobdobieod_C2(sid))
			{
				validatorObject.settings.messages['dtpZdObdobieOd']['customE'] = vypocet_dtpzdobdobieod_T2(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('dtpZdObdobieDo'));
				validatorObject.element(document.getElementById('cbPismA'));
				validatorObject.element(document.getElementById('cbPismB'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_dtpzdobdobieod(element, sid) {
			return hodnota(element, 'dtpZdObdobieOd','n',sid,'layoutRow24194');
		}
		function vypocet_dtpzdobdobieod(sid) {
			return hodnota_dtpZdObdobieOd(null, sid);
		}
				
			function vypocet_dtpzdobdobieod_C0(sid) {
			var t_dtpzdobdobieod = hodnota(null, 'dtpZdObdobieOd','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*(inlinelimitdatumod('dtpZdObdobieOd',sid)))!=Math.round(100.0000000000001*(0))||Math.round(100.0000000000001*(t_dtpzdobdobieod))==Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_dtpzdobdobieod_T0(sid) {
var retval = ("'Zdaňovacie obdobie PO - Od': Dátum musí byť vyšší alebo rovný ako 1.1.2016");
				return retval; //;
			}
				
			function vypocet_dtpzdobdobieod_C1(sid) {
			var t_dtpzdobdobieod = hodnota(null, 'dtpZdObdobieOd','n',sid,'layoutRow24194','s');
			var t_dtpzdobdobiedo = hodnota(null, 'dtpZdObdobieDo','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(t_dtpzdobdobieod))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_dtpzdobdobiedo))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_dtpzdobdobieod))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_dtpzdobdobiedo))==Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_dtpzdobdobieod_T1(sid) {
var retval = ("'Zdaňovacie obdobie Od - Do': Musia byť vyplnené obidva dátumy.");
				return retval; //;
			}
				
			function vypocet_dtpzdobdobieod_C2(sid) {
			var t_dtpzdobdobieod = hodnota(null, 'dtpZdObdobieOd','n',sid,'layoutRow24194','s');
			var t_dtpzdobdobiedo = hodnota(null, 'dtpZdObdobieDo','n',sid,'layoutRow24194','s');
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
			var t_ico = hodnota(null, 'ico','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*((t_dtpzdobdobieod+t_dtpzdobdobiedo)))>Math.round(100.0000000000001*(1))&&Math.round(100.0000000000001*((t_taodd1obchmeno+t_ico)))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*((t_dtpzdobdobieod+t_dtpzdobdobiedo)))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_taodd1obchmeno+t_ico)))==Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_dtpzdobdobieod_T2(sid) {
var retval = ("'Zdaňovacie obdobie Od - Do': Musí byť vyplnené ak je vyplnený aspoň jeden z riadkov 07 - 08 a opačne");
				return retval; //;
			}
		function kontrola_dtpZdObdobieDo(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_dtpzdobdobiedo(sid);
				
			if (!iserr && !vypocet_dtpzdobdobiedo_C0(sid))
			{
				validatorObject.settings.messages['dtpZdObdobieDo']['customE'] = vypocet_dtpzdobdobiedo_T0(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_dtpzdobdobiedo_C1(sid))
			{
				validatorObject.settings.messages['dtpZdObdobieDo']['customE'] = vypocet_dtpzdobdobiedo_T1(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_dtpzdobdobiedo_C2(sid))
			{
				validatorObject.settings.messages['dtpZdObdobieDo']['customE'] = vypocet_dtpzdobdobiedo_T2(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_dtpzdobdobiedo_C3(sid))
			{
				validatorObject.settings.messages['dtpZdObdobieDo']['customE'] = vypocet_dtpzdobdobiedo_T3(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('dtpZdObdobieOd'));
				validatorObject.element(document.getElementById('tbOdd3Dna'));
				validatorObject.element(document.getElementById('dtpLehota'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_dtpzdobdobiedo(element, sid) {
			return hodnota(element, 'dtpZdObdobieDo','n',sid,'layoutRow24194');
		}
		function vypocet_dtpzdobdobiedo(sid) {
			return hodnota_dtpZdObdobieDo(null, sid);
		}
				
			function vypocet_dtpzdobdobiedo_C0(sid) {
			var t_dtpzdobdobiedo = hodnota(null, 'dtpZdObdobieDo','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*(inlinelimitdatumdo('dtpZdObdobieDo',sid)))!=Math.round(100.0000000000001*(0))||Math.round(100.0000000000001*(t_dtpzdobdobiedo))==Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_dtpzdobdobiedo_T0(sid) {
var retval = ("'Zdaňovacie obdobie PO - Do': Dátum musí byť vyšší alebo rovný ako 1.1.2017");
				return retval; //;
			}
				
			function vypocet_dtpzdobdobiedo_C1(sid) {
			var t_dtpzdobdobieod = hodnota(null, 'dtpZdObdobieOd','n',sid,'layoutRow24194','s');
			var t_dtpzdobdobiedo = hodnota(null, 'dtpZdObdobieDo','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(t_dtpzdobdobieod))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_dtpzdobdobiedo))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_dtpzdobdobieod))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_dtpzdobdobiedo))==Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_dtpzdobdobiedo_T1(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_dtpzdobdobiedo_C2(sid) {
			var t_dtpzdobdobiedo = hodnota(null, 'dtpZdObdobieDo','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(inlineoddo('dtpZdObdobieDo',sid)))==Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_dtpzdobdobiedo))==Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_dtpzdobdobiedo_T2(sid) {
var retval = ("Zdaňovacie obdobie Do musí byť väčšie  alebo rovné ako Zdaňovaci obdobie Od.");
				return retval; //;
			}
				
			function vypocet_dtpzdobdobiedo_C3(sid) {
			var t_dtpzdobdobieod = hodnota(null, 'dtpZdObdobieOd','n',sid,'layoutRow24194','s');
			var t_dtpzdobdobiedo = hodnota(null, 'dtpZdObdobieDo','n',sid,'layoutRow24194','s');
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
			var t_ico = hodnota(null, 'ico','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*((t_dtpzdobdobieod+t_dtpzdobdobiedo)))>Math.round(100.0000000000001*(1))&&Math.round(100.0000000000001*((t_taodd1obchmeno+t_ico)))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*((t_dtpzdobdobieod+t_dtpzdobdobiedo)))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_taodd1obchmeno+t_ico)))==Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_dtpzdobdobiedo_T3(sid) {
var retval = ("");
				return retval; //;
			}
		function kontrola_tbOdd1Priezvisko(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbodd1priezvisko(sid);
				
			if (!iserr && !vypocet_tbodd1priezvisko_C1(sid))
			{
				validatorObject.settings.messages['tbOdd1Priezvisko']['customE'] = vypocet_tbodd1priezvisko_T1(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_tbodd1priezvisko_C2(sid))
			{
				validatorObject.settings.messages['tbOdd1Priezvisko']['customE'] = vypocet_tbodd1priezvisko_T2(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('tbOdd1Meno'));
				validatorObject.element(document.getElementById('taOdd1ObchMeno'));
				validatorObject.element(document.getElementById('tbRodneCislo'));
				validatorObject.element(document.getElementById('tbRodneCislo_2'));
				validatorObject.element(document.getElementById('dtpDatNarodenia'));
				validatorObject.element(document.getElementById('ico'));
				validatorObject.element(document.getElementById('zaRok'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbodd1priezvisko(element, sid) {
			return hodnota(element, 'tbOdd1Priezvisko','n',sid,'layoutRow24194');
		}
		function vypocet_tbodd1priezvisko(sid) {
			return hodnota_tbOdd1Priezvisko(null, sid);
		}
				
			function vypocet_tbodd1priezvisko_C0(sid) {
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*(t_tbodd1priezvisko))>=Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_tbodd1priezvisko_T0(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_tbodd1priezvisko_C1(sid) {
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
var retval = ((((Math.round(100.0000000000001*(t_tbodd1priezvisko))>Math.round(100.0000000000001*(0))||Math.round(100.0000000000001*(t_tbodd1meno))>Math.round(100.0000000000001*(0)))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbodd1priezvisko))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1meno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))>Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbodd1priezvisko_T1(sid) {
var retval = ("Musí byť vyplnené  Meno a Priezvisko alebo Obchodné meno (Názov). Nemôže byť súčasne vyplnené Priezvisko a Obchodné meno (Názov).");
				return retval; //;
			}
				
			function vypocet_tbodd1priezvisko_C2(sid) {
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(t_tbodd1priezvisko))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1meno))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbodd1meno))==Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbodd1priezvisko_T2(sid) {
var retval = ("Ak je vyplnené Meno, musí byť aj Priezvisko a naopak.");
				return retval; //;
			}
		function kontrola2_tbOdd1Priezvisko(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbodd1priezvisko(sid);
				
			if (!iserr && !vypocet_tbodd1priezvisko_C0(sid))
			{
				validatorObject.settings.messages['tbOdd1Priezvisko']['customW'] = vypocet_tbodd1priezvisko_T0(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('tbOdd1Meno'));
				validatorObject.element(document.getElementById('taOdd1ObchMeno'));
				validatorObject.element(document.getElementById('tbRodneCislo'));
				validatorObject.element(document.getElementById('tbRodneCislo_2'));
				validatorObject.element(document.getElementById('dtpDatNarodenia'));
				validatorObject.element(document.getElementById('ico'));
				validatorObject.element(document.getElementById('zaRok'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbodd1priezvisko(element, sid) {
			return hodnota(element, 'tbOdd1Priezvisko','n',sid,'layoutRow24194');
		}
		function vypocet_tbodd1priezvisko(sid) {
			return hodnota_tbOdd1Priezvisko(null, sid);
		}
				
			function vypocet_tbodd1priezvisko_C0(sid) {
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*(t_tbodd1priezvisko))>=Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_tbodd1priezvisko_T0(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_tbodd1priezvisko_C1(sid) {
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
var retval = ((((Math.round(100.0000000000001*(t_tbodd1priezvisko))>Math.round(100.0000000000001*(0))||Math.round(100.0000000000001*(t_tbodd1meno))>Math.round(100.0000000000001*(0)))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbodd1priezvisko))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1meno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))>Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbodd1priezvisko_T1(sid) {
var retval = ("Musí byť vyplnené  Meno a Priezvisko alebo Obchodné meno (Názov). Nemôže byť súčasne vyplnené Priezvisko a Obchodné meno (Názov).");
				return retval; //;
			}
				
			function vypocet_tbodd1priezvisko_C2(sid) {
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(t_tbodd1priezvisko))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1meno))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbodd1meno))==Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbodd1priezvisko_T2(sid) {
var retval = ("Ak je vyplnené Meno, musí byť aj Priezvisko a naopak.");
				return retval; //;
			}
		function kontrola_tbOdd1Meno(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbodd1meno(sid);
				
			if (!iserr && !vypocet_tbodd1meno_C1(sid))
			{
				validatorObject.settings.messages['tbOdd1Meno']['customE'] = vypocet_tbodd1meno_T1(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_tbodd1meno_C2(sid))
			{
				validatorObject.settings.messages['tbOdd1Meno']['customE'] = vypocet_tbodd1meno_T2(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('tbOdd1Priezvisko'));
				validatorObject.element(document.getElementById('taOdd1ObchMeno'));
				validatorObject.element(document.getElementById('tbRodneCislo'));
				validatorObject.element(document.getElementById('tbRodneCislo_2'));
				validatorObject.element(document.getElementById('dtpDatNarodenia'));
				validatorObject.element(document.getElementById('zaRok'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbodd1meno(element, sid) {
			return hodnota(element, 'tbOdd1Meno','n',sid,'layoutRow24194');
		}
		function vypocet_tbodd1meno(sid) {
			return hodnota_tbOdd1Meno(null, sid);
		}
				
			function vypocet_tbodd1meno_C0(sid) {
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*(t_tbodd1meno))>=Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_tbodd1meno_T0(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_tbodd1meno_C1(sid) {
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
var retval = ((((Math.round(100.0000000000001*(t_tbodd1priezvisko))>Math.round(100.0000000000001*(0))||Math.round(100.0000000000001*(t_tbodd1meno))>Math.round(100.0000000000001*(0)))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbodd1priezvisko))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1meno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))>Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbodd1meno_T1(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_tbodd1meno_C2(sid) {
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(t_tbodd1priezvisko))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1meno))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbodd1priezvisko))==Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbodd1meno_T2(sid) {
var retval = ("Ak je vyplnené Priezvisko, musí byť aj Meno a naopak.");
				return retval; //;
			}
		function kontrola2_tbOdd1Meno(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbodd1meno(sid);
				
			if (!iserr && !vypocet_tbodd1meno_C0(sid))
			{
				validatorObject.settings.messages['tbOdd1Meno']['customW'] = vypocet_tbodd1meno_T0(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('tbOdd1Priezvisko'));
				validatorObject.element(document.getElementById('taOdd1ObchMeno'));
				validatorObject.element(document.getElementById('tbRodneCislo'));
				validatorObject.element(document.getElementById('tbRodneCislo_2'));
				validatorObject.element(document.getElementById('dtpDatNarodenia'));
				validatorObject.element(document.getElementById('zaRok'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbodd1meno(element, sid) {
			return hodnota(element, 'tbOdd1Meno','n',sid,'layoutRow24194');
		}
		function vypocet_tbodd1meno(sid) {
			return hodnota_tbOdd1Meno(null, sid);
		}
				
			function vypocet_tbodd1meno_C0(sid) {
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*(t_tbodd1meno))>=Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_tbodd1meno_T0(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_tbodd1meno_C1(sid) {
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
var retval = ((((Math.round(100.0000000000001*(t_tbodd1priezvisko))>Math.round(100.0000000000001*(0))||Math.round(100.0000000000001*(t_tbodd1meno))>Math.round(100.0000000000001*(0)))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbodd1priezvisko))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1meno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))>Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbodd1meno_T1(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_tbodd1meno_C2(sid) {
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(t_tbodd1priezvisko))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1meno))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbodd1priezvisko))==Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbodd1meno_T2(sid) {
var retval = ("Ak je vyplnené Priezvisko, musí byť aj Meno a naopak.");
				return retval; //;
			}
		function kontrola_tbOdd1TitulZa(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbodd1titulza(sid);
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('zaRok'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbodd1titulza(element, sid) {
			return hodnota(element, 'tbOdd1TitulZa','n',sid,'layoutRow24194');
		}
		function vypocet_tbodd1titulza(sid) {
			return hodnota_tbOdd1TitulZa(null, sid);
		}
		function kontrola_tbOdd1TitulPred(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbodd1titulpred(sid);
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('zaRok'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbodd1titulpred(element, sid) {
			return hodnota(element, 'tbOdd1TitulPred','n',sid,'layoutRow24194');
		}
		function vypocet_tbodd1titulpred(sid) {
			return hodnota_tbOdd1TitulPred(null, sid);
		}
		function kontrola_taOdd1ObchMeno(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_taodd1obchmeno(sid);
				
			if (!iserr && !vypocet_taodd1obchmeno_C1(sid))
			{
				validatorObject.settings.messages['taOdd1ObchMeno']['customE'] = vypocet_taodd1obchmeno_T1(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('dtpZdObdobieOd'));
				validatorObject.element(document.getElementById('dtpZdObdobieDo'));
				validatorObject.element(document.getElementById('tbOdd1Priezvisko'));
				validatorObject.element(document.getElementById('tbOdd1Meno'));
				validatorObject.element(document.getElementById('tbRodneCislo'));
				validatorObject.element(document.getElementById('tbRodneCislo_2'));
				validatorObject.element(document.getElementById('dtpDatNarodenia'));
				validatorObject.element(document.getElementById('ico'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_taodd1obchmeno(element, sid) {
			return hodnota(element, 'taOdd1ObchMeno','n',sid,'layoutRow24194');
		}
		function vypocet_taodd1obchmeno(sid) {
			return hodnota_taOdd1ObchMeno(null, sid);
		}
				
			function vypocet_taodd1obchmeno_C0(sid) {
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*(t_taodd1obchmeno))>=Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_taodd1obchmeno_T0(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_taodd1obchmeno_C1(sid) {
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
var retval = ((((Math.round(100.0000000000001*(t_tbodd1priezvisko))>Math.round(100.0000000000001*(0))||Math.round(100.0000000000001*(t_tbodd1meno))>Math.round(100.0000000000001*(0)))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbodd1priezvisko))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1meno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))>Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_taodd1obchmeno_T1(sid) {
var retval = ("");
				return retval; //;
			}
		function kontrola2_taOdd1ObchMeno(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_taodd1obchmeno(sid);
				
			if (!iserr && !vypocet_taodd1obchmeno_C0(sid))
			{
				validatorObject.settings.messages['taOdd1ObchMeno']['customW'] = vypocet_taodd1obchmeno_T0(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('dtpZdObdobieOd'));
				validatorObject.element(document.getElementById('dtpZdObdobieDo'));
				validatorObject.element(document.getElementById('tbOdd1Priezvisko'));
				validatorObject.element(document.getElementById('tbOdd1Meno'));
				validatorObject.element(document.getElementById('tbRodneCislo'));
				validatorObject.element(document.getElementById('tbRodneCislo_2'));
				validatorObject.element(document.getElementById('dtpDatNarodenia'));
				validatorObject.element(document.getElementById('ico'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_taodd1obchmeno(element, sid) {
			return hodnota(element, 'taOdd1ObchMeno','n',sid,'layoutRow24194');
		}
		function vypocet_taodd1obchmeno(sid) {
			return hodnota_taOdd1ObchMeno(null, sid);
		}
				
			function vypocet_taodd1obchmeno_C0(sid) {
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*(t_taodd1obchmeno))>=Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_taodd1obchmeno_T0(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_taodd1obchmeno_C1(sid) {
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
var retval = ((((Math.round(100.0000000000001*(t_tbodd1priezvisko))>Math.round(100.0000000000001*(0))||Math.round(100.0000000000001*(t_tbodd1meno))>Math.round(100.0000000000001*(0)))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbodd1priezvisko))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1meno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))>Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_taodd1obchmeno_T1(sid) {
var retval = ("");
				return retval; //;
			}
		function kontrola_tbTPPSC(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbtppsc(sid);
				
			if (!iserr && !vypocet_tbtppsc_C0(sid))
			{
				validatorObject.settings.messages['tbTPPSC']['customW'] = vypocet_tbtppsc_T0(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_tbtppsc_C1(sid))
			{
				validatorObject.settings.messages['tbTPPSC']['customW'] = vypocet_tbtppsc_T1(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbtppsc(element, sid) {
			return hodnota(element, 'tbTPPSC','n',sid,'layoutRow24194');
		}
		function vypocet_tbtppsc(sid) {
			return hodnota_tbTPPSC(null, sid);
		}
				
			function vypocet_tbtppsc_C0(sid) {
			var t_tbtppsc = hodnota(null, 'tbTPPSC','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*(t_tbtppsc))>=Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_tbtppsc_T0(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_tbtppsc_C1(sid) {
			var t_tbtpstat = hodnota(null, 'tbTPStat','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(inlinertppsc('tbTPPSC',sid)))==Math.round(100.0000000000001*(1)))&&(Math.round(100.0000000000001*(t_tbtpstat))>=Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbtppsc_T1(sid) {
var retval = ("PSČ pre Slovensko má 5 číslic");
				return retval; //;
			}
		function kontrola_tbTPStat(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbtpstat(sid);
				
			if (!iserr && !vypocet_tbtpstat_C0(sid))
			{
				validatorObject.settings.messages['tbTPStat']['customW'] = vypocet_tbtpstat_T0(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('tbTPPSC'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbtpstat(element, sid) {
			return hodnota(element, 'tbTPStat','n',sid,'layoutRow24194');
		}
		function vypocet_tbtpstat(sid) {
			return hodnota_tbTPStat(null, sid);
		}
				
			function vypocet_tbtpstat_C0(sid) {
			var t_tbtpstat = hodnota(null, 'tbTPStat','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*(t_tbtpstat))>=Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_tbtpstat_T0(sid) {
var retval = ("");
				return retval; //;
			}
		function kontrola_cbPismB(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_cbpismb(sid);
				
			if (!iserr && !vypocet_cbpismb_C2(sid))
			{
				validatorObject.settings.messages['cbPismB']['customE'] = vypocet_cbpismb_T2(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('cbPismA'));
				validatorObject.element(document.getElementById('dtpLehota'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_cbpismb(element, sid) {
			return hodnota(element, 'cbPismB','n',sid,'layoutRow24194');
		}
		function vypocet_cbpismb(sid) {
			return hodnota_cbPismB(null, sid);
		}
				
			function vypocet_cbpismb_C0(sid) {
			var t_cbpismb = hodnota(null, 'cbPismB','n',sid,'layoutRow24194','b');
var retval = ((Math.round(100.0000000000001*(t_cbpismb))>=Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_cbpismb_T0(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_cbpismb_C1(sid) {
			var t_zarok = hodnota(null, 'zaRok','n',sid,'layoutRow24194','s');
			var t_dtpzdobdobieod = hodnota(null, 'dtpZdObdobieOd','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*((t_zarok*t_dtpzdobdobieod)))==Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_cbpismb_T1(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_cbpismb_C2(sid) {
			var t_cbpisma = hodnota(null, 'cbPismA','n',sid,'layoutRow24194','b');
			var t_cbpismb = hodnota(null, 'cbPismB','n',sid,'layoutRow24194','b');
var retval = (((Math.round(100.0000000000001*((t_cbpisma+t_cbpismb)))==Math.round(100.0000000000001*(1)))));
				return retval;
			}
			function vypocet_cbpismb_T2(sid) {
var retval = ("");
				return retval; //;
			}
		function kontrola2_cbPismB(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_cbpismb(sid);
				
			if (!iserr && !vypocet_cbpismb_C0(sid))
			{
				validatorObject.settings.messages['cbPismB']['customW'] = vypocet_cbpismb_T0(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_cbpismb_C1(sid))
			{
				validatorObject.settings.messages['cbPismB']['customW'] = vypocet_cbpismb_T1(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('cbPismA'));
				validatorObject.element(document.getElementById('dtpLehota'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_cbpismb(element, sid) {
			return hodnota(element, 'cbPismB','n',sid,'layoutRow24194');
		}
		function vypocet_cbpismb(sid) {
			return hodnota_cbPismB(null, sid);
		}
				
			function vypocet_cbpismb_C0(sid) {
			var t_cbpismb = hodnota(null, 'cbPismB','n',sid,'layoutRow24194','b');
var retval = ((Math.round(100.0000000000001*(t_cbpismb))>=Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_cbpismb_T0(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_cbpismb_C1(sid) {
			var t_zarok = hodnota(null, 'zaRok','n',sid,'layoutRow24194','s');
			var t_dtpzdobdobieod = hodnota(null, 'dtpZdObdobieOd','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*((t_zarok*t_dtpzdobdobieod)))==Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_cbpismb_T1(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_cbpismb_C2(sid) {
			var t_cbpisma = hodnota(null, 'cbPismA','n',sid,'layoutRow24194','b');
			var t_cbpismb = hodnota(null, 'cbPismB','n',sid,'layoutRow24194','b');
var retval = (((Math.round(100.0000000000001*((t_cbpisma+t_cbpismb)))==Math.round(100.0000000000001*(1)))));
				return retval;
			}
			function vypocet_cbpismb_T2(sid) {
var retval = ("");
				return retval; //;
			}
		function kontrola_cbPismA(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_cbpisma(sid);
				
			if (!iserr && !vypocet_cbpisma_C2(sid))
			{
				validatorObject.settings.messages['cbPismA']['customE'] = vypocet_cbpisma_T2(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('cbPismB'));
				validatorObject.element(document.getElementById('dtpLehota'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_cbpisma(element, sid) {
			return hodnota(element, 'cbPismA','n',sid,'layoutRow24194');
		}
		function vypocet_cbpisma(sid) {
			return hodnota_cbPismA(null, sid);
		}
				
			function vypocet_cbpisma_C0(sid) {
			var t_cbpisma = hodnota(null, 'cbPismA','n',sid,'layoutRow24194','b');
var retval = ((Math.round(100.0000000000001*(t_cbpisma))>=Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_cbpisma_T0(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_cbpisma_C1(sid) {
			var t_zarok = hodnota(null, 'zaRok','n',sid,'layoutRow24194','s');
			var t_dtpzdobdobieod = hodnota(null, 'dtpZdObdobieOd','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*((t_zarok*t_dtpzdobdobieod)))==Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_cbpisma_T1(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_cbpisma_C2(sid) {
			var t_cbpisma = hodnota(null, 'cbPismA','n',sid,'layoutRow24194','b');
			var t_cbpismb = hodnota(null, 'cbPismB','n',sid,'layoutRow24194','b');
var retval = (((Math.round(100.0000000000001*((t_cbpisma+t_cbpismb)))==Math.round(100.0000000000001*(1)))));
				return retval;
			}
			function vypocet_cbpisma_T2(sid) {
var retval = ("Musí byť zaškrtnuté pole 'podľa §49 ods. 3 písm. a) zákona' alebo pole 'podľa § 49 ods. 3 písm. b) zákona' ");
				return retval; //;
			}
		function kontrola2_cbPismA(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_cbpisma(sid);
				
			if (!iserr && !vypocet_cbpisma_C0(sid))
			{
				validatorObject.settings.messages['cbPismA']['customW'] = vypocet_cbpisma_T0(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_cbpisma_C1(sid))
			{
				validatorObject.settings.messages['cbPismA']['customW'] = vypocet_cbpisma_T1(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('cbPismB'));
				validatorObject.element(document.getElementById('dtpLehota'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_cbpisma(element, sid) {
			return hodnota(element, 'cbPismA','n',sid,'layoutRow24194');
		}
		function vypocet_cbpisma(sid) {
			return hodnota_cbPismA(null, sid);
		}
				
			function vypocet_cbpisma_C0(sid) {
			var t_cbpisma = hodnota(null, 'cbPismA','n',sid,'layoutRow24194','b');
var retval = ((Math.round(100.0000000000001*(t_cbpisma))>=Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_cbpisma_T0(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_cbpisma_C1(sid) {
			var t_zarok = hodnota(null, 'zaRok','n',sid,'layoutRow24194','s');
			var t_dtpzdobdobieod = hodnota(null, 'dtpZdObdobieOd','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*((t_zarok*t_dtpzdobdobieod)))==Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_cbpisma_T1(sid) {
var retval = ("");
				return retval; //;
			}
				
			function vypocet_cbpisma_C2(sid) {
			var t_cbpisma = hodnota(null, 'cbPismA','n',sid,'layoutRow24194','b');
			var t_cbpismb = hodnota(null, 'cbPismB','n',sid,'layoutRow24194','b');
var retval = (((Math.round(100.0000000000001*((t_cbpisma+t_cbpismb)))==Math.round(100.0000000000001*(1)))));
				return retval;
			}
			function vypocet_cbpisma_T2(sid) {
var retval = ("Musí byť zaškrtnuté pole 'podľa §49 ods. 3 písm. a) zákona' alebo pole 'podľa § 49 ods. 3 písm. b) zákona' ");
				return retval; //;
			}
		function kontrola_zaRok(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_zarok(sid);
				
			if (!iserr && !vypocet_zarok_C0(sid))
			{
				validatorObject.settings.messages['zaRok']['customE'] = vypocet_zarok_T0(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_zarok_C1(sid))
			{
				validatorObject.settings.messages['zaRok']['customE'] = vypocet_zarok_T1(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('cbPismA'));
				validatorObject.element(document.getElementById('cbPismB'));
				validatorObject.element(document.getElementById('tbOdd3Dna'));
				validatorObject.element(document.getElementById('dtpLehota'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_zarok(element, sid) {
			return hodnota(element, 'zaRok','n',sid,'layoutRow24194');
		}
		function vypocet_zarok(sid) {
			return hodnota_zaRok(null, sid);
		}
				
			function vypocet_zarok_C0(sid) {
			var t_zarok = hodnota(null, 'zaRok','n',sid,'layoutRow24194','s');
var retval = ((Math.round(100.0000000000001*(t_zarok))>=Math.round(100.0000000000001*(1))||Math.round(100.0000000000001*(t_zarok))==Math.round(100.0000000000001*(0))));
				return retval;
			}
			function vypocet_zarok_T0(sid) {
var retval = ("'Zdaňovacie obdobie FO - Za rok': Musí byť rovné 2017 a vyššie");
				return retval; //;
			}
				
			function vypocet_zarok_C1(sid) {
			var t_zarok = hodnota(null, 'zaRok','n',sid,'layoutRow24194','s');
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
			var t_tbodd1titulpred = hodnota(null, 'tbOdd1TitulPred','n',sid,'layoutRow24194','s');
			var t_tbodd1titulza = hodnota(null, 'tbOdd1TitulZa','n',sid,'layoutRow24194','s');
			var t_tbrodnecislo = hodnota(null, 'tbRodneCislo','n',sid,'layoutRow24194','s');
			var t_dtpdatnarodenia = hodnota(null, 'dtpDatNarodenia','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(t_zarok))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno+t_tbodd1titulpred+t_tbodd1titulza+t_tbrodnecislo+t_dtpdatnarodenia)))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_zarok))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno+t_tbodd1titulpred+t_tbodd1titulza+t_tbrodnecislo+t_dtpdatnarodenia)))==Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_zarok_T1(sid) {
var retval = ("'Zdaňovacie obdobie FO - Za rok': Musí byť vyplnené ak je vyplnený aspoň jeden z riadkov 02 - 06 a opačne");
				return retval; //;
			}
		function kontrola_tbOdd3Dna(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbodd3dna(sid);
				
			if (!iserr && !vypocet_tbodd3dna_C1(sid))
			{
				validatorObject.settings.messages['tbOdd3Dna']['customE'] = vypocet_tbodd3dna_T1(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbodd3dna(element, sid) {
			return hodnota(element, 'tbOdd3Dna','n',sid,'layoutRow24194');
		}
		function vypocet_tbodd3dna(sid) {
			return hodnota_tbOdd3Dna(null, sid);
		}
				
			function vypocet_tbodd3dna_C0(sid) {
			var t_zarok = hodnota(null, 'zaRok','n',sid,'layoutRow24194','s');
			var t_dtpzdobdobiedo = hodnota(null, 'dtpZdObdobieDo','n',sid,'layoutRow24194','s');
var retval = ((((Math.round(100.0000000000001*(inlinednazarok_zakonne('tbOdd3Dna',sid)))==Math.round(100.0000000000001*(1))&&Math.round(100.0000000000001*(t_zarok))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(inlinednaobdobiedo_zakonne('tbOdd3Dna',sid)))==Math.round(100.0000000000001*(1))&&Math.round(100.0000000000001*(t_dtpzdobdobiedo))>Math.round(100.0000000000001*(0))))));
				return retval;
			}
			function vypocet_tbodd3dna_T0(sid) {
var retval = ("'Dňa': Dátum nesmie byt vyšší ako 3 celé kalendárne mesiace  od konca zdaňovacieho obdobia uvedeného v úvode oznámenia");
				return retval; //;
			}
				
			function vypocet_tbodd3dna_C1(sid) {
var retval = (((Math.round(100.0000000000001*(inlinezarok('tbOdd3Dna',sid)))!=Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbodd3dna_T1(sid) {
var retval = ("Oznámenie o predĺžení lehoty na podanie DP môže byť podané najskôr "+(inlinezaroklabel('tbOdd3Dna',sid))+".");
				return retval; //;
			}
		function kontrola2_tbOdd3Dna(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbodd3dna(sid);
				
			if (!iserr && !vypocet_tbodd3dna_C0(sid))
			{
				validatorObject.settings.messages['tbOdd3Dna']['customW'] = vypocet_tbodd3dna_T0(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbodd3dna(element, sid) {
			return hodnota(element, 'tbOdd3Dna','n',sid,'layoutRow24194');
		}
		function vypocet_tbodd3dna(sid) {
			return hodnota_tbOdd3Dna(null, sid);
		}
				
			function vypocet_tbodd3dna_C0(sid) {
			var t_zarok = hodnota(null, 'zaRok','n',sid,'layoutRow24194','s');
			var t_dtpzdobdobiedo = hodnota(null, 'dtpZdObdobieDo','n',sid,'layoutRow24194','s');
var retval = ((((Math.round(100.0000000000001*(inlinednazarok_zakonne('tbOdd3Dna',sid)))==Math.round(100.0000000000001*(1))&&Math.round(100.0000000000001*(t_zarok))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(inlinednaobdobiedo_zakonne('tbOdd3Dna',sid)))==Math.round(100.0000000000001*(1))&&Math.round(100.0000000000001*(t_dtpzdobdobiedo))>Math.round(100.0000000000001*(0))))));
				return retval;
			}
			function vypocet_tbodd3dna_T0(sid) {
var retval = ("'Dňa': Dátum nesmie byt vyšší ako 3 celé kalendárne mesiace  od konca zdaňovacieho obdobia uvedeného v úvode oznámenia");
				return retval; //;
			}
				
			function vypocet_tbodd3dna_C1(sid) {
var retval = (((Math.round(100.0000000000001*(inlinezarok('tbOdd3Dna',sid)))!=Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbodd3dna_T1(sid) {
var retval = ("Oznámenie o predĺžení lehoty na podanie DP môže byť podané najskôr "+(inlinezaroklabel('tbOdd3Dna',sid))+".");
				return retval; //;
			}
		function kontrola_tbPSCSK(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbpscsk(sid);
				
			if (!iserr && !vypocet_tbpscsk_C0(sid))
			{
				validatorObject.settings.messages['tbPSCSK']['customW'] = vypocet_tbpscsk_T0(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbpscsk(element, sid) {
			return hodnota(element, 'tbPSCSK','n',sid,'layoutRow24194');
		}
		function vypocet_tbpscsk(sid) {
			return hodnota_tbPSCSK(null, sid);
		}
				
			function vypocet_tbpscsk_C0(sid) {
			var t_tbpscsk = hodnota(null, 'tbPSCSK','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(t_tbpscsk))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(inliner16psc_w('tbPSCSK',sid)))==Math.round(100.0000000000001*(1)))||(Math.round(100.0000000000001*(t_tbpscsk))==Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_tbpscsk_T0(sid) {
var retval = (" PSČ má obsahovať 5 číslic.");
				return retval; //;
			}
		function kontrola_ico(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_ico(sid);
				
			if (!iserr && !vypocet_ico_C0(sid))
			{
				validatorObject.settings.messages['ico']['customE'] = vypocet_ico_T0(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('tbDic'));
				validatorObject.element(document.getElementById('dtpZdObdobieOd'));
				validatorObject.element(document.getElementById('dtpZdObdobieDo'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_ico(element, sid) {
			return hodnota(element, 'ico','n',sid,'layoutRow24194');
		}
		function vypocet_ico(sid) {
			return hodnota_ico(null, sid);
		}
				
			function vypocet_ico_C0(sid) {
			var t_ico = hodnota(null, 'ico','n',sid,'layoutRow24194','s');
			var t_tbdic = hodnota(null, 'tbDic','n',sid,'layoutRow24194','s');
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(t_ico))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbdic))>=Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1priezvisko))==Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_ico))>=Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbdic))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1priezvisko))==Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_ico))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbdic))>=Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbodd1priezvisko))>Math.round(100.0000000000001*(0)))));
				return retval;
			}
			function vypocet_ico_T0(sid) {
var retval = ("'08-IČO': Musí byť vyplnené, ak nie je vyplnené 01-DIČ a súčasne je vyplnené 07- Obchodné meno alebo Názov");
				return retval; //;
			}
		function kontrola_dtpLehota(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_dtplehota(sid);
				
			if (!iserr && !vypocet_dtplehota_C0(sid))
			{
				validatorObject.settings.messages['dtpLehota']['customW'] = vypocet_dtplehota_T0(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_dtplehota_C1(sid))
			{
				validatorObject.settings.messages['dtpLehota']['customW'] = vypocet_dtplehota_T1(sid);
				iserr = true;
			}
				
			if (!iserr && !vypocet_dtplehota_C2(sid))
			{
				validatorObject.settings.messages['dtpLehota']['customW'] = vypocet_dtplehota_T2(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_dtplehota(element, sid) {
			return hodnota(element, 'dtpLehota','n',sid,'layoutRow24194');
		}
		function vypocet_dtplehota(sid) {
			return hodnota_dtpLehota(null, sid);
		}
				
			function vypocet_dtplehota_C0(sid) {
var retval = ((Math.round(100.0000000000001*(inlinelehotaposlednydenvmesiaci('dtpLehota',sid)))==Math.round(100.0000000000001*(1))));
				return retval;
			}
			function vypocet_dtplehota_T0(sid) {
var retval = ("'nová lehota': Dátum musí byť posledný deň kalendárneho mesiaca");
				return retval; //;
			}
				
			function vypocet_dtplehota_C1(sid) {
			var t_cbpisma = hodnota(null, 'cbPismA','n',sid,'layoutRow24194','b');
			var t_zarok = hodnota(null, 'zaRok','n',sid,'layoutRow24194','s');
			var t_dtpzdobdobiedo = hodnota(null, 'dtpZdObdobieDo','n',sid,'layoutRow24194','s');
			var t_cbpismb = hodnota(null, 'cbPismB','n',sid,'layoutRow24194','b');
var retval = (((Math.round(100.0000000000001*(t_cbpisma))==Math.round(100.0000000000001*(1))&&((Math.round(100.0000000000001*(inlinelehotazarok('dtpLehota',sid)))==Math.round(100.0000000000001*(1))&&Math.round(100.0000000000001*(t_zarok))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(inlinelehotaobdobiedo('dtpLehota',sid)))==Math.round(100.0000000000001*(1))&&Math.round(100.0000000000001*(t_dtpzdobdobiedo))>Math.round(100.0000000000001*(0)))))||(Math.round(100.0000000000001*(t_cbpismb))==Math.round(100.0000000000001*(1))&&((Math.round(100.0000000000001*(inlinelehotazarok_b('dtpLehota',sid)))==Math.round(100.0000000000001*(1))&&Math.round(100.0000000000001*(t_zarok))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(inlinelehotaobdobiedo_b('dtpLehota',sid)))==Math.round(100.0000000000001*(1))&&Math.round(100.0000000000001*(t_dtpzdobdobiedo))>Math.round(100.0000000000001*(0)))))));
				return retval;
			}
			function vypocet_dtplehota_T1(sid) {
var retval = ("'Nová lehota': môže byť predĺžená maximálne o "+(inlinelehotatext('dtpLehota',sid))+"");
				return retval; //;
			}
				
			function vypocet_dtplehota_C2(sid) {
			var t_cbpisma = hodnota(null, 'cbPismA','n',sid,'layoutRow24194','b');
			var t_cbpismb = hodnota(null, 'cbPismB','n',sid,'layoutRow24194','b');
			var t_zarok = hodnota(null, 'zaRok','n',sid,'layoutRow24194','s');
			var t_dtpzdobdobiedo = hodnota(null, 'dtpZdObdobieDo','n',sid,'layoutRow24194','s');
var retval = (((Math.round(100.0000000000001*(t_cbpisma))==Math.round(100.0000000000001*(1))||Math.round(100.0000000000001*(t_cbpismb))==Math.round(100.0000000000001*(1)))&&((Math.round(100.0000000000001*(inlinelehotazarok_zakonne('dtpLehota',sid)))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_zarok))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(inlinelehotaobdobiedo_zakonne('dtpLehota',sid)))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_dtpzdobdobiedo))>Math.round(100.0000000000001*(0))))));
				return retval;
			}
			function vypocet_dtplehota_T2(sid) {
var retval = ("'Nová lehota':  musí byť vyššia ako je zákonná lehota na podanie DP");
				return retval; //;
			}
		function kontrola_tbRodneCislo(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbrodnecislo(sid);
				
			if (!iserr && !vypocet_tbrodnecislo_C0(sid))
			{
				validatorObject.settings.messages['tbRodneCislo']['customE'] = vypocet_tbrodnecislo_T0(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('tbDic'));
				validatorObject.element(document.getElementById('tbRodneCislo_2'));
				validatorObject.element(document.getElementById('dtpDatNarodenia'));
				validatorObject.element(document.getElementById('zaRok'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbrodnecislo(element, sid) {
			return hodnota(element, 'tbRodneCislo','n',sid,'layoutRow24194');
		}
		function vypocet_tbrodnecislo(sid) {
			return hodnota_tbRodneCislo(null, sid);
		}
				
			function vypocet_tbrodnecislo_C0(sid) {
			var t_tbrodnecislo = hodnota(null, 'tbRodneCislo','n',sid,'layoutRow24194','s');
			var t_tbrodnecislo_2 = hodnota(null, 'tbRodneCislo_2','n',sid,'layoutRow24194','s');
			var t_tbdic = hodnota(null, 'tbDic','n',sid,'layoutRow24194','s');
			var t_dtpdatnarodenia = hodnota(null, 'dtpDatNarodenia','n',sid,'layoutRow24194','s');
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
var retval = ((((Math.round(100.0000000000001*(t_tbrodnecislo))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbrodnecislo_2))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbdic))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_dtpdatnarodenia))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno)))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbrodnecislo))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbrodnecislo_2))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbdic+t_dtpdatnarodenia)))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno)))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbrodnecislo))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbrodnecislo_2))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbdic+t_dtpdatnarodenia)))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno)))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbrodnecislo))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbrodnecislo_2))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbdic))>=Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_dtpdatnarodenia))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno)))==Math.round(100.0000000000001*(0))))));
				return retval;
			}
			function vypocet_tbrodnecislo_T0(sid) {
var retval = ("'05-Rodné číslo': musí byť vyplnené ak nie je vyplnené '01-DIČ' alebo '06-Dátum narodenia' a súčasne je vyplnené '02-Priezvisko' alebo '03-Meno'");
				return retval; //;
			}
		function kontrola_dtpDatNarodenia(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_dtpdatnarodenia(sid);
				
			if (!iserr && !vypocet_dtpdatnarodenia_C0(sid))
			{
				validatorObject.settings.messages['dtpDatNarodenia']['customE'] = vypocet_dtpdatnarodenia_T0(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('tbDic'));
				validatorObject.element(document.getElementById('tbRodneCislo'));
				validatorObject.element(document.getElementById('tbRodneCislo_2'));
				validatorObject.element(document.getElementById('zaRok'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_dtpdatnarodenia(element, sid) {
			return hodnota(element, 'dtpDatNarodenia','n',sid,'layoutRow24194');
		}
		function vypocet_dtpdatnarodenia(sid) {
			return hodnota_dtpDatNarodenia(null, sid);
		}
				
			function vypocet_dtpdatnarodenia_C0(sid) {
			var t_tbrodnecislo = hodnota(null, 'tbRodneCislo','n',sid,'layoutRow24194','s');
			var t_tbrodnecislo_2 = hodnota(null, 'tbRodneCislo_2','n',sid,'layoutRow24194','s');
			var t_tbdic = hodnota(null, 'tbDic','n',sid,'layoutRow24194','s');
			var t_dtpdatnarodenia = hodnota(null, 'dtpDatNarodenia','n',sid,'layoutRow24194','s');
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
var retval = ((((Math.round(100.0000000000001*(t_tbrodnecislo))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbrodnecislo_2))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbdic))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_dtpdatnarodenia))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno)))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbrodnecislo))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbrodnecislo_2))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbdic+t_dtpdatnarodenia)))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno)))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbrodnecislo))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbrodnecislo_2))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbdic+t_dtpdatnarodenia)))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno)))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbrodnecislo))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbrodnecislo_2))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbdic))>=Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_dtpdatnarodenia))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno)))==Math.round(100.0000000000001*(0))))));
				return retval;
			}
			function vypocet_dtpdatnarodenia_T0(sid) {
var retval = ("");
				return retval; //;
			}
		function kontrola_tbRodneCislo_2(element, sid, dblclick) {		
			

			if (sid == '-1') {
			}
			var iserr = false;
			//if (focused > 0) 
			//	getSection();
			if (dblclick == 2)
				element.value = vypocet_tbrodnecislo_2(sid);
				
			if (!iserr && !vypocet_tbrodnecislo_2_C0(sid))
			{
				validatorObject.settings.messages['tbRodneCislo_2']['customE'] = vypocet_tbrodnecislo_2_T0(sid);
				iserr = true;
			}
			if (errorValidateFocusOut) {
				errorValidateFocusOut = false;
				validatorObject.element(document.getElementById('tbRodneCislo'));
				validatorObject.element(document.getElementById('dtpDatNarodenia'));
				errorValidateFocusOut = true;
			}
			return !iserr;
		}
		function hodnota_tbrodnecislo_2(element, sid) {
			return hodnota(element, 'tbRodneCislo_2','n',sid,'layoutRow24194');
		}
		function vypocet_tbrodnecislo_2(sid) {
			return hodnota_tbRodneCislo_2(null, sid);
		}
				
			function vypocet_tbrodnecislo_2_C0(sid) {
			var t_tbrodnecislo = hodnota(null, 'tbRodneCislo','n',sid,'layoutRow24194','s');
			var t_tbrodnecislo_2 = hodnota(null, 'tbRodneCislo_2','n',sid,'layoutRow24194','s');
			var t_tbdic = hodnota(null, 'tbDic','n',sid,'layoutRow24194','s');
			var t_dtpdatnarodenia = hodnota(null, 'dtpDatNarodenia','n',sid,'layoutRow24194','s');
			var t_taodd1obchmeno = hodnota(null, 'taOdd1ObchMeno','n',sid,'layoutRow24194','s');
			var t_tbodd1priezvisko = hodnota(null, 'tbOdd1Priezvisko','n',sid,'layoutRow24194','s');
			var t_tbodd1meno = hodnota(null, 'tbOdd1Meno','n',sid,'layoutRow24194','s');
var retval = ((((Math.round(100.0000000000001*(t_tbrodnecislo))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbrodnecislo_2))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbdic))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_dtpdatnarodenia))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno)))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbrodnecislo))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbrodnecislo_2))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbdic+t_dtpdatnarodenia)))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno)))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbrodnecislo))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbrodnecislo_2))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbdic+t_dtpdatnarodenia)))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno)))>Math.round(100.0000000000001*(0)))||(Math.round(100.0000000000001*(t_tbrodnecislo))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbrodnecislo_2))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_tbdic))>=Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_dtpdatnarodenia))==Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*(t_taodd1obchmeno))>Math.round(100.0000000000001*(0))&&Math.round(100.0000000000001*((t_tbodd1priezvisko+t_tbodd1meno)))==Math.round(100.0000000000001*(0))))));
				return retval;
			}
			function vypocet_tbrodnecislo_2_T0(sid) {
var retval = ("");
				return retval; //;
			}


		var validatorObject = null;
		
		function InitValidation() {
			validatorObject = $("#OznamenieOVykonaniUpravyZakladuDane176v16").validate({
				errorLabelContainer: $("#errorsContainer"),
				wrapper: "li",
				onkeyup: false,
				onclick: false,
		        ignore: ".disableValidators",
				rules: {
			  		



tbDic :
{
maxlength: 10,
tbDicRegEx: true,
customE: 'kontrola_tbDic' 
},


tbRodneCislo :
{
maxlength: 6,
tbRodneCisloRegEx: true,
customE: 'kontrola_tbRodneCislo' 
},




tbRodneCislo_2 :
{
maxlength: 4,
tbRodneCislo_2RegEx: true,
customE: 'kontrola_tbRodneCislo_2' 
},



dtpDatNarodenia :
{
customE: 'kontrola_dtpDatNarodenia' 
},


taOdd1ObchMeno :
{
maxlength: 120,
customE: 'kontrola_taOdd1ObchMeno' ,
customW: 'kontrola2_taOdd1ObchMeno' 
},


ico :
{
maxlength: 8,
minlength: 8,
icoRegEx: true,
customE: 'kontrola_ico' 
},




tbTPUlica :
{
maxlength: 60
},



tdTPCislo :
{
maxlength: 20
},

tbTPPSC :
{
required: true,
maxlength: 10,
customW: 'kontrola_tbTPPSC' 
},


tbTPObec :
{
required: true,
maxlength: 40
},


tbTPStat :
{
required: true,
date: false,
maxlength: 37,
customW: 'kontrola_tbTPStat' 
},

lblTPStat :
{
required: true
},

cbPismB :
{
customE: 'kontrola_cbPismB' ,
customW: 'kontrola2_cbPismB' 
},

cbPismA :
{
customE: 'kontrola_cbPismA' ,
customW: 'kontrola2_cbPismA' 
},


dtpLehota :
{
required: true,
customW: 'kontrola_dtpLehota' 
},





tbOdd3Vypracoval :
{
maxlength: 50
},



tbOdd3Dna :
{
customE: 'kontrola_tbOdd3Dna' ,
customW: 'kontrola2_tbOdd3Dna' 
},


tbOdd3Telefon :
{
maxlength: 13
},


zaRok :
{
customE: 'kontrola_zaRok' 
},

dtpZdObdobieOd :
{
customE: 'kontrola_dtpZdObdobieOd' 
},

dtpZdObdobieDo :
{
customE: 'kontrola_dtpZdObdobieDo' 
},



tbUlicaSK :
{
maxlength: 60
},



tdCisloSK :
{
maxlength: 20
},

tbPSCSK :
{
maxlength: 5,
customW: 'kontrola_tbPSCSK' 
},


tbObecSK :
{
maxlength: 40
},







tbOdd1Meno :
{
maxlength: 40,
customE: 'kontrola_tbOdd1Meno' ,
customW: 'kontrola2_tbOdd1Meno' 
},


tbOdd1TitulPred :
{
maxlength: 20
},




tbOdd1TitulZa :
{
maxlength: 20
},


tbOdd1Priezvisko :
{
maxlength: 40,
customE: 'kontrola_tbOdd1Priezvisko' ,
customW: 'kontrola2_tbOdd1Priezvisko' 
}
			  	},
				messages: {			
			   		



tbDic :
{
maxlength: "Maximálna dĺžka položky '01 - Daňové identifikačné číslo' musí byť: 10 ",
tbDicRegEx: "Položka '01 - Daňové identifikačné číslo' má neplatný formát",
customE: ""
},


tbRodneCislo :
{
maxlength: "Maximálna dĺžka položky '05 - Rodné číslo (pred lomkou)' musí byť: 6 ",
tbRodneCisloRegEx: "Položka '05 - Rodné číslo (pred lomkou)' má neplatný formát",
customE: ""
},




tbRodneCislo_2 :
{
maxlength: "Maximálna dĺžka položky '05 -Rodné číslo (za lomkou)' musí byť: 4 ",
tbRodneCislo_2RegEx: "Položka '05 -Rodné číslo (za lomkou)' má neplatný formát",
customE: ""
},



dtpDatNarodenia :
{
customE: ""
},


taOdd1ObchMeno :
{
maxlength: "Maximálna dĺžka položky '07 - Obchodné meno alebo názov' musí byť: 120 ",
customE: "",
customW: ""
},


ico :
{
maxlength: "Maximálna dĺžka položky '08 - IČO' musí byť: 8 ",
minlength: "Minimálna dĺžka položky '08 - IČO' musí byť: 8 ",
icoRegEx: "Položka '08 - IČO' má neplatný formát",
customE: ""
},




tbTPUlica :
{
maxlength: "Maximálna dĺžka položky '09 - Ulica' musí byť: 60 "
},



tdTPCislo :
{
maxlength: "Maximálna dĺžka položky '10 - Súpisné / orientačné číslo' musí byť: 20 "
},

tbTPPSC :
{
required: "Položka '11 - PSČ' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky '11 - PSČ' musí byť: 10 ",
customW: ""
},


tbTPObec :
{
required: "Položka '12 - Obec' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky '12 - Obec' musí byť: 40 "
},


tbTPStat :
{
required: "Položka '13 - Štát' musí byť vyplnená",
maxlength: "Maximálna dĺžka položky '13 - Štát' musí byť: 37 ",
customW: ""
},

lblTPStat :
{
required: "Položka '13 - Štát' musí byť vyplnená"
},

cbPismB :
{
customE: "",
customW: ""
},

cbPismA :
{
customE: "",
customW: ""
},


dtpLehota :
{
required: "Položka 'nová lehota' musí byť vyplnená",
customW: ""
},





tbOdd3Vypracoval :
{
maxlength: "Maximálna dĺžka položky 'Vypracoval' musí byť: 50 "
},



tbOdd3Dna :
{
customE: "",
customW: ""
},


tbOdd3Telefon :
{
maxlength: "Maximálna dĺžka položky 'Telefónne číslo' musí byť: 13 "
},


zaRok :
{
customE: ""
},

dtpZdObdobieOd :
{
customE: ""
},

dtpZdObdobieDo :
{
customE: ""
},



tbUlicaSK :
{
maxlength: "Maximálna dĺžka položky '14 - Ulica' musí byť: 60 "
},



tdCisloSK :
{
maxlength: "Maximálna dĺžka položky '15 - Súpisné / orientačné číslo' musí byť: 20 "
},

tbPSCSK :
{
maxlength: "Maximálna dĺžka položky '16 - PSČ' musí byť: 5 ",
customW: ""
},


tbObecSK :
{
maxlength: "Maximálna dĺžka položky '17 - Obec' musí byť: 40 "
},







tbOdd1Meno :
{
maxlength: "Maximálna dĺžka položky '03 - Meno' musí byť: 40 ",
customE: "",
customW: ""
},


tbOdd1TitulPred :
{
maxlength: "Maximálna dĺžka položky '04 - Titul (pred menom)' musí byť: 20 "
},




tbOdd1TitulZa :
{
maxlength: "Maximálna dĺžka položky '04 - Titul (za menom)' musí byť: 20 "
},


tbOdd1Priezvisko :
{
maxlength: "Maximálna dĺžka položky '02 - Priezvisko' musí byť: 40 ",
customE: "",
customW: ""
}	  	
			  	},
				submitHandler: function(form) {
			   		CallServerValidateService();
   				}
			});
	  	}
	/* ]]> */
					</xsl:text>
			</script>
	<style type="text/css">
		.bezOkrajaBezPozadiaHlavicky {border:0px;background:none;}
.bezOkrajaBezPozadiaHlavicky > .caption {border:0px;background:none !important;}
.dolava8px {position:relative;left:-8px;}
.NadpisTucnyCentrovanyText {text-align:center;font-weight:bold;}
.NadpisTucnyCentrovanyText span {font-size:2em !important;line-height:1.2em}
.NadpisTucnyCentrovanyText .fieldLabel {margin: 5px 0 0 0; width:100%}
.centrovanyText {text-align:center;}
.centrovanyText span {font-size:0.75em !important;}
.textJustify {text-align:justify;}
.kratkyTextBox120pxTitul INPUT { width:120px; }
.kratkyTextBox120pxTitul TEXTAREA { width:75px; height: 120px; }
.mensiText span {font-size:0.65em !important;}
.topPlus12px {position:relative; top:12px}
.TextArea811x70px TEXTAREA {  width:811px; height: 70px }
.TextArea811x70px INPUT {  width:811px; height: 70px }
.sirokyTextBox600px INPUT  {  width:600px;  }
.sirokyTextBox600px TEXTAREA {  width:600px; height: 16px; }
.doprava5px {position:relative;left:5px;}
.kratkyTextBox87px { margin-left:0px; }
.kratkyTextBox87px SPAN { margin-left:0px; }
.kratkyTextBox87px INPUT { width:87px; }
.kratkyTextBox87px TEXTAREA { width:87px; height: 16px; }
.sirokyTextBox400px INPUT  {  width:400px;  }
.sirokyTextBox400px TEXTAREA {  width:400px; height: 16px; }
.kratkyTextBox250px { margin-left:0px; }
.kratkyTextBox250px INPUT { width:250px; }
.kratkyTextBox250px TEXTAREA { width:250px; height: 16px; }
.topMinus5px {position:relative; top:-5px}
.sirokyTextBox410px INPUT  {  width:410px;  }
.sirokyTextBox410px TEXTAREA {  width:410px; height: 16px; }
.sirokyTextBox210pxx INPUT  {  width:210px;  }
.sirokyTextBox210pxx TEXTAREA {  width:210px; height: 16px; }
.sirokyTextBox260pxPriezvisko INPUT  {  width:260px;  }
.sirokyTextBox260pxPriezvisko TEXTAREA {  width:260px; height: 16px; }
.dolava9px {position:relative;left:-9px;}

	</style>
</head>
<body>
	<noscript><p class="noscript">Pre kompletnú funkčnosť aplikácie je potrebné povoliť JavaScript</p></noscript>
	<div id="errorsContainerDiv" class="errorsContainerDiv"> <ul id="errorsContainer" class="errorsContainer"><li/></ul> </div>
	<form id="OznamenieOVykonaniUpravyZakladuDane176v16" action="">
		<div id="main" class="layoutMain ui-widget-content">	
						 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaNazov">		
		<div id="layoutRow24193" class="layoutRow ui-tabs ui-widget-content  nocaption "   title="" >
						<input type="hidden" name="sekciaNazov"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24193" class="columns">
				
				<div id="layoutColumn63376" class="column first" >
											
<div id="layoutCell103085" class="cell  NadpisTucnyCentrovanyText" >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">OZNÁMENIE </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103086" class="cell  centrovanyText" >		
			
		<span class="fieldLabel" title=""   style="width:870px;"><xsl:text disable-output-escaping="yes">daňovníka o predĺžení lehoty na podanie daňového priznania </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103087" class="cell  centrovanyText" >		
			
		<span class="fieldLabel" title=""   style="width:870px;"><xsl:text disable-output-escaping="yes">podľa § 49 ods. 3 písm. a) alebo b) zákona č. 595/2003 Z. z. o dani z príjmov v znení neskorších predpisov (ďalej len „zákon“) </xsl:text> </span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
							<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaNazovPodlaPar">		
		<div id="layoutRow24195" class="layoutRow ui-tabs ui-widget-content  nocaption "   title="" >
						<input type="hidden" name="sekciaNazovPodlaPar"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24195" class="columns">
				
				<div id="layoutColumn63378" class="column first" >
											
<div id="layoutCell103090" class="cell  textJustify" >		
			
		<span class="fieldLabel" title=""   style="width:880px;"><xsl:text disable-output-escaping="yes">Oznámenie o predĺžení lehoty na podanie daňového priznania k dani z príjmov fyzickej osoby alebo daňového priznania k dani z príjmov právnickej osoby (ďalej len „oznámenie“) podáva daňovník príslušnému správcovi dane do uplynutia lehoty na podanie daňového priznania podľa § 49 ods. 2 zákona, tzn. do troch kalendárnych mesiacov po uplynutí zdaňovacieho obdobia. Táto lehota sa predlžuje najviac o tri celé kalendárne mesiace alebo najviac o šesť celých kalendárnych mesiacov, ak súčasťou príjmov daňovníka sú zdaniteľné príjmy plynúce zo zdrojov v zahraničí. Tento postup neuplatňuje daňovník v konkurze, daňovník v likvidácii a dedič, ktorý podáva daňové priznanie za zomrelého daňovníka.&lt;sup&gt;1)&lt;/sup&gt; </xsl:text> </span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
							<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDicZdObdobie">		
		<div id="layoutRow24196" class="layoutRow ui-tabs ui-widget-content  nocaption "   title="" >
						<input type="hidden" name="sekciaDicZdObdobie"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24196" class="columns">
				
				<div id="layoutColumn63379" class="column first" >
											
<div id="layoutCell103092" class="cell " >		
			
		<label class="fieldLabel" title="" for="tbDic"  style="width:170px;"><xsl:text disable-output-escaping="yes">01 - Daňové identifikačné číslo </xsl:text> </label><span class="fieldContent"><input  id="tbDic" name="tbDic" title="Daňové identifikačné číslo (DIČ) - jedinečný desaťmiestny identifikátor. Pre FO musí byť povinne vyplnený aspoň riadok 1, 5 alebo 6 a pre PO riadok 1 alebo 8." type="text" class="textBox" maxlength="10" size="190" disabled="disabled" alt="Daňové identifikačné číslo (DIČ) - jedinečný desaťmiestny identifikátor. Pre FO musí byť povinne vyplnený aspoň riadok 1, 5 alebo 6 a pre PO riadok 1 alebo 8." value=""  ><xsl:if test="boolean(./*[name() = 'tbDic']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbDic']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbDic']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
							<xsl:if test="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDicZdObdobie/@notInFormData">
				<script type="text/javascript">$(document).ready(function () { initRepetitionSection(1, 1, 'layoutRow24196') })</script>
					</xsl:if>
							<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaZdanObdobie">		
		<div id="layoutRow24219" class="layoutRow ui-tabs ui-widget-content  "   title="" >
						<input type="hidden" name="sekciaZdanObdobie"  />
					<div class="caption ui-widget-header">		
				<div class="headercorrection" title="Za zdaňovacie obdobie 2)">Za zdaňovacie obdobie <sup>2)</sup></div><span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24219" class="columns">
				
				<div id="layoutColumn63425" class="column first"  style="width:130px;">
											
<div id="layoutCell103189" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">Fyzická osoba </xsl:text> </span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63380" class="column "  style="width:280px;">
											
<div id="layoutCell103094" class="cell " >		
			
		<label class="fieldLabel" title="" for="zaRok"  style="width:40px;"><xsl:text disable-output-escaping="yes">Za rok </xsl:text> </label><span class="fieldContent"><select id="zaRok" name="zaRok" class="comboBox" title="Rok pre FO musí byť vyplnený, ak je vyplnený aspoň jeden z riadkov r. 2 až r. 6. Nemôže byť súčasne vyplený  rok pre FO a ZO od-do pre PO. Oznámenie o predĺžení lehoty na podanie DP za rok 2018 môže byť podané najskôr 1.1.2019. Za rok 2019 najskôr 1.1.2020." disabled="disabled"><option value=""></option><option value="2017" ><xsl:if test="boolean(./*[name() = 'zaRok']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'zaRok']='2017'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if>2017</option><option value="2018" ><xsl:if test="boolean(./*[name() = 'zaRok']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'zaRok']='2018'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if>2018</option><option value="2019" ><xsl:if test="boolean(./*[name() = 'zaRok']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'zaRok']='2019'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if>2019</option><option value="2020" ><xsl:if test="boolean(./*[name() = 'zaRok']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'zaRok']='2020'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if>2020</option></select></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63426" class="column "  style="width:130px;">
											
<div id="layoutCell103190" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">Právnická osoba </xsl:text> </span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63381" class="column "  style="width:300px;">
											
<div id="layoutCell103098" class="cell " >		
			
		<label class="fieldLabel" title="" for="dtpZdObdobieOd"  style="width:28px;"><xsl:text disable-output-escaping="yes">od </xsl:text> </label><span class="fieldContent"><input alt="Dátum Od musí byť vyšší alebo rovný ako 1.1.2016. Nemôže byť súčasne vyplnený  rok pre FO a zdaňovacie obdobie od-do pre PO. Ak je vyplnený r. 7 až 8, tak musí byť vyplnené zdaňovacie obdobie od-do pre PO." id="dtpZdObdobieOd" name="dtpZdObdobieOd" title="Dátum Od musí byť vyšší alebo rovný ako 1.1.2016. Nemôže byť súčasne vyplnený  rok pre FO a zdaňovacie obdobie od-do pre PO. Ak je vyplnený r. 7 až 8, tak musí byť vyplnené zdaňovacie obdobie od-do pre PO." type="text" class="date datepicker" maxlength="14" size="190" disabled="disabled" ><xsl:if test="boolean(./*[name() = 'dtpZdObdobieOd']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'dtpZdObdobieOd']"/></xsl:attribute></input></span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103099" class="cell " >		
			
		<label class="fieldLabel" title="" for="dtpZdObdobieDo"  style="width:28px;"><xsl:text disable-output-escaping="yes">do </xsl:text> </label><span class="fieldContent"><input alt="Dátum Do musí byť vyšší alebo rovný ako 1.1.2017. Nemôže byť súčasne vyplnený  rok pre FO a zdaňovacie obdobie od-do pre PO. Ak je vyplnený r. 7 až 8, tak musí byť vyplnené zdaňovacie obdobie od-do pre PO." id="dtpZdObdobieDo" name="dtpZdObdobieDo" title="Dátum Do musí byť vyšší alebo rovný ako 1.1.2017. Nemôže byť súčasne vyplnený  rok pre FO a zdaňovacie obdobie od-do pre PO. Ak je vyplnený r. 7 až 8, tak musí byť vyplnené zdaňovacie obdobie od-do pre PO." type="text" class="date datepicker" maxlength="14" size="190" disabled="disabled" ><xsl:if test="boolean(./*[name() = 'dtpZdObdobieDo']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'dtpZdObdobieDo']"/></xsl:attribute></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
							<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDovod">		
		<div id="layoutRow24213" class="layoutRow ui-tabs ui-widget-content  nocaption "   title="" >
						<input type="hidden" name="sekciaDovod"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24213" class="columns">
				
				<div id="layoutColumn63413" class="column first" >
											
<div id="layoutCell103171" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaDovod/sekciaDovod2">		
		<div id="layoutRow24214" class="layoutRow ui-tabs ui-widget-content  bezOkrajaBezPozadiaHlavicky nocaption "   title="" >
						<input type="hidden" name="sekciaDovod2"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24214" class="columns">
				
				<div id="layoutColumn63414" class="column first"  style="width:40px;">
											
<div id="layoutCell103172" class="cell " >		
			
		<input id="cbDovod" name="cbDovod" title="Musí byť zaškrtnuté, ak daňový subjekt podáva oznámenie z dôvodu opravy údajov uvedených v predchádzajúcom oznámení" type="checkbox" class="checkBox" value="Oznámenie podávam z dôvodu opravy údajov uvedených v predchádzajúcom oznámení, ktoré bolo správcovi dane podané dňa:" alt="Musí byť zaškrtnuté, ak daňový subjekt podáva oznámenie z dôvodu opravy údajov uvedených v predchádzajúcom oznámení" disabled="disabled" ><xsl:if test="boolean(./*[name() = 'cbDovod']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'cbDovod']='1'"><xsl:attribute name="checked">checked</xsl:attribute></xsl:if></input><br />	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63416" class="column "  style="width:538px;">
											
<div id="layoutCell103174" class="cell  topMinus5px" >		
			
		<span class="fieldLabel" title=""   style="width:500px;"><xsl:text disable-output-escaping="yes">Oznámenie podávam z dôvodu opravy údajov uvedených v predchádzajúcom oznámení &lt;sup&gt;3)&lt;/sup&gt;, ktoré bolo správcovi dane podané dňa: </xsl:text> </span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63415" class="column "  style="width:200px;">
											
<div id="layoutCell103173" class="cell " >		
			
		<label class="fieldLabel" title="" for="dtpOznamDovodu" style="display: none">Dátum podania dôvodu opravy údajov uvedených v predchádzajúcom oznámení správcovi </label><span class="fieldContent"><input alt="" id="dtpOznamDovodu" name="dtpOznamDovodu" title="" type="text" class="date datepicker" maxlength="14" size="190" disabled="disabled" ><xsl:if test="boolean(./*[name() = 'dtpOznamDovodu']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'dtpOznamDovodu']"/></xsl:attribute></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
							<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1">		
		<div id="layoutRow24198" class="layoutRow ui-tabs ui-widget-content  "   title="" >
						<input type="hidden" name="sekciaOdd1"  />
					<div class="caption ui-widget-header">		
				<div class="headercorrection" title="ÚDAJE O DAŇOVNÍKOVI">ÚDAJE O DAŇOVNÍKOVI</div><span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24198" class="columns">
				
				<div id="layoutColumn63387" class="column first" >
											
<div id="layoutCell103111" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO">		
		<div id="layoutRow24197" class="layoutRow ui-tabs ui-widget-content  "   title="" >
						<input type="hidden" name="sekciaOdd1FO"  />
					<div class="caption ui-widget-header">		
				<div class="headercorrection" title="Fyzická osoba">Fyzická osoba</div><span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24197" class="columns">
				
				<div id="layoutColumn63382" class="column first" >
											
<div id="layoutCell104298" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1FO/secpom_1">		
		<div id="layoutRow24471" class="layoutRow ui-tabs ui-widget-content  bezOkrajaBezPozadiaHlavicky nocaption "   title="" >
						<input type="hidden" name="secpom_1"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24471" class="columns">
				
				<div id="layoutColumn64089" class="column first"  style="width:290px;">
											
<div id="layoutCell103101" class="cell  dolava9px" >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">02 - Priezvisko </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103100" class="cell  sirokyTextBox260pxPriezvisko dolava9px" >		
			
		<label class="fieldLabel" title="" for="tbOdd1Priezvisko" style="display: none">02 - Priezvisko </label><span class="fieldContent"><input  id="tbOdd1Priezvisko" name="tbOdd1Priezvisko" title="Musí byť vyplnené meno, priezvisko fyzickej osoby alebo obchodné meno právnickej osoby. " type="text" class="textBox" maxlength="40" size="380" disabled="disabled" alt="Musí byť vyplnené meno, priezvisko fyzickej osoby alebo obchodné meno právnickej osoby. " value=""  ><xsl:if test="boolean(./*[name() = 'tbOdd1Priezvisko']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbOdd1Priezvisko']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbOdd1Priezvisko']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63383" class="column "  style="width:240px;">
											
<div id="layoutCell103103" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">03 - Meno </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103102" class="cell  sirokyTextBox210pxx" >		
			
		<label class="fieldLabel" title="" for="tbOdd1Meno" style="display: none">03 - Meno </label><span class="fieldContent"><input  id="tbOdd1Meno" name="tbOdd1Meno" title="Musí byť vyplnené meno, priezvisko fyzickej osoby alebo obchodné meno právnickej osoby. " type="text" class="textBox" maxlength="40" size="257" disabled="disabled" alt="Musí byť vyplnené meno, priezvisko fyzickej osoby alebo obchodné meno právnickej osoby. " value=""  ><xsl:if test="boolean(./*[name() = 'tbOdd1Meno']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbOdd1Meno']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbOdd1Meno']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63384" class="column "  style="width:132px;">
											
<div id="layoutCell103105" class="cell " >		
			
		<span class="fieldLabel" title=""   style="width:280px;"><xsl:text disable-output-escaping="yes">04 - Titul (pred menom / za priezviskom) </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103104" class="cell  kratkyTextBox120pxTitul" >		
			
		<label class="fieldLabel" title="" for="tbOdd1TitulPred" style="display: none">04 - Titul (pred menom) </label><span class="fieldContent"><input  id="tbOdd1TitulPred" name="tbOdd1TitulPred" title="" type="text" class="textBox" maxlength="20" size="210" disabled="disabled" alt="" value=""  ><xsl:if test="boolean(./*[name() = 'tbOdd1TitulPred']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbOdd1TitulPred']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbOdd1TitulPred']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63385" class="column "  style="width:10px;">
											
<div id="layoutCell103107" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">&#xa0; </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103106" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">/ </xsl:text> </span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63386" class="column "  style="width:185px;">
											
<div id="layoutCell103109" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">&#xa0; </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103108" class="cell  kratkyTextBox120pxTitul" >		
			
		<label class="fieldLabel" title="" for="tbOdd1TitulZa" style="display: none">04 - Titul (za menom) </label><span class="fieldContent"><input  id="tbOdd1TitulZa" name="tbOdd1TitulZa" title="" type="text" class="textBox" maxlength="20" size="25" disabled="disabled" alt="" value=""  ><xsl:if test="boolean(./*[name() = 'tbOdd1TitulZa']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbOdd1TitulZa']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbOdd1TitulZa']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63433" class="column "  style="width:130px;">
											
<div id="layoutCell103211" class="cell " >		
			
		<span class="fieldLabel" title=""   style="width:120px;"><xsl:text disable-output-escaping="yes">05 - Rodné číslo </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103212" class="cell  kratkyTextBox120pxTitul" >		
			
		<label class="fieldLabel" title="" for="tbRodneCislo" style="display: none">05 - Rodné číslo (pred lomkou) </label><span class="fieldContent"><input  id="tbRodneCislo" name="tbRodneCislo" title="Položka 'Rodné číslo' pozostáva z 9 alebo 10 čísel. Fyzická osoba musí povinne uviesť DIČ, RČ alebo Dátum narodenia." type="text" class="textBox" maxlength="6" size="190" disabled="disabled" alt="Položka 'Rodné číslo' pozostáva z 9 alebo 10 čísel. Fyzická osoba musí povinne uviesť DIČ, RČ alebo Dátum narodenia." value=""  ><xsl:if test="boolean(./*[name() = 'tbRodneCislo']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbRodneCislo']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbRodneCislo']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63434" class="column "  style="width:9px;">
											
<div id="layoutCell104294" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">&#xa0; </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell104295" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">/ </xsl:text> </span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63435" class="column "  style="width:161px;">
											
<div id="layoutCell104296" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">&#xa0; </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell104297" class="cell  kratkyTextBox120pxTitul" >		
			
		<label class="fieldLabel" title="" for="tbRodneCislo_2" style="display: none">05 -Rodné číslo (za lomkou) </label><span class="fieldContent"><input  id="tbRodneCislo_2" name="tbRodneCislo_2" title="" type="text" class="textBox" maxlength="4" size="190" disabled="disabled" alt="" value=""  ><xsl:if test="boolean(./*[name() = 'tbRodneCislo_2']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbRodneCislo_2']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbRodneCislo_2']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63436" class="column "  style="width:240px;">
											
<div id="layoutCell103213" class="cell  mensiText textJustify topPlus12px" >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">vypĺňa sa, ak ide o daňovníka, &lt;br/&gt;ktorý nemá pridelené DIČ </xsl:text> </span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn64086" class="column "  style="width:140px;">
											
<div id="layoutCell103215" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">06 - Dátum narodenia </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103216" class="cell  kratkyTextBox120pxTitul" >		
			
		<label class="fieldLabel" title="" for="dtpDatNarodenia" style="display: none">06 - Dátum narodenia </label><span class="fieldContent"><input alt="Fyzická osoba musí povinne uviesť DIČ, RČ alebo Dátum narodenia." id="dtpDatNarodenia" name="dtpDatNarodenia" title="Fyzická osoba musí povinne uviesť DIČ, RČ alebo Dátum narodenia." type="text" class="date datepicker" maxlength="14" size="190" disabled="disabled" ><xsl:if test="boolean(./*[name() = 'dtpDatNarodenia']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'dtpDatNarodenia']"/></xsl:attribute></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn64087" class="column "  style="width:191px;">
											
<div id="layoutCell103214" class="cell  mensiText textJustify topPlus12px" >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">vypĺňa sa, ak ide o daňovníka,&lt;br/&gt;ktorý nemá pridelené DIČ ani&lt;br/&gt;rodné číslo v Slovenskej republike </xsl:text> </span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103112" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaOdd1PO">		
		<div id="layoutRow24199" class="layoutRow ui-tabs ui-widget-content  "   title="" >
						<input type="hidden" name="sekciaOdd1PO"  />
					<div class="caption ui-widget-header">		
				<div class="headercorrection" title="Právnická osoba">Právnická osoba</div><span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24199" class="columns">
				
				<div id="layoutColumn63388" class="column first" >
											
<div id="layoutCell103114" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">07 - Obchodné meno alebo názov </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103113" class="cell  TextArea811x70px" >		
			
		<label class="fieldLabel" title="" for="taOdd1ObchMeno" style="display: none">07 - Obchodné meno alebo názov </label><span class="fieldContent"><textarea  id="taOdd1ObchMeno" name="taOdd1ObchMeno" title="Musí byť vyplnené meno, priezvisko fyzickej osoby alebo obchodné meno právnickej osoby. " class="textArea" cols="100" rows="2"  disabled="disabled" ><xsl:if test="boolean(./*[name() = 'taOdd1ObchMeno']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:choose><xsl:when test="./*[name() = 'taOdd1ObchMeno']/text()"><xsl:value-of select="./*[name() = 'taOdd1ObchMeno']"/></xsl:when><xsl:otherwise><xsl:text></xsl:text></xsl:otherwise></xsl:choose></textarea></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63437" class="column "  style="width:200px;">
											
<div id="layoutCell103217" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">08 - IČO </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103202" class="cell " >		
			
		<label class="fieldLabel" title="" for="ico" style="display: none">08 - IČO </label><span class="fieldContent"><input  id="ico" name="ico" title="Položka 'IČO' musí obsahovať práve 8 čísel. Právnická osoba  musí povinne uviesť DIČ alebo IČO" type="text" class="textBox" maxlength="8" size="190" disabled="disabled" alt="Položka 'IČO' musí obsahovať práve 8 čísel. Právnická osoba  musí povinne uviesť DIČ alebo IČO" value=""  ><xsl:if test="boolean(./*[name() = 'ico']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'ico']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'ico']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63438" class="column "  style="width:500px;">
											
<div id="layoutCell103218" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">&#xa0; </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103203" class="cell  mensiText textJustify" >		
			
		<span class="fieldLabel" title=""   style="width:500px;"><xsl:text disable-output-escaping="yes">vypĺňa sa, ak ide o daňovníka, ktorý nemá pridelené DIČ </xsl:text> </span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103119" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa">		
		<div id="layoutRow24201" class="layoutRow ui-tabs ui-widget-content  "   title="" >
						<input type="hidden" name="sekciaTPAdresa"  />
					<div class="caption ui-widget-header">		
				<div class="headercorrection" title="Adresa trvalého pobytu (fyzická osoba) / Adresa sídla (právnická osoba) na území Slovenskej republiky alebo v zahraničí">Adresa trvalého pobytu (fyzická osoba) / Adresa sídla (právnická osoba) na území Slovenskej republiky alebo v zahraničí</div><span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24201" class="columns">
				
				<div id="layoutColumn63391" class="column first" >
											
<div id="layoutCell103120" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa1">		
		<div id="layoutRow24200" class="layoutRow ui-tabs ui-widget-content  bezOkrajaBezPozadiaHlavicky dolava8px nocaption "   title="" >
						<input type="hidden" name="sekciaTPAdresa1"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24200" class="columns">
				
				<div id="layoutColumn63389" class="column first"  style="width:649px;">
											
<div id="layoutCell103116" class="cell " >		
			
			
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103115" class="cell  sirokyTextBox600px" >		
			
		<label class="fieldLabel" title="" for="tbTPUlica"  style="width:291px;"><xsl:text disable-output-escaping="yes">09 - Ulica </xsl:text> </label><span class="fieldContent"><input  id="tbTPUlica" name="tbTPUlica" title="" type="text" class="textBox" maxlength="60" size="669" disabled="disabled" alt="" value=""  ><xsl:if test="boolean(./*[name() = 'tbTPUlica']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbTPUlica']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbTPUlica']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63390" class="column "  style="width:185px;">
											
<div id="layoutCell103117" class="cell " >		
			
			
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103118" class="cell " >		
			
		<label class="fieldLabel" title="" for="tdTPCislo"  style="width:291px;"><xsl:text disable-output-escaping="yes">10 - Súpisné / orientačné číslo </xsl:text> </label><span class="fieldContent"><input  id="tdTPCislo" name="tdTPCislo" title="" type="text" class="textBox" maxlength="20" size="191" disabled="disabled" alt="" value=""  ><xsl:if test="boolean(./*[name() = 'tdTPCislo']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tdTPCislo']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tdTPCislo']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103121" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaTPAdresa/sekciaTPAdresa2">		
		<div id="layoutRow24202" class="layoutRow ui-tabs ui-widget-content  bezOkrajaBezPozadiaHlavicky dolava8px nocaption "   title="" >
						<input type="hidden" name="sekciaTPAdresa2"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24202" class="columns">
				
				<div id="layoutColumn63392" class="column first"  style="width:125px;">
											
<div id="layoutCell103123" class="cell " >		
			
			
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103122" class="cell  doprava5px kratkyTextBox87px" >		
			
		<label class="fieldLabel" title="" for="tbTPPSC"  style="width:291px;"><xsl:text disable-output-escaping="yes">11 - PSČ </xsl:text> <em>*</em></label><span class="fieldContent"><input  id="tbTPPSC" name="tbTPPSC" title="" type="text" class="textBox" maxlength="10" size="112" disabled="disabled" alt="" value=""  ><xsl:if test="boolean(./*[name() = 'tbTPPSC']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbTPPSC']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbTPPSC']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63393" class="column "  style="width:440px;">
											
<div id="layoutCell103125" class="cell " >		
			
			
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103124" class="cell  sirokyTextBox400px" >		
			
		<label class="fieldLabel" title="" for="tbTPObec"  style="width:291px;"><xsl:text disable-output-escaping="yes">12 - Obec </xsl:text> <em>*</em></label><span class="fieldContent"><input  id="tbTPObec" name="tbTPObec" title="Obec musí byť vyplnená." type="text" class="textBox" maxlength="40" size="480" disabled="disabled" alt="Obec musí byť vyplnená." value=""  ><xsl:if test="boolean(./*[name() = 'tbTPObec']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbTPObec']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbTPObec']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63394" class="column "  style="width:260px;">
											
<div id="layoutCell103127" class="cell " >		
			
			
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103126" class="cell  kratkyTextBox250px" >		
			
		<label class="fieldLabel" title="" for="tbTPStat"  style="width:291px;"><xsl:text disable-output-escaping="yes">13 - Štát </xsl:text> <em>*</em></label><span class="fieldContent"><input  id="tbTPStat" name="tbTPStat" title="" type="text" class="textBox" maxlength="37" size="190" disabled="disabled" alt="" value=""  ><xsl:if test="boolean(./*[name() = 'tbTPStat']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbTPStat']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbTPStat']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103195" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK">		
		<div id="layoutRow24221" class="layoutRow ui-tabs ui-widget-content  "   title="" >
						<input type="hidden" name="sekciaAdresaSK"  />
					<div class="caption ui-widget-header">		
				<div class="headercorrection" title="Adresa na území Slovenskej republiky 4)">Adresa na území Slovenskej republiky <sup>4)</sup></div><span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24221" class="columns">
				
				<div id="layoutColumn63429" class="column first" >
											
<div id="layoutCell103196" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK/sekciaAdresaSK1">		
		<div id="layoutRow24220" class="layoutRow ui-tabs ui-widget-content  bezOkrajaBezPozadiaHlavicky dolava8px nocaption "   title="" >
						<input type="hidden" name="sekciaAdresaSK1"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24220" class="columns">
				
				<div id="layoutColumn63427" class="column first"  style="width:649px;">
											
<div id="layoutCell103192" class="cell " >		
			
			
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103191" class="cell  sirokyTextBox600px" >		
			
		<label class="fieldLabel" title="" for="tbUlicaSK"  style="width:291px;"><xsl:text disable-output-escaping="yes">14 - Ulica </xsl:text> </label><span class="fieldContent"><input  id="tbUlicaSK" name="tbUlicaSK" title="" type="text" class="textBox" maxlength="60" size="669" disabled="disabled" alt="" value=""  ><xsl:if test="boolean(./*[name() = 'tbUlicaSK']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbUlicaSK']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbUlicaSK']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63428" class="column "  style="width:185px;">
											
<div id="layoutCell103193" class="cell " >		
			
			
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103194" class="cell " >		
			
		<label class="fieldLabel" title="" for="tdCisloSK"  style="width:291px;"><xsl:text disable-output-escaping="yes">15 - Súpisné / orientačné číslo </xsl:text> </label><span class="fieldContent"><input  id="tdCisloSK" name="tdCisloSK" title="" type="text" class="textBox" maxlength="20" size="191" disabled="disabled" alt="" value=""  ><xsl:if test="boolean(./*[name() = 'tdCisloSK']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tdCisloSK']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tdCisloSK']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103197" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaAdresaSK/sekciaAdresaSK2">		
		<div id="layoutRow24222" class="layoutRow ui-tabs ui-widget-content  bezOkrajaBezPozadiaHlavicky dolava8px nocaption "   title="" >
						<input type="hidden" name="sekciaAdresaSK2"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24222" class="columns">
				
				<div id="layoutColumn63430" class="column first"  style="width:125px;">
											
<div id="layoutCell103199" class="cell " >		
			
			
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103198" class="cell  doprava5px kratkyTextBox87px" >		
			
		<label class="fieldLabel" title="" for="tbPSCSK"  style="width:291px;"><xsl:text disable-output-escaping="yes">16 - PSČ </xsl:text> </label><span class="fieldContent"><input  id="tbPSCSK" name="tbPSCSK" title="" type="text" class="textBox" maxlength="5" size="112" disabled="disabled" alt="" value=""  ><xsl:if test="boolean(./*[name() = 'tbPSCSK']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbPSCSK']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbPSCSK']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63431" class="column "  style="width:440px;">
											
<div id="layoutCell103201" class="cell " >		
			
			
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103200" class="cell  sirokyTextBox400px" >		
			
		<label class="fieldLabel" title="" for="tbObecSK"  style="width:291px;"><xsl:text disable-output-escaping="yes">17 - Obec </xsl:text> </label><span class="fieldContent"><input  id="tbObecSK" name="tbObecSK" title="Obec musí byť vyplnená." type="text" class="textBox" maxlength="40" size="480" disabled="disabled" alt="Obec musí byť vyplnená." value=""  ><xsl:if test="boolean(./*[name() = 'tbObecSK']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbObecSK']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbObecSK']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103128" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaOdd1/sekciaNovaLehota">		
		<div id="layoutRow24203" class="layoutRow ui-tabs ui-widget-content  "   title="" >
						<input type="hidden" name="sekciaNovaLehota"  />
					<div class="caption ui-widget-header">		
				<div class="headercorrection" title="Nová (predĺžená) lehota na podanie daňového priznania k dani z príjmov 5)">Nová (predĺžená) lehota na podanie daňového priznania k dani z príjmov <sup>5)</sup></div><span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24203" class="columns">
				
				<div id="layoutColumn63395" class="column first"  style="width:565px;">
											
<div id="layoutCell103204" class="cell  mensiText" >		
			
		<span class="fieldLabel" title=""   style="width:850px;"><xsl:text disable-output-escaping="yes">Daňovník vyznačí, podľa ktorého ustanovenia zákona si predlžuje lehotu na podanie daňového priznania a uvedie novú (predĺženú) lehotu. </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103130" class="cell " >		
			
		<input id="cbPismA" name="cbPismA" title="Musí byť zaškrtnuté pole 'podľa §49 ods. 3 písm. a) zákona' alebo pole 'podľa § 49 ods. 3 písm. b) zákona'" type="checkbox" class="checkBox" value="predĺženie lehoty podľa § 49 ods. 3 písm. a) zákona (najviac o tri celé kalendárne mesiace)" alt="Musí byť zaškrtnuté pole 'podľa §49 ods. 3 písm. a) zákona' alebo pole 'podľa § 49 ods. 3 písm. b) zákona'" disabled="disabled" ><xsl:if test="boolean(./*[name() = 'cbPismA']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'cbPismA']='1'"><xsl:attribute name="checked">checked</xsl:attribute></xsl:if></input><label for="cbPismA" class="checkBoxLabel">predĺženie lehoty podľa <b>§ 49 ods. 3 písm. a) zákona</b> (najviac o tri celé kalendárne mesiace)</label><br />	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103129" class="cell " >		
			
		<input id="cbPismB" name="cbPismB" title="Musí byť zaškrtnuté pole 'podľa §49 ods. 3 písm. a) zákona' alebo pole 'podľa § 49 ods. 3 písm. b) zákona'" type="checkbox" class="checkBox" value="predĺženie lehoty podľa § 49 ods. 3 písm. b) zákona (najviac o šesť celých kalendárnych mesiacov, ak súčasťou príjmov daňovníka sú zdaniteľné príjmy plynúce zo zdrojov v zahraničí)" alt="Musí byť zaškrtnuté pole 'podľa §49 ods. 3 písm. a) zákona' alebo pole 'podľa § 49 ods. 3 písm. b) zákona'" disabled="disabled" ><xsl:if test="boolean(./*[name() = 'cbPismB']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'cbPismB']='1'"><xsl:attribute name="checked">checked</xsl:attribute></xsl:if></input><label for="cbPismB" class="checkBoxLabel">predĺženie lehoty podľa <b>§ 49 ods. 3 písm. b) zákona</b> (najviac o šesť celých kalendárnych mesiacov, ak súčasťou príjmov daňovníka sú zdaniteľné príjmy plynúce zo zdrojov v zahraničí)</label><br />	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63439" class="column "  style="width:300px;">
											
<div id="layoutCell103219" class="cell " >		
			
		<span class="fieldLabel" title=""  ><xsl:text disable-output-escaping="yes">&#xa0; </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103205" class="cell  topPlus12px" >		
			
		<label class="fieldLabel" title="" for="dtpLehota"  style="width:70px;"><xsl:text disable-output-escaping="yes">nová lehota </xsl:text> <em>*</em></label><span class="fieldContent"><input alt="Dátum musí byť posledný deň kalendárneho mesiaca. Nová lehota na podanie DP musí byť vyšia ako je zákonná lehota na podanie DP. Ak je zaškrtnuté pole 'podľa §49 ods. 3 písm. a) zákona', tak lehota na podanie DP môže byť predĺžená maximálne o 3 kalendárne mesiace.  Ak je zaškrtnuté pole 'podľa §49 ods. 3 písm. b) zákona', tak lehota na podanie DP môže byť predĺžená maximálne o 6 kalendárných mesiacov." id="dtpLehota" name="dtpLehota" title="Dátum musí byť posledný deň kalendárneho mesiaca. Nová lehota na podanie DP musí byť vyšia ako je zákonná lehota na podanie DP. Ak je zaškrtnuté pole 'podľa §49 ods. 3 písm. a) zákona', tak lehota na podanie DP môže byť predĺžená maximálne o 3 kalendárne mesiace.  Ak je zaškrtnuté pole 'podľa §49 ods. 3 písm. b) zákona', tak lehota na podanie DP môže byť predĺžená maximálne o 6 kalendárných mesiacov." type="text" class="date datepicker" maxlength="14" size="190" disabled="disabled" ><xsl:if test="boolean(./*[name() = 'dtpLehota']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'dtpLehota']"/></xsl:attribute></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
							<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval">		
		<div id="layoutRow24216" class="layoutRow ui-tabs ui-widget-content  nocaption "   title="" >
						<input type="hidden" name="sekciaVypracoval"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24216" class="columns">
				
				<div id="layoutColumn63420" class="column first" >
											
<div id="layoutCell103182" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval/sekciaOdd3Vypracoval">		
		<div id="layoutRow24215" class="layoutRow ui-tabs ui-widget-content  nocaption "   title="" >
						<input type="hidden" name="sekciaOdd3Vypracoval"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24215" class="columns">
				
				<div id="layoutColumn63417" class="column first"  style="width:452px;">
											
<div id="layoutCell103176" class="cell " >		
			
		<span class="fieldLabel" title=""   style="width:210px;"><xsl:text disable-output-escaping="yes">Vypracoval </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103175" class="cell  sirokyTextBox410px" >		
			
		<label class="fieldLabel" title="" for="tbOdd3Vypracoval" style="display: none">Vypracoval </label><span class="fieldContent"><input  id="tbOdd3Vypracoval" name="tbOdd3Vypracoval" title="" type="text" class="textBox" maxlength="50" size="190" disabled="disabled" alt="" value=""  ><xsl:if test="boolean(./*[name() = 'tbOdd3Vypracoval']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbOdd3Vypracoval']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbOdd3Vypracoval']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63418" class="column "  style="width:198px;">
											
<div id="layoutCell103177" class="cell " >		
			
		<span class="fieldLabel" title=""   style="width:210px;"><xsl:text disable-output-escaping="yes">Dňa </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103178" class="cell " >		
			
		<label class="fieldLabel" title="" for="tbOdd3Dna" style="display: none">Dňa </label><span class="fieldContent"><input alt="" id="tbOdd3Dna" name="tbOdd3Dna" title="" type="text" class="date datepicker" maxlength="14" size="190" disabled="disabled" ><xsl:if test="boolean(./*[name() = 'tbOdd3Dna']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbOdd3Dna']"/></xsl:attribute></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
				<div id="layoutColumn63419" class="column "  style="width:200px;">
											
<div id="layoutCell103179" class="cell " >		
			
		<span class="fieldLabel" title=""   style="width:200px;"><xsl:text disable-output-escaping="yes">Telefónne číslo </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103180" class="cell " >		
			
		<label class="fieldLabel" title="" for="tbOdd3Telefon" style="display: none">Telefónne číslo </label><span class="fieldContent"><input  id="tbOdd3Telefon" name="tbOdd3Telefon" title="" type="text" class="textBox" maxlength="13" size="190" disabled="disabled" alt="" value=""  ><xsl:if test="boolean(./*[name() = 'tbOdd3Telefon']/@isReadOnly = 'true')"><xsl:attribute name="disabled">disabled</xsl:attribute></xsl:if><xsl:if test="./*[name() = 'tbOdd3Telefon']/text()"><xsl:attribute name="value"><xsl:value-of select="./*[name() = 'tbOdd3Telefon']"/></xsl:attribute></xsl:if></input></span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103183" class="cell " >		
			 
			<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVypracoval/sekciaOdd3Vyhlasenie">		
		<div id="layoutRow24217" class="layoutRow ui-tabs ui-widget-content  bezOkrajaBezPozadiaHlavicky nocaption "   title="" >
						<input type="hidden" name="sekciaOdd3Vyhlasenie"  />
					<div class="caption ui-widget-header">		
				<span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24217" class="columns">
				
				<div id="layoutColumn63421" class="column first"  style="width:600px;">
											
<div id="layoutCell103184" class="cell " >		
			
		<span class="fieldLabel" title=""   style="width:419px;"><xsl:text disable-output-escaping="yes">&lt;b&gt;Vyhlasujem, že všetky údaje uvedené v oznámení sú správne a úplné.&lt;/b&gt; </xsl:text> </span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
							<xsl:for-each select="/OznamenieOVykonaniUpravyZakladuDane176v16/sekciaVysvetlivky">		
		<div id="layoutRow24223" class="layoutRow ui-tabs ui-widget-content  "   title="" >
						<input type="hidden" name="sekciaVysvetlivky"  />
					<div class="caption ui-widget-header">		
				<div class="headercorrection" title="Vysvetlivky k vyplneniu oznámenia:">Vysvetlivky k vyplneniu oznámenia:</div><span class="arrow ui-icon ui-icon-carat-1-n"></span></div>
		<div id="layoutRowContentlayoutRow24223" class="columns">
				
				<div id="layoutColumn63432" class="column first" >
											
<div id="layoutCell103170" class="cell  mensiText textJustify" >		
			
		<span class="fieldLabel" title=""   style="width:850px;"><xsl:text disable-output-escaping="yes">1) Daňovníkovi v konkurze alebo daňovníkovi v likvidácii môže správca dane predĺžiť lehotu na podanie daňového priznania k dani z príjmov len na základe žiadosti správcu konkurznej podstaty alebo daňovníka v likvidácii podanej najneskôr 15 dní pred uplynutím lehoty na podanie daňového priznania podľa § 49 ods. 2 zákona.&lt;br/&gt;Ak má povinnosť podať daňové priznanie k dani z príjmov fyzickej osoby dedič podľa § 49 ods. 4 a 5 zákona, správca dane môže lehotu na jeho podanie predĺžiť len na základe žiadosti dediča podanej najneskôr 15 dní pred uplynutím lehoty na podanie daňového priznania podľa § 49 ods. 4 a 5 zákona. </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103207" class="cell  mensiText textJustify" >		
			
		<span class="fieldLabel" title=""   style="width:850px;"><xsl:text disable-output-escaping="yes">2) Uvedie sa zdaňovacie obdobie, kalendárny rok u fyzickej osoby alebo kalendárny rok, hospodársky rok alebo iné zdaňovacie obdobie u právnickej osoby, za ktoré sa predlžuje lehota na podanie daňového priznania na základe oznámenia daňovníka. </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103208" class="cell  mensiText textJustify" >		
			
		<span class="fieldLabel" title=""   style="width:850px;"><xsl:text disable-output-escaping="yes">3) Ak daňovník zistí, že v podanom oznámení uviedol nesprávne alebo neúplné údaje, podá nové oznámenie, v ktorom uvedie správne údaje. Ak sa daňovník rozhodne, že daňové priznanie podá v inej (predĺženej) lehote, do uplynutia lehoty podľa § 49 ods. 2 zákona môže podať nové oznámenie, v ktorom uvedie novú (predĺženú) lehotu. Skutočnosť, že oznámenie podáva z týchto dôvodov, vyznačí krížikom a uvedie dátum podania predchádzajúceho oznámenia. </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103209" class="cell  mensiText textJustify" >		
			
		<span class="fieldLabel" title=""   style="width:850px;"><xsl:text disable-output-escaping="yes">4) Vypĺňa sa, len ak daňovník nemá na území Slovenskej republiky trvalý pobyt alebo sídlo. Fyzická osoba uvedie adresu pobytu na území Slovenskej republiky, kde sa v zdaňovacom období obvykle zdržiavala. Právnická osoba uvedie umiestnenie stálej prevádzkarne alebo organizačnej zložky. </xsl:text> </span>	
		<div class="clear"></div>
</div>							
											
<div id="layoutCell103210" class="cell  mensiText textJustify" >		
			
		<span class="fieldLabel" title=""   style="width:850px;"><xsl:text disable-output-escaping="yes">5) Daňovník uvedie novú (predĺženú) lehotu, ktorou je koniec kalendárneho mesiaca, v ktorej podá daňové priznanie a v ktorej je aj daň splatná, napr. 30.04., 31.05. alebo 30.06., resp. ak súčasťou jeho príjmov sú zdaniteľné príjmy plynúce zo zdrojov v zahraničí aj 31.07., 31.08. alebo 30.09. </xsl:text> </span>	
		<div class="clear"></div>
</div>							
						
				</div>	
				
			<div class="clear"></div>
		</div>
			</div>	
			</xsl:for-each>	
					
			<div id="buttonsPlaceholder">
								<input id="cancelForm" type="button" class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" value="Zrušiť"  alt="Zrušiť" accesskey="Z" />			
			</div>		
		</div>
		<div id="statusDialog" title="Status">
			<img id="statusLoader" src="Images/ajax-loader.png" alt="Čakajte prosím" />
			<p id="statusMessage" class="statusMessage"></p>
		</div>
		<div id="savedFormsContainer" class="layoutMain ui-widget-content" style="display:none">
		  <div id="savedFormsContainerRow" class="layoutRow ui-tabs ui-widget-content"  title="" >
			<input type="hidden" name="Basic" />
			<div class="caption ui-widget-header">
			  <div class="headercorrection" title="Uložené formuláre">Uložené formuláre</div>
			  <span class="arrow ui-icon ui-icon-carat-1-n"></span>
			</div>
			<div id="layoutRowSavedForms" class="columns">
			  <div id="lcolumnSavedForms" class="column first" >
				<div id="lcellSavedForms" class="cell">          				  
				</div>				
			  </div>
			  <div class="clear"></div>
			</div>
		  </div>
		</div>
	</form>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
