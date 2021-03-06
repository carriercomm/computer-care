class Order < ActiveRecord::Base
  has_many :order_services, :dependent => :destroy
  has_one :invoice
  has_one :student_code
  attr_accessible :building, :date, :email, :first_name, :last_name, :postcode, :street, :telephone, :total_cost, :town, :paid, :agreed_to_terms, :stripe_charge_id
  before_create :randomize_id

  private
    def randomize_id
      begin
        self.id = SecureRandom.random_number(1_000_000)
      end while Order.where(:id => self.id).exists?
    end
end
