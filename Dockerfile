# Usar una imagen oficial de Node.js como base
FROM node:14

# Establecer el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copiar el archivo package.json y package-lock.json para instalar dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el código fuente de la aplicación al contenedor
COPY . .

# Exponer el puerto 3000 para que sea accesible
EXPOSE 3000

# Ejecutar la aplicación
CMD [ "node", "app.js" ]
