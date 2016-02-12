FROM microsoft/aspnet:1.0.0-beta8-coreclr
 
ADD . /project
 
WORKDIR /project
 
RUN ["dnu", "restore"]
 
ENTRYPOINT ["dnx", "web", "--server.urls", "http://0.0.0.0:5000"]