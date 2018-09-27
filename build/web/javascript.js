/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var x,y,x;

function calculatevolumetricweight(){
	var length = parseInt(document.getElementById('length').value);
	var breadth = parseInt(document.getElementById('breadth').value);
	var height = parseInt(document.getElementById('height').value);
	var dimension = document.getElementById('dimension').value.toString();
	var result=0;
		if (dimension==="Inches") {
			result=length*breadth*height/305;
		}
		else{
			result=length*breadth*height/5000;
		}
                
		result=result.toFixed(2);
                 if(isNaN(result)){
                    document.getElementById('fieldmessage').innerHTML = "Please Fill Out All Fields Correctly In Numbers";
                  }else{
                
                document.getElementById("fieldmessage").innerHTML = "";

                document.getElementById('result').value =result+"kg";
                }
                
		}

function resetForm(){
	document.getElementById('length').value="";
	document.getElementById('breadth').value="";
	document.getElementById('height').value="";
	document.getElementById('result').value="";
	document.getElementById("validationMessage").innerHTML = "";
	document.getElementById("validationMessage2").innerHTML = "";
	document.getElementById("validationMessage3").innerHTML = "";
        document.getElementById("fieldmessage").innerHTML = "";


}

function lengthvalidate(){
	var text;

	x=document.getElementById('length').value;

	if(x===""){
		text="Compulsory Field";
	}
	else{
		text="";
	}
	document.getElementById("validationMessage").innerHTML = text;
	document.getElementById('result').value="";
}

function breadthvalidate(){
	var text;

	y=document.getElementById('breadth').value;

	if(y===""){
		text="Compulsory Field";
	}
	else{
		text="";
	}
	document.getElementById("validationMessage2").innerHTML = text;
	document.getElementById('result').value="";
}

function heightvalidate(){
	var text;

	z=document.getElementById('height').value;

	if(z===""){
		text="Compulsory Field";
	}
	else{
		text="";
	}
	document.getElementById("validationMessage3").innerHTML = text;
	document.getElementById('result').value="";
}


