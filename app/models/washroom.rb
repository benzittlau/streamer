class Washroom < ActiveRecord::Base
  has_many :washroom_states

  validates :name, presence: true, uniqueness: true

  def state
    washroom_states.last.state
  end

  def open
    washroom_states.create! state: 'open'
    commit_to_firebase
  end

  def close
    washroom_states.create! state: 'closed'
    commit_to_firebase
  end

  def commit_to_firebase
    Firebase.update("washrooms/#{name}", { :state => state , :id => id, :name => name})
  end
end
