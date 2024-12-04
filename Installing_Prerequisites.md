
# Installing the Prerequisites: Package Managers

## Homebrew (macOS or Linux)
To install Homebrew, run:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Chocolatey (Windows)
**Note:** Ensure PowerShell's execution policy is not set to `Restricted`. Use `Bypass` or `AllSigned` instead.
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

---

# Installing the Prerequisites: AKS (Azure Kubernetes Service)

## macOS or Linux
1. Install Azure CLI:
   ```bash
   brew install azure-cli
   ```
2. Install `kubectl`:
   ```bash
   brew install kubernetes-cli
   ```
3. Log in to Azure:
   ```bash
   az login
   ```

## Windows
1. Install Azure CLI:
   ```powershell
   choco install azure-cli
   ```
2. Install `kubectl`:
   ```powershell
   choco install kubernetes-cli
   ```
3. Log in to Azure:
   ```powershell
   az login
   ```

---

# Installing the Prerequisites: EKS (Elastic Kubernetes Service)

## macOS or Linux
1. Install AWS CLI:
   ```bash
   brew install aws-cli
   ```
2. Install `kubectl`:
   ```bash
   brew install kubernetes-cli
   ```
3. Log in to AWS:
   ```bash
   aws configure
   ```

## Windows
1. Install AWS CLI:
   ```powershell
   choco install aws-cli
   ```
2. Install `kubectl`:
   ```powershell
   choco install kubernetes-cli
   ```
3. Log in to AWS:
   ```powershell
   aws configure
   ```

---

# Installing the Prerequisites: GKS (Google Kubernetes Service)

## macOS or Linux
1. Install Google Cloud SDK:
   ```bash
   brew install --cask google-cloud-sdk
   ```
2. Install `kubectl`:
   ```bash
   brew install kubernetes-cli
   ```
3. Log in to GCP:
   ```bash
   gcloud init
   ```
4. Add your account to the ADC:
   ```bash
   gcloud auth application-default login
   ```

## Windows
1. Install Google Cloud SDK:
   ```powershell
   choco install gcloudsdk
   ```
2. Install `kubectl`:
   ```powershell
   choco install kubernetes-cli
   ```
3. Log in to GCP:
   ```powershell
   gcloud init
   ```
4. Add your account to the ADC:
   ```powershell
   gcloud auth application-default login
   ```
