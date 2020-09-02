json.extract! shippingorder, :id, :ourref, :fromcomp, :yourref, :shippingline, :containerno, :isocode, :festatus, :sealno, :blno, :drivername, :trucknumber, :driverid, :truckcompany, :condition, :created_at, :updated_at
json.url shippingorder_url(shippingorder, format: :json)
