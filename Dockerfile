# Utilitzar una imatge base de Python
FROM python:3.11-slim

# Instal·lar dependències del sistema
RUN apt-get update && apt-get install -y \
    openssh-server \
    && rm -rf /var/lib/apt/lists/*

# Establir el directori de treball
WORKDIR /app

# Copiar el fitxer requirements.txt i instal·lar les dependències de Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar tots els fitxers del projecte (incloent el teu codi Flask)
COPY . .

# Configurar Gunicorn per executar l'aplicació Flask
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "torneig.app:app"]

# Exposar els ports que necessites (5000 per Flask i 22 per SSH)
EXPOSE 5000 22
