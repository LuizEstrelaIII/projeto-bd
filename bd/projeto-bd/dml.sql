INSERT INTO Produtos (nome_produto, descricao, categoria, quantidade_estoque, valor_unitario)
VALUES (
  'Livro de Matemática', 'Livro básico de matemática para o ensino fundamental.', 'Matemática', 10, 25.90
),
(
  'Caderno Universitário', 'Caderno com 100 folhas pautadas.', 'Papelaria', 15, 5.50
),
(
  'Bola de Futebol', 'Bola de futebol oficial tamanho 5.', 'Esportes', 5, 39.90
);

INSERT INTO Empréstimos (id_produto, id_aluno, data_emprestimo)
VALUES (
  1, 1, '2024-04-25'
),
(
  2, 2, '2024-04-25'
);

INSERT INTO Coordenação (nome_coordenador, email_coordenador, senha_coordenador, cargo_coordenador)
VALUES (
  'Ana Silva', 'ana.silva@escola.com.br', 'senha123', 'Coordenadora Pedagógica'
);

INSERT INTO Professores (nome_professor, email_professor, senha_professor, materia_professor, turma_professor)
VALUES (
  'João Oliveira', 'joao.oliveira@escola.com.br', 'senha123', 'Matemática', '8º Ano'
),
(
  'Maria Souza', 'maria.souza@escola.com.br', 'senha123', 'Português', '7º Ano'
);

INSERT INTO Livros (titulo, autor, editora, isbn, preco, materia, nivel_ensino, resumo, edicao, ano_publicacao, imagem_capa)
VALUES (
  'Matemática para iniciantes', 'João Silva', 'Editora ABC', '978-85-85000-12-3', 29.90, 'Matemática', 'Ensino Fundamental', 'Este livro apresenta os conceitos básicos de matemática de forma clara e acessível.', 1, 2020, NULL
);

INSERT INTO Alunos (nome, email, senha, data_nascimento, turma, endereco, cidade, estado, cep, telefone)
VALUES (
  'Maria Oliveira', 'maria@example.com', 'senha123', '1990-01-01', '8º Ano', 'Rua das Flores, 123', 'Recife', 'PE', '50000-000', '(81) 9999-9999'
);

INSERT INTO Vendas (id_aluno, id_livro, data_venda, quantidade)
VALUES (
  1, 1, '2024-04-25', 1
);