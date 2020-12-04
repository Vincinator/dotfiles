
contains ~/dotfiles/deps/diff-so-fancy $fish_user_paths; or set -Ua fish_user_paths ~/dotfiles/deps/diff-so-fancy
contains ~/usrbin $fish_user_paths; or set -Ua fish_user_paths ~/usrbin
set -U __done_notification_command 'terminal-notifier -message "$message" -title "$title"'

set -x JENKINS_USERNAME ""
set -x JENKINS_URL "http://10.125.1.120:8080"
set -x JENKINS_SECRET ""

