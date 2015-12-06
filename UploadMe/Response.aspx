<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Response.aspx.cs" Inherits="UploadMe.Response" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body>

        <form runat="server">
            <!--Header Bar-->
    <div class="container" id="Header">
	
	<img src="images/bbc.png" alt="Unable to show image."/>
	<span class="space"></span>
    <asp:Button ID="homeButton" OnClick="homeButton_Click" style="color : red; float : left; font-weight : bold;" runat="server" Text="Home"/>
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
	    
	<input type="text" name="search" value="Search" id="searchBar"/>
	
	<div class="container" id="headerTabs">		
		<div id="newsTabView" class="headerTabList"></div>
		<div id="sportTabView" class="headerTabList"></div>
		<div id="weatherTabView" class="headerTabList"></div>
		<div id="travelTabView" class="headerTabList"></div>
		<div id="futureTabView" class="headerTabList"></div>
		<div id="tvTabView" class="headerTabList"></div>
		<div id="radioTabView" class="headerTabList"></div>
		<div id="moreTabView" class="headerTabList"></div>
	</div>
</div>
            <!--Result of an upload-->
    <div id="Wrapper">
        <div style="float:left">
            <div class="container" id="spotlightDiv">
                <asp:Image CssClass="image" ID="uploadedImage" runat="server" visible="false"/>
                <video runat="server" id="videoSource" controls="controls" visible="false">
                </video> 

		        <h3 id="responseTitle"><%=Request.Form["titleName"] %></h3>
                <h4><%=Request.Form["categoryList"] %></h4>
		        <p id="responseText">	
			        <%=Request.Form["mainText"] %>
		        </p>
			    
	        </div>
        </div>
    </div>
   </form>

</body>
</html>
