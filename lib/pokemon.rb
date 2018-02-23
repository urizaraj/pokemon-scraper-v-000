class Pokemon
  attr_accessor :name, :type, :db, :id

  @@all = []

  def self.all
    @@all
  end

  def initialize(name: nil, type: nil, db: nil, id: nil)
    self.name = name
    self.type = type
    self.db = db
    self.id = id
    self.class.all << self
  end

  def self.save(name, type, db)
    db.execute('INSERT INTO pokemon (name, type) VALUES (?, ?)', name, type)
  end

  def self.find(id, db)
    name, type, id = db.execute('SELECT name, type, id FROM pokemon WHERE id = ?', id)[0]
  end
end
