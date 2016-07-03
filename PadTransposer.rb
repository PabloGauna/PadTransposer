require "midi"

# prompt the user to select an input and output


class PadTransposer
  def initialize

    drawCircle
  end

  def drawCircle
    input = UniMIDI::Input.find_by_name 'IK Multimedia iRig KEYS Pro'
    output = UniMIDI::Output.find_by_name 'Focusrite A.E. Ltd Launchpad S'

    MIDI.using(input, output) do
      speed = 127
      output(MIDIMessage::NoteOn["E-1"].new(0, speed))
      output(MIDIMessage::NoteOn["D#-1"].new(0, speed))
      output(MIDIMessage::NoteOn["A0"].new(0, speed))
      output(MIDIMessage::NoteOn["F#0"].new(0, speed))
      output(MIDIMessage::NoteOn["A1"].new(0, speed))
      output(MIDIMessage::NoteOn["D2"].new(0, speed))
      output(MIDIMessage::NoteOn["C3"].new(0, speed))
      output(MIDIMessage::NoteOn["G3"].new(0, speed))
      output(MIDIMessage::NoteOn["E4"].new(0, speed))
      output(MIDIMessage::NoteOn["B4"].new(0, speed))
      output(MIDIMessage::NoteOn["A5"].new(0, speed))
      output(MIDIMessage::NoteOn["D6"].new(0, speed))
      output(MIDIMessage::NoteOn["D7"].new(0, speed))
      output(MIDIMessage::NoteOn["F7"].new(0, speed))
      output(MIDIMessage::NoteOn["G8"].new(0, speed))
      output(MIDIMessage::NoteOn["G#8"].new(0, speed))
    end
  end
end

transposer = PadTransposer.new


