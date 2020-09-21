class Direction
  attr_reader :distance, :duration
  
  def initialize(direction_info)
    @distance = direction_info.first[:distance][:text]
    @duration = direction_info.first[:duration][:text]
    @steps = direction_info.first[:steps]
  end

  def instructions
    @steps.map do |step|
      step[:html_instructions]
    end
  end
end
