# Add homebrew binaries to path
set PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH

# Set up asdf-vm
source ~/.asdf/asdf.fish

# Set EDITOR and VISUAL
set EDITOR nvim
set VISUAL nvim

# Bind CTRL+e to editor
bind \ce edit_command_buffer

# Source .profile
bass source ~/.profile

# Add function for cheat.sh
function tldr
	curl -s cht.sh/$argv | less -RF
end

function semgrep_audit
	docker run --rm -v "$PWD:/src" \
		returntocorp/semgrep \
		--config=p/r2c-security-audit \
		--exclude='spec/' \
		--exclude='db/migrate' \
		--exclude='db/auditing/migrate' \
		--exclude='public/javascripts' \
		--exclude='yard_template/default/fulldoc/html/js' \
		~/code/appserver
end
