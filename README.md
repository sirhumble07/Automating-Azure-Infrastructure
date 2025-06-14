# Automating Azure Infrastructure Deployment with Bicep & GitHub Actions

## **Problem Statement**: 
A software development company aims to improve efficiency by automating the deployment of its Azure infrastructure for various projects. 
The company needs to reduce **manual errors**, ensure **consistency across environments**, and **speed up the deployment process**. 
The automation solution should include **scripting for deploying virtual machines**, **storage accounts**, **networks**, and **security configurations**. 
The automated setup must also incorporate **monitoring** and **alerting to maintain high operational standards**.

## 📖 Project Overview 
This project automates Azure infrastructure deployment using **Bicep templates** and **GitHub Actions**, ensuring **security, scalability, and efficiency** across cloud environments.
This project was built as part of the **TechStylers Cohort 6.0 Deep Dive Project** to automate the deployment of Azure infrastructure using **Bicep templates** and **Azure CLI**.

## Features  
✅**Infrastructure-as-Code (IaC)** with Bicep  
✅ **GitHub Actions CI/CD pipeline** for automation  
✅ **Security & Compliance** with Azure Policy & Defender  
✅ **Monitoring & Logging** via Azure Monitor  

## 📁 **Project Structure**  
```
azure-infra-automation/
│── .github/                    # GitHub Actions workflows 
│   ├──workflows/ 
│── docs/                       # Documentation files 
│── scripts/                    # Azure CLI automation scripts
│   ├── deploy-vnet.sh
│   ├── deploy-nsg.sh
│   ├── deploy-storage.sh
│   ├── deploy-vm.sh
│   ├── deploy-monitor.sh
│   ├── deploy-policy.sh
│   ├── deploy-all.sh
├── bicep/                      # Bicep templates for infrastructure
│   ├── vnet.bicep
│   ├── nsg.bicep
│   ├── storage.bicep
│   ├── monitor.bicep
│   ├── policy.bicep
│   └── main.bicep
│
├── README.md                    # Project overview & deployment guide
└── LICENSE (optional)
```

---
