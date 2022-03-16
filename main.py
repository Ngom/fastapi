from fastapi import FastAPI

# create a fastAPI object
app = FastAPI()

# Create an enpoint (route)
@app.get("/")
async def root():
	return {"message": "Hello World"}

# another enpoint with parameter
@app.get("/{name}")
async def read_item(name: str):
    return {"message": f"""Hello {name}!
     		Your code is deployed on aws.
     		1. Put code on github repo.
     		2. Clone on ec2 instance.
     		3. Install the requirements to run it.
     		4. Using public ec2 IP address.
     		5. Invoke your API.
     		"""
     		}
