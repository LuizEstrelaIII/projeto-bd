CREATE TABLE Livros (
  id_livro INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(255) NOT NULL,
  autor VARCHAR(255) NOT NULL,
  editora VARCHAR(255) NOT NULL,
  isbn VARCHAR(20) NOT NULL UNIQUE,
  preco DECIMAL(10,2) NOT NULL,
  materia VARCHAR(255) NOT NULL,
  nivel_ensino VARCHAR(255) NOT NULL,
  resumo TEXT,
  edicao INT,
  ano_publicacao INT,
  imagem_capa BLOB
);
CREATE TABLE Alunos (
  id_aluno INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  senha VARCHAR(255) NOT NULL,
  data_nascimento DATE NOT NULL,
  turma VARCHAR(255) NOT NULL,
  endereco VARCHAR(255),
  cidade VARCHAR(255),
  estado VARCHAR(255),
  cep VARCHAR(8),
  telefone VARCHAR(20)
);
CREATE TABLE Vendas (
  id_venda INT PRIMARY KEY AUTO_INCREMENT,
  id_aluno INT NOT NULL,
  id_livro INT NOT NULL,
  data_venda DATE NOT NULL,
  quantidade INT NOT NULL,
  FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
  FOREIGN KEY (id_livro) REFERENCES Livros(id_livro)
);
CREATE TABLE Coordenação (
  id_coordenador INT PRIMARY KEY AUTO_INCREMENT,
  nome_coordenador VARCHAR(255) NOT NULL,
  email_coordenador VARCHAR(255) NOT NULL UNIQUE,
  senha_coordenador VARCHAR(255) NOT NULL,
  cargo_coordenador VARCHAR(255) NOT NULL
);
CREATE TABLE Professores (
  id_professor INT PRIMARY KEY AUTO_INCREMENT,
  nome_professor VARCHAR(255) NOT NULL,
  email_professor VARCHAR(255) NOT NULL UNIQUE,
  senha_professor VARCHAR(255) NOT NULL,
  materia_professor VARCHAR(255) NOT NULL,
  turma_professor VARCHAR(255) NOT NULL
);
CREATE TABLE Empréstimos (
  id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
  id_produto INT NOT NULL,
  id_aluno INT NOT NULL,
  data_emprestimo DATE NOT NULL,
  data_devolucao DATE,
  observacao TEXT,
  FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
  FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno)
);

CREATE TABLE Produtos (
  id_produto INT PRIMARY KEY AUTO_INCREMENT,
  nome_produto VARCHAR(255) NOT NULL,
  descricao TEXT NOT NULL,
  categoria VARCHAR(255) NOT NULL,
  quantidade_estoque INT NOT NULL,
  valor_unitario DECIMAL(10,2) NOT NULL,
  imagem_produto BLOB
);