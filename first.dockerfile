pipeline {
    agent {label 'lable-1'}
 stages {
     stage ('clone') {
         steps {
             git branch:"master",url:"https://github.com/Tajdarhussain110/docker-project.git"
         }
     }
     stage ('build') {
        steps {
            sh "docker info"
        }
     }
   }
 }