require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "init state" do
    project = Project.new()
    assert project.state == 'new'
  end

  test "event next state" do
    project = Project.new()
    project.next
    assert project.state == 'buy'
  end

  test "event close" do
    project = Project.new()
    project.close
    assert project.state == 'close'
  end


end
