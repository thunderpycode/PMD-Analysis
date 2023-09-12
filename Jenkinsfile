pipeline {
    agent any

 

    parameters {
        choice(name: 'SELECT_STAGE', choices: ['StageA', 'StageB', 'StageC'], description: 'Select a stage to run')
    }

 

    stages {
        stage('Initialize') {
            steps {
                echo 'Initializing...'
            }
        }

 

        stage('StageA') {
            when {
                expression { params.SELECT_STAGE == 'StageA' }
            }
            steps {
                echo 'Running StageA...'
            }
        }

 

        stage('StageB') {
            when {
                expression { params.SELECT_STAGE == 'StageB' }
            }
            steps {
                echo 'Running StageB...'
            }
        }

 

        stage('StageC') {
            when {
                expression { params.SELECT_STAGE == 'StageC' }
            }
            steps {
                echo 'Running StageC...'
            }
        }
    }

 

    post {
        failure {
            echo 'Pipeline failed!'
        }
    }
}