#
# Dockerfile TP Docker
#

# 1. Indiquer l’image de base qu’on souhaite utiliser pour containeriser notre application à l’aide du mot clé FROM :
# pour Node.JS en version 12 l'image est "node:12"
FROM node:12

# 2. Changer le working directory par défaut de notre image à l’aide du mot clé WORKDIR:
WORKDIR /usr/src/app

# 3. Copier les fichiers de dépendances dans le working directory à l’aide du mot clé COPY et installer les dépendances à l’aide du mot
#clé RUN :
COPY package*.json ./
RUN npm install

# 4. Copier le code source de notre application dans le working directory :
COPY . .

# 5. Associer l’application avec le port 8080 à l’aide du mot clé EXPOSE :
EXPOSE 8080

# 6. Définir la commande qui est lancée au démarrage de notre conteneur à l’aide du mot clé CMD :
CMD [ "node", "server.js" ]
