node('jenkins-slave') {
    checkout scm
    stage('test pipeline') {
        sh(script: """
            echo "hello"

            git clone https://github.com/avivamp/helloapp.git
            cd ./helloapp
            docker build . -t avinashraut/helloapp
        """)
    }
    
}