node {

    checkout scm
    echo "hello"
    docker.withRegistry('https://hub.docker.com/repository/docker", 'dockerHub') {

        def customImage = docker.build("avinashraut/helloapp")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}