class TestConts < ActiveRecord::Base
	def self.search(search)
  if search
    find_by_name(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find_by_name(:all)
  end
end
end
