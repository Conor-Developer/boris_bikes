require_relative '../lib/boris_bike.rb'

describe Van do

  it "Check object is an instance of Van" do
    expect(subject).to be_an_instance_of(Van)
  end

  it "collects broken bikes" do
    double(:report_broken => false)
    double(:dock => :bike)
    expect(subject.collect_broken_bikes).to 
  end
end