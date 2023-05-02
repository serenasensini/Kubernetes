apiVersion: apps/v1
kind: StatefulSet
metadata:
  name: mongo
spec:
  selector:
	matchLabels:
  	    app: mongo
  serviceName: "mongo"
  replicas: 3
  template:
    metadata:
      labels:
        app: mongo
    spec:
      containers:
        - name: mongodb
          image: mongo:6.0.4
          command:
            - bash
            - /config/init.sh
          ports:
            - containerPort: 27017
              name: peer
          volumeMounts:
            - name: config
              mountPath: /config
      volumes:
        - name: config
          configMap:
            name: "mongo-init"
