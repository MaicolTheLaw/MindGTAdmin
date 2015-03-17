class Collaborator < ActiveRecord::Base 
  def self.search(search)
  search_condition = "% #{search} %" 
  find_by(:all, :conditions => ['names LIKE ? OR last_names LIKE ?', search_condition, search_condition])
  end
end
