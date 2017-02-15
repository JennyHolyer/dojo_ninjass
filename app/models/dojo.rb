class Dojo < ApplicationRecord
    has_many :ninjas
    validates :name, :city, :state, presence: true
    validates :name, :city, :state,length: { minimum: 2 }

    def self.showNames
        arr = []
        dojos = self.all

        dojos.each { |dojo| arr.push(dojo[:name]) }
        return arr
    end

end
