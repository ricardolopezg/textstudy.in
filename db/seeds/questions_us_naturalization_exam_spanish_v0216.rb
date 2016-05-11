# REMEMBER TO FIRST SEED THE SUBJECT INTO PRODUCTION AND THEN GET THE CORRESPONDING PRODUCTION SUBJECT ID TO INPUT INTO THE QUESTION.CREATE AT THE BOTTOM OF THIS FILE
# QUESTIONS
# US Naturalization Exam - Spanish - rev. 02/16


  us_naturalization_es_questions = [
    ["What do we call the first ten amendments to the Constitution?\n1) The Bill of Rights\n2) The Bill of Wrongs\n3) The Bill of Chances \n4) The Bill of Junk", "1", "The first ten (10) amendments to the US Constitution are called the \"Bill of Rights.\" These amendments were ratified on December 15, 1791.", "rev. 02/16", "English"],
  ]

  us_naturalization_es_questions.each do | body, correct_answer, explanation, version, language |
    Question.create(subject_id: 2, body: body, correct_answer: correct_answer, explanation: explanation, version: version, language: language)
  end
