pipeline {
  agent any
  stages {
   stage("Set terraform path") {
    steps {
            def tfHome = tool name: 'Terraform', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool'
            env.Path = "${tfHome};${env.Path}"
            bat 'terraform --version'
    }
  }
 
  stage("Provision infrastructure") {
  steps {
    bat 'terraform init'
    bat 'terraform plan'
    bat 'terraform apply'
  }
  }
 }
}
