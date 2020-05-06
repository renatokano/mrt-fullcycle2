const express = require('express');
const app = express();

const PORT = 3000;

app.get("/", (req, res) => {
  res.send("Maratona Full Cycle 2.0");
})

app.listen(PORT, ()=>console.log(`Server is running on port ${PORT}`));