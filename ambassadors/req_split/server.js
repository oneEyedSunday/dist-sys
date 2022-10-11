const http = require('http');

const PORT = process.env.PORT || 3000;

http.createServer((req, res) => {
    console.log('Houston, we have a hit');
    const messageString = JSON.stringify({
        method: req.method,
        path: req.url,
        meta: {}
    });
    res.write(messageString);
    res.end();
}).listen(PORT, () => {
    console.log('Server up and ready');
});