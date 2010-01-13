class AddTestMusic2 < ActiveRecord::Migration
  def self.up
    Musician.delete_all
    Musician.create(:name => 'Giacomo Guilizzoni', 
                    :age => 33,
                    :gender => "male",
                    :instrument => "trumpet")
    
    Musician.create(:name => 'Guido Jack', 
                    :age => 23,
                    :gender => "male",
                    :instrument => "trumpet")
    
    Musician.create(:name => 'Mariah Maclachlan', 
                    :age => 34,
                    :gender => "female",
                    :instrument => "trumpet")
    
    Musician.create(:name=> 'Kongar-ol Ondar',
                    :age => 60,
                    :gender => "male",
                    :instrument => "doshpulur")
                    
    Musician.create(:name => 'Bela Fleck', 
                    :age => 51,
                    :gender => "male",
                    :instrument => "banjo")
  end

  def self.down
    Musician.delete_all
  end
end
