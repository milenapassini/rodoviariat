-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Nov-2021 às 20:16
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rodoviaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `idCidade` int(11) NOT NULL,
  `nome` varchar(256) NOT NULL,
  `cep` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`idCidade`, `nome`, `cep`) VALUES
(1, 'Seberi', '98380-970'),
(2, 'Vista Alegre', '98415-970'),
(3, 'Taquaruçu do Sul', '98410-970'),
(4, 'Frederico Westphalen', '98400-970'),
(5, 'Cristal do Sul', '98368-971'),
(6, 'Palmitinho', '98430-970'),
(7, 'Gravatai', '94197-520'),
(8, 'Porto Alegre', '90870-280'),
(9, 'Uruguaiana', '97501-777'),
(10, 'Bagé', '96400-580'),
(11, 'Gramado', '95670-972'),
(12, 'Redentora', '98550-970'),
(13, 'Santo Augusto', '98590-970'),
(14, 'Giruá', '98870-970'),
(15, 'Ametista do Sul', '98465-971'),
(16, 'Santo Cristo', '98960-970'),
(17, 'Viamão', '94445-170'),
(18, 'Santa Cruz do Sul', '96832-010'),
(19, 'Erechim', '99701-016'),
(20, 'Dom Pedrito', '96450-970');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `rg` int(10) NOT NULL,
  `nome` varchar(256) NOT NULL,
  `login` varchar(256) NOT NULL,
  `senha` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `cpf`, `rg`, `nome`, `login`, `senha`) VALUES
(1, '599.856.270-40', 165109725, 'Gabriela Carvalho', '', 'G7YJK79o'),
(2, '229.381.600-11', 271855915, 'Laura Vieira', '', '5sp3kop1'),
(3, '534.543.520-02', 292756434, 'Milena Pazini', '', 'cwpzd4et'),
(4, '056.565.950-21', 208729707, 'Lucas Oliveira', '', 'cawe26bb'),
(5, '113.202.910-40', 333229472, 'Roberto Justo', '', 'ywkppeun'),
(6, '339.209.730-62', 137140988, 'Emily Garcia', '', '6u5shib7'),
(7, '285.959.250-46', 324185911, 'Caio Castro', '', '6do48wmz'),
(8, '306.421.720-80', 132974356, 'Diogo Ribeiro', '', 'x6r77hx0'),
(9, '899.605.090-36', 337864962, 'Amanda Bruna', '', 'fm4uq963'),
(10, '737.492.670-73', 150581555, 'Leticia Rodrigues', '', 'Zp1BlQNY');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresadetransporte`
--

CREATE TABLE `empresadetransporte` (
  `idEmpresaTransporte` int(11) NOT NULL,
  `razaoSocial` varchar(256) NOT NULL,
  `cnpj` varchar(18) DEFAULT NULL,
  `inscricaoEstadual` varchar(11) NOT NULL,
  `endereco` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estacao`
--

CREATE TABLE `estacao` (
  `idEstacao` int(11) NOT NULL,
  `razaoSocial` varchar(256) NOT NULL,
  `cnpj` varchar(18) NOT NULL,
  `inscricaoEstadual` varchar(11) NOT NULL,
  `endereco` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estacao`
--

INSERT INTO `estacao` (`idEstacao`, `razaoSocial`, `cnpj`, `inscricaoEstadual`, `endereco`) VALUES
(1, 'Rodoviaria Erval Seco', '55.120.848/0001-46', '241/0574046', 'Rua Visconde de São Leopoldo'),
(2, 'Rodoviaria Panambi', '22.832.515/0001-90', '758/4033157', 'Rua Buenos Aires'),
(3, 'Rodoviaria Frederico Westphalen', '98.551.364/0001-64', '580/3315989', 'Rua C'),
(4, 'Rodoviaria Seberi', '45.821.435/0001-35', '986/1176034', 'Travessa Javari'),
(5, 'Rodoviaria Erval Seco', '55.120.848/0001-46', '241/0574046', 'Rua Visconde de São Leopoldo'),
(6, 'Rodoviaria Panambi', '22.832.515/0001-90', '758/4033157', 'Rua Buenos Aires'),
(7, 'Rodoviaria Frederico Westphalen', '98.551.364/0001-64', '580/3315989', 'Rua C'),
(8, 'Rodoviaria Seberi', '45.821.435/0001-35', '986/1176034', 'Travessa Javari'),
(9, 'Rodoviaria Vista Alegre', '29.409.532/0001-69', '406/3411841', 'Rua Simão Bolivar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL,
  `nome` varchar(256) NOT NULL,
  `cpf` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `nome`, `cpf`) VALUES
(1, 'Carla Reis', '877.707.870-50'),
(2, 'Olivia Bastos', '347.433.430-11'),
(3, 'Vanessa Ribeira', '580.856.180-95'),
(4, 'Eduardo Vargas', '160.438.150-79'),
(5, 'Rodrigo Cardoso', '108.861.930-44');

-- --------------------------------------------------------

--
-- Estrutura da tabela `linha`
--

CREATE TABLE `linha` (
  `idLinha` int(11) NOT NULL,
  `box` int(11) NOT NULL,
  `horario` varchar(7) NOT NULL,
  `descricao` varchar(256) NOT NULL,
  `prefixo` varchar(256) NOT NULL,
  `diaDaSemana` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `linha`
--

INSERT INTO `linha` (`idLinha`, `box`, `horario`, `descricao`, `prefixo`, `diaDaSemana`) VALUES
(1, 6, '20:00', 'Frederico W x Vista Alegre', '25678', ''),
(2, 3, '19:00', '95743', '95743', 'Seberi x Palmit'),
(3, 2, '07:30', '47123', '47123', 'Erval Seco x Re'),
(4, 1, '05:40', '73456', '73456', 'Santo Augusto x'),
(5, 9, '16:00', '09645', '09645', 'Parobé x Porto '),
(6, 0, '15:00', '56789', '56789', 'Erechim x Santo'),
(7, 8, '11:00', '84567', '84567', 'Tramandaí x Gra'),
(8, 4, '08:00', '14235', '14235', 'Erval Seco x Pa'),
(9, 10, '12:30', '05677', '05677', 'Ijuí x Panambi'),
(10, 7, '02:30', '45632', '45632', 'Alvorada, Porto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modalidade`
--

CREATE TABLE `modalidade` (
  `idModalidade` int(11) NOT NULL,
  `descricao` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `modalidade`
--

INSERT INTO `modalidade` (`idModalidade`, `descricao`) VALUES
(12101, 'transporte escolar'),
(12102, 'transporte publico'),
(12103, 'turismo'),
(12104, 'transporte privado'),
(12105, 'viagem');

-- --------------------------------------------------------

--
-- Estrutura da tabela `passagem`
--

CREATE TABLE `passagem` (
  `idPassagem` int(11) NOT NULL,
  `bilhete` varchar(256) NOT NULL,
  `dataEmissao` date NOT NULL,
  `dataPassagem` date NOT NULL,
  `poltrona` int(11) NOT NULL,
  `valor` double NOT NULL,
  `fk_linha` int(11) NOT NULL,
  `fk_cliente` int(11) NOT NULL,
  `fk_valorSeguro` int(11) NOT NULL,
  `fk_funcionarioEmitente` int(11) NOT NULL,
  `fk_origem` int(11) NOT NULL,
  `fk_destino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `seguradora`
--

CREATE TABLE `seguradora` (
  `idSeguradora` int(11) NOT NULL,
  `nome` varchar(256) NOT NULL,
  `apolice` varchar(256) NOT NULL,
  `cobertura` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `seguradora`
--

INSERT INTO `seguradora` (`idSeguradora`, `nome`, `apolice`, `cobertura`) VALUES
(12345, 'Verde', '234', '300,00'),
(18475, 'Preto', '200', '350,00'),
(46432, 'Branco', '2223', '400,00'),
(54321, 'Rosa', '432', '200,00'),
(62105, 'Amarelo', '2445', '250,34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `valorseguro`
--

CREATE TABLE `valorseguro` (
  `idValorSeguro` int(11) NOT NULL,
  `idSeguradora` int(11) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`idCidade`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `empresadetransporte`
--
ALTER TABLE `empresadetransporte`
  ADD PRIMARY KEY (`idEmpresaTransporte`);

--
-- Índices para tabela `estacao`
--
ALTER TABLE `estacao`
  ADD PRIMARY KEY (`idEstacao`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`);

--
-- Índices para tabela `linha`
--
ALTER TABLE `linha`
  ADD PRIMARY KEY (`idLinha`);

--
-- Índices para tabela `modalidade`
--
ALTER TABLE `modalidade`
  ADD PRIMARY KEY (`idModalidade`);

--
-- Índices para tabela `passagem`
--
ALTER TABLE `passagem`
  ADD PRIMARY KEY (`idPassagem`),
  ADD KEY `fk_linha` (`fk_linha`),
  ADD KEY `fk_cliente` (`fk_cliente`),
  ADD KEY `fk_valorSeguro` (`fk_valorSeguro`),
  ADD KEY `fk_funcionarioEmitente` (`fk_funcionarioEmitente`),
  ADD KEY `fk_origem` (`fk_origem`),
  ADD KEY `fk_destino` (`fk_destino`);

--
-- Índices para tabela `seguradora`
--
ALTER TABLE `seguradora`
  ADD PRIMARY KEY (`idSeguradora`);

--
-- Índices para tabela `valorseguro`
--
ALTER TABLE `valorseguro`
  ADD PRIMARY KEY (`idValorSeguro`),
  ADD KEY `idSeguradora` (`idSeguradora`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `idCidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `empresadetransporte`
--
ALTER TABLE `empresadetransporte`
  MODIFY `idEmpresaTransporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `estacao`
--
ALTER TABLE `estacao`
  MODIFY `idEstacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `linha`
--
ALTER TABLE `linha`
  MODIFY `idLinha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modalidade`
--
ALTER TABLE `modalidade`
  MODIFY `idModalidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12106;

--
-- AUTO_INCREMENT de tabela `passagem`
--
ALTER TABLE `passagem`
  MODIFY `idPassagem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `seguradora`
--
ALTER TABLE `seguradora`
  MODIFY `idSeguradora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62106;

--
-- AUTO_INCREMENT de tabela `valorseguro`
--
ALTER TABLE `valorseguro`
  MODIFY `idValorSeguro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72102;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `passagem`
--
ALTER TABLE `passagem`
  ADD CONSTRAINT `passagem_ibfk_1` FOREIGN KEY (`fk_linha`) REFERENCES `linha` (`idLinha`),
  ADD CONSTRAINT `passagem_ibfk_2` FOREIGN KEY (`fk_cliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `passagem_ibfk_3` FOREIGN KEY (`fk_valorSeguro`) REFERENCES `valorseguro` (`idValorSeguro`),
  ADD CONSTRAINT `passagem_ibfk_4` FOREIGN KEY (`fk_funcionarioEmitente`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `passagem_ibfk_5` FOREIGN KEY (`fk_origem`) REFERENCES `cidade` (`idCidade`),
  ADD CONSTRAINT `passagem_ibfk_6` FOREIGN KEY (`fk_destino`) REFERENCES `cidade` (`idCidade`);

--
-- Limitadores para a tabela `valorseguro`
--
ALTER TABLE `valorseguro`
  ADD CONSTRAINT `valorseguro_ibfk_1` FOREIGN KEY (`idSeguradora`) REFERENCES `seguradora` (`idSeguradora`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
