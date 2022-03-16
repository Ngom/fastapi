#FROM ubuntu

#RUN apt-get update && apt-get install python3 python3-pip -y 

#RUN pip3 install --upgrade pip

#COPY main.py requirements.txt ./

#RUN pip3 install -r requirements.txt 

#RUN pip3 install "fastapi[all]"

#CMD ["python3", "-m", "uvicorn",\
#     "main:app", "--host", "0.0.0.0", "--port", "8080"]

# Start by importing the base image
FROM ubuntu:20.04
# Install python to container
RUN apt-get update && apt-get install python3 -y && apt install python3-pip -y
# Copy python script & requirements.txt
COPY main.py requirements.txt ./
# Install from requirements.txt
RUN python3 -m pip install -r requirements.txt
# On launch: Install fastapi from requirements
CMD ["python3", "-m", "uvicorn", \
    "main:app", "--host", "0.0.0.0", "--port", "8080"]

