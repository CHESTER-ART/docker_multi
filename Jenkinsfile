pipeline {
    agent {
      label 'master'
    }
    stages {
	stage ('Create dir') {
		steps {
		sh """
		   mkdir /tmp/nagios || echo "Dir exists"
		"""
		}
	}
	
   	    stage('Centos_6') {
            agent {
                dockerfile {
                    label 'master'
                    filename 'Cent.6.Dockerfile'
		    additionalBuildArgs '--network=host'
                    args '-u root -v /tmp/nagios:/download:rw'
                }
            }
            steps {
                sh """
                    yum install -y --downloadonly --downloaddir=/download nagios-plugins-all
                    ls -l /download
                """
            }}

        }}
	stage ('Checking') {
		agent {
			label 'master'
		}
		steps {
		sh """
			ls -l /tmp/nagios/	
		"""
		}
	}
    }
}

