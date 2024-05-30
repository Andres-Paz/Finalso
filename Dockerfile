# Usa una imagen de Python como base
FROM python:3.12

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el código de la aplicación al contenedor
COPY . .

# Instala las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 5000 para que Flask pueda ser accedido desde fuera del contenedor
EXPOSE 5000

# Comando para ejecutar la aplicación cuando el contenedor se inicia
CMD ["python", "run.py"]
