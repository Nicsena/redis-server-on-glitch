const express = require("express");
const app = express();

app.set("views", __dirname + "/htdocs/"); 

app.get("/", (request, response) => {
  response.sendFile(__dirname + "/htdocs/index.html");
});

const listener = app.listen(process.env.PORT, () => {
  console.log("Your app is listening on port " + listener.address().port);
});
