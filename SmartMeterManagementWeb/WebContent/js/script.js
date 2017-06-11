/*
 * Dies ist eine JavaScript-Umgebung.
 *
 * Geben Sie etwas JavaScript ein und führen Sie einen Rechtsklick aus oder wählen Sie aus dem Ausführen-Menü:
 * 1. Ausführen, um den ausgewählten Text zu evaluieren (Cmd-R),
 * 2. Untersuchen, um den Objekt-Inspektor auf das Resultat anzuwenden (Cmd-I), oder
 * 3. Anzeigen, um das Ergebnis in einem Kommentar hinter der Auswahl einzufügen. (Cmd-L)
 */

function randomRate(minimumValue, maximumValue) {
  
  //random Math calculation to get a random rate
  var random = Math.random();
  var diff = maximumValue - minimumValue;
  var randamRate = random * diff;

  // Calculate the final Value which is between the min and max value
  var rate = randamRate + minimumValue;
  //round the Rate to 1 Place 
  var finalRate = rate.toFixed(1);
  return finalRate;
}

function voltage(){
  //call function with parameters min, max
  var voltage = randomRate(220, 240);
  return voltage;
}



function amperage(){
  var innerHtml = document.getElementById("maximumLoad").innerHTML; //get value maximum load form html tag
  var num = innerHtml.replace(/[^0-9]/g,''); //replaces all what is not a number and returns the number
  var amperage = randomRate(0, parseInt(num, 10) + 5); // num +5 because in the assigment it says sooo!! and we have to cast the string(num) to Integer of cause
  return amperage;
}

function fillValuesIntoHTML(){
  // function call
  var voltageValue = voltage();
  //calculate the percentuage
  var voltagevalueAspercent = (voltageValue-220)/(240-220);
  //round the values
  voltagevalueAspercent = (voltagevalueAspercent.toFixed(2)*100).toFixed(0)
  // value circle calculations
  document.getElementById('voltageValue').innerHTML = voltageValue
  document.getElementById("voltageCircle").className="c100 p"+voltagevalueAspercent+ " big"
  document.getElementById("voltageCirclePercent").innerHTML= voltagevalueAspercent + "%"
  
  //amperage cicle calculations
  var amperageValue = amperage();
  var innerHtml = document.getElementById("maximumLoad").innerHTML; //get value maximum load form html tag
  var num = innerHtml.replace(/[^0-9]/g,''); //replaces all what is not a number and returns the number
  var amperageValueAspercent = (amperageValue)/(parseInt(num, 10) + 5);
  amperageValueAspercent = (amperageValueAspercent.toFixed(2)*100).toFixed(0)
  
  document.getElementById('amperageValue').innerHTML = amperageValue
  document.getElementById("amperageCircle").className="c100 p"+amperageValueAspercent+ " big"
  document.getElementById("amperageCirclePercent").innerHTML= amperageValueAspercent + "%"
  if (amperageValue > parseInt(num, 10)) {
    document.getElementById('insertWarning').innerHTML = "<div class='alert alert-danger' role='alert'><strong>Warning:</strong>The amperage is stronger as it can be handeld pleas be careful and keep the maximum load in mind.</a>";
  } else {
    document.getElementById('insertWarning').innerHTML ="";
  }
  
}


function newValueIntoTable() {
  var getTable = document.getElementById("tableData");
  var row = getTable.insertRow(1); // add a new row at the position 0 means the first one
  var col0 = row.insertCell(0);
  var col1 = row.insertCell(1);
  var col2 = row.insertCell(2);
  col0.innerHTML = document.getElementById("usr").value + document.getElementById("matr").value;
  col1.innerHTML = document.getElementById("kWh").value;
  col2.innerHTML = new Date();
  
  //delet input
  document.getElementById("usr").value = ""
  document.getElementById("matr").value =""
  document.getElementById("kWh").value = ""
}

