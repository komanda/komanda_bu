class Event
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::MultiParameterAttributes
  
  default_scope     desc(:date)
  scope :upcoming,  where(:date.gte => Date.current())
  scope :past,      where(:date.lt => Date.current())
  
  field :name,        type: String
  field :date,        type: Date, default: Date.current()
  field :time,        type: Time, default: Time.now
  field :flyer,       type: String
  field :description, type: String
  field :address,     type: String
  field :price,       type: Float, default: 15.00
  field :views,       type: Integer, default: 0
  field :going,       type: Array, default: []
  field :ratings,     type: Hash, default: {}
  field :tickets,     type: Hash, default: {}
  field :_id,         type: String, default: ->{ name }
  
  index({ id: 1})
  has_and_belongs_to_many :users
  # has_many :comments, as: :commentable, dependent: :destroy
  validates_presence_of :name, :date, :time, :flyer, :description, :address
  
  def upcoming?
    self.date >= Date.current()
  end
  
  def join(user)
    self.users << user unless self.users.include?(user)
  end
end
