#!/usr/bin/env bash
# ~/.scripts/checkci.sh
#...
# expose those variables (in your ~/.zshrc, your (bash) profile, or anywhere you prefer...
#export JENKINS_USERNAME=""
#export JENKINS_URL=""
#export JENKINS_SECRET=""
#...
function _checkci() {
	local jenkinsfile="${1:-Jenkinsfile}"
	curl --user "$JENKINS_USERNAME:$JENKINS_SECRET" -X POST -F "jenkinsfile=<$jenkinsfile" "$JENKINS_URL/pipeline-model-converter/validate"
}
_checkci "$*"
exit 0
