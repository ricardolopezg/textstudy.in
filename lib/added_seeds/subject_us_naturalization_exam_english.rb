# SUBJECT
# US Naturalization Exam - English

  subjects = [
    ["US Naturalization Exam", "Civics (History and Government)", "English", "In order to become a US citizen, immigrants must pass the Naturalization Test. During your naturalization interview with the USCIS, an officer will ask you to orally answer a set of Civics (History and Government) questions.\nYou must answer six out of ten civics questions correctly to be able to pass the civics test.\nPrepare for the exam with these questions.", "Civics (History and Government) knowledge is necessary to pass the US Naturalization test.\nPrepare with questions sent to your mobile phone via SMS."]
  ]

  subjects.each do | name, subsection, language, long_description, short_description |
    Subject.create(name: name, subsection: subsection, language: language, long_description: long_description, short_description: short_description)
  end