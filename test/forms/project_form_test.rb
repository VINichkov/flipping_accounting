require "test_helper"

class ProjectFormTest < ActiveSupport::TestCase

  test 'new form object' do
    project_form = ProjectForm.new()
    assert project_form.to_h == default_hash
  end

  test 'save object' do
    project_form = ProjectForm.new()
    project_form.save
    puts project_form
    project_form.errors.each do |error|
      puts error.full_message
    end
    assert false
  end

  private

  def default_hash
    return {
      :name=>"Новый проект 2",
      :city=>nil,
      :project_type=>nil,
      :start_price=>0.0,
      :is_credit=>false,
      :initial_fee=>0.0,
      :mortgage_interest=>0.0,
      :project_duration=>120,
      :additional_expenses=>0.0,
      :monthly_payment=>0.0}
  end
end