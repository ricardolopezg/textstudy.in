# QUESTIONS
# US Naturalization Exam - English - rev. 02/16



# namespace :db do
#   namespace :seed do
#     Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |testdata|
#       puts "************** Bout to make some records! **************"
#       task_name = File.basename(testdata, '.rb').intern    
#       desc "Load the seed data from db/seeds/#{task_name}.rb"
#       task task_name => :environment do
#         load(testdata) if File.exist?(testdata)
#       end
#     end
#   end
# end