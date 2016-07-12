/* global xmlHttp, e */

var xmlhttp = getXmlHttp();

function getXmlHttp() {
	// will store the reference to the XMLHttpRequest object
	var xmlHttp;
	// create the XMLHttpRequest object
	try
	{
		// assume IE7 or newer or other modern browsers
		xmlHttp = new XMLHttpRequest();
	}
	catch (e)
	{
		// assume IE6 or older
		try
		{
			xmlHttp = new ActiveXObject("Microsoft.XMLHttp");
		}
		catch (e) {
		}
	}
	// return the created object or display an error message
	if (!xmlHttp)
		alert("Error creating the XMLHttpRequest object.");
	else
		return xmlHttp;
}

// get user data for an organization
function loadUsersForOrganization(orgID)
{
	// only continue if xmlHttp isn't void
	if (xmlHttp)
	{
		// try to connect to the server
		try
		{
			// initiate reading a file from the server
			xmlHttp.open("GET", "/php/get-org-users.php?orgID=" . orgID, true);
			xmlHttp.onreadystatechange = handleRequestStateChange;
			xmlHttp.send(null);
		}
		// display the error in case of failure
		catch (e)
		{
			alert("Can't connect to server:\n" + e.toString());
		}
	}
}

// get user data for an organization
function loadAllUsers()
{
	// only continue if xmlHttp isn't void
	if (xmlHttp)
	{
		// try to connect to the server
		try
		{
			// initiate reading a file from the server
			xmlHttp.open("GET", "/php/getallusers.php", true);
			xmlHttp.onreadystatechange = handleRequestStateChange;
			xmlHttp.send(null);
		}
		// display the error in case of failure
		catch (e)
		{
			alert("Can't connect to server:\n" + e.toString());
		}
	}
}

// function called when the state of the HTTP request changes
function handleRequestStateChange()
{
	// when readyState is 4, we can read the server response
	if (xmlHttp.readyState === 4)
	{
		// continue only if HTTP status is "OK"
		if (xmlHttp.status === 200)
		{
			try
			{
				// do something with the response from the server
				handleServerResponse();
			}
			catch (e)
			{
				// display error message
				alert("Error reading the response: " + e.toString());
			}
		}
		else
		{
			// display status message
			alert("There was a problem retrieving the data:\n" +
					xmlHttp.statusText);
		}
	}
}

// handles the response received from the server
function handleServerResponse()
{
	// read the message from the server
	responseJSON = JSON.parse(xmlHttp.responseText);
	// generate HTML output
	var html = "";
	// iterate through the arrays and create an HTML structure
	for (var i = 0; i < responseJSON.books.length; i++)
		html += responseJSON.books[i].title +
				", " + responseJSON.books[i].isbn + "<br/>";
	// obtain a reference to the <div> element on the page
	myDiv = document.getElementById("myDivElement");
	// display the HTML output
	myDiv.innerHTML = "<p>Server says: </p>" + html;
}


function updateUserSelect(selectID) {

}