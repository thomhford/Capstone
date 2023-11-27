import http from 'http';
import WebSocket from 'ws';

// Test Express route
const options = {
    hostname: 'localhost',
    port: 3000,
    path: '/user', // replace with your Express route
    method: 'GET'
};

const req = http.request(options, res => {
    console.log(`statusCode: ${res.statusCode}`);

    res.on('data', d => {
        process.stdout.write(d);
    });
});

req.on('error', error => {
    console.error(error);
});

req.end();

// Test WebSocket connection
const ws = new WebSocket('ws://localhost:3000');

ws.on('open', function open() {
    ws.send('WebSocket connection established');
});

ws.on('message', function incoming(data) {
    console.log(data);
});