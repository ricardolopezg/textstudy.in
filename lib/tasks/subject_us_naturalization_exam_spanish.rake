# SUBJECT
# US Naturalization Exam - Spanish
namespace :db do
  namespace :seed do
    Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |subject_us_naturalization_exam_spanish|
      task_name = File.basename(subject_us_naturalization_exam_spanish, '.rb').intern    
      desc "Load the seed data from db/seeds/#{task_name}.rb"
      task task_name => :environment do
        load(subject_us_naturalization_exam_spanish) if File.exist?(subject_us_naturalization_exam_spanish)
      end
    end
  end
end