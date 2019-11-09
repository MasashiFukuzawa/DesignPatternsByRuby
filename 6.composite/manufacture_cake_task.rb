class ManufactureCakeTask < CompositeTask
  def initialize
    super('Manufacture cake')
    @sub_tasks = []
    add_sub_task(MakeCakeTask.new)
    add_sub_task(PackageCakeTask.new)
  end
end