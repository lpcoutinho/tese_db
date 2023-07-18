-- Cria um país
INSERT INTO "country" ("name") VALUES ('Brasil');

-- Adiciona os Estados do Brasil
INSERT INTO "state" ("country_id", "name") VALUES
(1, 'Acre'),
(1, 'Alagoas'),
(1, 'Amapá'),
(1, 'Amazonas'),
(1, 'Bahia'),
(1, 'Ceará'),
(1, 'Distrito Federal'),
(1, 'Espírito Santo'),
(1, 'Goiás'),
(1, 'Maranhão'),
(1, 'Mato Grosso'),
(1, 'Mato Grosso do Sul'),
(1, 'Minas Gerais'),
(1, 'Pará'),
(1, 'Paraíba'),
(1, 'Paraná'),
(1, 'Pernambuco'),
(1, 'Piauí'),
(1, 'Rio de Janeiro'),
(1, 'Rio Grande do Norte'),
(1, 'Rio Grande do Sul'),
(1, 'Rondônia'),
(1, 'Roraima'),
(1, 'Santa Catarina'),
(1, 'São Paulo'),
(1, 'Sergipe'),
(1, 'Tocantins');

-- Adiciona algumas cidades do Brasil
INSERT INTO "city" ("state_id", "name") VALUES
-- Acre (state_id = 1)
(1, 'Rio Branco'),
(1, 'Cruzeiro do Sul'),
(1, 'Sena Madureira'),
-- Alagoas (state_id = 2)
(2, 'Maceió'),
(2, 'Arapiraca'),
(2, 'Rio Largo'),
-- Amapá (state_id = 3)
(3, 'Macapá'),
(3, 'Santana'),
(3, 'Laranjal do Jari'),
-- Amazonas (state_id = 4)
(4, 'Manaus'),
(4, 'Parintins'),
(4, 'Itacoatiara'),
-- Bahia (state_id = 5)
(5, 'Salvador'),
(5, 'Feira de Santana'),
(5, 'Vitória da Conquista'),
-- Ceará (state_id = 6)
(6, 'Fortaleza'),
(6, 'Caucaia'),
(6, 'Juazeiro do Norte'),
-- Distrito Federal (state_id = 7)
(7, 'Brasília'),
-- Espírito Santo (state_id = 8)
(8, 'Vitória'),
(8, 'Vila Velha'),
(8, 'Cariacica'),
-- Goiás (state_id = 9)
(9, 'Goiânia'),
(9, 'Aparecida de Goiânia'),
(9, 'Anápolis'),
-- Maranhão (state_id = 10)
(10, 'São Luís'),
(10, 'Imperatriz'),
(10, 'Timon'),
-- Mato Grosso (state_id = 11)
(11, 'Cuiabá'),
(11, 'Várzea Grande'),
(11, 'Rondonópolis'),
-- Mato Grosso do Sul (state_id = 12)
(12, 'Campo Grande'),
(12, 'Dourados'),
(12, 'Três Lagoas'),
-- Minas Gerais (state_id = 13)
(13, 'Belo Horizonte'),
(13, 'Uberlândia'),
(13, 'Contagem'),
-- Pará (state_id = 14)
(14, 'Belém'),
(14, 'Ananindeua'),
(14, 'Santarém'),
-- Paraíba (state_id = 15)
(15, 'João Pessoa'),
(15, 'Campina Grande'),
(15, 'Santa Rita'),
-- Paraná (state_id = 16)
(16, 'Curitiba'),
(16, 'Londrina'),
(16, 'Maringá'),
-- Pernambuco (state_id = 17)
(17, 'Recife'),
(17, 'Jaboatão dos Guararapes'),
(17, 'Olinda'),
-- Piauí (state_id = 18)
(18, 'Teresina'),
(18, 'Parnaíba'),
(18, 'Picos'),
-- Rio de Janeiro (state_id = 19)
(19, 'Rio de Janeiro'),
(19, 'São Gonçalo'),
(19, 'Duque de Caxias'),
-- Rio Grande do Norte (state_id = 20)
(20, 'Natal'),
(20, 'Mossoró'),
(20, 'Parnamirim'),
-- Rio Grande do Sul (state_id = 21)
(21, 'Porto Alegre'),
(21, 'Caxias do Sul'),
(21, 'Canoas'),
-- Rondônia (state_id = 22)
(22, 'Porto Velho'),
(22, 'Ji-Paraná'),
(22, 'Ariquemes'),
-- Roraima (state_id = 23)
(23, 'Boa Vista'),
(23, 'Caracaraí'),
(23, 'Pacaraima'),
-- Santa Catarina (state_id = 24)
(24, 'Florianópolis'),
(24, 'Joinville'),
(24, 'Blumenau'),
-- São Paulo (state_id = 25)
(25, 'São Paulo'),
(25, 'Guarulhos'),
(25, 'Campinas'),
-- Sergipe (state_id = 26)
(26, 'Aracaju'),
(26, 'Nossa Senhora do Socorro'),
(26, 'Lagarto'),
-- Tocantins (state_id = 27)
(27, 'Palmas'),
(27, 'Araguaína'),
(27, 'Gurupi');

-- Adiciona um usuário
INSERT INTO "user_register" (
  "name", "last_name", "email", "cpf", "rg", "password", "birth_date",
  "city_id", "address", "number", "address_complement", "postal_code",
  "phone", "mobile_phone"
) VALUES 
  ('Usuario', 'Teste', 'teste@examplo.com', '1234567890', '987654321', 'minhasenha', '1990-01-01',
   1, 'Rua Santa Filomena', '123', 'Apt 4', '12345-678', '123-456-7890', '987-654-3210'),
  ('Usuário 2', 'Sobrenome 2', 'usuario2@exemplo.com', '0987654321', '987664321', 'senha2', '1995-02-10',
   2, 'Rua Nova 2', '456', 'Apt 2', '54321-987', '987-654-3210', '123-456-7890'),
  ('Usuário 3', 'Sobrenome 3', 'usuario3@exemplo.com', '1357924680', '246813579', 'senha3', '1988-07-15',
   3, 'Rua Velha', '789', 'Casa 3', '78945-123', '987-654-3210', '123-456-7890'),
  ('Usuário 4', 'Sobrenome 4', 'usuario4@exemplo.com', '2468013579', '679135802', 'senha4', '1992-11-20',
   4, 'Rua Antiga', '987', 'Apt 1', '98765-432', '987-654-3210', '123-456-7890'),
  ('Usuário 5', 'Sobrenome 5', 'usuario5@exemplo.com', '3141592653', '535897932', 'senha5', '1997-04-25',
   5, 'Rua Distante', '321', 'Casa 5', '54321-987', '987-654-3210', '123-456-7890'),
  ('Usuário 6', 'Sobrenome 6', 'usuario6@exemplo.com', '2718281828', '182845904', 'senha6', '1985-09-30',
   6, 'Rua Longe', '654', 'Apt 6', '13579-864', '987-654-3210', '123-456-7890');
;

-- Adiciona um familiar ao usuário 
INSERT INTO "familiar" (
  "user_id", "name", "kinship", "email", "phone", "mobile_phone"
) VALUES
  (1, 'Ciclano de tal', 'Irmão', 'ciclano@exemplo.com', '111-111-1111', '222-222-2222'),
  (2, 'Beltrano de tal', 'Tio', 'beltrano@exemplo.com', '333-333-3333', '444-444-4444'),
  (3, 'Sicrano de tal', 'Primo', 'sicrano@exemplo.com', '555-555-5555', '666-666-6666'),
  (4, 'Outro Parente', 'Parente', 'outro@exemplo.com', '777-777-7777', '888-888-8888'),
  (5, 'Mais um Familiar', 'Parente', 'maisum@exemplo.com', '999-999-9999', '000-000-0000');

-- Adiciona dados sociais ao usuário 
INSERT INTO "social" (
  "user_id", "type_music", "favorite_sport", "favorite_team", "favorite_card_game",
  "favorite_board_game", "favorite_news", "favorite_animal_species", "favorite_animal_breed",
  "facebook_link", "instagram_link"
) VALUES
  (1, 'Sertanejo', 'Vôlei', 'Flamengo', 'Poker', 'Dominó', 'Esportes', 'Cachorro', 'Vira-lata', 'facebook.com/user1', 'instagram.com/user1'),
  (2, 'Rock', 'Basquete', 'Boston Celtics', 'Truco', 'War', 'Tecnologia', 'Gato', 'Siamês', 'facebook.com/user1', 'instagram.com/user1'),
  (3, 'Pop', 'Tênis', 'Manchester United', 'Pife', 'Uno', 'Política', 'Cavalo', 'Quarto de Milha', 'facebook.com/user1', 'instagram.com/user1'),
  (4, 'Hip Hop', 'Natação', 'Golden State Warriors', 'Canastra', 'Scrabble', 'Moda', 'Papagaio', 'Arara', 'facebook.com/user1', 'instagram.com/user1'),
  (5, 'Eletrônica', 'Handebol', 'Real Madrid', 'Bisca', 'Catan', 'Negócios', 'Tigre', 'Bengal', 'facebook.com/user1', 'instagram.com/user1');

-- Adiciona dados básicos de saúde ao usuário 
INSERT INTO "health" (
  "user_id", "height", "weigth", "allergies", "medical_insurance",
  "medical_insurance_register", "hospital_for_removal", "private_physician_name",
  "private_physician_phone", "private_physician_email"
) VALUES
  (1, 1.80, 75.0, 'Pólen', 'Unimed', '54321', 'Hospital Y', 'Dr. Michelle', '111-111-1111', 'michelle@examplo.com'),
  (2, 1.70, 65.5, 'Lactose', 'Bradesco Saúde', '98765', 'Hospital Z', 'Dr. Fernando', '222-222-2222', 'fernando@examplo.com'),
  (3, 1.85, 80.0, 'Penicilina', 'SulAmérica', '24680', 'Hospital W', 'Dra. Camila', '333-333-3333', 'camila@examplo.com'),
  (4, 1.68, 60.2, 'Amendoim', 'Porto Seguro', '13579', 'Hospital V', 'Dr. Gabriel', '444-444-4444', 'gabriel@examplo.com'),
  (5, 1.90, 85.5, 'Ácaros', 'NotreDame Intermédica', '80246', 'Hospital U', 'Dra. Larissa', '555-555-5555', 'larissa@examplo.com');

-- Adiciona dados de medicamento ao usuário 
INSERT INTO "medicine" (
  "user_id", "medicine_name", "medicine_dosage"
) VALUES
  (1, 'Remédio B', '2 comprimidos ao dia'),
  (2, 'Remédio C', '1 colher de sopa duas vezes ao dia'),
  (3, 'Remédio D', '1 cápsula antes das refeições'),
  (4, 'Remédio E', '3 gotas no ouvido três vezes ao dia'),
  (5, 'Remédio F', '1 injeção a cada 10 dias');

-- Adiciona dados de alimentação ao usuário 
INSERT INTO "diet" (
  "user_id", "favorite_food"
) VALUES
  (1, 'Hamburguer'),
  (2, 'Sushi'),
  (3, 'Lasanha'),
  (4, 'Churrasco'),
  (5, 'Salada');

-- Adiciona dados do histórico médico ao usuário 
INSERT INTO "medical_history" (
  "user_id", "medical_history_resume"
) VALUES
  (1, 'Resumo do histórico médico do usuário'),
  (1, 'Outro resumo do histórico médico do usuário'),
  (2, 'Mais um resumo do histórico médico do usuário'),
  (3, 'Novo resumo do histórico médico do usuário'),
  (4, 'Outro exemplo de resumo do histórico médico do usuário'),
  (5, 'Mais um exemplo de resumo do histórico médico do usuário');
    
-- Adiciona dados de exames ao usuário 
INSERT INTO "medical_exams" (
  "user_id", "ecg", "pa", "sat_o2", "glycemia", "other_exams"
) VALUES
  (1, 'caminho/para/imagem/ECG1', 'caminho/para/imagem/PA2', 'Saturação de O2 2', 'Glicemia 2', 'Outros exames 2'),
  (1, 'caminho/para/imagem/ECG2', 'caminho/para/imagem/PA2', 'Saturação de O2 2', 'Glicemia 2', 'Outros exames 2'),
  (2, 'caminho/para/imagem/ECG3', 'caminho/para/imagem/PA3', 'Saturação de O2 3', 'Glicemia 3', 'Outros exames 3'),
  (2, 'caminho/para/imagem/ECG4', 'caminho/para/imagem/PA3', 'Saturação de O2 3', 'Glicemia 3', 'Outros exames 3'),
  (2, 'caminho/para/imagem/ECG5', 'caminho/para/imagem/PA4', 'Saturação de O2 4', 'Glicemia 4', 'Outros exames 4'),
  (3, 'caminho/para/imagem/ECG6', 'caminho/para/imagem/PA4', 'Saturação de O2 4', 'Glicemia 4', 'Outros exames 4'),
  (3, 'caminho/para/imagem/ECG7', 'caminho/para/imagem/PA5', 'Saturação de O2 5', 'Glicemia 5', 'Outros exames 5'),
  (4, 'caminho/para/imagem/ECG8', 'caminho/para/imagem/PA5', 'Saturação de O2 5', 'Glicemia 5', 'Outros exames 5'),
  (4, 'caminho/para/imagem/ECG9', 'caminho/para/imagem/PA6', 'Saturação de O2 6', 'Glicemia 6', 'Outros exames 6'),
  (5, 'caminho/para/imagem/ECG10', 'caminho/para/imagem/PA6', 'Saturação de O2 6', 'Glicemia 6', 'Outros exames 6');

-- Adiciona tipo de plano(serviço)
INSERT INTO "plan_type" (
  "plan_type", "plan_resume"
) VALUES
  ('Tipo de Plano A', 'Resumo do plano A'),
  ('Tipo de Plano B', 'Resumo do plano B'),
  ('Tipo de Plano C', 'Resumo do plano C'),
  ('Tipo de Plano D', 'Resumo do plano D'),
  ('Tipo de Plano E', 'Resumo do plano E'),
  ('Tipo de Plano F', 'Resumo do plano F');

-- Adiciona uma empresa
INSERT INTO "company" (
  "name", "cnpj", "address", "number", "city_id", "address_complement",
  "phone", "email", "website", "company_resume"
) VALUES
  ('Nome da Empresa', '1234567890', 'Endereço da Empresa', '123', 1, 'Complemento do Endereço',
   '123-456-7890', 'empresa@example.com', 'www.empresa.com', 'Resumo da Empresa'),
  ('Nome da Empresa 2', '9876543210', 'Endereço da Empresa 2', '456', 2, 'Complemento do Endereço 2',
   '987-654-3210', 'empresa2@example.com', 'www.empresa2.com', 'Resumo da Empresa 2'),
  ('Nome da Empresa 3', '2468135790', 'Endereço da Empresa 3', '789', 3, 'Complemento do Endereço 3',
   '111-111-1111', 'empresa3@example.com', 'www.empresa3.com', 'Resumo da Empresa 3'),
  ('Nome da Empresa 4', '1357924680', 'Endereço da Empresa 4', '987', 4, 'Complemento do Endereço 4',
   '222-222-2222', 'empresa4@example.com', 'www.empresa4.com', 'Resumo da Empresa 4'),
  ('Nome da Empresa 5', '8024681357', 'Endereço da Empresa 5', '654', 5, 'Complemento do Endereço 5',
   '333-333-3333', 'empresa5@example.com', 'www.empresa5.com', 'Resumo da Empresa 5'),
  ('Nome da Empresa 6', '2718281828', 'Endereço da Empresa 6', '321', 6, 'Complemento do Endereço 6',
   '444-444-4444', 'empresa6@example.com', 'www.empresa6.com', 'Resumo da Empresa 6');

-- Adiciona tipo de condomínio
INSERT INTO "condominium_type" (
  "condominium_type"
) VALUES
  ('Tipo de Condomínio A'),
  ('Tipo de Condomínio B'),
  ('Tipo de Condomínio C'),
  ('Tipo de Condomínio D'),
  ('Tipo de Condomínio E'),
  ('Tipo de Condomínio F');

-- Adiciona um condomínio
INSERT INTO "condominium" (
  "condominium_type", "name", "cnpj", "address", "number", "city_id",
  "address_complement", "phone", "email", "website"
) VALUES
  (1, 'Nome do Condomínio', '1234567890', 'Endereço do Condomínio', '123', 1,
   'Complemento do Endereço', '123-456-7890', 'condominio@example.com', 'www.condominio.com'),
  (2, 'Nome do Condomínio 2', '9876543210', 'Endereço do Condomínio 2', '456', 2,
   'Complemento do Endereço 2', '987-654-3210', 'condominio2@example.com', 'www.condominio2.com'),
  (3, 'Nome do Condomínio 3', '2468135790', 'Endereço do Condomínio 3', '789', 3,
   'Complemento do Endereço 3', '111-111-1111', 'condominio3@example.com', 'www.condominio3.com'),
  (4, 'Nome do Condomínio 4', '1357924680', 'Endereço do Condomínio 4', '987', 4,
   'Complemento do Endereço 4', '222-222-2222', 'condominio4@example.com', 'www.condominio4.com'),
  (5, 'Nome do Condomínio 5', '8024681357', 'Endereço do Condomínio 5', '654', 5,
   'Complemento do Endereço 5', '333-333-3333', 'condominio5@example.com', 'www.condominio5.com'),
  (6, 'Nome do Condomínio 6', '2718281828', 'Endereço do Condomínio 6', '321', 6,
   'Complemento do Endereço 6', '444-444-4444', 'condominio6@example.com', 'www.condominio6.com');

-- Adiciona tipo de propriedade
INSERT INTO "property_type" (
  "property_type"
) VALUES
  ('Tipo de Propriedade A'),
  ('Tipo de Propriedade B'),
  ('Tipo de Propriedade C'),
  ('Tipo de Propriedade D'),
  ('Tipo de Propriedade E'),
  ('Tipo de Propriedade F');

-- Adiciona uma propriedade
INSERT INTO "property" (
  "property_type", "condominium_id", "address", "number", "city_id",
  "address_complement", "area", "rooms", "bathrooms", "parking_spaces", "floor"
) VALUES
  (1, 1, 'Endereço da Propriedade', '123', 1, 'Complemento do Endereço',
   100.5, 3, 2, 2, 5),
  (2, 2, 'Endereço da Propriedade 2', '456', 2, 'Complemento do Endereço 2',
   120.8, 4, 3, 2, 7),
  (3, 3, 'Endereço da Propriedade 3', '789', 3, 'Complemento do Endereço 3',
   90.3, 2, 1, 1, 2),
  (4, 4, 'Endereço da Propriedade 4', '987', 4, 'Complemento do Endereço 4',
   150.0, 5, 4, 3, 10),
  (5, 5, 'Endereço da Propriedade 5', '654', 5, 'Complemento do Endereço 5',
   200.5, 6, 3, 2, 4),
  (6, 6, 'Endereço da Propriedade 6', '321', 6, 'Complemento do Endereço 6',
   80.0, 1, 1, 0, 1);

-- Adiciona smartcity
INSERT INTO "smart_city" (
  "plan_type_id"
) VALUES 
  (1),
  (2),
  (3),
  (4);

-- Adiciona dados de afiliação de empresas
INSERT INTO "affiliation" ("user_id", "company_id")
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 2),
  (5, 3);

-- Adiciona dados de afiliação de condomínios
INSERT INTO "affiliation" ("user_id", "condominium_id")
VALUES
  (1, 4),
  (2, 3),
  (3, 3),
  (4, 1),
  (5, 2);

-- Adiciona rotas possíveis
INSERT INTO "available_routes" ("name", "address", "number", "city_id", "address_complement", "latitude", "longitude", "phone", "email")
VALUES
  ('Lugar Rota 1', 'Endereço Rota 1', '123', 1, 'Complemento Rota 1', 41.123456, -8.654321, '123-456-7890', 'rota1@example.com'),
  ('Lugar Rota 2', 'Endereço Rota 2', '456', 2, 'Complemento Rota 2', 42.654321, -9.123456, '987-654-3210', 'rota2@example.com'),
  ('Lugar Rota 3', 'Endereço Rota 3', '789', 3, 'Complemento Rota 3', 43.987654, -10.123456, '111-222-3333', 'rota3@example.com'),
  ('Lugar Rota 4', 'Endereço Rota 4', '321', 1, 'Complemento Rota 4', 44.654321, -11.123456, '444-555-6666', 'rota4@example.com'),
  ('Lugar Rota 5', 'Endereço Rota 5', '654', 2, 'Complemento Rota 5', 45.123456, -12.654321, '777-888-9999', 'rota5@example.com');

-- Adiciona registros de uso dos usuários
INSERT INTO "usage_logs" ("user_id", "available_routes_id", "notes")
VALUES
  (1, 1, 'Notas sobre o uso da rota 1'),
  (2, 2, 'Notas sobre o uso da rota 2'),
  (1, 3, 'Notas sobre o uso da rota 3'),
  (2, 1, 'Notas sobre o uso da rota 4'),
  (3, 2, 'Notas sobre o uso da rota 5');
