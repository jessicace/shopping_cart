class Database
  def self.connection(db_options = {})
    @@connection ||= PG.connect(db_options)
  end

  def self.all
    res = connection.exec("SELECT * FROM #{self.table_name}")
  end

  def self.read
    res = connection.exec("SELECT * FROM #{self.table_name} WHERE id = $1", [@id])
  end

  def insert_into
    
  end

  def delete_from
    connection.exec("DELETE FROM #{self.table_name} WHERE id = $1", [id])
  end

  def read
  end
end
