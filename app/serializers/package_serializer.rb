class PackageSerializer < ActiveModel::Serializer
  attributes :id, :location_name, :destination_name, :distance, :timeslot, :date, :reference_number
end
