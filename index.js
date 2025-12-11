
const express = require('express');
const _ = require('lodash');

const app = express();

app.get('/', (req, res) => {
  const arr = _.concat([1,2,3], [4,5]);
  res.send(`Hello Wiz! ${arr.join(',')}`);
});

app.listen(3000, '0.0.0.0', () => {
  console.log('App listening on port 3000');
});
