const fetch = require("node-fetch")

const HASURA_OPERATION = `
mutation MyMutation($name: String!, $phone: bigint!, $email: String!, $password: String!) {
  insert_user_account_one(object: {name: $name, phone: $phone, email: $email, password: $password}) {
    id
  }
}
`;

// execute the parent operation in Hasura
const execute = async (variables) => {
  const fetchResponse = await fetch(
    "http://localhost:8080/v1/graphql",
    {
      method: 'POST',
      body: JSON.stringify({
        query: HASURA_OPERATION,
        variables
      })
    }
  );
  const data = await fetchResponse.json();
  console.log('DEBUG: ', data);
  return data;
};
  

// Request Handler
app.post('/MyMutation', async (req, res) => {

  // get request input
  const { name, phone, email, password } = req.body.input;

  // run some business logic

  // execute the Hasura operation
  const { data, errors } = await execute({ name, phone, email, password });

  // if Hasura operation errors, then throw error
  if (errors) {
    return res.status(400).json(errors[0])
  }

  // success
  return res.json({
    ...data.insert_user_account_one
  })

});