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
      stage ('artifactory') {
             steps {
             sh "docker pull hello-world",
             sh "docker tag hello-world:latest <artifactoryDockerRegistry>/hello-world:latest",
             sh "docker login <artifactoryDockerRegistry>",
             sh "docker push <artifactoryDockerRegistry>/hello-world:latest"
            }
          }
        }
   }
 