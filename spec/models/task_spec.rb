require 'rails_helper'

RSpec.describe Task, type: :model do
  subject { described_class.new }

  describe "Validations"do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
  end

  describe "Whit valid attributes" do
    it "should create a task" do
      subject.name = "Crear usuario"
      subject.description = "Crear un usuario admin"
      subject.state = 0

      expect(subject).to be_valid
    end
  end
end
