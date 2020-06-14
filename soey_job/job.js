console.log("hello, soey");
const axios = require("./node_modules/axios");

async function getRequest() {
  try {
    const result = await axios.get("http://localhost:8080/spotkey");
    const data = await result.data;
    return data;
  } catch (e) {
    console.log(e);
  }
}

async function postRequest(point) {
  try {
    const result = await axios.post("http://localhost:8080/spotkey", {
      coordinates: point,
    });
    const data = await result.data;
    return data;
  } catch (e) {
    console.log(e);
  }
}

const newData = ["1234", "234.5"];

getRequest()
  .then((r) => {
    console.log(r);
    return r;
  })
  .catch((e) => console.log(e));

postRequest(newData)
  .then((r) => {
    console.log(r);
    return r;
  })
  .catch((e) => console.log(e));

