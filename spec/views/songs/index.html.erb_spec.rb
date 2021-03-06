require 'rails_helper'

RSpec.describe 'songs/index' do
  before do
    Artist.destroy_all
    Song.destroy_all
    @song = Song.create(title: "Bullet the Blue Sky", artist_name: "U2")
    allow(view).to receive(:display_artist).and_return("They Might Be Giants")
    assign(:songs, Song.all)
  end

end
