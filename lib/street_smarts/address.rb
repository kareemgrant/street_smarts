module StreetSmarts
  class Address
    def self.verify(address)
      APIResource.post(address)
    end
  end
end
