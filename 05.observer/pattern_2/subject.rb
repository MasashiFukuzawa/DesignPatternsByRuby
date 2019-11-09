module Subject
  def initialize
    @obserbers = []
  end

  def add_observer(obserber)
    @obserbers << obserber
  end

  def delete_observer(obserber)
    @obserbers.delete(obserber)
  end

  def notify_observers
    @obserbers.each do |obserber|
      obserber.update(self)
    end
  end
end