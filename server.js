const express = require('express');
const { WebSocketServer } = require('ws');
const path = require('path');
var cors = require('cors');

const app = express();
// The original game expects the HTTP server to run on port 8888.
// We keep the ability to override via the PORT environment variable
// but default to 8888 so that `npm start` works out of the box.
const port = process.env.PORT || 80;

app.use(cors({ origin: '*' }));

// Serve static files
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(__dirname));

// Example HTTP endpoints
// Serve static example data for some endpoints
app.get('/ff/tree', (req, res) => {
  res.sendFile(path.join(__dirname, 'examples', 'ff_tree.json'));
});

app.get('/ff/mv', (req, res) => {
  res.sendFile(path.join(__dirname, 'examples', 'ff_mv.json'));
});

app.get('/ff/cp', (req, res) => {
  res.sendFile(path.join(__dirname, 'examples', 'ff_cp.json'));
});

const server = app.listen(port, "127.0.0.1", () => {
  console.log(`HTTP server running on http://localhost:${port}`);
});
