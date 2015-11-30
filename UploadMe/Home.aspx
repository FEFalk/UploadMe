<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="UploadMe.WebForm1" %>

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
	
</head>
<body>
    <div class="container" id="Header">
	
	<img src="images/bbc.png" alt="Unable to show image."/>
	<span class="space"></span>
    <form runat="server" style="color : red; float : left; width : 50px; height : 20px;"><asp:Button OnClick="Unnamed_Click" runat="server" Text="Upload"/></form>
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

<p class="AD">ADVERTISEMENT</p>

<div id="Wrapper">
	

	<!-- NEWS FEATURE -->
	<div class="container" id="newsFeature">
		<h2>News feature</h2>
		
		<div class="newsFeatureText">
			<h3>The ordeal of a Moscow 'shop slave'</h3>	
			<p>	
				Or neglected agreeable of discovery concluded oh it sportsman. 
				Week to time in john. Son elegance use weddings separate. 
				Ask too matter formed county wicket oppose talent.
			</p>
		</div>
		
		<img src="images/politiker.jpg" alt="Unable to show image."/>
	</div>
	
	<!-- SPOTLIGHT -->
	<div class="container" id="spotlightDiv">
		<h2>Spotlight</h2>
		<h3 class="backgroundHeading">Technology of Business</h3>		
		
		<img src="images/Thumbs-Up.jpg" alt="Unable to show image."/>
		
		<h3>Thumbs up to social media</h3>
		<p>	
			Or neglected agreeable of discovery concluded oh it sportsman. 
			Week to time in john. Son elegance use weddings separate. 
			Ask too matter formed county wicket oppose talent. 
			He immediate sometimes or to dependent in. 
			Everything few frequently discretion surrounded did simplicity decisively. 
			Less he year do with no sure loud.
		</p>
		
		<h4 class="miniTitles">China's richest man on wealth gap</h4>
		<h4 class="miniTitles">Long and difficult night in Gaza</h4>
		<h4 class="miniTitles">Four die as train hits US parade</h4>
			
	</div>
	
	<!-- NEWS -->
	<div id="generalNews">
		<h2>News</h2>
		
		<!-- Left part -->
		<div class="medium">
			<img src="images/war.jpg" alt="Unable to show image."/>
			<h3>Israel-Gaza violence</h3>
			<p>	
				Or neglected agreeable of discovery concluded oh it sportsman. 
				Week to time in john. Son elegance use weddings separate. 
				Ask too matter formed county wicket oppose talent.
			</p>
		</div>
		
		<!-- Second Right part -->
		<div class="small">
			<h4 class="miniTitles">China's richest man on wealth gap</h4>
			<h4 class="miniTitles">Long and difficult night in Gaza</h4>
			<h4 class="miniTitles">Four die as train hits US parade</h4>
			<h4 class="miniTitles">China's richest man on wealth gap</h4>
			<h4 class="miniTitles">Long and difficult night in Gaza</h4>
		</div>
		
		<!-- First Right part -->
		<div class="small">
			<img src="images/insurgency.jpg" alt="Unable to show image."/>
			<h3>War court clears Croatia generals</h3>
			<p>	
				Or neglected agreeable of discovery concluded oh it sportsman. 
				Week to time in john. Son elegance use weddings separate. 
				Ask too matter formed county wicket oppose talent.
			</p>
		</div>
		
	</div>
	
	<!-- MOST POPULAR IN NEWS -->
	<div class="container" id="popularNews">
		<h2>Most Popular in News</h2>
		
		<!-- Tab buttons -->
		<ul id="menu">
  			<li><button class = "active" id="sharedTabButton" onclick="showDiv('sharedTabView', 'sharedTabButton');"><b>Shared</b></button></li>
			<li><button class = "inactive" id="readTabButton" onclick="showDiv('readTabView', 'readTabButton');"><b>Read</b></button></li>
  			<li><button class = "inactive" id="WLTabButton" onclick="showDiv('WLTabView', 'WLTabButton');"><b>Watched/Listened</b></button></li>
		</ul>
		
		<!-- "Shared" tab window -->
		<div id="sharedTabView" class="popularNewsList">
			<ol type="1" class="newsList">
				<b>
				<li>China's richest man on wealth gap</li>
				<li>Long and difficult night in Gaza</li>
				<li>Four die as train hits US parade</li>
				</b>
			</ol>
		</div>
		
		<!-- "Read" tab window -->
		<div id="readTabView" class="popularNewsList">
			<ol type="1" class="newsList">
				<b>
				<li>jhktyjthfgh</li>
				<li>Long and difficult night in Gaza</li>
				<li>Dangerous cyclist amazes police</li>
				<li>Four die as train hits US parade</li>
				<li>Dangerous cyclist amazes police</li>
				</b>
			</ol>
		</div>
		
		<!-- "Watched/Listened" tab window -->
		<div id="WLTabView" class="popularNewsList">
			<ol type="1" class="newsList">
				<b>
				<li>jhktyjthfgh</li>
				<li>Long and disfsdf in Gaza</li>
				<li>Dangerous cyclist amazes police</li>
				<li>bfgfdgdfg</li>
				</b>
			</ol>
		</div>
	</div>
		
	<!-- BUSINESS -->
	<div id="Business">
		<h2>Business</h2>
		<h3>Japan averts its 'fiscal cliff'</h3>
		<h4 class="miniTitles">Bermanke: Banks hurting housing</h4>
	</div>
	
	<!-- SPORT -->
	<div id="Sport">
		<h2>Sport</h2>
		<h3>Mancini rules out move for Suarez</h3>
		<div class="small">
			<p>	
				Or neglected agreeable of discovery concluded oh it sportsman. 
				Week to time in john. Son elegance use weddings separate. 
				Ask too matter formed county wicket oppose talent.
			</p>
		</div>
		<div class="small">
			<img src="images/soccer_coach.jpg" alt="Unable to show image."/>
			
		</div>
		
		
	</div>
		
</div>
</body>
</html>
