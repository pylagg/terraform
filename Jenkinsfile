pipeline {
    agent {
        label 'docker_slave'
    }
    tools {
          terraform 'Terraform'
    }
    parameters {
                choice(
                       choices: ['Create Infrastructure' , 'Delete Infrastructure'],
                       name: 'Action_To_Perform'
                )
    }
    stages {
            stage("Provision infrastructure") {
                   when {
                        expression { params.Action_To_Perform == 'Create Infrastructure' }
                  }
                  steps {
                      sh 'terraform init'
                      sh 'terraform plan'
                      sh 'terraform apply -auto-approve'
                  }
           }
      
            stage("Deleting infrastructure") {
                   when {
                        expression { params.Action_To_Perform == 'Delete Infrastructure' }
                  }
                steps {
                        sh 'terraform destroy -auto-approve'
                  }
           }
 }
}

