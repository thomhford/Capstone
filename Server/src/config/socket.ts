// socket.ts
import { Server } from 'socket.io';
import http from 'http';

const server = http.createServer();
const io = new Server(server);

io.on('connection', (socket) => {
    console.log('a user connected', socket.id);

    // Handle 'chat message' event
    socket.on('chat message', (msg) => {
        console.log('message: ' + msg);
        // Broadcast the message to all other clients
        socket.broadcast.emit('chat message', msg);
    });

    // Handle 'join room' event
    socket.on('join room', (room) => {
        console.log('user joined room: ' + room);
        // Add the client to the room
        socket.join(room);
        // Broadcast a message to all clients in the room
        io.to(room).emit('chat message', 'a user has joined the room');
    });

    // Handle 'leave room' event
    socket.on('leave room', (room) => {
        console.log('user left room: ' + room);
        // Remove the client from the room
        socket.leave(room);
        // Broadcast a message to all clients in the room
        io.to(room).emit('chat message', 'a user has left the room');
    });

    socket.on('disconnect', () => {
        console.log('user disconnected', socket.id)
    })
})

export { io, server };