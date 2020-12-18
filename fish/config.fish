set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths

alias v="sudo nvim"
function jdk
	set java_version $argv
	set -Ux JAVA_HOME (/usr/libexec/java_home -v $java_version)
	java -version
end
