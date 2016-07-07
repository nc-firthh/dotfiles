# Auto-complete for method names and such
require 'irb'
require 'irb/completion'
require 'irb/ext/save-history'

# Save irb history
IRB.conf[:SAVE_HISTORY] = 200
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

DEFAULT_OPTIONS = {
  :rocket_mode      => true,   # activate or deactivate #=> rocket
  :rocket_prompt    => '#=> ', # prompt to use for the rocket
  :result_prompt    => '=> ',  # prompt to use for normal output
  :east_asian_width => false,  # set to true if you have double-width characters (slower)
  :colorize => {               # colors hash. Set to nil to deactivate colors
    :rocket_prompt => [:white],
    :result_prompt => [:white],
    :input_prompt  => [:white],
    :irb_errors    => [:red, :clean],
    :stderr        => [:red, :bright],
    :stdout        => nil,
    :input         => nil,
   },
}

# Loads fancyirb
require 'fancy_irb'
FancyIrb.start DEFAULT_OPTIONS

# Loads wirb
require 'wirb'
Wirb.start

# Set a nice simple prompt
IRB.conf[:PROMPT] ||= {}
IRB.conf[:PROMPT][:RAILS] = {
  :PROMPT_I => ">> ",      # normal prompt
  :PROMPT_N => "># ",      # prompt when defining a method
  :PROMPT_S => ">* ",      # prompt when continuing a string
  :PROMPT_C => ">? ",      # prompt when continuing a statement
  :RETURN   => "=> %s\n"   # prefixes output
}
IRB.conf[:PROMPT_MODE] = :RAILS

IRB.conf[:AUTO_INDENT] = true


# A method for clearing the screen
def clear
  system('clear')
end
