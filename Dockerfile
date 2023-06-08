FROM python:3.9

# Installer sqlmap
RUN pip install sqlmap

# Définir le répertoire de travail
WORKDIR /app

# Copier le script d'exécution de la commande sqlmap dans le conteneur
COPY sqlmap_script.sh /app/sqlmap_script.sh

# Donner les droits d'exécution au script
RUN chmod +x /app/sqlmap_script.sh

# Exécuter la commande sqlmap avec les options spécifiées
CMD ["/app/sqlmap_script.sh"]
