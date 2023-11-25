Tabela "users":

id (Chave Primária)
name
email
password
role
Tabela "user_courses":

id (Chave Primária)
user_id (Chave Estrangeira referenciando users.id)
course_id (Chave Estrangeira referenciando courses.id)
Tabela "user_lessons":

id (Chave Primária)
user_id (Chave Estrangeira referenciando users.id)
lesson_id (Chave Estrangeira referenciando lessons.id)
Tabela "user_questions":

id (Chave Primária)
user_id (Chave Estrangeira referenciando users.id)
question_id (Chave Estrangeira referenciando questions.id)
Tabela "user_answers":

id (Chave Primária)
user_id (Chave Estrangeira referenciando users.id)
answer_id (Chave Estrangeira referenciando answers.id)
Tabela "courses":

id (Chave Primária)
name
category_id (Chave Estrangeira referenciando categories.id)
Tabela "lessons":

id (Chave Primária)
name
course_id (Chave Estrangeira referenciando courses.id)
Tabela "questions":

id (Chave Primária)
name
lesson_id (Chave Estrangeira referenciando lessons.id)
Tabela "answers":

id (Chave Primária)
name
question_id (Chave Estrangeira referenciando questions.id)
Tabela "categories":

id (Chave Primária)
name