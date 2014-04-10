require 'spec_helper'

describe Project do
  it "does not allow duplicate projects" do
    contact = Project.create()
  end
end
