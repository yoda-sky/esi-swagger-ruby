=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::DeleteFleetsFleetIdWingsWingIdNotFound
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DeleteFleetsFleetIdWingsWingIdNotFound' do
  before do
    # run before each test
    @instance = SwaggerClient::DeleteFleetsFleetIdWingsWingIdNotFound.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeleteFleetsFleetIdWingsWingIdNotFound' do
    it 'should create an instance of DeleteFleetsFleetIdWingsWingIdNotFound' do
      expect(@instance).to be_instance_of(SwaggerClient::DeleteFleetsFleetIdWingsWingIdNotFound)
    end
  end
  describe 'test attribute "error"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end