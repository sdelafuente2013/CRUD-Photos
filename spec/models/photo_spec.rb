require 'rails_helper'

RSpec.describe Photo, 'create' do
  it 'La photo deberia contener un titulo' do
    photo = Photo.new()
    expect(photo.save).to be(false)
  end

  it "Deberia ser una instancia de Photo" do
    photo = Photo.new()
    expect(photo).to be_an_instance_of Photo
  end

  it 'Deberia dejarme añadir una photo que contenga un titulo' do
    photo = Photo.new(title: 'titulo_ejemplo')
    expect(photo.save).to be(true)
  end
end

RSpec.describe Photo, 'delete' do
  it 'Deberia poder eliminar una photo' do
    photo = Photo.new(title: 'titulo_ejemplo')
    photo.save
    expect(photo.destroy).to be(photo)
  end
end