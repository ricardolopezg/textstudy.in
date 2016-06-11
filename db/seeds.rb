# REMEMBER TO FIRST SEED THE SUBJECT INTO PRODUCTION AND THEN GET THE CORRESPONDING PRODUCTION SUBJECT ID TO INPUT INTO THE QUESTION.CREATE AT THE BOTTOM OF THIS FILE

# SUBJECT
# US Naturalization Exam - English

  subjects = [
    ["US Naturalization Exam", "Civics (History and Government)", "English", "In order to become a US citizen, immigrants must pass the Naturalization Test. During your naturalization interview with the USCIS, an officer will ask you to orally answer a set of Civics (History and Government) questions.\nYou must answer six out of ten civics questions correctly to be able to pass the civics test.\nPrepare for the exam with these questions.", "Civics (History and Government) knowledge is necessary to pass the US Naturalization test.\nPrepare with questions sent to your mobile phone via SMS."]
  ]

  subjects.each do | name, subsection, language, long_description, short_description |
    Subject.create(name: name, subsection: subsection, language: language, long_description: long_description, short_description: short_description)
  end

# REMEMBER TO FIRST SEED THE SUBJECT INTO PRODUCTION AND THEN GET THE CORRESPONDING PRODUCTION SUBJECT ID TO INPUT INTO THE QUESTION.CREATE AT THE BOTTOM OF THIS FILE
# QUESTIONS
# US Naturalization Exam - English - rev. 02/16


  us_naturalization_en_questions = [
  # 1 What is the supreme law of the land?
    ["What is the supreme law of the land?\n1) the Ley of the Land\n2) the Article of Law\n3) the Constitution\n4) Article One of the Constitution", "3", "3 - The Constitution is the \"supreme law of the land\" & establishes basic principles of the US govt. It lists fundamental rights for people living in the USA.", "rev. 02/16", "English"],

    ["The \"supreme law of the land\" is not the Constitution.\n1) True\n2) False", "2", "2 - The Constitution is the \"supreme law of the land\" & establishes basic principles of the US govt. It lists fundamental rights for people living in the USA.", "rev. 02/16", "English"],

    ["Laws made in the United States must follow the Constitution.\n1) True\n2) False", "1", "1 - The Constitution is the \"supreme law of the land\" & establishes basic principles of the US govt. It lists fundamental rights for people living in the USA.", "rev. 02/16", "English"],
  # 2 What does the Constitution do?
    ["What does the Constitution do?\n1) defines the government\n2) dismantles the government\n3) joins power between the national government and state governments.", "1", "1 - The Constitution divides govt power between the national and state governments. It explains the power of the executive, legislative and judicial branches.", "rev. 02/16", "English"],

    ["The Constitution doesn't protect the basic rights of Americans.\n1) True\n2) False", "2", "2 - The First 10 amendments of the Constitution (\"Bill of Rights\") established the individual rights and liberties of all Americans.", "rev. 02/16", "English"],

    ["What does the Constitution do?\n1) sets up the government\n2) defines the government\n3) protects basic rights of Americans\n4) all of the above", "4", "4 - The Constitution divides govt power between the national and state governments. It explains the power of the executive, legislative and judicial branches.", "rev. 02/16", "English"],
  # 3 The idea of self-government is in the first three words of the Constitution. What are these words?
    ["The idea of self-government is in the first three words of the Constitution. What are these words?\n1) We the Citizens\n2) We the Humans\n3) We the People", "3", "3 - With the words \"We the People,\" the Constitution states that the people set up the government, which works for the people & protects the rights of people.", "rev. 02/16", "English"],

    ["The government works for the people and protects the rights of people.\n1) True\n2) False", "1", "1 - The government works for the people and protects the rights of people. In the USA, the power to govern comes from the people, who are the highest power.", "rev. 02/16", "English"],

    ["With the words \"We the ____,\" the Constitution states that the people set up the government.\n1) Government\n2) People\n3) Citizens\n4) Humans", "2", "2 - With the words \"We the People,\" the Constitution states that the people set up the government, which works for the people & protects the rights of people.", "rev. 02/16", "English"],
  # 4 What is an amendment?
    ["What is an amendment?\n1) A change to the Constitution\n2) A change to your recipe list\n3) A change to voting\n4) Changing your license", "1", "1 - An amendment is a change or addition to a legal or statutory document, such as the Constitution.", "rev. 02/16", "English"],

    ["An amendment is not a change to the Constitution\n1) True\n2) False", "2", "2 - An amendment is a change or addition to a legal or statutory document, such as the Constitution.", "rev. 02/16", "English"],

    ["Congress could pass amendments to the Constitution any time they want.\n1) True\n2) False", "2", "2 - Congress could pass amendments in only two ways: by a 2/3 vote in the US Senate and the House of Representatives or by a special convention (2/3 of states).", "rev. 02/16", "English"],
  # 5 What do we call the first ten amendments to the Constitution?
    ["What do we call the first ten amendments to the Constitution?\n1) The Bill of Rights\n2) The Bill of Wrongs\n3) The Bill of Chances \n4) The Bill of Junk", "1", "1 - The first ten (10) amendments to the US Constitution are called the \"Bill of Rights.\" These amendments were ratified on December 15, 1791.", "rev. 02/16", "English"],

    ["The Bill of Rights consists of the first ___ Amendments of the Constitution.\n1) 10\n2) 5\n3) 11\n4) 15", "1", "1 - The Bill of Rights is the first 10 amendments to the Constitution. Some of these rights include freedom of expression, the right to bear arms and more.", "rev. 02/16", "English"],

    ["James Madison, one of the Framers of the Constitution, wrote a list of individual rights and limits on the government, called the Bill of Rights.\n1) True\n2) False", "1", "1 - James Madison wrote the Bill of Rights because many Americans believed that the Constitution should guarantee the rights of the people, and they wanted a list of all the things a government could not do.", "rev. 02/16", "English"],
  # 6 What is one right or freedom from the First Amendment?
    ["What is one right or freedom from the First Amendment?\n1) Acting\n2) Petition your peers\n3) Speech\n4) Congregations", "3", "3 - The First Amendment of the Bill of Rights protects a person's right to freedom of expression, religion, free speech and the right to petition the government.", "rev. 02/16", "English"],

    ["The Second Amendment of the Bill of Rights protects a person's right to freedom of expression, religion, free speech and the right to petition the government.\n1) True\n2) False", "2", "2 - The First Amendment of the Bill of Rights protects a person's right to freedom of expression, religion, free speech and the right to petition the government.", "rev. 02/16", "English"],

    ["What is one right or freedom from the First Amendment?\n1) speech\n2) religion\n3) assembly\n4) press\n5) petition the government\n6) all of the above", "6", "6 - The First Amendment protects a person's right to freedom of expression, religion, free speech and the right to petition the government.", "rev. 02/16", "English"],
  # 7 How many amendments does the Constitution have?
    ["How many amendments does the Constitution have?\n1)27 \n2)25 \n3)29 \n4)26", "1", "1 - The first 10 amendments to the Constitution are called the Bill of Rights. They were added in 1791. Since then, 17 more amendments have been added.", "rev. 02/16", "English"],

    ["The Constitution currently has 27 amendments.\n1) True\n2) False", "1", "1 - The first 10 amendments to the Constitution are called the Bill of Rights. They were added in 1791. Since then, 17 more amendments have been added.", "rev. 02/16", "English"],

    ["The Constitution currently has 10 amendments.\n1) True\n2) False", "2", "2 - The first 10 amendments to the Constitution are called the Bill of Rights. They were added in 1791. Since then, 17 more amendments have been added.", "rev. 02/16", "English"],
  # 8 What did the Declaration of Independence do?
    ["What did the Declaration of Independence do?n\1) announced our independence from Great Britain n\2) declared our war against Great Britainn\3) create fireworks", "1", "1 - In the Declaration of Independence, Jefferson wrote a list of complaints the colonists had against the King of England. He ended with the statement that the colonies are, and should be, free and independent states.", "rev. 02/16", "English"],

    ["The Declaration of Independence stated the US was free from Great Britain by announcing and declaring independence.\n1) True\n2) False", "1", "1 - In the Declaration of Independence, Jefferson wrote a list of complaints the colonists had against the King of England. He ended with the statement that the colonies are, and should be, free and independent states.", "rev. 02/16", "English"],

    ["The Declaration of Independence states that nobody is created equal and have \"certain unalienable rights.\"\n1) True\n2) False", "2", "2 - The Declaration of Independence states that all people are created equal and have \"certain unalienable rights.\"", "rev. 02/16", "English"],
  # 9 What are two rights in the Declaration of Independence?
    ["What are two rights in the Declaration of Independence?\n1) life and freedom\n2) life and liberty \n3) pursuit of joy and life \n4) joy and the pursuit of life", "2", "2 - The Declaration of Independence lists 3 rights that are considered to be natural & \"unalienable\": the right to life, liberty and the pursuit of happiness.", "rev. 02/16", "English"],

    ["The Founding Fathers believed in the right to life, liberty, and the pursuit of happiness.\n1) True\n2) False", "1", "1 - The Declaration of Independence lists 3 rights that are considered to be natural & \"unalienable\": the right to life, liberty and the pursuit of happiness.", "rev. 02/16", "English"],

    ["What is one right in the Declaration of Independence?\n1) life\n2) freedom \n3) pursuit of happiness \n4) all of the above", "4", "4 - The Declaration of Independence lists 3 rights that are considered to be natural & \"unalienable\": the right to life, liberty and the pursuit of happiness.", "rev. 02/16", "English"],
  # 10 What is freedom of religion?
    ["Congress shall make no law respecting an establishment of religion, or prohibiting the free exercise thereof.\n1) True\n2) False", "1", "1 - The First Amendment states, \"Congress shall make no law respecting an establishment of religion, or prohibiting the free exercise thereof.\"", "rev. 02/16", "English"],

    ["Every person can choose to practice any religion, or not practice a religion.\n1) True\n2) False", "1", "1 - The First Amendment to the Constitution, as part of the Bill of Rights, guarantees freedom of religion.", "rev. 02/16", "English"],

    ["The First Amendment prohibits Congress from setting up an official U.S. religion, and protects citizens' rights to hold any religious belief.\n1) True\n2) False", "1", "1 - The First Amendment prohibits Congress from setting up an official US religion, and protects citizens' rights to hold any religious belief, or none at all.", "rev. 02/16", "English"],
  # 11 What is the economic system in the United States?
    ["What is the economic system in the United States?\n1) Communist economy \n2) Capitalist economy\n3) Socialist economy\n4) Somebody's economy", "2", "2 - The US has a Capitalist (or Market) Economy in which individual producers and consumers determine the goods and services produced, along with their prices.", "rev. 02/16", "English"],

    ["The economic system of the United States is not a market economy.\n1) True\n2) False", "2", "2 - The US operates under a market economy, where competition and profit motivate businesses, and prices can be negotiated by businesses and consumers.", "rev. 02/16", "English"],

    ["The US operates under a market economy, where competition and profit motivate businesses.\n1) True\n2) False", "1", "1 - The economic system of the US is capitalism. In the American economy, most businesses are privately owned. Competition and profit motivate businesses.", "rev. 02/16", "English"],
  # 12 What is the "rule of law"?
    ["According to the \"rule of law,\" no one is above the law.\n1) True \n2) False", "1", "1 - No one is above the law. Leaders, government and citizens must follow the law.", "rev. 02/16", "English"],

    ["What is the \"rule of law\"?\n1) Leaders must obey the law.\n2) Government has its own law.\n3) Some people must follow the law.\n4) Leaders obey peoples' law", "1", "1 - No one is above the law. Leaders, government and citizens must follow the law.", "rev. 02/16", "English"],

    ["John Adams, one of the Founding Fathers, wrote that our country is, \"a government of laws, and not of men.\" Each person is above the law.\n1) True\n2) False", "2", "2 - John Adams, one of the Founding Fathers, wrote that our country is, \"a government of laws, and not of men.\" No person or group is above the law.", "rev. 02/16", "English"],
  # 13 Name one branch or part of the government.
    ["Name one branch or part of the government.\n1) Congress\n2) Legislative\n3) President\n4) Executive\n5) The courts\n6) Judicial\n7) All of the above", "7", "7 - Congress, the President, the courts and the three branches (legislative, executive, and judicial) are all part of government", "rev. 02/16", "English"],

    ["Name the three branches of government.\n4) Executive, Lawmaking and Judicial\n4) Legislative, Assistant, and Judicial\n4) Legislative, Executive, and Judicial", "4", "4 - The Constitution establishes three branches of government: legislative, executive, and judicial.", "rev. 02/16", "English"],

    ["Article I explains that Congress (the Senate and the House of Representatives) makes laws and belongs to this branch.\n1) Legislative\n2) Executive\n3) Judicial", "1", "1 - Article I of the Constitution explains that Congress (the Senate and the House of Representatives) makes laws and is the legislative branch of US govt.", "rev. 02/16", "English"],

    ["Article II of the Constitution established this branch to enforce the laws that Congress passes.\n1) Legislative\n2) Executive\n3) Judicial", "2", "2 - Article II of the Constitution established the executive branch to enforce the laws that Congress passes and make sure all the people follow the laws of the US.", "rev. 02/16", "English"],
    
    ["Article III of the Constitution gave this branch authority to ensure govt laws and actions follow the Constitution.\n1) Legislative\n2) Executive\n3) Judicial", "3", "3 - Article III of the Constitution places the highest judicial power in the Supreme Court to the judicial branch.", "rev. 02/16", "English"],

    ["The vice president and members of the president's cabinet are part of the legislative branch.\n1) True\n2) False", "2", "2 - The vice president and members of the president's cabinet are part of the executive branch.", "rev. 02/16", "English"],
  # 14 What stops one branch of government from becoming too powerful?
    ["What stops one branch of government from becoming too powerful?\n1) Separation of concerns \n2) Separation of powers \n3) Donald Trump\n4) Bananas ", "2", "2 - The Constitution separates the govt's power into 3 branches. This separation of powers means that each branch can block the actions of the other branches.", "rev. 02/16", "English"],

    ["Checks and balances help prevent one branch of government from becoming too powerful\n1) True\n2) False", "1", "1 - The separation of govt into 3 branches creates a system of checks & balances. Each branch can block, or threaten to block, the actions of other branches.", "rev. 02/16", "English"],

    ["The government's separation of powers does not limit its power or prevent the government from violating the rights of the people.\n1) True\n2) False", "2", "2 - The separation of powers limits the power of the government and prevents the government from violating the rights of the people.", "rev. 02/16", "English"],
  # 15 Who is in charge of the executive branch?
    ["Who is in charge of the executive branch?\n1) The Secretary of State\n2) The President\n3) Congress\n4) The Chief Justice", "2", "2 - The President of the United States is in charge of the executive branch.", "rev. 02/16", "English"],

    ["The Chief Justice is in charge of the executive branch\n1) True\n2) False", "2", "2 - The head of the executive branch is the president. The president is both the head of state and the head of government.", "rev. 02/16", "English"],

     ["The vice president is in charge of the executive branch\n1) True\n2) False", "2", "2 - The head of the executive branch is the president. The president is both the head of state and the head of government.", "rev. 02/16", "English"],
  # 16 Who makes federal laws?
    ["Who makes federal laws?\n1) The President\n2) Senate and House (of Representatives)\n3) (U.S. or national) Judiciary \n4) All of the above", "2", "2 - Congress, Senate and House (of Representatives) or (U.S. or national) legislature make federal laws.", "rev. 02/16", "English"],

    ["Who makes federal laws?\n1) Congress\n2) Senate and House (of Representatives)\n3) (U.S. or national) legislature \n4) All of the above", "4", "4 - Congress, Senate and House (of Representatives) or (U.S. or national) legislature make federal laws.", "rev. 02/16", "English"],
  # 17 What are the two parts of the U.S. Congress?
    ["What are the two parts of the US Congress?\n1) Congress and the Senate\n2) the Senate and House (of Representatives)\n3) the Senate and House (of Executives)", "2", "2 - Congress is divided into two parts, the Senate and the House of Representatives.", "rev. 02/16", "English"],

    ["The system of checks and balances works in Congress.\n1) True\n2) False", "1", "1 - Only the Senate has the power to reject a treaty signed by the president and only the House of Representatives can introduce a tax bill for Americans.", "rev. 02/16", "English"],

    ["How many parts is Congress divided into?\n1) two\n2) three\n3) four\n4) five\n5) six", "1", "1 - Congress is divided into two parts: the Senate and the House of Representatives.", "rev. 02/16", "English"],
  # 18 How many U.S. Senators are there?
    ["How many U.S. Senators are there?\n1) Fifty (50)\n2) One hundred (100)\n3) One hundred and fifty (150)\n4) Two hundred (200)", "2", "2 - There are one hundred (100) U.S. Senators, two (2) for each state.", "rev. 02/16", "English"],

    ["Larger states have more power than smaller states in the Senate.\n1) True\n2) False", "2", "2 - All states have equal power in the Senate because each state has the same number of senators, two per state.", "rev. 02/16", "English"],

    ["New York, Texas, California and Florida have 5 senators each.\n1) True\n2) False", "2", "2 - All states have equal power in the Senate because each state has the same number of senators, two per state.", "rev. 02/16", "English"],
  # 19 We elect a U.S. Senator for how many years?
    ["We elect a U.S. Senator for how many years?\n1) Two (2)\n2) Three (5)\n3) Four (4)\n4) Six (6)", "4", "4 - A U.S. Senator can hold office for a six (6) year term, and be relected an unlimited amount of times.", "rev. 02/16", "English"],

    ["What is the term limit for a US Senator?\n1) one term\n2) two terms\n3) three\n4) no limit", "4", "4 - The Constitution puts no limit on the number of terms a senator may serve.", "rev. 02/16", "English"],
  # 20 Who is one of your state's U.S. Senators now?
    ["Who is one of your state's US Senators now?\n1) Answers will vary. Each State has different senators. Type \"1\" to find out who represents your state", "9", "For a complete list of US senators and the states they represent, go to www.senate.gov.", "rev. 02/16", "English"],
  # 21 The House of Representatives has how many voting members?
    ["The House of Representatives has how many voting members?\n1) 435\n2) 245\n3) 345\n4) 50\n5) 100", "1", "1 - Since 1912, the House of Representatives has had 435 voting members. The number of representatives from each state depends on the population of the state.", "rev. 02/16", "English"],

    ["In the House of Representatives, each state must have at least one representative\n1) True\n2) False", "1", "1 - Each state must have at least one representative in the House. Beyond that, the number of reps from each state depends on the population of the state.", "rev. 02/16", "English"],

    ["In the House of Representatives, how are the number of representatives for each state calculated?\n1) income taxes\n2) results of the census\n3) voting", "2", "2 - The results of the census are used to recalculate the number of representatives each state should have.", "rev. 02/16", "English"],
  # 22 We elect a U.S. Representative for how many years?
    ["We elect a US Representative for how many years?\n1) two\n2) three\n3) four\n4) six", "1", "1 - Short two-year terms and frequent elections keep representatives close to their constituents, public opinion and more aware of local and community concerns.", "rev. 02/16", "English"],

    ["US Representatives for four years?\n1) True\n2) False", "2", "2 - Short two-year terms and frequent elections keep representatives close to their constituents, public opinion and more aware of local and community concerns.", "rev. 02/16", "English"],
  # 23 Name your U.S. Representative.
    ["Name your US Representative.\n1) Answers will vary. Type \"1\" to find out who represents your state", "9", "For a complete list of US representatives and the districts they represent, go to www.house.gov.", "rev. 02/16", "English"],
  # 24 Who does a U.S. Senator represent?
    ["Who does a US Senator represent?\n1) some people of some states\n2) the people of New York\n3) all people of the state\n4) the government", "3", "3 - Senators are elected to serve the people of their state for six years. Each of the two senators represents the entire state.", "rev. 02/16", "English"],

    ["All the voters in a state elect their two US Senators directly.\n1) True\n2) False", "1", "1 - All the voters in a state elect their two US Senators directly.", "rev. 02/16", "English"],
  # 25 Why do some states have more Representatives than other states?
    ["Why do some states have more Representatives than other states?\n1) state's population\n2) they have more people\n3) some states have more people\n4) 1, 2 & 3", "4", "4 - In the House of Representatives, a state's population determines the number of representatives it has. States with many people have a stronger voice.", "rev. 02/16", "English"],

    ["A state's population determines the number of representatives they have in the House of Representatives.\n1) True\n2) False", "1", "1 - In the House of Representatives, a state's population determines the number of representatives it has. States with many people have a stronger voice.", "rev. 02/16", "English"],
  # 26 We elect a President for how many years?
    ["We elect a President for how many years?\n1) two years\n2) three years\n3) four years\n4) five years", "3", "3 - With the 22nd Amendment to the Constitution, the president can only be elected to two terms (four years each) for a total of eight years.", "rev. 02/16", "English"],

    ["The president can only be elected to one term.\n1) True\n2) False", "2", "2 - With the 22nd Amendment to the Constitution, the president can only be elected to two terms (four years each) for a total of eight years.", "rev. 02/16", "English"],

    ["The president can only be elected to two terms.\n1) True\n2) False", "1", "1 - With the 22nd Amendment to the Constitution, the president can only be elected to two terms (four years each) for a total of eight years.", "rev. 02/16", "English"],
  # 27 In what month do we vote for President?
    ["In what month do we vote for President?\n1) January\n2) September\n3) October\n4) November", "4", "4 - In 1845, Congress passed legislation to designate a single day for all Americans to vote. Election Day the Tuesday after the first Monday in November.", "rev. 02/16", "English"],

    ["We vote for President every four years in October.\n1) True\n2) False", "2", "2 - Election Day the Tuesday after the first Monday in November, every four years.", "rev. 02/16", "English"],
  # 28 What is the name of the President of the United States now?
    ["What is the name of the President of the United States now?\n1) Barack Obama\n2) Joe Biden\n3) George Bush\n4) George Washington", "1", "1 - Barack Obama is the current and 44th president of the United States.", "rev. 02/16", "English"],

    ["The current president is called:\n1) Barack Obama\n2) the main man\n3) Obama\n4) Both 1 and 3", "4", "4 - President Barack Obama and President Obama are both correct", "rev. 02/16", "English"],
  # 29 What is the name of the Vice President of the United States now?
    ["What is the name of the Vice President of the United States now?\n1) Al Gore\n2) Joe Biden\n3) Dick Cheney\n4) Hillary Clinton", "2", "2 - Joseph (Joe) R. Biden, Jr. is the 47th vice president of the USA. As VP, Biden is president of the U.S. Senate and a top advisor to the president.", "rev. 02/16", "English"],

    ["The current Vice President is known as:\n1) Joseph R. Biden, Jr.\n2) Joe Biden\n3) Biden\n4) All of the above", "4", "4 - Joseph (Joe) R. Biden, Jr. is the 47th vice president of the USA. As VP, Biden is president of the U.S. Senate and a top advisor to the president.", "rev. 02/16", "English"],
  # 30 If the President can no longer serve, who becomes President?
    ["If the President can no longer serve, who becomes President?\n1) the Vice President\n2) the Chief of Staff\n3) the Secretary of State\n4) Speaker of the House", "1", "1 - If the president dies, resigns, or cannot work while still in office, the vice president becomes president. ", "rev. 02/16", "English"],

    ["The qualifications for vice president and president are the same.\n1) True\n2) False", "1", "1 - If the president cannot fulfill his/her duties, the vice president becomes president. For this reason, the qualifications for VP and president are the same.", "rev. 02/16", "English"],
  # 31 If both the President and the Vice President can no longer serve, who becomes President?
    ["If the President and the VP can no longer serve, who becomes President?\n1) Secretary of State\n2) Chief of Staff\n3) Speaker of the House of Representatives", "3", "3 - If both the president and vice president cannot serve, the next person in line is the speaker of the House of Representatives.", "rev. 02/16", "English"],

    ["If the President and the VP can no longer serve, the Secretary of State will become President.\n1) True\n2) False", "2", "2 - If both the president and vice president cannot serve, the next person in line is the speaker of the House of Representatives.", "rev. 02/16", "English"],
  # 32 Who is the Commander in Chief of the military?
    ["Who is the Commander in Chief of the military?\n1) The President\n2) The General\n3) The Lieutenant\n4) The Colonol", "1", "1 - The President is the Commander in Chief and is in charge of the country's armed forces.", "rev. 02/16", "English"],

    ["The vice president is the Commander in Chief of the military?\n1) True\n2) False", "2", "2 - The President is the Commander in Chief and is in charge of the country's armed forces.", "rev. 02/16", "English"],
  # 33 Who signs bills to become laws?
    ["Who signs bills to become laws?\n1) The President\n2) The Secretary of State\n3) Congress\n4) The Vice President", "1", "1 - If the president wants the bill to become law, he signs it. If the president does not want the bill to become law, he vetoes it.", "rev. 02/16", "English"],
  # 34 Who vetoes bills?
    ["Who vetoes bills?\n1) the Vice President\n2) the House of Representatives\n3) the President\n4) the Senate", "3", "3 - The president has veto power and can reject a bill passed by Congress. If the president vetoes a bill, he prevents it from becoming a law.", "rev. 02/16", "English"],

    ["The President vetoes bills proposed by Congress.\n1) True\n2) False", "1", "1 - The president has veto power and can reject a bill passed by Congress. If the president vetoes a bill, he prevents it from becoming a law.", "rev. 02/16", "English"],
  # 35 What does the President's Cabinet do?
    ["What does the President's Cabinet do?\n1) make decisions for the President\n2) pass laws\n3) advises the President\n4) advise the Vice President", "3", "3 - The Constitution says that the leaders of the executive departments should advise the president. These department leaders make up the cabinet.", "rev. 02/16", "English"],

    ["The President's Cabinet makes decisions for the President.\n1) True\n2) False", "2", "2 - The Constitution says that the leaders of the executive departments should advise the president. These department leaders make up the cabinet.", "rev. 02/16", "English"],
  # 36 What are two Cabinet-level positions?
    ["What are two Cabinet-level positions?\n1) Secretary of Agriculture and Commerce\n2) Secretary of Education and Traveling\n3) Secretary of Defense and Offense", "1", "1 - Positions:\n1) Attorney General\n2) Vice President\nSecretary of:\n3) Agriculture\n4) Commerce\n5) Defense\n6) Education\n7) Energy\n8) Health & Human Services\n9) Homeland Security\n10) Housing & Urban Development\n11) the Interior\n12) Labor\n13) State\n14) Transportation\n15) the Treasury\n16) Veterans Affairs", "rev. 02/16", "English"],
    
    ["What are two Cabinet-level positions?\n1) Secretary of Agriculture and Buying\n2) Secretary of Education and Energy\n3) Secretary of Jobs and Labor", "2", "2 - Positions:\n1) Attorney General\n2) Vice President\nSecretary of:\n3) Agriculture\n4) Commerce\n5) Defense\n6) Education\n7) Energy\n8) Health & Human Services\n9) Homeland Security\n10) Housing & Urban Development\n11) the Interior\n12) Labor\n13) State\n14) Transportation\n15) the Treasury\n16) Veterans Affairs", "rev. 02/16", "English"],

    ["What are two Cabinet-level positions?\n1) Secretary of Energy and Advising\n2) Secretary of Teaching and Commerce\n3) Secretary of Veterans Affairs and State", "3", "3 - Positions:\n1) Attorney General\n2) Vice President\nSecretary of:\n3) Agriculture\n4) Commerce\n5) Defense\n6) Education\n7) Energy\n8) Health & Human Services\n9) Homeland Security\n10) Housing & Urban Development\n11) the Interior\n12) Labor\n13) State\n14) Transportation\n15) the Treasury\n16) Veterans Affairs", "rev. 02/16", "English"],
  # 37 What does the judicial branch do?
    ["What does the judicial branch do?\n1) resolves disputes\n2) explains laws\n3) decides if a law goes against the Constitution\n4) reviews laws\n5) All the above", "5", "5 - The judicial branch does all of the above.", "rev. 02/16", "English"],

    ["The judicial and legislative branches\n1) resolve disputes\n2) explain laws\n3) review laws\n4) none of the above", "4", "4 - Only the judicial branch resolves disputes, explains and reviews laws. It also decides if a law goes against the Constitution.", "rev. 02/16", "English"],

    ["The judicial branch does not review or explain laws.\n1) True\n2) False", "2", "2 - The judicial branch decides if a law goes against the Constitution, resolves disputes, explains and reviews laws", "rev. 02/16", "English"],
  # 38 What is the highest court in the United States?
    ["What is the highest court in the United States?\n1) Inferior Court\n2) Judicial Court\n3) Civil Court\n4) Criminal Court\n5) Supreme Court", "5", "5 - The US Supreme Court has complete authority over all federal courts. The Supreme Court's interpretations of federal laws and of the Constitution are final.", "rev. 02/16", "English"],

    ["The Supreme Court's interpretations of federal laws and of the Constitution are not final.\n1) True\n2) False", "2", "2 - The Supreme Court's interpretations of federal laws and of the Constitution are final.", "rev. 02/16", "English"],

    ["The U.S. Supreme Court has complete authority over all federal courts.\n1) True\n2) False", "1", "1 - It is also limited in its power over the states. The US Supreme Court cannot make decisions about state law or state constitutions.", "rev. 02/16", "English"],
  # 39 How many justices are on the Supreme Court?
    ["How many justices are on the Supreme Court?\n1) 3\n2) 9\n3) 1\n4) 5\n6) 10\n6) 75\n6) 50", "2", "2 - Now, there are nine justices on the Supreme Court: eight associate justices and one chief justice. For more info on the Supreme Court - www.supremecourt.gov", "rev. 02/16", "English"],

    ["The Constitution gives the president the power to nominate justices to the Supreme Court.\n1) True\n2) False", "1", "1 - The nominee must then be confirmed by the Senate. Justices serve on the court for life or until they retire.", "rev. 02/16", "English"],

    ["Currently, there are nine justices on the Supreme Court: four associate justices and five chief justices.\n1) True\n2) False", "2", "2 - There are nine justices on the Supreme Court: eight associate justices and one chief justice. For more info on the Supreme Court - www.supremecourt.gov", "rev. 02/16", "English"],
  # 40 Who is the Chief Justice of the United States now?
    ["Who is the Chief Justice of the United States now?\n1)  Rob Johnson (Robert A. Johnson)\n2)  John Roberts (John G. Roberts, Jr.)\n3) John Smith (John M. Smith)", "2", "2 - John G. Roberts, Jr. is the 17th chief justice of the US & was nominated by President George W. Bush. He became the youngest chief justice since 1801 at 50.", "rev. 02/16", "English"],

    ["John Roberts is the current Chief Justice of the US.\n1) True\n2) False", "1", "1 - John G. Roberts, Jr. is the 17th chief justice of the US and was nominated by President George W. Bush.", "rev. 02/16", "English"],
  # 41 Under our Constitution, some powers belong to the federal government. What is one power of the federal government?
    ["Under our Constitution, some powers belong to the federal govt and one power is:\n1) to spend money\n2) to have fun\n3) to create jobs\n4) to make treaties", "4", "4 - The Constitution gives the federal government the power to print money, declare war, create an army, and make treaties with other nations.", "rev. 02/16", "English"],

    ["The Constitution gives the federal government the power to print money, declare war, create an army, and make treaties with other nations.\n1) True\n2) False", "1", "1 - The Constitution gives the federal government these powers.", "rev. 02/16", "English"],

    ["The Constitution gives the state government the power to print money, declare war, create an army, and make treaties with other nations.\n1) True\n2) False", "2", "2 - The Constitution gives the federal government the power to print money, declare war, create an army, and make treaties with other nations.", "rev. 02/16", "English"],
  # 42 Under our Constitution, some powers belong to the states. What is one power of the states?
    ["Under our Constitution, some powers belong to the states. What is one power of the states?\n1) voting\n2) provide jobs\n3)provide protection (police)", "3", "3 - States can provide:\n1) schooling & education\n2) protection (police)\n3) safety (fire dept)\nand:\n4) give a driver's license\n5) approve zoning & land use", "rev. 02/16", "English"],

    ["Under our Constitution, states have the authority to provide education and protection.\n1) True\n2) False", "1", "1 - States can provide:\n1) schooling & education\n2) protection (police)\n3) safety (fire dept)\nand:\n4) give a driver's license\n5) approve zoning & land use", "rev. 02/16", "English"],
    
    ["Under our Constitution, states have the authority to create an army.\n1) True\n2) False", "2", "2 - States can provide:\n1) schooling & education\n2) protection (police)\n3) safety (fire dept)\nand:\n4) give a driver's license\n5) approve zoning & land use", "rev. 02/16", "English"],
  # 43 Who is the Governor of your state now?
    ["Who is the Governor of your state now?\n1) Answers will vary. [District of Columbia residents should answer that D.C. does not have a Governor.]", "9", "The governor is the chief executive of the state. To learn the name of the governor of your state or territory, go to www.nga.org/governors.", "rev. 02/16", "English"],
  # 44 What is the capital of your state?
    ["What is the capital of your state?\n1) Answers will vary. Select \"1\" to check yours.", "9", "To learn the capital of your state or territory, go to http://bensguide.gpo.gov/3-5/state/index.html. Each state or territory has its own capital.", "rev. 02/16", "English"],

    ["The state capital is where the state govt conducts its business.\n1) True\n2) False", "1", "1 - The state capital is where the state govt conducts its business, similar to the nation's capital (D.C.), where the federal govt conducts its business.", "rev. 02/16", "English"],
  # 45 What are the two major political parties in the United States?
    ["What are the two major political parties in the United States?\n1) Independent\n2) Democratic\n3) Republican\n4) Green\n5) 1 & 2\n6) 3 & 4\n7) 2 & 3\n8) 3 & 1", "7", "7 - Today, the two major political parties are the Democratic Party and the Republican Party.", "rev. 02/16", "English"],

    ["The Democratic and Republican Parties have identical political views and opinions\n1) True\n2) False", "2", "2 - Parties are made up of people who organize to promote their candidates for election and to promote their own views about public policies.", "rev. 02/16", "English"],
  # 46 What is the political party of the President now?
    ["What is the political party of the President now?\n1) Independent\n2) Democratic\n3) Republican\n4) Green", "2", "2 - The current president, Barack Obama, is a member of the Democratic Party.", "rev. 02/16", "English"],

    ["The current president, Barack Obama, is a member of the Republican Party.\n1) True\n2) False", "2", "2 - The current president, Barack Obama, is a member of the Democratic Party.", "rev. 02/16", "English"],
  # 47 What is the name of the Speaker of the House of Representatives now?
    ["What is the name of the Speaker of the House of Representatives now?\n1) Paul D. Ryan\n2) John G. Roberts\n3) Barack Obama\n4) Joe Biden", "1", "1 - The current speaker of the House of Representatives is Paul D. Ryan. He leads the majority political party in the House, the Republican Party.", "rev. 02/16", "English"],

    ["Currently, John G. Roberts is the the Speaker of the House of Representatives.\n1) True\n2) False", "2", "2 - The current speaker of the House of Representatives is Paul D. Ryan. He leads the majority political party in the House, the Republican Party.", "rev. 02/16", "English"],
  # 48 There are four amendments to the Constitution about who can vote. Describe one of them.
    ["There are four amendments to the Constitution about who can vote. Which is correct? Citizens ___ years and older can vote\n1) 16\n2) 18\n3) 19\n4) 21", "2", "2 - The 26th Amendment lowered the voting age from 21 to 18.", "rev. 02/16", "English"],

    ["You have to pay (a poll tax) to vote.\n1) True\n2) False", "2", "2 - After the 15th Amendment was passed, leaders designed fees (poll taxes) to stop African Americans from voting. The 24th Amendment made these fees illegal.", "rev. 02/16", "English"],

    ["Any citizen, both women and men, can vote.\n1) True\n2) False", "1", "1 - The 15th Amendment permits American men of all races to vote. The 19th Amendment gave women the right to vote.", "rev. 02/16", "English"],

    ["A male citizen of certain races can vote.\n1) True\n2) False", "2", "2 - The 15th Amendment permits American men of all races to vote. It was written after the Civil War and the end of slavery.", "rev. 02/16", "English"],

    ["- Citizens 18 and older can vote\n- You don't have to pay a poll tax to vote\n- Any citizen can vote\n- A male citizen of any race can vote.\n1) True\n2) False", "1", "1 - These are the four amendments to the Constitution about voting.", "rev. 02/16", "English"],
  # 49 What is one responsibility that is only for United States citizens?
    ["What is one responsibility that is only for US citizens?\n1) vote in a local election\n2) serve on a jury \n3) serve the people\n4) vote for prime minister", "2", "2 - Two responsibilities of U.S. citizens are to serve on a jury and vote in federal elections.", "rev. 02/16", "English"],
    
    ["What is one responsibility that is only for US citizens?\n1) vote in a federal election\n2) helping a neighbor \n3) serve the people\n4) vote for prime minister", "2", "2 - Two responsibilities of U.S. citizens are to serve on a jury and vote in federal elections.", "rev. 02/16", "English"],

    ["US Citizens are responsible for voting in federal elections and serving on a jury\n1) True\n2) False", "1", "1 - Two responsibilities of U.S. citizens are to serve on a jury and vote in federal elections.", "rev. 02/16", "English"],
  # 50 Name one right only for United States citizens.
    ["What is one right that is only for US citizens?\n1) vote in a federal election\n2) serve on a jury \n3) pay taxes\n4) vote for mayor", "1", "1 - US citizens have the right to vote in federal elections. Permanent residents can vote in local/state elections that do not require voters to be US citizens.", "rev. 02/16", "English"],
    
    ["What is one right that is only for US citizens?\n1) vote in a local election\n2) serve on a jury \n3) pay taxes\n4) run for office", "4", "4 - US citizens can run for federal office & must have been a US citizen for a minimum # of years.\nSenate - 9\nHouse - 7\nPresident, must be a native-born", "rev. 02/16", "English"],

    ["US citizens do not have the right to vote in federal elections or run for federal office.\n1) True\n2) False", "2", "2 - U.S. citizens have the right to vote in federal elections and can also run for federal office.", "rev. 02/16", "English"],
  # 51 What are two rights of everyone living in the United States?
    ["The Constitution gives many rights to all people living in the US, including the freedom of suppression.\n1) True\n2) False", "2", "2 - The Constitution gives many rights to all people living in the US, including the freedom of expression, religion, speech, assembly & the right to bear arms.", "rev. 02/16", "English"],

    ["US Constitutional rights: freedom of:\n- expression\n- religion\n- speech\n- assembly\n- to petition the government\n- the right to bear arms\n1) True\n2) False", "1", "1 - The Constitution and the Bill of Rights give these rights to all people living in the United States.", "rev. 02/16", "English"],
  # 52 What do we show loyalty to when we say the Pledge of Allegiance?
    ["What do we show loyalty to when we say the Pledge of Allegiance?\n1) the United States\n2) the flag\n3) the 50 stars\n4) 1 & 2\n5) 1 & 3\n6) 2 & 3", "4", "4 - We pledge allegiance to the United States and the flag", "rev. 02/16", "English"],

    ["When we say the Pledge of Allegiance, we usually stand facing the flag with the right hand over the heart.\n1) True\n2) False", "1", "1 - We usually stand facing the flag with the right hand over the heart", "rev. 02/16", "English"],

    ["The Pledge of Allegiance to the flag starts, \"I pledge allegiance to the Flag of the United States of America...\"\n1) True\n2) False", "1", "1 - \"I pledge allegiance to the Flag of the USA, & to the Republic for which it stands, one Nation under God, indivisible, with liberty & justice for all.\"", "rev. 02/16", "English"],
  # 53 What is one promise you make when you become a United States citizen?
    ["What is one promise you make when you become a US citizen?\n1) give up loyalty to other countries\n2) obey US laws\n3) be loyal to the US\n4) All of the above", "4", "4 - All Promises:\n- give up loyalty to other countries\n- defend the Constitution and laws of the US\n- obey the laws of the US\n- serve in the U.S. military (if needed)\n- serve (do important work for) the nation (if needed)\n- be loyal to the United States", "rev. 02/16", "English"],
    
    ["What is one promise you make when you become a US citizen?\n1) serve in the U.S. military (if needed)\n2) disobey US laws\n3) work every day\n4)  read US laws", "1", "1 - All Promises:\n- give up loyalty to other countries\n- defend the Constitution and laws of the US\n- obey the laws of the US\n- serve in the U.S. military (if needed)\n- serve (do important work for) the nation (if needed)\n- be loyal to the United States", "rev. 02/16", "English"],

    ["What is one promise you make when you become a US citizen?\n1) refuse to serve in the military\n2) defend the US Constitution\n3) serve the nation\n4) 2 and 3", "4", "4 - All Promises:\n- give up loyalty to other countries\n- defend the Constitution and laws of the US\n- obey the laws of the US\n- serve in the U.S. military (if needed)\n- serve (do important work for) the nation (if needed)\n- be loyal to the United States", "rev. 02/16", "English"],
  # 54 How old do citizens have to be to vote for President?
    ["How old do citizens have to be to vote for President?\n1) 16 and older\n2) 18 and older\n3) 21 and older\n4) 25 and older", "2", "2 - In 1971, the 26th Amendment changed the minimum voting age from 21 to 18 for all federal, state, and local elections.", "rev. 02/16", "English"],

    ["If you are 16 years old, you can vote in local elections, but need to be 18 to vote for the president in a federal election.\n1) True\n2) False", "2", "2 - In 1971, the 26th Amendment changed the minimum voting age from 21 to 18 for all federal, state, and local elections.", "rev. 02/16", "English"],
  # 55 What are two ways that Americans can participate in their democracy?
    ["What are two ways Americans can participate in democracy?\n1) join a political party\n2) watch CNN\n3) call Senators\n4) 1 & 3\n5) 1 & 2\n6) none of the above", "4", "4 - Ways to participate in democracy:\n- vote\n- join a political party\n- help with a campaign\n- join a civic group\n- join a community group\n- give an elected official your opinion on an issue\n- call Senators & Representatives\n- publicly support or oppose an issue/policy\n- run for office\n- write to a newspaper", "rev. 02/16", "English"],

    ["What are two ways Americans can participate in democracy?\n1) vote\n2) not vote\n3) join a civic group\n4) 2 & 3\n5) 1 & 3\n6) none of the above", "5", "5 - Ways to participate in democracy:\n- vote\n- join a political party\n- help with a campaign\n- join a civic group\n- join a community group\n- give an elected official your opinion on an issue\n- call Senators & Representatives\n- publicly support or oppose an issue/policy\n- run for office\n- write to a newspaper", "rev. 02/16", "English"],
  # 56 When is the last day you can send in federal income tax forms?
    ["When is the last day you can send in federal income tax forms?\n1) January 15\n2) March 15\n3) April 15\n4) September 15\n5) October 15\n6) November 15", "3", "3 - The last day to send in your federal income tax to the Internal Revenue Service is April 15 of each year.", "rev. 02/16", "English"],

    ["April 15th is the last day to submit your federal taxes.\n1) True\n2) False", "1", "1 - The last day to send in your federal income tax to the Internal Revenue Service is April 15 of each year.", "rev. 02/16", "English"],

    ["March 15th is the last day to submit your federal taxes.\n1) True\n2) False", "2", "2 - The last day to send in your federal income tax to the Internal Revenue Service is April 15 of each year.", "rev. 02/16", "English"],
    
    ["May 15th is the last day to submit your federal taxes.\n1) True\n2) False", "2", "2 - The last day to send in your federal income tax to the Internal Revenue Service is April 15 of each year.", "rev. 02/16", "English"],

    ["April 13th is the last day to submit your federal taxes.\n1) True\n2) False", "2", "2 - The last day to send in your federal income tax to the Internal Revenue Service is April 15 of each year.", "rev. 02/16", "English"],
  # 57 When must all men register for the Selective Service?
    ["When must all men register for the Selective Service?\n1) age 18\n2) age 17\n3) age 13\n4) age 16", "1", "1 - All men between 18 and 26 years old must register with the Selective Service System to tell the govt that they are available to serve in the U.S. Armed Forces.", "rev. 02/16", "English"],

    ["All men between 18 and 26 years old must register with the Selective Service System.\n1) True\n2) False", "1", "1 - All men between 18 & 26 years old must register with the Selective Service System to tell the govt they are available to serve in the U.S. Armed Forces.", "rev. 02/16", "English"],
  # 58 What is one reason colonists came to America?
    ["Colonists came to the US for freedom, political liberty, religious freedom, economic opportunity, to practice religion and escape persecution\n1) True\n2) False", "1", "1 - These freedoms and opportunities often did not exist in the colonists' home countries. The American colonies were a chance for freedom and a new life.", "rev. 02/16", "English"],
    
    ["Colonists came to the economic opportunity, US for imprisonment, political sabotage and to escape persecution\n1) True\n2) False", "2", "2 - Colonists came to the US for freedom, political liberty, religious freedom, economic opportunity, to practice religion and escape persecution", "rev. 02/16", "English"],
  # 59 Who lived in America before the Europeans arrived?
    ["Who lived in America before the Europeans arrived?\n1) Indians \n2) Mexicans \n3) Canadians\n4) American Indians", "4", "4 - Great (Native) American Indian tribes such as the Navajo, Sioux, Cherokee, and Iroquois lived in America at the time the Pilgrims arrived.", "rev. 02/16", "English"],

    ["Who lived in America before the Europeans arrived?\n1) Native Americans \n2) Mexicans \n3) Canadians\n4) New Yorkers", "1", "1 - Great (Native) American Indian tribes such as the Navajo, Sioux, Cherokee, and Iroquois lived in America at the time the Pilgrims arrived.", "rev. 02/16", "English"],
  # 60 What group of people was taken to America and sold as slaves?
    ["What group of people was taken to America and sold as slaves?\n1) Europeans\n2) South Americans\n3) Africans\n4) Chinese\n5) Canadians", "3", "3 - By 1700, many Africans were brought to American colonies as slaves. Men, women & children were brought against their will & separated from their families.", "rev. 02/16", "English"],
    
    ["People of Africa were taken to America and sold as slaves by the 1700s.\n1) True\n2) False", "1", "1 - By 1700, many Africans were brought to American colonies as slaves. Men, women & children were brought against their will & separated from their families.", "rev. 02/16", "English"],
  # 61 Why did the colonists fight the British?
    ["Why did the colonists fight the British?\n1) high taxes\n2) the British army stayed in their houses (boarding, quartering)\n3)no self-govt\n4) all of the above", "4", "4 - Colonists were taxed without consent, had nobody to represent their needs & ideas to the govt, & were forced to let soldiers sleep & eat in their homes.", "rev. 02/16", "English"],

    ["The colonists fought the British because they paid high taxes and had no representation and had no self-government.\n1) True\n2) False", "1", "1 - Reasons:\n1) high taxes (taxation without representation)\n2) the British army stayed in their houses (boarding, quartering)\n3) they didn't have self-govt", "rev. 02/16", "English"],
    
    ["The colonists fought the British because the British army boarded in their houses.\n1) True\n2) False", "1", "1 - Reasons:\n1) high taxes (taxation without representation)\n2) the British army stayed in their houses (boarding, quartering)\n3) they didn't have self-govt", "rev. 02/16", "English"],
  # 62 Who wrote the Declaration of Independence?
    ["Who wrote the Declaration of Independence?\n1) Thomas Jefferson\n2) Benjamin Franklin\n3) Abraham Lincoln\n4) George Washington\n5) John Adams\n6) John Hancock", "1", "1 - Thomas Jefferson wrote the Declaration of Independence in 1776, stating that all people are created equal, one of the most important ideas of American Govt.", "rev. 02/16", "English"],

    ["John Hancock wrote the Declaration of Independence in 1776.\n1) True\n2) False", "2", "2 - Thomas Jefferson wrote the Declaration of Independence in 1776, stating that all people are created equal, one of the most important ideas of American Govt.", "rev. 02/16", "English"],
    
    ["Thomas Jefferson and John Hancock wrote the Declaration of Independence in 1776.\n1) True\n2) False", "2", "2 - Thomas Jefferson wrote the Declaration of Independence in 1776, stating that all people are created equal, one of the most important ideas of American Govt.", "rev. 02/16", "English"],
  # 63 When was the Declaration of Independence adopted?
    ["When was the Declaration of Independence adopted?\n1) July 4, 1676\n2) July 4, 1776\n3) July 4, 1876\n4) July 4, 1976", "2", "2 - On July 4, 1776, the Second Continental Congress adopted the Declaration of Independence.", "rev. 02/16", "English"],
    
    ["The 4th of July is Independence Day.\n1) True\n2) False", "1", "1 - On July 4, 1776, the Second Continental Congress adopted the Declaration of Independence.", "rev. 02/16", "English"], 
  # 64 There were 13 original states. Name three.
    ["New York, Pennsylvannia and Tennessee are all part of the 13 original states.\n1) True\n2) False", "2", "2 - The 13 original states are: New Hampshire, Massachusetts, Rhode Island, Connecticut, New York, New Jersey, Pennsylvania, Delaware, Maryland, Virginia, North Carolina, South Carolina and Georgia.", "rev. 02/16", "English"],
    
    ["New Jersey, Massachusetts and New Hampshire are all part of the 13 original states.\n1) True\n2) False", "1", "1 - The 13 original states are: New Hampshire, Massachusetts, Rhode Island, Connecticut, New York, New Jersey, Pennsylvania, Delaware, Maryland, Virginia, North Carolina, South Carolina and Georgia.", "rev. 02/16", "English"],

    ["Six of the 13 colonies are Rhode Island, Connecticut, Delaware, Maryland, Ohio and Texas.\n1) True\n2) False", "2", "2 - The 13 original states are: New Hampshire, Massachusetts, Rhode Island, Connecticut, New York, New Jersey, Pennsylvania, Delaware, Maryland, Virginia, North Carolina, South Carolina and Georgia.", "rev. 02/16", "English"],

    ["Six of the 13 colonies are Connecticut, Pennsylvania, Virginia, Georgia, North Carolina and South Carolina.\n1) True\n2) False", "1", "1 - The 13 original states are: New Hampshire, Massachusetts, Rhode Island, Connecticut, New York, New Jersey, Pennsylvania, Delaware, Maryland, Virginia, North Carolina, South Carolina and Georgia.", "rev. 02/16", "English"],
  # 65 What happened at the Constitutional Convention?
    ["What happened at the Constitutional Convention?\n1) The Founding Fathers questioned the Constitution\n2) The Founding Fathers wrote the Constitution\n3) nothing", "2", "2 - The Founding Fathers wrote the Constitution", "rev. 02/16", "English"],
    
    ["The Founding Fathers wrote the Constitution at the Constitutional Convention\n1) True\n2) False", "1", "1 - Instead of changing the Articles of Confederation, the delegates decided to create a new governing document with a stronger national govt-the Constitution. ", "rev. 02/16", "English"],
  # 66 When was the Constitution written?
    ["When was the Constitution written?\n1) 1767\n2) 1777\n3) 1787\n4) 1797\n5) 1790\n6) 1776", "3", "3 - The Constitution, written by James Madison in 1787, defines the principles of government and the rights of citizens in the United States.", "rev. 02/16", "English"],

    ["The Constitution, written by James Madison in 1776, defines the principles of government and the rights of citizens in the United States.\n1) True\n2) False", "2", "2 - The Constitution was written by James Madison in 1787. He became the fourth president of the United States.", "rev. 02/16", "English"],
  # 67 The Federalist Papers supported the passage of the U.S. Constitution. Name one of the writers.
    ["The Federalist Papers supported the passage of the US Constitution, written by\n1) James Madison\n2) Alexander Hamilton\n3) John Jay\n4) Publius\n5) 1, 2, 3 & 4", "5", "5 - They were written in 1787/88 by Alexander Hamilton, John Jay & James Madison under the pen name \"Publius,\" explaining why NY should ratify the Constitution.", "rev. 02/16", "English"],

    ["Publius wrote the Federalist Papers to convince NY to ratify the Constitution\n1) True\n2) False", "1", "1 - They were written in 1787/88 by Alexander Hamilton, John Jay & James Madison under the pen name \"Publius,\" explaining why NY should ratify the Constitution.", "rev. 02/16", "English"],
  # 68 What is one thing Benjamin Franklin is famous for?
    ["What is one thing Ben Franklin is known for?\n1) US diplomat\n2) writer of \"Poor Richard\'s Almanac\"\n3) started the first free libraries\n4) 1 & 3\n5) 1, 2 & 3", "5", "5 - Benjamin Franklin organized America\'s first free libraries and was: \n1) a US diplomat\n2) the oldest member of the Constitutional Convention\n3) the first Postmaster General of the United States\n4) the writer of \"Poor Richard\'s Almanac\"", "rev. 02/16", "English"],

    ["Benjamin Franklin organized America's first library.\n1) True\n2) False", "1", "1 - Benjamin Franklin organized America\'s first free libraries and was: \n1) a US diplomat\n2) the oldest member of the Constitutional Convention\n3) the first Postmaster General of the United States\n4) the writer of \"Poor Richard\'s Almanac\"", "rev. 02/16", "English"],

    ["Benjamin Franklin was the youngest member of the Constitutional Convention.\n1) True\n2) False", "2", "2 - Benjamin Franklin organized America\'s first free libraries and was: \n1) a US diplomat\n2) the oldest member of the Constitutional Convention\n3) the first Postmaster General of the United States\n4) the writer of \"Poor Richard\'s Almanac\"", "rev. 02/16", "English"],

    ["Benjamin Franklin was the writer of \"Poor Richard\'s Almanac.\"\n1) True\n2) False", "1", "1 - Benjamin Franklin organized America\'s first free libraries and was: \n1) a US diplomat\n2) the oldest member of the Constitutional Convention\n3) the first Postmaster General of the United States\n4) the writer of \"Poor Richard\'s Almanac\"", "rev. 02/16", "English"],

    ["Benjamin Franklin was not a US diplomat.\n1) True\n2) False", "2", "2 - Benjamin Franklin organized America\'s first free libraries and was: \n1) a US diplomat\n2) the oldest member of the Constitutional Convention\n3) the first Postmaster General of the United States\n4) the writer of \"Poor Richard\'s Almanac\"", "rev. 02/16", "English"],
  # 69 Who is the "Father of Our Country"?
    ["Who is the \"Father of Our Country\"?\n1) Abraham Lincoln\n2) George Washington\n3) Benjamin Franklin\n4) James Madison", "2", "2 - George Washington is called the Father of Our Country. He was the first American president.", "rev. 02/16", "English"],
    
    ["George Washington is the \"Father of Our Country\"?\n1) True\n2) False", "1", "1 - George Washington is called the Father of Our Country. He was the first American president.", "rev. 02/16", "English"],

    ["James Madison is the \"Father of Our Country\"?\n1) True\n2) False", "2", "2 - George Washington is called the Father of Our Country. He was the first American president.", "rev. 02/16", "English"],
  # 70 Who was the first President?
    ["Who was the first President?\n1) George Washington\n2) Abraham Lincoln\n3) Benjamin Franklin\n4) James Madison\n5) Thomas Jefferson", "1", "1 - George Washington was the first president of the United States. He began his first term in 1789 & voluntarily resigned from the presidency after two terms.", "rev. 02/16", "English"],

    ["Abraham Lincoln was the first President of the United States.\n1) True\n2) False", "2", "2 - George Washington was the first president of the United States. He began his first term in 1789 & voluntarily resigned from the presidency after two terms.", "rev. 02/16", "English"],
  # 71 What territory did the United States buy from France in 1803?
    ["What territory did the United States buy from France in 1803?\n1) Mississippi\n2) Louisiana\n3) Tennessee\n4) Maryland\n5) Alabama", "2", "2 - In 1803, the US bought the Louisiana Territory from France for $15 million and was the largest acquisition of land in American history.", "rev. 02/16", "English"],

    ["The Louisiana Purchase Treaty was signed in Paris on April 30, 1803. It was the largest acquisition of land in American history.\n1) True\n2) False", "1", "1 - In 1803, the US bought the Louisiana Territory from France for $15 million and was the largest acquisition of land in American history.", "rev. 02/16", "English"],
  # 72 Name one war fought by the United States in the 1800s.
    ["Name one war fought by the United States in the 1800s.\n1) Civil War\n2) Vietnam War\n3) World War II", "1", "1 - The United States fought four major wars in the 1800s-the War of 1812, the Mexican-American War, the Civil War, and the Spanish-American War.", "rev. 02/16", "English"],
    
    ["Name one war fought by the US in the 1800s.\n1) Civil War\n2) Spanish-American War\n3) World War I\n4) Vietnam War\n5) 1 & 3\n6) 3 & 4\n7) 1 & 2\n8) 2 & 3", "7", "7 - The United States fought four major wars in the 1800s-the War of 1812, the Mexican-American War, the Civil War, and the Spanish-American War.", "rev. 02/16", "English"],
  # 73 Name the U.S. war between the North and the South.
    ["The American Civil War is also known as the War between the States.\n1) True\n2) False", "1", "1 - It was a war between the people in the northern states and those in the southern states, but most battles were fought in the southern states.", "rev. 02/16", "English"],

    ["Name the U.S. war between the North and the South.\n1) the War of 1812\n2) the Mexican-American War\n3) the Spanish-American War\n4) the Civil War", "4", "4 - The American Civil War is also known as the War between the States. It was a war between the people in the northern states and those in the southern states.", "rev. 02/16", "English"],
  # 74 Name one problem that led to the Civil War.
    ["Name one problem that led to the Civil War.\n1) slavery\n2) economic reasons\n3) states' rights\n4) 1 & 2\n5) 1 & 3\n6) all of the above\n7) none of the above", "6", "6 - slavery, economic reasons and states' rights are all problems that led to the Civil War.", "rev. 02/16", "English"],

    ["The Civil War began when 11 southern states voted to secede from the US to form their own country, the Confederate States of America.\n1) True\n2) False", "1", "1 - These southern states believed that the federal government of the United States threatened their right to make their own decisions.", "rev. 02/16", "English"],

    ["Economic reasons led to the Civil War.\n1) True\n2) False", "1", "1 - slavery, economic reasons and states' rights are all problems that led to the Civil War.", "rev. 02/16", "English"],
    
    ["Slavery did not lead to the Civil War.\n1) True\n2) False", "2", "2 - slavery, economic reasons and states' rights are all problems that led to the Civil War.", "rev. 02/16", "English"],
    
    ["States' rights led to the Civil War.\n1) True\n2) False", "1", "1 - slavery, economic reasons and states' rights are all problems that led to the Civil War.", "rev. 02/16", "English"],
  # 75 What was one important thing that Abraham Lincoln did?
    ["What was one important thing that Abraham Lincoln did?\n1) stood against the Emancipation Proclamation\n2) saved the Confederate army\n3) freed the slaves", "3", "3 - During the Civil War, he issued the Emancipation Proclamation. It declared that the slaves who lived in the rebelling Confederate states were forever free.", "rev. 02/16", "English"],

    ["What was one important thing that Abraham Lincoln did?\n1) became vice president\n2) saved (or preserved) the Union\n3) led the separation of states", "2", "2 - Lincoln thought the separation of southern (Confederate) states was unconstitutional. He wanted to preserve the Union & issued the Emancipation Proclamation.", "rev. 02/16", "English"],

    ["What was one important thing that Abraham Lincoln did?\n1) Emancipation Proclamation\n2) preserved the Union\n3) led the US during the Civil War\n4) 1, 2 & 3", "4", "4 - Abraham Lincoln was president of the US from 1861 to 1865, led the nation during the Civil War, preserved the Union and issued the Emancipation Proclamation", "rev. 02/16", "English"],
  # 76 What did the Emancipation Proclamation do?
    ["What did the Emancipation Proclamation do? It freed slaves in the:\n1) Confederate (southern) states\n2) Union (northern) states\n3) western states\n4) no state", "1", "1 - The Emancipation Proclamation declared that slaves living in the southern or Confederate states were free. Many slaves joined the Union army.", "rev. 02/16", "English"],

    ["Freed slaves in the Confederacy were a result of the Emancipation Proclamation.\n1) True\n2) False", "1", "1 - The Emancipation Proclamation declared that slaves living in the southern or Confederate states were free. Many slaves joined the Union army.", "rev. 02/16", "English"],

    ["The Emancipation Proclamation led to the 2nd Amendment to the Constitution, which ended slavery in all of the United States.\n1) True\n2) False", "2", "2 - In 1865, the Civil War ended and the southern slaves kept their right to be free, which led the 13th Amendment to the Constitution.", "rev. 02/16", "English"],
  # 77 What did Susan B. Anthony do?
    ["Susan B. Anthony fought for:\n1) women's rights\n2) men's rights\n3) children's rights\n4) 1 & 2\n4) 1 & 3\n4) 2 & 3\n4) 1, 2 & 3", "1", "1 - She is known for campaigning for the right of women to vote. She spoke out publicly against slavery and for equal treatment of women in the workplace.", "rev. 02/16", "English"],

    ["Susan B. Anthony fought for:\n1) international rights\n2) national rights\n3) civil rights\n4) 1 & 2\n4) 1 & 3\n4) 2 & 3\n4) 1, 2 & 3", "3", "3 - She is known for campaigning for the right of women to vote. She spoke out publicly against slavery and for equal treatment of women in the workplace.", "rev. 02/16", "English"],

    ["Susan B. Anthony fought for civil and women's rights\n1) True\n2) False", "1", "1 - She is known for campaigning for the right of women to vote. She spoke out publicly against slavery and for equal treatment of women in the workplace.", "rev. 02/16", "English"],
  # 78 Name one war fought by the United States in the 1900s.
    ["Name one war fought by the United States in the 1900s.\n1) Korean War\n2) US Civil War\n3) European War\n4) Japanese War", "1", "1 - The United States fought five wars in the 1900s: World War I, World War II, the Korean War, the Vietnam War, and the (Persian) Gulf War.", "rev. 02/16", "English"],

    ["Name two wars fought by the United States in the 1900s.\n1) Korean & Vietnam War\n2) US Civil & World War I\n3) European and Gulf War\n4) Japanese and World War II", "1", "1 - The United States fought five wars in the 1900s: World War I, World War II, the Korean War, the Vietnam War, and the (Persian) Gulf War.", "rev. 02/16", "English"],

    ["The United States fought five wars in the 1900s: World War I, World War II, the Korean War, the Vietnam War, and the (Persian) Gulf War.\n1) True\n2) False", "1", "1 - The US did fight in those five wars throughout the 1900s.", "rev. 02/16", "English"],
  # 79 Who was President during World War I?
    ["Who was President during World War I?\n1) Theodore Roosevelt\n2) Franklin D. Roosevelt\n3) Woodrow Wilson\n4) Dwight D. Eisenhower", "3", "3 - Woodrow Wilson was the 28th president of the United States and he asked Congress to declare war on Germany during his second term as president.", "rev. 02/16", "English"],

    ["Theodore Roosevelt was President during World War I?\n1) True\n2) False", "2", "2 - Woodrow Wilson was the 28th president of the United States and he asked Congress to declare war on Germany during his second term as president.", "rev. 02/16", "English"],
  # 80 Who was President during the Great Depression and World War II?
    ["Who was President during the Great Depression and World War II?\n1) Harry S. Truman\n2) Herbert Hoover\n3) Dwight D. Eisenhower\n4) Franklin D. Roosevelt", "4", "4 - Franklin Delano Roosevelt (FDR) was president during the Great Depression. He led the nation into WWII after Japan's attack on Pearl Harbor in Dec 1941.", "rev. 02/16", "English"],
    
    ["FDR was President during the Great Depression?\n1) True\n2) False", "1", "1 - Franklin Delano Roosevelt (FDR) was president during the Great Depression. He led the nation into WWII after Japan's attack on Pearl Harbor in Dec 1941.", "rev. 02/16", "English"],

    ["Harry S. Truman was President during the Great Depression?\n1) True\n2) False", "2", "2 - Franklin Delano Roosevelt (FDR) was president during the Great Depression. He led the nation into WWII after Japan's attack on Pearl Harbor in Dec 1941.", "rev. 02/16", "English"],

    ["Franklin Delano Roosevelt was President during World War II?\n1) True\n2) False", "1", "1 - Franklin Delano Roosevelt (FDR) was president during the Great Depression. He led the nation into WWII after Japan's attack on Pearl Harbor in Dec 1941.", "rev. 02/16", "English"],

    ["Dwight D. Eisenhower was President during World War II?\n1) True\n2) False", "2", "2 - Franklin Delano Roosevelt (FDR) was president during the Great Depression. He led the nation into WWII after Japan's attack on Pearl Harbor in Dec 1941.", "rev. 02/16", "English"],
  # 81 Who did the United States fight in World War II?
    ["Who did the United States fight in World War II?\n1) England, Germany & Italy\n2) Japan, France & Italy\n3) Japan, Germany & Italy\n4) Spain, Turkey & Italy", "3", "3 - When the Japanese bombed US naval bases on Pearl Harbor, President FDR declared war. Japan's Axis partners, Italy & Germany, then declared war on the US.", "rev. 02/16", "English"],

    ["When the Japanese bombed US naval bases on Pearl Harbor, President Franklin D. Roosevelt did nothing in response.\n1) True\n2) False", "2", "2 - When the Japanese bombed US naval bases on Pearl Harbor, President FDR declared war. Japan's Axis partners, Italy & Germany, then declared war on the US.", "rev. 02/16", "English"],

    ["After the Japanese bombed naval bases on Pearl Harbor & the US declared war, Japan's Axis partners, Italy & Germany, declared war on the US.\n1) True\n2) False", "1", "1 - When the Japanese bombed US naval bases on Pearl Harbor, President FDR declared war. Japan's Axis partners, Italy & Germany, then declared war on the US.", "rev. 02/16", "English"],
  # 82 Before he was President, Eisenhower was a general. What war was he in?
    ["Before he was President, Eisenhower was a general. What war was he in?\n1) Vietnam War\n2) Korean War\n3) World War I\n4) World War II\n5) Spanish-American War", "4", "4 - Before becoming the 34th president of the US, he served as a major general in World War II. He led the successful D-Day invasion of Normandy, France.", "rev. 02/16", "English"],

    ["Before becoming president of the US, FDR served as a major general in World War II. He led the successful D-Day invasion of Normandy, France.\n1) True\n2) False", "2", "2 - Dwight D. Eisenhower served as a major general in World War II. He led the successful D-Day invasion of Normandy, France, on June 6, 1944.", "rev. 02/16", "English"],
  # 83 During the Cold War, what was the main concern of the United States?
    ["During the Cold War, what was the main concern of the United States?\n1) Communism\n2) Democracy\n3) Socialism\n4) Capitalism", "1", "1 - The United States and its allies feared the expansion of communism to countries outside the Soviet Union.", "rev. 02/16", "English"],

    ["During the Cold War, the US believed that a communist govt & capitalist economy were the best ways to preserve individual rights & freedoms.\n1) True\n2) False", "2", "2 - They believed that a democratic government and a capitalist economy were the best ways to preserve individual rights and freedoms.", "rev. 02/16", "English"],

    ["During the Cold War, the US believed that a democratic govt & capitalist economy were the best ways to preserve individual rights & freedoms.\n1) True\n2) False", "1", "1 - The United States and its allies feared the expansion of communism to countries outside the Soviet Union.", "rev. 02/16", "English"],
  # 84 What movement tried to end racial discrimination?
    ["What movement tried to end racial discrimination?\n1) civil rights\n2) local rights\n3) international rights\n4) national rights", "1", "1 - The goal of the civil rights movement was to end racial discrimination against African Americans, & to gain full & equal rights for Americans of all races.", "rev. 02/16", "English"],
    
    ["The civil rights movement tried to end racial discrimination?\n1) True\n2) False", "1", "1 - The goal of the civil rights movement was to end racial discrimination against African Americans, & to gain full & equal rights for Americans of all races.", "rev. 02/16", "English"],
  # 85 What did Martin Luther King, Jr. do?    
    ["What did Martin Luther King, Jr. do?\n1) worked for equality for all Americans\n2) fought for unequal wages\n3) fought for civil rights\n4) 1 & 3\n5) 1 & 2", "4", "4 - King believed in the ideals of the Declaration of Independence: that every citizen deserves America's promise of equality and justice.", "rev. 02/16", "English"],
    
    ["Martin Luther King, Jr. worked for equality for all Americans and fought for civil rights.\n1) True\n2) False", "1", "1 - King believed in the ideals of the Declaration of Independence: that every citizen deserves America's promise of equality and justice.", "rev. 02/16", "English"],

    ["Martin Luther King, Jr. was a Baptist minister and civil rights leader. He worked hard to make America a more fair, tolerant, and equal nation.\n1) True\n2) False", "1", "1 - King believed in the ideals of the Declaration of Independence: that every citizen deserves America's promise of equality and justice.", "rev. 02/16", "English"],
  # 86 What major event happened on September 11, 2001, in the United States?
    ["What major event happened on September 11, 2001, in the United States?\n1) Terrorists attacked the US\n2) the US attacked Iraq\n3) the US attacked terrorists", "1", "1 - Four airplanes flying out of US airports were taken over by terrorists. Almost 3,000 people died in these attacks, and is the worst attack ever on US soil.", "rev. 02/16", "English"],
    
    ["On September 11, 2001, the United States was attacked by terrorists who hijacked four airplanes and killed almost 3,000 people.\n1) True\n2) False", "1", "1 - Four airplanes flying out of US airports were taken over by terrorists. Almost 3,000 people died in these attacks, and is the worst attack ever on US soil.", "rev. 02/16", "English"],
  # 87 Name one American Indian tribe in the United States.
    ["American Indians lived in North America for 1000s of years before the European settlers arrived. Press 1 & memorize a few American Indian tribes for the exam.", "9", "Pueblo, Oneida, Apache, Lakota, Iroquois, Crow, Creek, Teton, Blackfeet, Hopi, Seminole, Inuit", "rev. 02/16", "English"],
    
    ["American Indians lived in North America for 1000s of years before the European settlers arrived. Press 1 & memorize a few American Indian tribes for the exam.", "9", "Pueblo, Oneida, Apache, Lakota, Iroquois, Crow, Creek, Teton, Blackfeet, Hopi, Seminole, Inuit", "rev. 02/16", "English"],

    ["American Indians lived in North America for 1000s of years before the European settlers arrived. Press 1 & memorize a few American Indian tribes for the exam.", "9", "Cherokee, Cheyenne, Navajo, Arawak, Sioux, Shawnee, Chippewa, Mohegan, Choctaw, Huron", "rev. 02/16", "English"],

    ["American Indians lived in North America for 1000s of years before the European settlers arrived. Press 1 & memorize a few American Indian tribes for the exam.", "9", "Cherokee, Cheyenne, Navajo, Arawak, Sioux, Shawnee, Chippewa, Mohegan, Choctaw, Huron", "rev. 02/16", "English"],
  # 88 Name one of the two longest rivers in the United States.
    ["Name one of the two longest rivers in the United States.\n1) Missouri & Mississippi\n2) Colorado & Missouri\n3) Mississippi & Ohio\n4) Rio Grande & Missouri", "1", "1 - The Mississippi River runs through 10 states. The Missouri River is longer than the Mississippi River, starts in Montana & flows into the Mississippi River.", "rev. 02/16", "English"],
    
    ["Two longest rivers in the United States are the Colorado & Missouri River.\n1) True\n2) False", "2", "2 - The Mississippi River runs through 10 states. The Missouri River is longer than the Mississippi River, starts in Montana & flows into the Mississippi River.", "rev. 02/16", "English"],
  # 89 What ocean is on the West Coast of the United States?
    ["What ocean is on the West Coast of the United States?\n1) Atlantic Ocean\n2) Pacific Ocean\n3) Indian Ocean\n4) Arctic Ocean\n5) Southern Ocean", "2", "2 - The Pacific Ocean is on the West Coast of the United States. It is the largest ocean on Earth and covers one-third of the Earth's surface.", "rev. 02/16", "English"],
    
    ["The Atlantic Ocean is on the West Coast of the United States?\n1) True\n2) False", "2", "2 - The Pacific Ocean is on the West Coast of the United States. It is the largest ocean on Earth and covers one-third of the Earth's surface.", "rev. 02/16", "English"],

    ["The Pacific Ocean is on the West Coast of the United States?\n1) True\n2) False", "1", "1 - The Pacific Ocean is on the West Coast of the United States. It is the largest ocean on Earth and covers one-third of the Earth's surface.", "rev. 02/16", "English"],
  # 90 What ocean is on the East Coast of the United States?
    ["What ocean is on the East Coast of the United States?\n1) Atlantic Ocean\n2) Pacific Ocean\n3) Indian Ocean\n4) Arctic Ocean\n5) Southern Ocean", "1", "1 - The Atlantic Ocean is on the East Coast of the US. The ocean was named after the giant Atlas from Greek mythology. It is the 2nd largest ocean in the world.", "rev. 02/16", "English"],
    
    ["The Atlantic Ocean is on the East Coast of the United States?\n1) True\n2) False", "1", "1 - The Atlantic Ocean is on the East Coast of the US. The ocean was named after the giant Atlas from Greek mythology. It is the 2nd largest ocean in the world.", "rev. 02/16", "English"],

    ["The Pacific Ocean is on the East Coast of the United States?\n1) True\n2) False", "2", "2 - The Atlantic Ocean is on the East Coast of the US. The ocean was named after the giant Atlas from Greek mythology. It is the 2nd largest ocean in the world.", "rev. 02/16", "English"],
  # 91 Name one U.S. territory.
    ["Name one US territory.\n1) US Virgin Islands\n2) American Samoa\n3) Northern Mariana Islands\n4) Puerto Rico\n5) Guam\n6) 1 & 4\n7) 1 & 3\n8) All of the above", "8", "8 - There are five major U.S. territories: American Samoa, Guam, the Northern Mariana Islands, Puerto Rico, and the U.S. Virgin Islands.", "rev. 02/16", "English"],

    ["Northern Marina Islands is a US territory.\n1) True\n2) False", "1", "1 - There are five major U.S. territories: American Samoa, Guam, the Northern Mariana Islands, Puerto Rico, and the U.S. Virgin Islands.", "rev. 02/16", "English"],

    ["Guam is a US territory.\n1) True\n2) False", "1", "1 - There are five major U.S. territories: American Samoa, Guam, the Northern Mariana Islands, Puerto Rico, and the U.S. Virgin Islands.", "rev. 02/16", "English"],
    
    ["Dominican Republic is a US territory.\n1) True\n2) False", "2", "2 - There are five major U.S. territories: American Samoa, Guam, the Northern Mariana Islands, Puerto Rico, and the U.S. Virgin Islands.", "rev. 02/16", "English"],
    
    ["Puerto Rico and American Samoa are US territories.\n1) True\n2) False", "1", "1 - There are five major U.S. territories: American Samoa, Guam, the Northern Mariana Islands, Puerto Rico, and the U.S. Virgin Islands.", "rev. 02/16", "English"],
  # 92 Name one state that borders Canada.
    ["There are 5 states that border Canada.\n1) True\n2) False", "2", "2 - 13 states border Canada: Maine, Minnesota, New Hampshire, North Dakota, Vermont, Montana, New York, Idaho, Pennsylvania, Washington, Ohio, Alaska & Michigan", "rev. 02/16", "English"],

    ["There are 13 states that border Canada.\n1) True\n2) False", "1", "1 - 13 states border Canada: Maine, Minnesota, New Hampshire, North Dakota, Vermont, Montana, New York, Idaho, Pennsylvania, Washington, Ohio, Alaska & Michigan", "rev. 02/16", "English"],
    
    ["There are 10 states that border Canada.\n1) True\n2) False", "2", "1 - 13 states border Canada: Maine, Minnesota, New Hampshire, North Dakota, Vermont, Montana, New York, Idaho, Pennsylvania, Washington, Ohio, Alaska & Michigan", "rev. 02/16", "English"],
  # 93 Name one state that borders Mexico.
    ["Name one state that borders Mexico.\n1) Kansas\n2) Nevada\n3) Louisiana\n4) California", "4", "4 - The border between the United States and Mexico is about 1,900 miles long and spans four U.S. states - Arizona, California, New Mexico and Texas.", "rev. 02/16", "English"],

    ["Name two states that borders Mexico.\n1) Kansas & Arizona\n2) Nevada & New Mexico\n3) California & Arizona\n4) Louisiana & Texas\n5) Nevada & California", "3", "3 - The border between the United States and Mexico is about 1,900 miles long and spans four U.S. states - Arizona, California, New Mexico and Texas.", "rev. 02/16", "English"],
    
    ["Name two states that borders Mexico.\n1) Florida & Arizona\n2) Texas & New Mexico\n3) Nevada & Arizona\n4) Louisiana & Texas\n5) Nevada & California", "2", "2 - The border between the United States and Mexico is about 1,900 miles long and spans four U.S. states - Arizona, California, New Mexico and Texas.", "rev. 02/16", "English"],
  # 94 What is the capital of the United States?
    ["What is the capital of the United States?\n1) New York\n2) Washington\n3) Texas\n4) Washington, D.C.\n5) Arlington\n6) Manhattan\n7) Los Angeles\n8) Fort Knox", "4", "4 - The capital of the United States is Washington, D.C.", "rev. 02/16", "English"],

    ["The capital of the United States is Washington state.\n1) True\n2) False", "2", "2 - The capital of the United States is Washington, D.C.", "rev. 02/16", "English"],
    
    ["The capital of the United States is Washington D.C.\n1) True\n2) False", "1", "1 - The capital of the United States is Washington, D.C.", "rev. 02/16", "English"],
  # 95 Where is the Statue of Liberty?
    ["Where is the Statue of Liberty?\n1) New Jersey\n2) New York Harbor\n3) Liberty Island\n4) All of the above", "4", "4 - The Statue of Liberty is on Liberty Island, in the New York harbor. Acceptable answers also include New Jersey, near New York City, and on the Hudson River.", "rev. 02/16", "English"],
    
    ["Where is the Statue of Liberty?\n1) New Mexico\n2) Governor's Island\n3) Liberty Island\n4) Roosevelt Island", "3", "3 - The Statue of Liberty is on Liberty Island, in the New York harbor. Acceptable answers also include New Jersey, near New York City, and on the Hudson River.", "rev. 02/16", "English"],

    ["As a gift of friendship, France gave the Statue of Liberty to the US, 110 years after the signing of the Declaration of Independence.\n1) True\n2) False", "1", "1 - Also, the Statue of Liberty was the first thing new immigrants saw as they approached New York harbor and became a symbol of immigration. ", "rev. 02/16", "English"],
  # 96 Why does the flag have 13 stripes?
    ["Why does the flag have 13 stripes? because there were...\n1) 13 original leaders\n2) 13 original countries\n3) 13 original colonies\n4) 13 original cities", "3", "3 - There are 13 stripes on the flag because there were 13 original colonies. We call the American flag \"the Stars and Stripes.\"", "rev. 02/16", "English"],

    ["How many stripes does the American flag have?\n1) 50\n2) 15\n3) 25\n4) 52\n5) 13\n6) 7\n7) 10\n8) 100", "5", "5 - There are 13 stripes on the flag because there were 13 original colonies. We call the American flag \"the Stars and Stripes.\"", "rev. 02/16", "English"],

    ["The stripes of the American flag represent the original colonies.\n1) True\n2) False", "1", "1 - There are 13 stripes on the flag because there were 13 original colonies. We call the American flag \"the Stars and Stripes.\"", "rev. 02/16", "English"],
  # 97 Why does the flag have 50 stars?
    ["Why does the flag have 50 stars?\n1) because there are 51 states\n2) because there is one star for each city\n3) because there is one star for each state", "3", "3 - Each star on the flag represents a state. This is why the number of stars has changed over the years from 13 to 50.", "rev. 02/16", "English"],

    ["How many stars does the flag have?\n1) 50\n2) 15\n3) 25\n4) 52\n5) 13\n6) 7\n7) 10\n8) 100", "1", "1 - Each star on the flag represents a state. This is why the number of stars has changed over the years from 13 to 50.", "rev. 02/16", "English"],

    ["The stars of the American flag represent each US city.\n1) True\n2) False", "2", "2 - Each star on the flag represents a state. This is why the number of stars has changed over the years from 13 to 50.", "rev. 02/16", "English"],
  # 98 What is the name of the national anthem?
    ["What is the name of the national anthem?\n1) The Star-Spangled Wave\n2) The Star-Spangled Country\n3) The Star-Spangled Banner\n4) The Star-Spangled People", "3", "3 - Congress passed a law in 1931 naming \"The Star-Spangled Banner\" the official national anthem.", "rev. 02/16", "English"],

    ["The national anthem is called the Star-Spangled Banner.\n1) True\n2) False", "1", "1 - Congress passed a law in 1931 naming \"The Star-Spangled Banner\" the official national anthem.", "rev. 02/16", "English"],
  # 99 When do we celebrate Independence Day?
    ["When do we celebrate Independence Day?\n1) February 16\n2) January 1\n3) July 4\n4) November 10\n5) June 22\n6) August 5\n7) November 15", "3", "3 - In the United States, we celebrate Independence Day on July 4 to mark the anniversary of the adoption of the Declaration of Independence.", "rev. 02/16", "English"],

    ["July 3rd is Independence Day.\n1) True\n2) False", "2", "2 - In the United States, we celebrate Independence Day on July 4 to mark the anniversary of the adoption of the Declaration of Independence.", "rev. 02/16", "English"],
  # 100 Name two national U.S. holidays.
    ["Name two national U.S. holidays.\n1) New Year's and Valentine's Day\n2) Labor & Women's Day\n3) Presidents' & Memorandum Day\n4) Thanksgiving & Christmas", "4", "4 - Our National Holidays are: New Year's Day, Martin Luther King, Jr. Day, Presidents' Day, Memorial Day, Independence Day, Labor Day, Columbus Day, Veterans Day, Thanksgiving and Christmas", "rev. 02/16", "English"],

    ["Independence Day and Halloween are two national holidays.\n1) True\n2) False", "2", "2 - Our National Holidays are: New Year's Day, Martin Luther King, Jr. Day, Presidents' Day, Memorial Day, Independence Day, Labor Day, Columbus Day, Veterans Day, Thanksgiving and Christmas", "rev. 02/16", "English"],
    
    ["Presidents' Day and Veterans Day are two national holidays.\n1) True\n2) False", "1", "1 - Our National Holidays are: New Year's Day, Martin Luther King, Jr. Day, Presidents' Day, Memorial Day, Independence Day, Labor Day, Columbus Day, Veterans Day, Thanksgiving and Christmas", "rev. 02/16", "English"],

    ["Labor Day and Martin Luther King, Jr. Day are two national holidays.\n1) True\n2) False", "1", "1 - Our National Holidays are: New Year's Day, Martin Luther King, Jr. Day, Presidents' Day, Memorial Day, Independence Day, Labor Day, Columbus Day, Veterans Day, Thanksgiving and Christmas", "rev. 02/16", "English"],

    ["Memorial Day and Malcolm X Day are two national holidays.\n1) True\n2) False", "2", "2 - Our National Holidays are: New Year's Day, Martin Luther King, Jr. Day, Presidents' Day, Memorial Day, Independence Day, Labor Day, Columbus Day, Veterans Day, Thanksgiving and Christmas", "rev. 02/16", "English"]
  ]

  us_naturalization_en_questions.each do | body, correct_answer, explanation, version, language |
    Question.create(subject_id: 1, body: body, correct_answer: correct_answer, explanation: explanation, version: version, language: language, active: true)
  end

