node('jenkins-slave') {
    checkout scm
    stage('test pipeline') {
        sh(script: """
            echo "hello"
            docker.withRegistry('https://hub.docker.com/repository/docker/', 'dockerhub') {

            def customImage = docker.build("avinashraut/helloapp")

            /* Push the container to the custom Registry */
            customImage.push()
        """)
    }
    
}