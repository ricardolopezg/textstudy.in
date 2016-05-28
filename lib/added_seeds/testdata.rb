# REMEMBER TO FIRST SEED THE SUBJECT INTO PRODUCTION AND THEN GET THE CORRESPONDING PRODUCTION SUBJECT ID TO INPUT INTO THE QUESTION.CREATE AT THE BOTTOM OF THIS FILE
# QUESTIONS
# US Naturalization Exam - English - rev. 02/16


  us_naturalization_en_questions = [
  # 1 What is the supreme law of the land?
    ["What is the supreme law of the land?\n1) the Ley of the Land\n2) the Article of Law\n3) the Constitution\n4) Article One of the Constitution", "3", "The Constitution is the \"supreme law of the land\" and establishes the basic principles of the US govt. It lists fundamental rights for people living in the USA.", "rev. 02/16", "English"],

    ["The \"supreme law of the land\" is not the Constitution.\n1) True\n2) False", "2", "The Constitution is the \"supreme law of the land\" and establishes the basic principles of the US govt. It lists fundamental rights for people living in the USA.", "rev. 02/16", "English"]
  ]

  us_naturalization_en_questions.each do | body, correct_answer, explanation, version, language |
    Question.create(subject_id: 3, body: body, correct_answer: correct_answer, explanation: explanation, version: version, language: language, active: true)
  end
