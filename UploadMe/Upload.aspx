<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="UploadMe.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body>
    <form runat="server">
    <div class="container" id="Header">
	
	<img src="images/bbc.png" alt="Unable to show image."/>
	<span class="space"></span>
    <asp:Button ID="homeButton" OnClick="homeButton_Click" style="color : red; float : left; font-weight : bold;" runat="server" Text="Home"/>
    <asp:Button CssClass="button" ID="logoutButton" runat="server" OnClick="logoutButton_Click" Text="Logout"></asp:Button>
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


    <div id="Wrapper">
        <div id="uploadDiv">
            <h2>UploadMe!</h2>
            <h4>Title:</h4>
            <asp:TextBox CssClass="textBox" ID="titleName" runat="server" >Enter title...</asp:TextBox>
            <h4>Main text:</h4>
            <asp:TextBox CssClass="textBox" ID="mainText" runat="server" TextMode="multiline" Columns="50" Rows="5">Enter main text...</asp:TextBox>
            <br />
            <h4>Upload media:</h4>
            <asp:FileUpload CssClass="fileUpload" ID="FileUpload1" runat="server"/>
            <br />
            <asp:Button CssClass="button" ID="uploadButton" runat="server" OnClick="uploadButton_Click" Text="Upload"></asp:Button>
            <br />
            <asp:Image CssClass="image" ID="uploadedImage" runat="server" Width="75px" Height="75px"/>
            <br />
            <h4>Pick a category:</h4>
            <asp:DropDownList CssClass="dropDown" runat="server" ID="categoryList">
                <asp:ListItem Text="Politics"></asp:ListItem>
                <asp:ListItem Text="Culture"></asp:ListItem>
                <asp:ListItem Text="Sport"></asp:ListItem>
                <asp:ListItem Text="Travel"></asp:ListItem>
                <asp:ListItem Text="Future"></asp:ListItem>
                <asp:ListItem Text="TV"></asp:ListItem>
                <asp:ListItem Text="Radio"></asp:ListItem>
                <asp:ListItem Text="Other"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button CssClass="button" ID="submitButton" runat="server" PostBackUrl="~/Response.aspx" Text="Submit"></asp:Button>
            <asp:hiddenfield runat="server" ID="photoPath2" OnValueChanged="photoPath2_ValueChanged" Value=""></asp:hiddenfield>
        </div>
    </div>
   </form>
</body>
</html>
