# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/mdurussel/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/mdurussel/.config/omf"

# Ansible
set -x ANSIBLE_VAULT_PASSWORD_FILE ~/.ansible-vault-pw
set -x ANSIBLE_RETRY_FILES_ENABLED 0
alias ap "ansible-playbook"
alias a "ansible"
alias ag "tag"

# Vim
alias vim "mvim -v"

# Prompt Color
# set -g fish_color_cwd caa9fa
# set -g fish_color_git fab0ff

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Add user variable for git branch so we can use it as a badge
function iterm2_print_user_vars
  set -l git_branch (git branch 2> /dev/null | grep \* | cut -c3-)
  if [ "$git_branch" != "" ]
    iterm2_set_user_var gitBranch (git branch 2> /dev/null | grep \* | cut -c3-)
  else
    iterm2_set_user_var gitBranch ""
  end
end
