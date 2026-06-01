# Delinea Configuration
### Part A - Create a Secret Template (IAM Access Key & IAM Role)
1. Go to Settings > Secret Templates > Click Create / Import Template <img width="1540" height="651" alt="image" src="https://github.com/user-attachments/assets/684ff55d-d30b-4d3e-a568-336541ec8e3c" />
2. Define Template Properties
   - General Tab<img width="1550" height="801" alt="image" src="https://github.com/user-attachments/assets/c110c9a7-3745-4076-9e71-b2736652ebbf" />
   - Fields Tab
     - For IAM Access Key & IAM Role <img width="1555" height="439" alt="image" src="https://github.com/user-attachments/assets/4c2def0e-488d-4a8c-bc00-186cbd3f3386" />
     - For SSO <img width="1557" height="430" alt="image" src="https://github.com/user-attachments/assets/bf65bc12-5d9b-48f5-85a6-f96af3d62025" />
3. Click Save & Close
### Part B - Create a Secret Launcher
1. Navigate to Settings > Secret Template > Click Launchers Tab <img width="1548" height="137" alt="image" src="https://github.com/user-attachments/assets/430f5860-cbb5-4b1d-9e59-8606eb9a84b8" />
2. Define Launcher Properties <img width="808" height="840" alt="image" src="https://github.com/user-attachments/assets/c96a2535-1132-41c1-a242-4cebd4a635f8" />
   - Launcher Name:
   - State: **Enable**
   - Use Additional Prompt: **Disable**
   - Track Multiple Windows: **Enable**
   - Record additional processes: **Leave it blank**
   - Wrap custom parameters with quotation marks: **Disable**
   - **Windows Settings**
     - Batch file: ()
     - Process arguments:
       - IAM Access Keys:
       - IAM Roles:
       - SSO:
     - Run process as secret credentials
     - Use Operating System Shell
     - Escape character
     - Characters to escape
   - **Mac Settings**
     - Shell script: ()
     - Process arguments:
       - IAM Access Keys:
       - IAM Roles:
       - SSO:

 


        
     


 




 

