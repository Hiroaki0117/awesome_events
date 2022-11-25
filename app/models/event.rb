class Event < ApplicationRecord
    validates :name, length: {maximum:50}, presence :true
    validates :place, length: {maximum:100}, presence :true
    validates :content, length: {maximum:2000}, presence :true
    validates :start_at, presence :true
    validates :end_at, presence :true
    validates :start_at_should_be_before_end_at 
    
    
    private
    
    def start_at_should_be_before_end_at
        return unless start_at && end_at

        if start_at >= end_at
            error.add("開始時間と衆力時間に不備があります")
        end
    end

    '

end
