node {

    checkout scm
    echo "hello"
    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {

        def customImage = docker.build("avinashraut/helloapp")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}