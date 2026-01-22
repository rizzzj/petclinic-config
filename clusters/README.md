### FluxCD (Application Management)

- FluxCD is used to manage **actual application workloads**, such as production websites and backend services.
- Ensures the cluster is always in sync with Git (the single source of truth) for **deploying and managing application workloads**.
- Continuously reconciles Helm releases and Kubernetes manifests from Git, ensuring that application deployments, configuration, and scaling behavior always match the declared state.
- Operates at the **application layer**, while **Argo CD** is reserved for **platform and observability stacks** (e.g., monitoring and logging).



![image](images/flux_reources.png)
