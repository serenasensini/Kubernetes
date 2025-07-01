# Deploy di una dashboard per Kubernetes

Vuoi creare una dashboard per monitorare il tuo cluster Kubernetes? In questa sezione, ti mostreremo come eseguire il deploy di una dashboard utilizzando i file YAML necessari per definire i servizi e i pod necessari.

## Come eseguire il deploy della dashboard su Kubernetes

Per eseguire il deploy della dashboard su Kubernetes, segui questi passaggi:

- Esegui il deploy del chart ufficiale della dashboard di Kubernetes utilizzando Helm e l'artifact disponibile su [Artifact Hub](https://artifacthub.io/packages/helm/k8s-dashboard/kubernetes-dashboard) con i seguenti comandi:

`helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/`

`helm upgrade --install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard --create-namespace --namespace kubernetes-dashboard`

Con questi comandi, installerai la dashboard di Kubernetes nel namespace `kubernetes-dashboard`.

All'interno del chart è possibile definire una serie di configurazioni custom per la dashboard, come ad esempio l'abilitazione dell'autenticazione tramite token o l'esposizione della dashboard tramite un servizio di tipo LoadBalancer, o anche il limite di risorse per i pod della dashboard. Per maggiori informazioni, puoi consultare la [documentazione ufficiale](https://artifacthub.io/packages/helm/k8s-dashboard/kubernetes-dashboard).