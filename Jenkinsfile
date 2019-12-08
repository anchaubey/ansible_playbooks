node{
    stage('Checkout the code')
    {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'GIT', url: 'https://github.com/anchaubey/maven-web-application.git']]])
    }
    stage('Run unit test cases')
    {
        if(isUnix()){
            sh 'mvn test'
        }
        else{
            bat 'mvn test'
        }
    }
    /*
    stage('Package the artifact')
    {
        'sh clean package'
    }
    stage('Create a package')
    {
        if(isUnix()){
            sh 'mvn clean package'
        }
        else{
            bat 'mvn clean package'
        }
    }
    */
     stage('Package the artifact')
    {
        'sh clean package'
    }
    stage('Deploy app into container')
    {
        sh 'echo "App deployment started"'
        sh 'cp $WORKSPACE/target/*.war /Users/ankitchaubey/mithuntechnology'
        sh 'echo "App Deployed Successfully"'
    }
    stage('Send notification')
    {
        mail bcc: '', body: '''Build done

Regards,
Ankit Chaubey''', cc: 'ankitchaubey091987@gmail.com', from: '', replyTo: '', subject: 'Build Stage', to: 'ankitchaubey091987@gmail.com'
    }
}

[ec2-user@ip-172-31-90-90 ansible]$ ansible nodes -m file -a "dest=/home/ec2-user/broda state=directory"

[ec2-user@ip-172-31-90-90 ansible]$ ansible nodes -m file -a "dest=/home/ec2-user/brothers mode=644 state=directory"

[ec2-user@ip-172-31-90-90 ansible]$ ansible-playbook fileanddirectory.yml --syntax-check

