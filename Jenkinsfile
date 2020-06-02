pipeline {
 agent any
 stages {
 stage(‘Set Terraform path’) {
 steps {
 script {
 def tfHome = tool name: ‘Terraform’
 env.PATH = “${tfHome}:${env.PATH}”
 }
 bat ‘terraform — version’
 }
 }
 
 stage(‘Provision infrastructure’) {
 steps {
 / dir(‘dev’)
 /{
 bat ‘terraform init’
 bat ‘terraform plan’
 bat ‘terraform apply’
 /}
 }
 }
 }
}
