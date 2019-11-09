class BakeTask < Task
  def initialize
    super('Bake')
  end

  def get_time_required
    1.0
  end
end