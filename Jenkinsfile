node {
	def app
	stage('Initialize'){
        def dockerHome = tool 'MyDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
	
	stage('Clone') {
		checkout scm
	}
	
	stage('Build image') {
		app = docker.build("xavki/nginx")
	}
	
	stage('Test image') {
		docker.image('xavki/nginx').withRun('-p 80:80') { c ->
			sh 'docker ps'
			sh 'curl localhost'
		}
	}
}
