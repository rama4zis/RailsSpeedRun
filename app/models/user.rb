class User < ApplicationRecord

    def evaluations
        return Evaluation.where(user_id: self.id).order('date ASC')
    end

end
