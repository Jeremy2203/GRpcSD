# Usar la imagen oficial de Python
FROM python3.9

# Establecer el directorio de trabajo en el contenedor
WORKDIR app

# Copiar los archivos del proyecto al directorio de trabajo
COPY . app

# Instalar las dependencias necesarias (gRPC, Protobuf y SQLite)
RUN pip install --no-cache-dir grpcio grpcio-tools protobuf

# Exponer el puerto 50051 para gRPC
EXPOSE 50051

# Comando para iniciar el servidor gRPC
CMD [python, xd.py]
