class Pokemon
  attr_accessor :name, :type, :db, :id

  def initialize(name: nil, type: nil, db: nil, id: nil)
    self.name = name
    self.type = type
    self.db = db
    self.id = id
  end
end
