const http = require('http');

const PORT = process.env.PORT || 3000;

http.createServer((req, res) => {
    const msg = JSON.stringify({ status: "ok", message: `${req.method} ${req.url}` });
    res.statusCode = 200;
    res.end(msg);
})
.listen(PORT, () => {
    console.log(`Up and listening at :${PORT}...`);
});

