class CollaboratorsController < ApplicationController
   def list
   	@collaboworks = CollaboratorWork.all
   end

   def search
    #@grants = Collaborator.find(:all, :conditions => ['names LIKE ?', params[:search]])
    @grants = Collaborator.joins(:names).where(:id => 1)
   end

   def show
   end

   def new
   end

   def create
   end

   def edit
   end

   def update
   end

   def delete
   end

  def single
        @collabo = Collaborator.all
        @collaboworks = CollaboratorWork.all
        @collaboinfos = CollaboratorInfo.all
        @collabocontacts = CollaboratorContact.all
  end

  def teams
        @collabo = Collaborator.all
  end
end
