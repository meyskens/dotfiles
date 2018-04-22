alias k='kubectl'
alias kd='kubectl describe'
alias kdp='kubectl describe pods'
alias ke='kubectl exec'
alias kei='kubectl exec -it'
alias kg='kubectl get'
alias kl='kubectl logs'
alias ks='kubectl get services'
alias kn='kubectl get nodes'
alias kp='kubectl get pods'
alias kcc='bash -c "kubectl config set-context \$0 --namespace=\$1 && kubectl config use-context \$0"'

# Helper aliases
alias _k_currentNamespace='kubectl config view -o json | jq -r ".contexts | map(select(.name == \"(kubectl config current-context)\")) | .[0].context.namespace"'