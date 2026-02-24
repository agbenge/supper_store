const jsonServer = require('json-server');
const server = jsonServer.create();
const router = jsonServer.router('db.json');
const middlewares = jsonServer.defaults();

const port = 3000;
const host = '0.0.0.0';

server.use(middlewares);
server.use(router);

server.listen(port, host, () => {
  console.log(`JSON Server is running on http://${host}:${port}`);
});
