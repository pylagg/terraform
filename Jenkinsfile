pipeline {
  agent any
  tools {
    terraform 'Terraform'
  }
  stages {
   stage("Set terraform path") {
    steps {
      bat 'terraform destroy -auto-approve'    }
  }
 }
}
