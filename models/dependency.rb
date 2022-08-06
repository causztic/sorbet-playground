# typed: strict
require 'sorbet-runtime'

class Dependency
  extend T::Sig

  sig {returns(String)}
  def self.response
    'not nil'
  end
end