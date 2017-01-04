class BoardGame < ActiveRecord::Base
  belongs_to :category

  def self.search(search_params)
    joins(:category).where("board_games.name ILIKE ? OR categories.name ILIKE ?", "%#{search_params}%", "%#{search_params}%")
  end
end
