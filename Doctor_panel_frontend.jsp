<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import= "java.util.List" %>
      <%@page import= "java.util.ArrayList" %>
      <%@page import= "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>HomeDocHelper</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>


<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<style>

body{
background: url("image//vgimg2.jpg") no-repeat center center fixed;
background-size: 1500px;
background-color :LightSteelBlue;
}

#lol{
visibility:hidden;
border-radius:3px;
border-color:SteelBlue;
}
#lol1{
visibility:hidden;
margin-right:500px;
}
.selectall{
float:right;
margin-right:0px;
margin-top:30px;
color:white;
font-size:15px;
}
img{
width:160px;
height:170px;
margin-top:80px;
margin-left:60px;
transform : scale(1);
tansition : all 0.9s ease 0s;
}

img:hover{
box-shadow: 0 0 0 14px SteelBlue;
transform : scale(0.8);
}
#doc{
color:MediumSeaGreen;
display:inline;
}
#helper{
display:inline;
color:DodgerBlue;
}
.row{
height:70px;
padding-top:6px;
background-color:SteelBlue;
padding:-5px;
}
.container{
width:1310px;
height:60px;
margin-left:-6px;
}
.header{
background-color :LightSteelBlue;
margin: -6px;
padding: 7px;
}
.buttons{
border-color: SteelBlue;
background-color:SteelBlue;
margin:10px;
font-size: 15px;
color: white;
display: inline;
border:none;
line-height:35px;
border-radius:4px;
}
.buttons2{
border-color: SteelBlue;
background-color:SteelBlue;
margin:10px;
font-size: 18px;
color: white;
display: inline;
border:none;
line-height:35px;
border-radius:4px;
}

.link{
text-decoration:none;
background-color:white;

margin-left:50px;
font-size: 40px;
color:SteelBlue;
line-height:100px;
letter-spacing:1px;
border-radius:5px; 
transform : scale(1);
tansition : all 0.9s ease 0s;
}
.buttons:hover{
background-color:white;
color: SteelBlue;
}
.link:hover{
border-color: MediumSeaGreen;
text-decoration:none;
color:SteelBlue;
box-shadow: 0 0 0 5px SteelBlue;
transform : scale(0.98);
}

.buttons2:hover{
background-color:white;
color: SteelBlue;
}
#back{
border-color: SteelBlue;
background-color:SteelBlue;
margin-right:10px;
margin-top:10px; 
float: right;
padding: 7px;
color:white;
font-size:17px;
width:80px;
}

#back:hover{
background-color:white;
color: SteelBlue;
}
#select{
float:left;
}
.exportdrop {
  position: relative;
  display: inline-block;
  background-color: SteelBlue;
  width:280px;
  padding-left:15px;
  padding-bottom:57px;
  margin:7px;
  height:50px;
  border-radius:4px;
}
.deletedrop {
  position: relative;
  display: inline-block;
  background-color: SteelBlue;
  width:150px;
  padding-left:15px;
  padding-bottom:57px;
  margin:7px;
  height:50px;
  border-radius:4px;
}
#header{
text-align:center;
}

#search{
margin-left:300px;
margin-right:-220px;
margin-top:11px;
}
#bar{
width:300px;
height:30px;
border-radius:8px;
margin-top:11px;
color:SteelBlue;
}

#fff{
float:right;
}

#file{
border-color:SteelBlue;
border-radius:3px;
color:SteelBlue;
}

.Border{
border-style: solid;
border-radius:10px;
height:350px;
width:750px;
margin-left:80px;
border-color:white;
padding-top:6px;
background-color:SteelBlue;
}

.Border:hover{
background-color:white;
border-color:SteelBlue;
}

.edit{
padding-top:4px;
position:relative;
bottom:295px;
left:270px;
font-size:20px;
border-color: SteelBlue;
background-color:MediumSeaGreen;
margin:10px;
font-size: 18px;
color: white;
display: inline;
border:none;
line-height:35px;
border-radius:4px;
}

.edit:hover{
background-color:white;
color: MediumSeaGreen;
border-color: MediumSeaGreen;

}

.text {
  color: white;
  font-size: 10px;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: center;
}

.overlay {
  position: absolute;
  bottom: 82;
  left: 87px;
  right: 0;
  background-color: SteelBlue;
  overflow: hidden;
  width: 56.3%;
  height: 0;
  transition: .5s ease;
}

.Border:hover .overlay {
  height: 13.5%;
  width:56.3%;
  border-radius:6px;
}


@media only screen and (max-width: 768px) {
  /* For mobile phones: */
  [class*="col-"] {
    width: 100%;
  }
  .container{
  width: 100%;
  }
  .Border{
  width: 80%;
  }
  }
  
  
</style>
<script type='text/javascript'>
 t=true;
 var run=0;
	function myFunction(source) {
	  checkboxes = document.getElementsByName('patientdetails');
	  selecttags= document.getElementsByName('patient1');
	  if(t==true){
	  for(var i=0, n=checkboxes.length;i<n;i++) {
	    checkboxes[i].style.visibility="visible";
	  }
	  for(var j=0, m=selecttags.length;j<m;j++) {
        selecttags[j].style.visibility="visible";
		}
	  t=false; 
	  }
	 else
	  {
	  for(var i=0, n=checkboxes.length;i<n;i++) {
	   checkboxes[i].style.visibility="hidden";
	  }
	  for(var j=0, m=selecttags.length;j<m;j++) {
       selecttags[j].style.visibility="hidden";
	  }
	 t=true;
	  } 
	}
	
	function myFunction1(source) {
		  checkboxes = document.getElementsByName('patientdetails');
		  for(var i=0, n=checkboxes.length;i<n;i++) {
			  checkboxes[i].style.visibility="visible";
		    checkboxes[i].checked=source.checked;
		  }
		}
	
	$(document).ready(function(){
		
	 $('#bar').on("input",function(){
		$.ajax({
			url:'ActionClass5',
			type:'POST',
			dataType:'json',
			data:$('#bar').serialize(),
			success:function(data){
				if(data.name == "This name is noT in LIST"){
		    		alert(data.name);	
		    		return false;
		    	}
				var arr;
			     arr = $.makeArray(data.name);
			    $('#bar').autocomplete({source: $.unique(arr)});
	   }
	 });	
	});
	 
	 
    $('#export').click(function(){		  
    	var n = $('.checkboxClass:checked').length;
		 if(n==0){
		 alert('Please! select patients for export patients data');
		 }else{
			 var letters = [];
			 $(".checkboxClass:checked").each(function() {
					letters.push($(this).val());
				});
			 letters=letters.toString();

		 $.ajax({
	            url:'ActionClass5',
	            type:'POST',
	            dataType:'json',
	           data :{patientdetails : letters , DATA : $('#file').val()},
	           
	           sucess:function(data){
	        	   window.location.assign('DocHelpher3');
	        },
	           error:function( jqXHR, exception) {
		        
	        	   window.location.assign('DocHelpher3');
	           }
		 }
	    );
		 }
		 });	
 
	
    $('#delete').click(function(){		 
		 var n = $('.checkboxClass:checked').length;
		 if(n==0){
		 alert('Please! select patients for Deleting patients data');
		 }else{
			 var letters = [];
			 $(".checkboxClass:checked").each(function() {
					letters.push($(this).val());
				});
			 letters=letters.toString();
		 $.ajax({
	            url:'ActionClass5',
	            type:'POST',
	            dataType:'json',
	           data :{DATA : $('#delete').val(),patientdetails: letters},
	           sucess:function(){
	        	   window.location.assign('DocHelpher3');
	        	},
	           error:function(){
	        	   window.location.assign('DocHelpher3');
	           }
		 }
	    );
		 }
		 });	
    
    $('.del').click(function(){		
    	
    	var n= $("input[name='select']:checked").length;
    	if(n==0){
    		alert("select patient check box");
    	}
    	else{
    	if(confirm("Do you want to Delete ?")){
    	alert($("input[name='select']:checked").val());
		 $.ajax({
	            url:'ActionClass5',
	            type:'POST',
	            dataType:'json',
	           data :{DATA : 'HJH',patientdetails: $("input[name='select']:checked").val()},
	           sucess:function(){
	        	   window.location.assign('DocHelpher3');
	        	},
	           error:function(){
	        	   window.location.assign('DocHelpher3');
	           }
		 });
    	}
    	}
		 });	

    
    $('.edit').click(function(){
    	 window.location.assign('pop.html');
    });
    
    
	 $('#search').click(function(){
		var n=$('#bar').val().trim();
		if(n==null || n==""){
			alert("Please Enter any Name or ID");
		}else{
		 $.ajax({
	            url:'DocHelpher3',
	            type:'POST',
	            dataType:'json',
	           data :{searchdata :  $('#bar').val().trim()},
	           sucess:function(){
	        	   window.location.assign('HomePageold11.jsp');
	           },
	           error:function(){
	        	   window.location.assign('HomePageold11.jsp');
	           }
		 }
	    );
		}
		 });	
	 
	 $("img").tooltip({track:true});
	 $(".edit").tooltip({track:true});
	 $(".link").tooltip({track:true});
	 
	 $("#opera").click(function(){
		 $(".row").slideToggle();
		 $(".deletedrop").slideToggle();
		 $(".exportdrop").slideToggle();
		 
	 });
	 $("#p").hide();
	 $("#about").click(function(){
		    $("#p").fadeToggle();
		  });

	});

	
	
</script>
</head>
<body>
<script>src="../ +js/bootstrap.min.js"</script>
<div id="header" >
<h1 style="color:SteelBlue">WelCome To The &nbsp;<b><span id="doc">Doc</span></b><span id="helper">Helper</span></h1>
<h2 style="color:SteelBlue">Your Patients - <span class="glyphicon glyphicon-user" style="color: MediumSeaGreen"></span><span style="color:DodgerBlue"> Doctor</span></h2>
</div>
<br>
<br>
<br>

<div class="container">
 
<div class="row">
<div class="col-md-2 col-xs-3">
<BUTTON class="buttons" id="add" ONCLICK="window.location.href='http://localhost:8081/vgdochelper/DocHelpher3'">
<span class="glyphicon glyphicon-plus-sign"></span> Add</BUTTON>
</div>
<div class="col-md-2 col-xs-3">
<button id="select" class="buttons" name="select" onClick="myFunction(this)"><span class="glyphicon glyphicon-check">
</span> Select</button>
</div>

<div class="col-md-2 col-xs-3">
<BUTTON class="buttons" id="add" ONCLICK="window.location.href='http://localhost:8081/vgdochelper/Logout.jsp'">
<span class="glyphicon glyphicon-log-out"></span> Logout</BUTTON>
</div>


<div class="col-md-2 col-xs-3">
<input id="bar" type="text"  name="searchdata"  placeholder=" Search Name or ID">

</div>
<div class="col-md-2 col-xs-3">

<BUTTON id="search" class="btn btn-info"><span class="glyphicon glyphicon-search"></span> Search</BUTTON>

</div>

</div>
</div>
<br>


<button class="buttons" id="opera"><span class="glyphicon glyphicon-collapse-up"></span></button>
<div id="fff">
<div class="exportdrop">

<button class="buttons2" id="export" ><span class="glyphicon glyphicon-download-alt" ></span> Export</button>
<select id="file" name="DATA"><option >EXPORT EXCEL</option>
<option >PDF</option></select>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="deletedrop">
<button class="buttons2" NAME="DATA"  id="delete" ><span class="glyphicon glyphicon-trash" ></span> &nbsp;Delete</button>

</div>
</div>
<br>
<br>
<div class="selectall">
<INPUT type="CHECKBOX" id="lol" onClick="myFunction1(this)" name="patient1"/><span id="lol1" name="patient1">SELECT ALL</span><BR>
</div>
<br>
<br>
<br>
<% 
try{
List<String> NAME=  (List<String>)session.getAttribute("PNames");  
List<Integer> ID=   (List<Integer>)session.getAttribute("Pids");   
List<String> IMAGE= (List<String>)session.getAttribute("PImage"); 

Iterator<String> it=NAME.iterator();
Iterator<Integer> it2=ID.iterator();
Iterator<String> it3=IMAGE.iterator();
while(it.hasNext()){
	while(it2.hasNext()){
		int i=it2.next();//ID
		while(it3.hasNext()){
			
  	
    out.println("<br><br><div class='Border' >");
    //&cammand=Patientrecord
    out.println("<img src='"+it3.next()+"' class='img-thumbnail' alt='Cinque Terre' title=ID="+i+" ><b><a  class='link' role='button' title='Acess Patient' href='http://localhost:8081/vgdochelper/ActionClass5?DATA=EXPORT+EXCEL&data="+i+"'>&nbsp;&nbsp;&nbsp;&nbsp;"+it.next()+"&nbsp;&nbsp;&nbsp;&nbsp;</a>");	
	out.println("<input  id='lol' class='checkboxClass' type='checkbox' name='patientdetails' value='"+i+"'/><BR>");
	out.println("<br><div class='overlay'><div class='text'><input type='checkbox' name='select' value='"+i+"' />&nbsp;&nbsp;");
	out.println("<button class='btn btn-info del'><span class='glyphicon glyphicon-remove-sign'></span> Delete</button></div></div></div>");
	out.println("<button class='edit' ><span class='glyphicon glyphicon-edit' title='Edit'></span></button><br><br><br><br><br>");
		break;	
		}
		break;
	}
}
}catch(Exception e){
	e.printStackTrace();
}
%>
<!-- //DELETE BUTTON , EXPORT(EXCEL AND PDF) BUTTON WITH PATIENT CHECK BOX GO IN ActionClass -->
<BR>
<br>
<BUTTON id="back" class="btn" onclick="window.location.href='http://localhost:8081/vgdochelper/DocHelpher3'"><span class="glyphicon glyphicon-arrow-left"></span> Back</BUTTON>
<BR><br><H3 style="color:SteelBlue">&nbsp;&nbsp;Innovation Of  VG </H3>
<hr>
<footer style="text-align:center">
<button id="about" class="btn btn-info">About Us</button>
  <p id="p" >Created by this wedsite Idea : Vaibhav Gupta & Co.
  <br>Contact information: DocHelper@gmail.com 
  <br>This wedsite use to provide Smart way to record the data of patients at any time anywhere .
  this page work as a Doctor Panel(Profile) Here ,<br> Your Patients details show according the current Date their added 
  And Many record base operation done with your patient . 
  <br>We always care about you as you care about  your patients .</p><p> Thank you For visiting .</p>
  <br>
</footer>
</body>
</html>
