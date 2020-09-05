require "application_system_test_case"

class DatacentersTest < ApplicationSystemTestCase
  setup do
    @datacenter = datacenters(:one)
  end

  test "visiting the index" do
    visit datacenters_url
    assert_selector "h1", text: "Datacenters"
  end

  test "creating a Datacenter" do
    visit datacenters_url
    click_on "New Datacenter"

    fill_in "Code", with: @datacenter.code
    fill_in "Country", with: @datacenter.country_id
    check "Servers available" if @datacenter.servers_available
    fill_in "Servers capacity", with: @datacenter.servers_capacity
    click_on "Create Datacenter"

    assert_text "Datacenter was successfully created"
    click_on "Back"
  end

  test "updating a Datacenter" do
    visit datacenters_url
    click_on "Edit", match: :first

    fill_in "Code", with: @datacenter.code
    fill_in "Country", with: @datacenter.country_id
    check "Servers available" if @datacenter.servers_available
    fill_in "Servers capacity", with: @datacenter.servers_capacity
    click_on "Update Datacenter"

    assert_text "Datacenter was successfully updated"
    click_on "Back"
  end

  test "destroying a Datacenter" do
    visit datacenters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Datacenter was successfully destroyed"
  end
end
