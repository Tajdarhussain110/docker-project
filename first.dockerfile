pipeline {
    agent {label 'lable-1'}
 stages {
     stage ('clone') {
         steps {
             git url:'https://github.com/Tajdarhussain110/docker-project.git',
             branch :'master'
         }
     }
     stage ('build') {
        steps {
            sh 'docker info'
        }
     }
   }
 }