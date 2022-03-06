FROM mcr.microsoft.com/azure-functions/node:4-node16

ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
    AzureFunctionsJobHost__Logging__Console__IsEnabled=true \
    PUPPETEER_SKIP_DOWNLOAD=false

COPY . /home/site/wwwroot


WORKDIR /home/site/wwwroot
RUN cd /home/site/wwwroot
RUN ls . -al

RUN npm i
RUN npm i typescript -g
RUN npm run build
