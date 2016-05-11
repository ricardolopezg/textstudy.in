# QUESTIONS
# US Naturalization Exam - English - rev. 02/16
namespace :db do
  namespace :seed do
    Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |questions_us_naturalization_exam_english_v0216|
      task_name = File.basename(questions_us_naturalization_exam_english_v0216, '.rb').intern    
      desc "Load the seed data from db/seeds/#{task_name}.rb"
      task task_name => :environment do
        load(questions_us_naturalization_exam_english_v0216) if File.exist?(questions_us_naturalization_exam_english_v0216)
      end
    end
  end
end