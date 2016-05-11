# SUBJECT
# US Naturalization Exam - English
namespace :db do
  namespace :seed do
    Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |subject_us_naturalization_exam_english|
      task_name = File.basename(subject_us_naturalization_exam_english, '.rb').intern    
      desc "Load the seed data from db/seeds/#{task_name}.rb"
      task task_name => :environment do
        load(subject_us_naturalization_exam_english) if File.exist?(subject_us_naturalization_exam_english)
      end
    end
  end
end