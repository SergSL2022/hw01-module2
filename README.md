# hw01-module2
STEP 1
Generate and add package-lock.json file to git
![alt text](<screenshots/Знімок екрана з 2024-02-12 13-51-51.png>)
![alt text](<screenshots/Знімок екрана з 2024-02-12 13-53-48.png>)
![alt text](<screenshots/Знімок екрана з 2024-02-12 13-54-56.png>)

STEP 2
Build container image with different base image tags using build args, e.g. node:20 and node:latest and mark resulting messages with same tags nodejs-app:20 and nodejs-app:latest
![alt text](<screenshots/Знімок екрана з 2024-02-12 14-15-30.png>)
![alt text](<screenshots/Знімок екрана з 2024-02-12 14-59-28.png>)
![alt text](<screenshots/Знімок екрана з 2024-02-12 15-02-03.png>)

STEP 3
Run nodejs-app:latest in interactive mode, check available env variables and exit, the container should be automatically removed from the docker ps -a list after that
![alt text](<screenshots/Знімок екрана з 2024-02-12 20-39-39.png>)
![alt text](<screenshots/Знімок екрана з 2024-02-12 20-40-19.png>)

STEP 4
Run the nodejs-app container interactively and control the port it is using with ENV variables, change it to 5000, as a plus, use port 8000 to access app in your browser
![alt text](<screenshots/Знімок екрана з 2024-02-12 20-48-38.png>)

STEP 5
Adjust Dockerfile to be able to control the used port during image build, the port defined on build should be used on run without additional configration
![alt text](<screenshots/Знімок екрана з 2024-02-13 18-46-43.png>)
![alt text](<screenshots/Знімок екрана з 2024-02-14 02-01-08.png>)
![alt text](<screenshots/Знімок екрана з 2024-02-14 02-02-05.png>)
![alt text](<screenshots/Знімок екрана з 2024-02-14 02-02-45.png>)
![alt text](<screenshots/Знімок екрана з 2024-02-14 02-04-21.png>)

STEP 6
Adjust Dockerfile to add labels to image, run it and use docker inspect to find them in container metadata
![alt text](<screenshots/Знімок екрана з 2024-02-14 21-43-33.png>)
![alt text](<screenshots/Знімок екрана з 2024-02-14 02-19-27.png>)
![alt text](<screenshots/Знімок екрана з 2024-02-14 02-34-03.png>)

STEP 7
Add creation of app non-root user and configure to use that user for the app
![alt text](<screenshots/Знімок екрана з 2024-02-14 21-02-42.png>) 
![alt text](<screenshots/Знімок екрана з 2024-02-14 21-04-10.png>) 
![alt text](<screenshots/Знімок екрана з 2024-02-14 21-08-07.png>) 
![alt text](<screenshots/Знімок екрана з 2024-02-14 21-08-26.png>)