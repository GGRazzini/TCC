-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Jul-2019 às 20:05
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_site_atualizado`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `cod_user` int(6) DEFAULT NULL,
  `cod_avaliacao` int(20) NOT NULL,
  `nota` int(2) DEFAULT NULL,
  `cod_servico` int(4) DEFAULT NULL,
  `id_disp` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comum`
--

CREATE TABLE `comum` (
  `ativo_comum` int(2) DEFAULT NULL,
  `cpf` varchar(14) NOT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `cod_user` int(8) DEFAULT NULL,
  `cod_end` int(8) DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comum`
--

INSERT INTO `comum` (`ativo_comum`, `cpf`, `dt_nascimento`, `telefone`, `cod_user`, `cod_end`, `genero`) VALUES
(1, '021.518.019-09', '2019-07-17', '4791996969', 3, 1, 'masculino'),
(1, '021.598.019-09', '2019-07-23', '47991995615', 5, 2, 'f'),
(1, '12581245', '2019-07-02', '47991995615', 4, 1, 'fem'),
(1, '128.163.079-50', '2019-07-16', '47991995615', 6, 3, 'sad');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contrato`
--

CREATE TABLE `contrato` (
  `dt_fim` date DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `cod_contrato` int(8) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `cod_servico` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contrato`
--

INSERT INTO `contrato` (`dt_fim`, `dt_inicio`, `cod_contrato`, `cpf`, `cod_servico`) VALUES
('2019-07-02', '2019-07-09', 1, '021.598.019-09', 15),
('2019-07-02', '2019-07-09', 3, '021.518.019-09', 1),
('2019-07-02', '2019-07-11', 4, '021.518.019-09', 1),
('2019-07-08', '2019-07-09', 5, '021.598.019-09', 16);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disponibilidade`
--

CREATE TABLE `disponibilidade` (
  `cod_disp` int(20) NOT NULL,
  `dias` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `cod_end` int(8) NOT NULL,
  `bairro` varchar(15) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `logradouro` varchar(120) DEFAULT NULL,
  `cidade` varchar(25) DEFAULT NULL,
  `numero` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`cod_end`, `bairro`, `uf`, `cep`, `logradouro`, `cidade`, `numero`) VALUES
(1, 'petropolis', 'sp', '09511-069', 'rua fritz', 'joinville', 69),
(2, 'petro', 'sp', '09511-070', 'rua fsddfgsdfs df sdfsd', 'joinvassa', 415),
(3, 'asdsa', 'sp', '09511-070', 'rua fsddfgsdfs df sdfsd', 'joinvassa', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `prestador`
--

CREATE TABLE `prestador` (
  `cod_prestador` int(6) NOT NULL,
  `experiencias` varchar(500) DEFAULT NULL,
  `qualidade` varchar(200) DEFAULT NULL,
  `cod_user` int(8) DEFAULT NULL,
  `ativo_prestador` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `prestador`
--

INSERT INTO `prestador` (`cod_prestador`, `experiencias`, `qualidade`, `cod_user`, `ativo_prestador`) VALUES
(2, 'sdgssd', 'gsdgdsgds', 3, 1),
(3, 'dsfsdfsd', 'fsdfds', 4, 1),
(4, 'sdfsdf', 'sfsdfdsdf', 6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `referencia_prestador`
--

CREATE TABLE `referencia_prestador` (
  `nome` varchar(200) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `cod_referencia` int(6) NOT NULL,
  `cod_prestador` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `referencia_prestador`
--

INSERT INTO `referencia_prestador` (`nome`, `telefone`, `cod_referencia`, `cod_prestador`) VALUES
('teste final', '47991995615', 1, '1'),
('roberth', '47991995615', 2, '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `cod_servico` int(8) NOT NULL,
  `tipo_servico` varchar(25) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `valor` varchar(10) DEFAULT NULL,
  `carga_horaria` int(2) DEFAULT NULL,
  `cod_prestador` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`cod_servico`, `tipo_servico`, `descricao`, `valor`, `carga_horaria`, `cod_prestador`) VALUES
(1, 'cozinha', 'dsfsdfsdsd', '100', 10, '2'),
(14, 'faxina', 'servico de limpeza de casas', '190,00', 6, '3'),
(15, 'faxina', 'servico de limpeza empresas', '190,00', 8, '3'),
(16, 'Cuidado de crianças', 'serviço voltado ao cuidado de crianças e idosos', '90,00', 4, '3'),
(17, 'Manutenção', 'manutenções em gerais de resisdencias', '190,00', 7, '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tip_user`
--

CREATE TABLE `tip_user` (
  `cod_tip_user` int(1) NOT NULL,
  `tip_user` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tip_user`
--

INSERT INTO `tip_user` (`cod_tip_user`, `tip_user`) VALUES
(1, 'admin'),
(2, 'prestador'),
(3, 'comum');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `nome` varchar(150) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `cod_user` int(8) NOT NULL,
  `cod_tip_user` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`nome`, `email`, `password`, `cod_user`, `cod_tip_user`) VALUES
('João', 'comum@gmail.com', '12345678', 3, 3),
('Dhiego', 'prestador@gmail.com', '12345678', 4, 2),
('teste final', 'comum@gmail.com', '12345678', 5, 3),
('teste final', 'prestador2@gmail.com', '12345678', 6, 2),
('Admin', 'admin@gmail.com', '12345678', 7, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`cod_avaliacao`),
  ADD KEY `cod_servico` (`cod_servico`);

--
-- Índices para tabela `comum`
--
ALTER TABLE `comum`
  ADD PRIMARY KEY (`cpf`),
  ADD KEY `cod_user` (`cod_user`),
  ADD KEY `cod_end` (`cod_end`);

--
-- Índices para tabela `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`cod_contrato`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `cod_servico` (`cod_servico`);

--
-- Índices para tabela `disponibilidade`
--
ALTER TABLE `disponibilidade`
  ADD PRIMARY KEY (`cod_disp`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`cod_end`);

--
-- Índices para tabela `prestador`
--
ALTER TABLE `prestador`
  ADD PRIMARY KEY (`cod_prestador`),
  ADD KEY `cod_user` (`cod_user`);

--
-- Índices para tabela `referencia_prestador`
--
ALTER TABLE `referencia_prestador`
  ADD PRIMARY KEY (`cod_referencia`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`cod_servico`);

--
-- Índices para tabela `tip_user`
--
ALTER TABLE `tip_user`
  ADD PRIMARY KEY (`cod_tip_user`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`cod_user`),
  ADD KEY `cod_tip_user` (`cod_tip_user`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `cod_avaliacao` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contrato`
--
ALTER TABLE `contrato`
  MODIFY `cod_contrato` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `disponibilidade`
--
ALTER TABLE `disponibilidade`
  MODIFY `cod_disp` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `cod_end` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `prestador`
--
ALTER TABLE `prestador`
  MODIFY `cod_prestador` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `referencia_prestador`
--
ALTER TABLE `referencia_prestador`
  MODIFY `cod_referencia` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `cod_servico` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tip_user`
--
ALTER TABLE `tip_user`
  MODIFY `cod_tip_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `cod_user` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`cod_servico`) REFERENCES `servico` (`cod_servico`);

--
-- Limitadores para a tabela `comum`
--
ALTER TABLE `comum`
  ADD CONSTRAINT `comum_ibfk_1` FOREIGN KEY (`cod_user`) REFERENCES `user` (`cod_user`),
  ADD CONSTRAINT `comum_ibfk_2` FOREIGN KEY (`cod_end`) REFERENCES `endereco` (`cod_end`),
  ADD CONSTRAINT `comum_ibfk_3` FOREIGN KEY (`cod_user`) REFERENCES `user` (`cod_user`),
  ADD CONSTRAINT `comum_ibfk_4` FOREIGN KEY (`cod_end`) REFERENCES `endereco` (`cod_end`),
  ADD CONSTRAINT `comum_ibfk_5` FOREIGN KEY (`cod_user`) REFERENCES `user` (`cod_user`),
  ADD CONSTRAINT `comum_ibfk_6` FOREIGN KEY (`cod_end`) REFERENCES `endereco` (`cod_end`);

--
-- Limitadores para a tabela `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `comum` (`cpf`),
  ADD CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`cod_servico`) REFERENCES `servico` (`cod_servico`);

--
-- Limitadores para a tabela `prestador`
--
ALTER TABLE `prestador`
  ADD CONSTRAINT `prestador_ibfk_1` FOREIGN KEY (`cod_user`) REFERENCES `user` (`cod_user`);

--
-- Limitadores para a tabela `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`cod_tip_user`) REFERENCES `tip_user` (`cod_tip_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
