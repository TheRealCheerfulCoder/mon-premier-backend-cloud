# Java Cloud-Native Pipeline 🚀

Ce projet démontre la mise en place d'une architecture moderne pour une application Java, allant du développement à l'orchestration Cloud.

## 🛠 Stack Technique
- **Backend:** Java 17, Maven, JUnit 5
- **Conteneurisation:** Docker (Multi-stage builds optimisés)
- **CI/CD:** GitHub Actions
- **Infrastructure:** Terraform & Kubernetes (K8s)

## 🏗 Architecture du Projet
L'application suit le cycle de vie **DevOps** complet :
1. **Build & Test:** Automatisation via Maven dans GitHub Actions.
2. **Qualité:** Tests unitaires JUnit intégrés à la pipeline (Fail-fast).
3. **Distribution:** Publication automatique d'images immuables sur Docker Hub.
4. **Infrastructure as Code:** Déploiement via Terraform.
5. **Orchestration:** Gestion des déploiements et services via Kubernetes.

## 🚀 Comment lancer le projet ?

### Via Docker
```bash
docker pull votre-pseudo/mon-app-java:latest
docker run -p 8080:8080 winnt4/mon-app-java