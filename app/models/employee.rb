class Employee < ActiveRecord::Base
def self.search(search)
  if search
    find_by_names(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find_by_names(:all)
  end
end
end
