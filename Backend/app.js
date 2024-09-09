const bodyParser = require('body-parser');
const express = require('express');
const app = express();

// Middleware to parse JSON requests
app.use(bodyParser.json());

// Defining the basic GET route
app.get("/", (req, res) => {
    res.send("The app is runnning finally now");
});

// Defining dummy POST route
app.post("/notifications/send", (req, res) => {
    const {title, body} = req.body;
    res.send(`Title: ${title}, body: ${body}`);
})



// Starting the server 
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server is running on ${PORT}`)
});