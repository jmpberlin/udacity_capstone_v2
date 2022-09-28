dockerpath=jmpberlin/flask-app

kubectl run --image=$dockerpath:hello flask-app --port=80

kubectl get pods
while [ "$(kubectl describe pods flask-app | grep ^Status: | head -1 | awk '{print $2}' | tr -d '\n')" != "Running" ]; do
    echo "POD status: $(kubectl describe pods flask-app | grep ^Status: | head -1 | awk '{print $2}' | tr -d '\n')"
sleep 3
done
echo "POD is running and ready for port forwarding"

kubectl port-forward flask-app 8000:80
kubectl logs flask-app