class Tema < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :tag
end
