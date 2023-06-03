pipeline {
    agent any

    stages {
        stage("build image"){
            steps {
                withDockerRegistry([credentialsId: "DOCKER-HUB",url:""]){
                    sh 'docker build . -t hassansaaid/challenge-api:""$GIT_COMMIT""'
                    sh 'docker push hassansaaid/challenge-api:""$GIT_COMMIT""'
                    sh 'pwd'
                    sh 'docker run -d -p 5000:5000 --env PORT=${API_PORT} --env DB=${API_DB}  hassansaaid/challenge-api:""$GIT_COMMIT""'
                }
            }
        }
    }
}