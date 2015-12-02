<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UploadMe.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	<title>Lab1 Webapplications</title>
	<link rel="stylesheet" type="text/css" href="stylesheet.css">
	<script>
	    function showDiv(divID, buttonID) {
	        document.getElementById(divID).style.display = "block";
	        document.getElementById(buttonID).className = "active";
	        if (divID != 'sharedTabView') {
	            document.getElementById('sharedTabView').style.display = "none";
	            document.getElementById('sharedTabButton').className = "inactive";
	        }
	        if (divID != 'readTabView') {
	            document.getElementById('readTabView').style.display = "none";
	            document.getElementById('readTabButton').className = "inactive";
	        }
	        if (divID != 'WLTabView') {
	            document.getElementById('WLTabView').style.display = "none";
	            document.getElementById('WLTabButton').className = "inactive";
	        }
	    }
	</script>
	<script>
	    function showHeaderDiv(divID, buttonID) {
	        document.getElementById(divID).style.display = "block";
	        document.getElementById(buttonID).className = "active";
	        if (divID != 'newsTabView') {
	            document.getElementById('newsTabView').style.display = "none";
	            document.getElementById('newsTabButton').className = "inactive";
	        }
	        if (divID != 'sportTabView') {
	            document.getElementById('sportTabView').style.display = "none";
	            document.getElementById('sportTabButton').className = "inactive";
	        }
	        if (divID != 'weatherTabView') {
	            document.getElementById('weatherTabView').style.display = "none";
	            document.getElementById('weatherTabButton').className = "inactive";
	        }
	        if (divID != 'travelTabView') {
	            document.getElementById('travelTabView').style.display = "none";
	            document.getElementById('travelTabButton').className = "inactive";
	        }
	        if (divID != 'futureTabView') {
	            document.getElementById('futureTabView').style.display = "none";
	            document.getElementById('futureTabButton').className = "inactive";
	        }
	        if (divID != 'tvTabView') {
	            document.getElementById('tvTabView').style.display = "none";
	            document.getElementById('tvTabButton').className = "inactive";
	        }
	        if (divID != 'radioTabView') {
	            document.getElementById('radioTabView').style.display = "none";
	            document.getElementById('radioTabButton').className = "inactive";
	        }
	        if (divID != 'moreTabView') {
	            document.getElementById('moreTabView').style.display = "none";
	            document.getElementById('moreTabButton').className = "inactive";
	        }
	    }
	</script>
    <script>
        function loginCheck() {
            var objUsername, objPassword;
            objUsername = document.getElementById("<%=txtUser.ClientID%>");
            objPassword = document.getElementById("<%=txtPass.ClientID%>");
            if (objUsername.value == "" || objPassword == "") {    
                alert("Empty is bad!");
                return false;
            }
            return true;
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
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
	
	<input id="searchBar" type="text" name="search" value="Search">
	
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

    
    <div id="Wrapper">
        <div>
            Username: <asp:TextBox runat="server" ID="txtUser" />
            <br />
            Password: <asp:TextBox runat="server" ID="txtPass" TextMode="Password" />
            <!--Lägg till validator-->
            <br />
            <asp:Button runat="server" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" OnClientClick="return loginCheck()" />

            <br />
            <asp:Label runat="server" ID="lblTest" />
        </div>
    </div>
    </form>
</body>
</html>
