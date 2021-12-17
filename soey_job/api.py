from flask import Flask, request
from flask_cors import CORS, cross_origin
import json
import uuid
import time

app = Flask(__name__)
cors = CORS(app)

# dictionary
coordinates = {
    "6c1e79dc-a830-11ea-a91d-dca90493994f": ["1.234", "5.6789"],
    "6df7e00e-a830-11ea-a91d-dca90493994f": ["43.80294", "122.60293"],
}


@app.route("/spotkey", methods=["GET", "POST"])
def index():
    print(request.method)
    if request.method == "GET":
        return json.dumps(coordinates)
    elif request.method == "POST":
        data = request.json
        print(data)
        coordinates[str(uuid.uuid1())] = data["coordinates"]
        return "Spotkey Created"


if __name__ == "__main__":
    app.run(debug=True, port=8080)


