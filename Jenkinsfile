node {
    checkout scm

    docker.withRegistry('https://hub.docker.com/', 'dockerhub') {

        def customImage = docker.build("helloapp:${env.BUILD_ID}")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}