<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="UploadMe.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body>
    <div class="container" id="Header">
	
	<img src="images/bbc.png" alt="Unable to show image."/>
	<span class="space"></span>
        <form runat="server" style="color : red; float : left; width : 50px; height : 20px;"><asp:Button OnClick="Unnamed_Click" runat="server" Text="Home"/></form>
	<ul id="headerMenu">
            
  			<li><button class = "active" id="newsTabButton" onclick="showHeaderDiv('newsTabView', 'newsTabButton');">News</button></li>
			<li><button class = "inactive" id="sportTabButton" onclick="showHeaderDiv('sportTabView', 'sportTabButton');">Sport</button></li>
  			<li><button class = "inactive" id="weatherTabButton" onclick="showHeaderDiv('weatherTabView', 'weatherTabButton');">Weather</button></li>
			<li><button class = "inactive" id="travelTabButton" onclick="showHeaderDiv('travelTabView', 'travelTabButton');">Travel</button></li>
  			<li><button class = "inactive" id="futureTabButton" onclick="showHeaderDiv('futureTabView', 'futureTabButton');">Future</button></li>
			<li><button class = "inactive" id="tvTabButton" onclick="showHeaderDiv('tvTabView', 'tvTabButton');">TV</button></li>
  			<li><button class = "inactive" id="radioTabButton" onclick="showHeaderDiv('radioTabView', 'radioTabButton');">Radio</button></li>
			<li><button class = "inactive" id="moreTabButton" onclick="showHeaderDiv('moreTabView', 'moreTabButton');">More...</button></li>	
	</ul>
	
	<form><input type="text" name="search" value="Search"></form>
	
	<div class="container" id="headerTabs">		
		<div id="newsTabView" class="headerTabList">
		
		</div>
		<div id="sportTabView" class="headerTabList">
	
		</div>

		<div id="weatherTabView" class="headerTabList">
	
		</div>
		<div id="travelTabView" class="headerTabList">
	
		</div>
		<div id="futureTabView" class="headerTabList">
	
		</div>
		<div id="tvTabView" class="headerTabList">
		
		</div>
		<div id="radioTabView" class="headerTabList">
	
		</div>
		<div id="moreTabView" class="headerTabList">
	
		</div>
	</div>
</div>

</body>
</html>
