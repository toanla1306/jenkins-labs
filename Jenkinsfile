pipeline {
  agent none

  stages {
    stage('Run maven in test 1') {
      agent {
        kubernetes {
          cloud 'test1'
          yamlFile 'KubernetesPodTest1.yaml'
        }
      }
      steps {
        container('maven') {
          sh 'echo MAVEN_CONTAINER_ENV_VAR = ${CONTAINER_ENV_VAR} in Test 1'
          sh 'mvn -version'
        }
        container('busybox') {
          sh 'echo BUSYBOX_CONTAINER_ENV_VAR = ${CONTAINER_ENV_VAR} in Test 1'
          sh '/bin/busybox'
        }
      }
    }
    stage('Run maven in test 2') {
      agent {
        kubernetes {
          cloud 'test2'
          yamlFile 'KubernetesPodTest2.yaml'
        }
      }
      steps {
        container('maven') {
          sh 'echo MAVEN_CONTAINER_ENV_VAR = ${CONTAINER_ENV_VAR} in Test 2'
          sh 'mvn -version'
        }
        container('busybox') {
          sh 'echo BUSYBOX_CONTAINER_ENV_VAR = ${CONTAINER_ENV_VAR} in Test 2'
          sh '/bin/busybox'
        }
      }
    }
  }
}