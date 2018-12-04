class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(ntwk)
    network = Network.find_or_create_by(ntwk)
    self.network_id = network.id
    self
  end

  def network
    if network_id.nil?
      Network.find_or_create_by(self.network_id)
    else
      Network.find(self.network_id)
    end
  end
end
