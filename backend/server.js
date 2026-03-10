const express = require('express');
const app = express();
const PORT = process.env.PORT || 5000;

app.get('/', (req, res) => {
    res.send('- backend works');
});

app.listen(PORT, () => {
    console.log(`- server works on this port: ${PORT}`);
});