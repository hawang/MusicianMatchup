class AddTestData < ActiveRecord::Migration
  def self.up
    
    Band.delete_all
    
    Band.create(:name => 'The Kinks',
                :description =>%{<p>we love to rock</p>},
                :lookfor_ints => "trumpet",
                :lookfor_gender => "male")
                
    Band.create(:name => 'Sublime',
                :description =>%{<p>we love reggae</p>},
                :lookfor_ints => "trumpet",
                :lookfor_gender => "female")
                
    Band.create(:name => 'Flobots',
                :description =>%{<p>hail Denver!</p>},
                :lookfor_ints => "banjo",
                :lookfor_gender => "male")
                
    Band.create(:name => 'Kargyraa Moaners',
                :description =>%{<p>chir lir lir</p>},
                :lookfor_ints => "doshpulur",
                :lookfor_gender => "male")
  end

  def self.down
    Band.delete_all
  end
end
