class Park
  attr_reader :full_name, :description, :directions_info, :standard_hours_operation

  def initialize(attributes)
    @full_name = attributes[:fullName]
    @description = attributes[:description]
    @directions_info = attributes[:directionsInfo]
    @standard_hours_operation = attributes[:operatingHours][0][:standardHours]
  end
end