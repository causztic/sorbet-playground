# typed: true
require_relative 'dependency'

class TestModel
  def call_dependent_method
    if Dependency.response.nil?
      'something'
    else
      'another thing'
    end
  end
end