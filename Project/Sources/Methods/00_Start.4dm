//%attributes = {}
C_LONGINT:C283($1)
C_LONGINT:C283($ps;$win)
C_OBJECT:C1216($options)
C_TEXT:C284($cr)
C_TEXT:C284($4Dversion)

$4Dversion:="1802"

Case of 
	: (Count parameters:C259=0)
		
		  // This is for DOT NOTATION only. Do NOT change 16R5 !!! See below for more info
		  //Modify $option variable (below) for minimal version
		If (Application version:C493<$4Dversion)  // 16R5
			ALERT:C41("Sorry, this \"How do I\" (HDI) example must be used with a newer version of 4D (v18 R2 and above)";"Quit")
			QUIT 4D:C291
		Else 
			$ps:=New process:C317(Current method name:C684;0;Current method name:C684;0)
		End if 
		
	Else 
		
		$cr:=Char:C90(Carriage return:K15:38)
		
		If (Shift down:C543)  //  for debug purpose only
			$win:=Open form window:C675("HDI";Plain form window:K39:10;Horizontally centered:K39:1;Vertically centered:K39:4)
		Else 
			$win:=Open form window:C675("HDI";Pop up form window:K39:11;Horizontally centered:K39:1;Vertically centered:K39:4)
		End if 
		
		$options:=New object:C1471
		
		$options.minimumVersion:=$4Dversion  // 1660 means 16R6   1601 means 16.1 (do not use !)"1750")
		
		$options.title:="freeze columns and rows in 4D View Pro?"
		
		$options.blog:="blog.4d.com"
		$options.info:="4D View Pro feature"  //ex : "4D View Pro feature"
		
		
		
		$options.license:=4D View license:K44:4  // IF ANY NEEDED
		
		  // THE BACKGROUND PICTURE IS IN THE RESOURCES : Resources/Images/HDIabout.png
		  // the picture size is 724 * 364
		  // these 3 commented lines can be removed when done !
		
		DIALOG:C40("HDI";$options)
		CLOSE WINDOW:C154
		
		
		If ($options.quit=True:C214)
			QUIT 4D:C291
		Else 
			
			$win:=Open form window:C675("HDI2";Plain form window:K39:10;Horizontally centered:K39:1;Vertically centered:K39:4)
			DIALOG:C40("HDI2")
			CLOSE WINDOW:C154
			
		End if 
		
End case 

