const express = require("express");
const bodyParser = require("body-parser");

const app = express();

const PORT = process.env.PORT || 3000;

app.use(bodyParser.json());

app.post('/hello', async (req, res) => {
  return res.json({
    hello: "world"
  });
});


const signup = require('./handlers/signup');

app.use('/signup', signup);

// app.get('/:route', (req, res) => {
//   try {
//     console.log("the route "+req.params.route)
//     const handler = require(`./handlers/${req.params.route}`);
    
//     if (!handler) {
//       return res.status(404).json({
//         message: `not found`
//       }); 
//     }
//     return handler(req, res);
//   } catch (e) {
//     console.error(e);
//     return res.status(500).json({
//       message: `unexpected error occured`
//     });
//   }
// });

app.listen(PORT);
console.log("server is running at "+PORT);

