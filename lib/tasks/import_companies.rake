require 'import'

namespace :db do
  desc "Import companies from CSV"
  task import_companies: :environment do
    import_companies
  end
end
