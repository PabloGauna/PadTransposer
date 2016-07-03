require "midi"

# prompt the user to select an input and output

input = UniMIDI::Input.gets
output = UniMIDI::Output.gets

MIDI.using(input, output) do

  thru_except :note do |message|
    #message.note += 12
    output(message)
  end

  join

end