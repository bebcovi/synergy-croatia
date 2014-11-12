require "carrierwave_backgrounder"
require "sucker_punch"

CarrierWave::Backgrounder.configure do |config|
  config.backend :sucker_punch, queue: :carrierwave
end

SuckerPunch.config do
  queue name: :carrierwave, worker: CarrierWave::Workers::StoreAsset, workers: 2
  self.logger = nil
end
