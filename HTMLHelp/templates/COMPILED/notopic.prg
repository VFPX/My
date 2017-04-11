TEXT<html>
<head>
<topictype value="topic"/>
<title>Welcome to West Wind Html Help Builder</title>
<LINK rel="stylesheet" type="text/css" href="templates/wwhelp.css">
</head>
<body topmargin="0" leftmargin="0">
<img src="bmp/images/newwave.jpg" align="left" style="position:absolute;left:0;top:0;">
<!-- img src="bmp/images/wwToolLogo.jpg" style="position:absolute;left:0;top:0" -->
<img src="bmp/images/wwHelplogo.gif" style="position:absolute;left:5;top:30">

<div style="position:absolute;left:195;top:35;margin-right:40px">
<table width="95%"><td><tr>
<b>Welcome to Help Builder</b>,<br>
Currently there is <i>No Open Project</i> in Help Builder's IDE. Your next step is to create 
a new project or open an existing one.
<p>
<img src="bmp/images/newproject.gif" border="0" align="left"> &nbsp;<b><a href="vfps://NOOPENPROJECT/CREATEPROJECT/">Create a new Project</a></b>
<br>
A project consists of a directory structure that contains a project file and the base templates and images.
<br>
<p>
<img src="bmp/project.gif" border="0" align="left"> &nbsp;<b><a href="vfps://NOOPENPROJECT/OPENPROJECT">Open an existing Project</a></b>
<br>
Open an previously created Help Builder Project. 
ENDTEXT
PUBLIC ARRAY laRecent[1]
lnRecent = goHelp.oConfig.GetRecentList(@laRecent)
if lnRecent > 0
   lcOutput= ;
   [<small><form action="vfps://NOOPENPROJECT/OPENFILE/" method="post" style="margin-top:0;padding-top:5">] +;
   [<select name="txtProject" onchange="form.submit();" style="font-size:8pt">] +;
   [<option>---   Recent Projects   ---] + CHR(13) + CHR(10) 

   FOR __x = 1 to lnRecent    
      lcTItemText = laRecent[__x]
      IF !EMPTY(lcTItemText)
         lcOutput = lcOutput + [<option>] + lcTItemText + CHR(13) + CHR(10)
      ENDIF
   ENDFOR
   lcoutput = lcOutput + "</select></form></small>"
   Response.Write(lcOutput)
endif
RELEASE laRecent
TEXT
<p>
<img src="bmp/images/help.gif" border="0" align="left"> &nbsp;<b><a href="vfps://NOOPENPROJECT/SHOWHELP">View Help Builder Documentation</a></b>
<br>
Browse the Help Builder documentation and check out what features are available for application and component documentation.
<p>
<img src="bmp/classheader.gif" border="0" align="left"> &nbsp;<b><a href="vfps://NOOPENPROJECT/SHOWSTEPBYSTEP">Take a Step by Step Tour</a></b>
<br>
Take a few minutes and run through the Step By Step guides that shows you how to setup 
a new project, add topics, link to other topics, capture and embed images and build your
help file.
<p>
<img src="bmp/weblink.gif" border="0" align="left"> &nbsp;<b><a href="http://www.west-wind.com/wwthreads/default.asp?forum=Html+Help+Builder" target="_wwSupport">Online Support</a></b>
<br>
Go to our online Message Board and ask a question, make a suggestion or otherwise
discuss any ideas or questions you have about Help Builder. 

</td></tr></table>
</div>
</body>
</html>ENDTEXT