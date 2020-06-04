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
                      withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws_credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
                      {
                      sh 'terraform init'
                      sh 'terraform plan'
                      sh 'terraform apply -auto-approve'
                       
                      }
                  }
            }
            stage("Deleting infrastructure") {
                   when {
                        expression { params.Action_To_Perform == 'Delete Infrastructure' }
                  }
                steps {
                    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws_credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                        sh 'terraform destroy -auto-approve'
                    }
                }
           }
 }
}

