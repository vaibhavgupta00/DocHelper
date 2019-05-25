/*HOMEPAGE OF DOCTOR PANEL TO SHOW LIST OF PATIENTS START HERE ->*/

/* This Module use to represent the data of Patients in a Doctor Panel.  */    

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 *  By session thought found DOCID AND SPREAD HIS/HER PATIENTS IN LINE WISE ,
		 * OnLy Those patients show which are comes his Doctor place(clinic or Hospital) .
		 */

l1= new ArrayList<>(); // This is holds the id.
l2= new ArrayList<>(); // This is holds the name.
l3= new ArrayList<>(); // This is holds the image.
list= new ArrayList<>(); // This is holds the name for using the Suggesstion in Search operation.

String search= request.getParameter("searchdata");
out = response.getWriter();
try {
long id= (long) session.getAttribute("DID");
// Takes doctorID those who logged in .   
if(id!=0){ 
/* This condition use to check Doctor is not currently logged.*/ 
		
HttpSession session=request.getSession();
con = dataSource.getConnection();

if(search== null  ) {
ps = con.prepareStatement("select PID,PName,PImage from patients where DID=1");
/*CMD1-> BY DOCID THROUGH GET THE DATA OF 3 COLUMNE PATIENTS .*/ 
rs=  ps.executeQuery();				
/* 
 * Here, In code fetching the data from database of doctor table to associated patients data . */
		
while(rs.next()) {				
l1.add(rs.getInt(1));
l2.add(rs.getString(2));  
l3.add(rs.getString(3));
			}			
session.setAttribute("Pids",l1);
session.setAttribute("PNames",l2 );
session.setAttribute("PImage",l3 );
list.addAll(l2);                   
// This is original list of patients always be maintain .
session.setAttribute("Plist",list );			
/* 
 * SESSION GENERATES TO SAVE OF ALL LIST OF   PATIENTS,
 * ACCORDING TO ID, NAME, IMAGE.
*/
	    	
RequestDispatcher rd=request.getRequestDispatcher("HomePageold11.jsp");
			
/*
 * AND, SENDS TO REPRESENT THE DATA IN HOMEPAGE .
*/
rd.forward(request,response);
		  
 }else {
search(search,request, response,session);
 /*
  * search(); Function(){
  * Call To Use when search the patients Name or Id.
  * } 
  */
  //ID CHECK 
}catch (SQLException e) {
e.printStackTrace();
} 
catch (ClassNotFoundException e) {
e.printStackTrace();
}
}


  protected void search(String search,HttpServletRequest request, HttpServletResponse response,HttpSession session)throws  SQLException, ClassNotFoundException, ServletException, IOException 
{
	
if(!isInteger(search)) {
ps = con.prepareStatement("select PID,PName,PImage from patients where DID=1 and PName LIKE '%"+search+"%'");
/*CMD2-> BY DOCID  SEARCH NAME OF PATIENTS .*/
rs=  ps.executeQuery();		
}else {
ps = con.prepareStatement("select PID,PName,PImage from patients where DID=1 and PID='"+search+"'");
	    /*CMD2-> BY DOCID SEARCH THE ID OF PATIENTS .*/
rs=  ps.executeQuery();		}
while(rs.next()) {
l1.add(rs.getInt(1));
l2.add(rs.getString(2));
l3.add(rs.getString(3));
		}
		
session.setAttribute("Pids",l1);
session.setAttribute("PNames",l2 );
session.setAttribute("PImage",l3 );
/*
* Similar, As In Search function(){} to search the data from database table and save the data by Session through 
*  then, send and represent the data in Homepage of Doctor Panel .
*/
		 

 protected  boolean isInteger(String s) {
	    try { 
Integer.parseInt(s); 
	    } catch(NumberFormatException e) { 
	        return false; 
	    } catch(NullPointerException e) {
	        return false;
	    }
	// Only got here if we didn't return false.
	    return true;
	}
}// END CLASS
