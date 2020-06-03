pipeline {
    agent any
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
                       bat 'terraform destroy -auto-approve'
                       
                  }
           }
      
            stage("Deleting infrastructure") {
                   when {
                        expression { params.Action_To_Perform == 'Delete Infrastructure' }
                  }
                steps {
                        bat 'terraform destroy -auto-approve'
                  }
           }
 }
}

