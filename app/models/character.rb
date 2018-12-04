class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  belongs_to :network

  def say_that_thing_you_say
    "#{name} always says: #{catchphrase}"
  end

  def build_show(show)
    show = Show.find_or_create_by(show)
    self.show_id = show.id
    show
  end

end
