BEGIN TRANSACTION;

Create table cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(30) NOT NULL,
    telefone TEXT(15) NOT NULL
);

-------tabela pet-------
Create table pet (
    id_pet INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(30) NOT NULL,
    especie TEXT(30) NOT NULL,
    idade INTEGER,
    id_cliente INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-----tabela veterinario-----
Create table veterinario (
    id_veterinario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100) NOT NULL,
    crmv TEXT(20) NOT NULL
);

-----tabela consulta-----
Create table consulta (
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    data TEXT NOT NULL,
    tipo_servico TEXT(100),
    id_pet INTEGER,
    id_veterinario INTEGER,
    FOREIGN KEY(id_pet) REFERENCES pet(id_pet),
    FOREIGN KEY(id_veterinario) REFERENCES veterinario(id_veterinario)
);

-----tabela medicamento-----
Create table medicamento (
    id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    quantidade INTEGER,
    validade_medicamento TEXT,
    id_consulta INTEGER,
    FOREIGN KEY(id_consulta) REFERENCES consulta(id_consulta)
);

-----tabela de ligacao-----
Create table medicamento_consulta (
    id_consulta INTEGER,
    id_medicamento INTEGER,
    dose_aplicada TEXT,
    FOREIGN KEY(id_consulta) REFERENCES consulta(id_consulta),
    FOREIGN KEY(id_medicamento) REFERENCES medicamento(id_medicamento)
);