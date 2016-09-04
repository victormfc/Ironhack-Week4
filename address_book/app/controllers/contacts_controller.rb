class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(created_at: :desc)
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def filter
    search_term = params[:search]
    @contacts_searched = Contact.where("name LIKE ?", "#{search_term}%")
    render 'search'
  end

  def create
    contact = Contact.new(contact_params)
    contact.save
    redirect_to '/contacts'
  end

  def make_favorite
    contact = Contact.find(params[:id])
    contact.update_attributes(favorite: true)
    redirect_to '/contacts'
  end

  def unfavorite
    contact = Contact.find(params[:id])
    contact.update_attributes(favorite: false)
    redirect_to '/contacts'
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :address, :phone_number, :email, :avatar)
  end
end
