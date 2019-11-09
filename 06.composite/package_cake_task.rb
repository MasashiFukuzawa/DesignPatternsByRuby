class PackageCakeTask < CompositeTask
  def initialize
    super('Package cake')
    @sub_tasks = []
    add_sub_task(BoxTask.new)
    add_sub_task(LabelTask.new)
  end
end