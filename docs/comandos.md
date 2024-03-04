# Comandos

* Aplicar yaml: `kubectl apply -f <nome-do-arquivo>`
* Remover yaml: `kubectl delete -f <nome-do-arquivo>`
* Listar: `kubectl get <tipo-de-recurso>`
* Com filtro de labels: `kubectl get <tipo-de-recurso> -l <key>=<value>`
* Listar com mais infos: `kubectl get po -o wide`
* Editar: `kubectl edit <tipo-de-recurso> <nome>`
* Detalhar: `kubectl describe <tipo-de-recurso> <nome>`
* Gerar yaml a partir de recurso já no cluster: `kubectl get <tipo-de-recurso> -o wide`
* Com filtro de labels: `kubectl get <tipo-de-recurso> -l <key>=<value>`
* Logs do pod: `kubectl logs <nome-do-pod> -c <container>`
* Exec em um container do pod: `kubectl exec -ti <nome-do-pod> -c <container> -- <comando>`
* Port-forward: `kubectl port-forward <pod/service> <nome> <porta-host>:<porta-pod>`
