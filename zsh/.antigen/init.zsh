#-- START ZCACHE GENERATED FILE
#-- GENERATED: Tue Jul  3 11:36:17 HKT 2018
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/home/ray/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/github /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python /home/ray/.antigen/bundles/willghatch/zsh-cdr /home/ray/.antigen/bundles/zsh-users/zsh-syntax-highlighting /home/ray/.antigen/bundles/zsh-users/zsh-autosuggestions /home/ray/.antigen/bundles/zsh-users/zsh-completions) path+=(/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/github /home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python /home/ray/.antigen/bundles/willghatch/zsh-cdr /home/ray/.antigen/bundles/zsh-users/zsh-syntax-highlighting /home/ray/.antigen/bundles/zsh-users/zsh-autosuggestions /home/ray/.antigen/bundles/zsh-users/zsh-completions)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/home/ray/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein/lein.plugin.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/github/github.plugin.zsh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python/python.plugin.zsh';
source '/home/ray/.antigen/bundles/willghatch/zsh-cdr/cdr.plugin.zsh';
source '/home/ray/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/home/ray/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/home/ray/.antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/home/ray/.antigen/bundles/rupa/z/z.sh';
source '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/themes/ys.zsh-theme.antigen-compat';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/heroku plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/pip plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/lein plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/github plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/python plugin true' 'https://github.com/willghatch/zsh-cdr.git / plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/rupa/z.git z.sh plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git themes/ys.zsh-theme theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein/lein.plugin.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/github' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/github/github.plugin.zsh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python/python.plugin.zsh' '/home/ray/.antigen/bundles/willghatch/zsh-cdr//' '/home/ray/.antigen/bundles/willghatch/zsh-cdr///cdr.plugin.zsh' '/home/ray/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/home/ray/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/home/ray/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/home/ray/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/home/ray/.antigen/bundles/zsh-users/zsh-completions//' '/home/ray/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/home/ray/.antigen/bundles/rupa/z/z.sh' '/home/ray/.antigen/bundles/rupa/z/z.sh' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/themes/ys.zsh-theme' '/home/ray/.antigen/bundles/robbyrussell/oh-my-zsh/themes/ys.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
