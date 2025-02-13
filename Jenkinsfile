pipeline {
    agent any
    stages {
        stage('Copy Script to VM and Execute') {
            steps {
                sh '''
                # Copy script to VM using SCP
                scp -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.pem configure_vm.sh azureuser@52.138.61.57:/home/azureuser/

                # SSH into the VM and execute the script
                ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.pem azureuser@52.138.61.57 'bash /home/azureuser/configure_vm.sh'
                '''
            }
        }
    }
}
