## Introduction to Bootstrap Project Manager

This purpose of this tutorial is to enable you to get stated quickly managing a
GCP project. The steps needed include:

1. Configure your credentials.
2. Set your project name.
3. Update your organization policies and constraints.
4. Enable your service apis.
5. Create your service account.
6. Obtain your service account key file.
7. Update your service account permissions.

## Configure your credentials

1. Create secure credentials folder such as suggested below. Please feel free to use your own naming convention.

    ```sh
    mkdir ~/.apigee-secure
    ```

1. Use the provided credentials template file to create your credentials file in you secure credentials folder.

    ```sh
    cp bootstrap-cloudshell-project/resources/credentials.yml.template  ~/.apigee-secure/credentials.yml
    ```

1. Update your credentials file by replacing each `CHANGEME`. Assuming you followed the naming conventions in this tutorial then you can click
   <walkthrough-editor-select-regex filePath="/home/admin_/.apigee-secure/credentials.yml" regex="CHANGEME">credentials.yml</walkthrough-editor-select-regex> to start your updates.

    ```yaml
        ---
        GCLOUD_ORG_ID: "CHANGE_ME"
        GCLOUD_ACCOUNT_DOMAIN: "CHANGE_ME"
        BILLING_ID: "CHANGE_ME"
        GCLOUD_ACCOUNT_USER: "CHANGE_ME"
    ```

## Set your project name
1. The project name is picked up from the <walkthrough-editor-select-regex filePath="/home/admin_/bootstrap-cloudshell-project/resources/override.yml" regex="CHANGEME">override.yml</walkthrough-editor-select-regex> file.

## Update organization role bindings
1. Please review default org role bindings. It is recommended that you update the default org role bindings in <walkthrough-editor-select-regex filePath="/home/admin_/bootstrap-cloudshell-project/resources/override.yml" regex="GCLOUD_ORG_ROLE_BINDINGS">override.yml</walkthrough-editor-select-regex> file.

## Update organization disable policy constraints enforcement
1. Please review org policy constraints enforcement to be disabled. It is recommended that you update the default org role bindings in <walkthrough-editor-select-regex filePath="/home/admin_/bootstrap-cloudshell-project/resources/override.yml" regex="GCLOUD_ORG_POLICIES_CONSTRAINTS_ENFORCEMENT_DISABLE">override.yml</walkthrough-editor-select-regex> file.

## Update org policies to allow
1. Please review org policy that should be allowed. It is recommended that you update the default org role bindings in <walkthrough-editor-select-regex filePath="/home/admin_/bootstrap-cloudshell-project/resources/override.yml" regex="GCLOUD_ORG_POLICIES_UPDATE">override.yml</walkthrough-editor-select-regex> file.

## Service API Enablement
1. Please review the default service apis that will be enabled in your project. Please update <walkthrough-editor-select-regex filePath="/home/admin_/bootstrap-cloudshell-project/resources/override.yml" regex="GCLOUD_PROJECT_SERVICES">override.yml</walkthrough-editor-select-regex> as needed.

## Service Account Creation
1. Please review the service account that will be created in your project. Please update <walkthrough-editor-select-regex filePath="/home/admin_/bootstrap-cloudshell-project/resources/override.yml" regex="SERVICE_ACCOUNT_PROTECTED_VALUES in credentials.yml">override.yml</walkthrough-editor-select-regex> as needed.

## Review work directory location
1. Please review and update the working directory location if needed <walkthrough-editor-select-regex filePath="/home/admin_/bootstrap-cloudshell-project/resources/override.yml" regex="WORK_DIR">override.yml</walkthrough-editor-select-regex>
   Service account key files will be in this working directory.

## Update your service account permissions
1. Please review and update service account permissions if needed  <walkthrough-editor-select-regex filePath="/home/admin_/bootstrap-cloudshell-project/resources/override.yml" regex="GCLOUD_PROJECT_SERVICE_ACCOUNT_ROLE_BINDINGS">override.yml</walkthrough-editor-select-regex>
   for the service account role bindings.

## Update your admin role permissions
1. Please review and update admin role permissions if needed  <walkthrough-editor-select-regex filePath="/home/admin_/bootstrap-cloudshell-project/resources/override.yml" regex="GCLOUD_PROJECT_ADMIN_ROLE_BINDINGS">override.yml</walkthrough-editor-select-regex>
   for the service account role bindings.

## Activate the virtual environment and create the project
1. Activate the python virtual environment to create the project.


    ```sh
    cd ~/bootstrap-cloudshell-project/
    pyenv activate apigeex
    molecule converge
    ```

## Project Created
Your project should be ready in a few minutes.
<walkthrough-conclusion-trophy/>

