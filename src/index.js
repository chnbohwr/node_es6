import express from 'express';

const app = express();

app.get('/', (req, res) => {
  res.json('hi');
});

app.listen(process.env.PORT || 3000);
console.log(`server start success ${process.env.PORT ? '' : 'port: 3000'}`);


