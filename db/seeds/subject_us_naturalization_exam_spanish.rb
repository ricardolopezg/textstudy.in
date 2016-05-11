# SUBJECT
# US Naturalization Exam - Spanish

  subjects = [
    ["Naturalización EE.UU.", "Civics (History and Government)", "Spanish", "Para hacerce ciudadano Americano, imigrantes deben pasar el Examen de Naturalización. Durante su entrevista con USCIS, el oficial le hará 10 preguntas sobre educación Cívica (Historia y Gobierno). Debe de contestar correctamente 6 de las 10 preguntas para pasar el examen. Preparate para el examen con éstas preguntas.", "Educación Cívica (Historia y Gobierno) es necesario para pasar el Examen de Naturalización de EE.UU. Prepárate con preguntas enviados a tu móvil via mensaje de texto."]
  ]

  subjects.each do | name, subsection, language, long_description, short_description |
    Subject.create(name: name, subsection: subsection, language: language, long_description: long_description, short_description: short_description)
  end