//Establish the WebSocket connection and set up event handlers
var webSocket = new WebSocket("wss://" + location.hostname + ":" + location.port + "/chat/");
var actionSocket = new WebSocket("wss://" + location.hostname + ":" + location.port + "/action/");
// when we get a message from the server, we execute the following.
webSocket.onmessage = function (msg) { updateChat(msg); };
// when we get a closed connection from the server, we execute the following:
webSocket.onclose = function () { alert("WebSocket connection closed") };
//webSocket.onopen = function () {alert("Websocket Connection opened")};

//Send message if "Send" is clicked
id("send").addEventListener("click", function () {
    sendMessage(id("message").value);
});

id("fireAction").addEventListener("click", function () {
	actionSocket.send("Hi I made an action.");
	console.log("fired");
});

//Send message if enter is pressed in the input field
id("message").addEventListener("keypress", function (e) {
    if (e.keyCode === 13) { sendMessage(e.target.value); }
});

//Send a message if it's not empty, then clear the input field
function sendMessage(message) {
    if (message !== "") {
        webSocket.send(message);
        id("message").value = "";
    }
}

//Update the chat-panel, and the list of connected users
function updateChat(msg) {
    var data = JSON.parse(msg.data);
    console.log(data.ERROR);
    if(data.hasOwnProperty('ERROR')) {
    	alert(data.ERROR);
    } else {
        insert("chat", data.userMessage);
        id("userList").innerHTML = "";
        data.userList.forEach(function (user) {
            insert("userList", "<li>" + user + "</li>");
        });
    }

}

//Helper function for inserting HTML as the first child of an element
function insert(targetId, message) {
    id(targetId).insertAdjacentHTML("afterbegin", message);
}

//Helper function for selecting element by id
function id(id) {
    return document.getElementById(id);
}
