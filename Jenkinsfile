node {
    checkout scm

    stage('Initialize'){
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }

    docker.withRegistry('https://hub.docker.com/repository/docker/', 'dockerhub') {

        def customImage = docker.build("avinashraut/helloapp")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}