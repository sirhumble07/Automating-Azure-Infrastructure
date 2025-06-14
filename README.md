# Automating Azure Infrastructure Deployment with Bicep & GitHub Actions

## 📖 Project Overview 
This project automates Azure infrastructure deployment using **Bicep templates** and **GitHub Actions**, ensuring **security, scalability, and efficiency** across cloud environments.
This project was built as part of the **TechStylers Cohort 6.0 Deep Dive Project** to automate the deployment of Azure infrastructure using **Bicep templates** and **Azure CLI**.

## Features  
✅**Infrastructure-as-Code (IaC)** with Bicep  
✅ **GitHub Actions CI/CD pipeline** for automation  
✅ **Security & Compliance** with Azure Policy & Defender  
✅ **Monitoring & Logging** via Azure Monitor  

## Project Structure  
azure-infra-automation/
│── .github/workflows/    # GitHub Actions workflows             
│── docs/                 # Documentation files     
├── bicep/				  # Bicep templates for infrastructure
│ ├── vnet.bicep
│ ├── nsg.bicep
│ ├── storage.bicep
│ ├── vm-windows.bicep
│ ├── monitor.bicep
│ ├── policy.bicep
│ └── main.bicep
│
├── scripts/			  # Azure CLI automation scripts
│ ├── deploy-vnet.sh
│ ├── deploy-nsg.sh
│ ├── deploy-storage.sh
│ ├── deploy-vm.sh
│ ├── deploy-monitor.sh
│ ├── deploy-policy.sh
│ └── deploy-all.sh
│
├── README.md             # Project overview & deployment guide
└── LICENSE (optional)

