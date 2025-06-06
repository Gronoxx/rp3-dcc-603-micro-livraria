# Imagem base derivada do Node
FROM node

# Diretório de trabalho dentro da imagem
WORKDIR /app

# Comando para copiar os arquivos do seu projeto para a pasta /app da imagem
COPY . /app

# Comando para instalar as dependências do projeto dentro da imagem
RUN npm install

# Comando para inicializar (executar) a aplicação quando o container for iniciado
CMD ["node", "/app/services/shipping/index.js"]
