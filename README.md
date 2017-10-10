# existdb
About this image
This is an eXist DB image build on top of official Java image.

It is forked from davidgaya/existdb.

eXist XML Database
eXist is an open source NoSQL database built on XML technology.
It is classified as both a NoSQL Document database and a native XML database.
eXist provides XQuery and XSLT as its query and application programming languages.

Licenses
This fork keeps the original license. See LICENSE.txt.

Usage
Environment variables :
Exist DB Version to download => EXIST_DB_VERSION
Exist DB Home => EXIST_HOME
admin password => EXIST_PASSWORD 0000
maximum memory => MAX_MEMORY 2048
Default collection to create => DEFAULT_COLLECTION mycollection

To start your container binding to port 8080:

docker run -d -p 8080:8080 -e EXIST_PASSWORD=1234 ibakayoko/existdb:latest

docker run -P -d -e MAX_MEMORY=1024 -e EXIST_PASSWORD=pass ibakayoko/exist:latest
Then check it at:

curl http://localhost:8080/exist/
