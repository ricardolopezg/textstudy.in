# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# SUBJECTS
  subjects = [
    ["US Naturalization Test", "Civics (History and Government)", "English"]
  ]

  subjects.each do | name, subsection, language |
    Subject.create(name: name, subsection: subsection, language: language)
  end




# QUESTIONS - US NATURALIZATION (ENGLISH)
  us_naturalization_en_questions = [
    ["What do we call the first ten amendments to the Constitution?", "The Bill of Rights", "The Bill of Wrongs", "The Bill of Chances", "The Bill of Junk", "The first ten (10) amendments to the US Constitution are called the \"Bill of Rights.\" These amendments were ratified on December 15, 1791.", "rev. 02/16", "English"],

    ["What is the economic system in the United States?", "Capitalist economy", "Communist economy", "Socialist economy", "Somebody's economy", "The US has a Capitalist (or Market) Economy in which individual producers and consumers determine the goods and services produced, along with their prices.", "rev. 02/16", "English"],

    ["What stops one branch of government from becoming too powerful?", "Separation of powers", "Separation of concerns", "Bananas", "Donald Trump", "The Constitution separates the government’s power into 3 branches. This separation of powers means that each branch can block the actions of the other branches.", "rev. 02/16", "English"],

    ["What is an amendment?", "A change to the Constitution", "A change to voting", "A change to your recipe list", "Changing your license", "An amendment is a change or addition to a legal or statutory document, such as the Constitution.", "rev. 02/16", "English"],

    ["According to the \"rule of law,\" no one is above the law.", "True", "False", "", "", "No one is above the law. Leaders, government and citizens must follow the law.", "rev. 02/16", "English"],

    ["Who is in charge of the executive branch?", "The President", "The Chief Justice", "Congress", "The Secretary of State", "The President of the United States is in charge of the executive branch.", "rev. 02/16", "English"],

    ["How many U.S. Senators are there?", "One hundred (100)", "Fifty (50)", "One hundred and fifty (150)", "Two hundred (200)", "There are one hundred (100) U.S. Senators, two (2) for each state.", "rev. 02/16", "English"],

    ["We elect a U.S. Senator for how many years?", "Six (6)", "Four (4)", "Two (2)", "Three (5)", "A U.S. Senator can hold office for a six (6) year term, and be relected an unlimited amount of times.", "rev. 02/16", "English"],

    ["Who is the Commander in Chief of the military?", "The President", "The General", "The Colonol", "The Lieutenant", "The President is the Commander in Chief and is in charge of the country's armed forces.", "rev. 02/16", "English"],
    
    ["New York, Pennsylvannia and Tennessee are all part of the 13 original states.", "False", "True", "", "", "The 13 original states are: New Hampshire, Massachusetts, Rhode Island, Connecticut, New York, New Jersey, Pennsylvania, Delaware, Maryland, Virginia, North Carolina, South Carolina and Georgia.", "rev. 02/16", "English"]
  ]

  us_naturalization_en_questions.each do | question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, explanation, version, language |
    Question.create(subject_id: 1, question: question, correct_answer: correct_answer, wrong_answer1: wrong_answer1, wrong_answer2: wrong_answer2, wrong_answer3: wrong_answer3, explanation: explanation, version: version, language: language)
  end
