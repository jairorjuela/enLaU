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

  describe "Whit a invalid attributes" do
    it "is invalid if state is nil" do
      subject.state = nil

      expect(subject).to be_invalid
      expect(subject.errors[:state]).to eq(["is not a number"])
    end

    it "is invalid if name is nil" do
      subject.name = nil

      expect(subject).to be_invalid
      expect(subject.errors[:name]).to eq(["El nombre es obligatorio"])
    end
  end
end
