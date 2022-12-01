pipeline {
    agent {label "lable-1"}
 stages {
     stage ('clone') {
         steps {
             git branch:"main",url:"https://github.com/Tajdarhussain110/docker-project.git"
         }
     stage ('build') {
        steps {
            sh "docker info"
        }
     }
    }
 }
}