# Deploy di Kafka su Kubernetes

Quando si parla di Kafka, si fa riferimento a un sistema di messaggistica distribuito che consente di gestire flussi di dati in tempo reale. In questo esempio, vedremo come eseguire il deploy di Kafka su un cluster Kubernetes utilizzando i file YAML necessari per definire i servizi e i pod necessari.

## Come eseguire il deploy di Kafka su Kubernetes

Per eseguire il deploy di Kafka su Kubernetes, è necessario seguire questi passaggi:

- Eseguire il deploy del file YAML per il servizio Kafka, che definisce le porte e le risorse necessarie.
- Eseguire il deploy del file YAML per il servizio per Zookeeper, che definisce l'immagine del container e le variabili d'ambiente necessarie.
- Eseguire il deploy del file dello StatefulSet di Zookeeper, che definisce il numero di repliche e le risorse necessarie, e poi procedere con quello per Kafka.
- Infine, eseguire il deploy del file YAML per il Deployment di kcat, che possiamo usare per interagire con Kafka e produrre o consumare messaggi.

Per eseguire questi passaggi, puoi utilizzare i comandi `kubectl apply -f <file.yaml>` per ciascun file YAML presente nella cartella `kafka`.