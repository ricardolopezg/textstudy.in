# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Subject.destroy_all
Question.destroy_all

# SUBJECTS
  subjects = [
    ["US Naturalization Exam", "Civics (History and Government)", "English", "In order to become a US citizen, immigrants must pass the Naturalization Test. During your naturalization interview with the USCIS, an officer will ask you to orally answer a set of Civics (History and Government) questions.\nYou must answer six out of ten civics questions correctly to be able to pass the civics test.\nPrepare for the exam with these questions.", "Civics (History and Government) knowledge is necessary to pass the US Naturalization test.\nPrepare with questions sent to your mobile phone via SMS."],
    ["Naturalización EE.UU.", "Civics (History and Government)", "Spanish", "Para hacerce ciudadano Americano, imigrantes deben pasar el Examen de Naturalización. Durante su entrevista con USCIS, el oficial le hará 10 preguntas sobre educación Cívica (Historia y Gobierno). Debe de contestar correctamente 6 de las 10 preguntas para pasar el examen. Preparate para el examen con éstas preguntas.", "Educación Cívica (Historia y Gobierno) es necesario para pasar el Examen de Naturalización de EE.UU. Prepárate con preguntas enviados a tu móvil via mensaje de texto."]
  ]

  subjects.each do | name, subsection, language, long_description, short_description |
    Subject.create(name: name, subsection: subsection, language: language, long_description: long_description, short_description: short_description)
  end




# QUESTIONS - US NATURALIZATION (ENGLISH)
  us_naturalization_en_questions = [
    ["What do we call the first ten amendments to the Constitution?\n1) The Bill of Rights\n2) The Bill of Wrongs\n3) The Bill of Chances \n4) The Bill of Junk", "1", "The first ten (10) amendments to the US Constitution are called the \"Bill of Rights.\" These amendments were ratified on December 15, 1791.", "rev. 02/16", "English"],

    ["What is the economic system in the United States?\n1) Communist economy \n2) Capitalist economy\n3) Socialist economy\n4) Somebody's economy", "2", "The US has a Capitalist (or Market) Economy in which individual producers and consumers determine the goods and services produced, along with their prices.", "rev. 02/16", "English"],

    ["What stops one branch of government from becoming too powerful?\n1) Separation of concerns \n2) Separation of powers \n3) Donald Trump\n4) Bananas ", "2", "The Constitution separates the government's power into 3 branches. This separation of powers means that each branch can block the actions of the other branches.", "rev. 02/16", "English"],

    ["What is an amendment?\n1) A change to the Constitution\n2) A change to your recipe list\n3) A change to voting\n4) Changing your license", "1", "An amendment is a change or addition to a legal or statutory document, such as the Constitution.", "rev. 02/16", "English"],

    ["According to the \"rule of law,\" no one is above the law.\n1) True \n2) False", "1", "No one is above the law. Leaders, government and citizens must follow the law.", "rev. 02/16", "English"],

    ["Who is in charge of the executive branch?\n1) The Secretary of State\n2) The President\n3) Congress\n4) The Chief Justice", "2", "The President of the United States is in charge of the executive branch.", "rev. 02/16", "English"],

    ["How many U.S. Senators are there?\n1) Fifty (50)\n2) One hundred (100)\n3) One hundred and fifty (150)\n4) Two hundred (200)", "2", "There are one hundred (100) U.S. Senators, two (2) for each state.", "rev. 02/16", "English"],

    ["We elect a U.S. Senator for how many years?\n1) Two (2)\n2) Three (5)\n3) Four (4)\n4) Six (6)", "4", "A U.S. Senator can hold office for a six (6) year term, and be relected an unlimited amount of times.", "rev. 02/16", "English"],

    ["Who is the Commander in Chief of the military?\n1) The President\n2) The General\n3) The Lieutenant\n4) The Colonol", "1", "The President is the Commander in Chief and is in charge of the country's armed forces.", "rev. 02/16", "English"],
    
    ["New York, Pennsylvannia and Tennessee are all part of the 13 original states.\n1) True\n2) False", "2", "The 13 original states are: New Hampshire, Massachusetts, Rhode Island, Connecticut, New York, New Jersey, Pennsylvania, Delaware, Maryland, Virginia, North Carolina, South Carolina and Georgia.", "rev. 02/16", "English"]
  ]

  us_naturalization_en_questions.each do | body, correct_answer, explanation, version, language |
    Question.create(subject_id: 2, body: body, correct_answer: correct_answer, explanation: explanation, version: version, language: language)
  end
