const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  const message = 'Hello from Express.js!';
  const timestamp = new Date().toISOString();
  res.send({ message, timestamp });
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});