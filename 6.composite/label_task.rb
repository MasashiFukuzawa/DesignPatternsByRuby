class LabelTask < Task
  def initialize
    super('Label')
  end

  def get_time_required
    0.5
  end
end