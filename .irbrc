# Auto-complete for method names and such
require 'irb'
require 'irb/completion'

DEFAULT_OPTIONS = {
  :rocket_mode     => true,   # activate or deactivate #=> rocket
  :rocket_prompt   => '#=> ', # prompt to use for the rocket
  :result_prompt   => '=> ',  # prompt to use for normal output
  :east_asian_width => false, # set to true if you have double-width characters (slower)
  :colorize => {              # colors hash. Set to nil to deactivate colors
    :rocket_prompt => [:blue],
    :result_prompt => [:blue],
    :input_prompt  => [:yellow],
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

# Loads simple IRB (without RVM notice)
IRB.conf[:PROMPT_MODE] = :SIMPLE

IRB.conf[:AUTO_INDENT] = true

# A method for clearing the screen
def clear
  system('clear')
end