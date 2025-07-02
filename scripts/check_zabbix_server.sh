#!/bin/bash

# Adresse du serveur Zabbix (à adapter)
ZABBIX_SERVER="127.0.0.1"
ZABBIX_PORT=10051

echo "Vérification de la disponibilité du serveur Zabbix $ZABBIX_SERVER:$ZABBIX_PORT..."

# Test ping
ping -c 2 $ZABBIX_SERVER > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "Erreur : Le serveur Zabbix ne répond pas au ping."
  exit 1
fi

# Test port avec netcat
nc -z -w3 $ZABBIX_SERVER $ZABBIX_PORT
if [ $? -ne 0 ]; then
  echo "Erreur : Le port $ZABBIX_PORT n'est pas ouvert sur $ZABBIX_SERVER."
  exit 1
fi

echo "Le serveur Zabbix est disponible !"
exit 0
