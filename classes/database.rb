class Database
  def self.connection(db_options = {})
    @@connection ||= PG.connect(db_options)
  end
end
