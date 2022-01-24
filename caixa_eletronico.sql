SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int AUTO_INCREMENT,
  UNIQUE (`id_cliente`),
  `cpf` VARCHAR (11) NOT NULL,
  `nome` VARCHAR (60) NOT NULL,
  `nascimento` DATE,
  `endereco` VARCHAR (70) NOT NULL,
  `sexo` VARCHAR (20) NOT NULL,
  `email` VARCHAR (60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas`
--

CREATE TABLE `contas` (
  `id` int(11) UNSIGNED NOT NULL,
  `titular` varchar(100) DEFAULT NULL,
  `agencia` int(11) DEFAULT NULL,
  `conta` int(11) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `saldo` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contas`
--

INSERT INTO `contas` (`id`, `titular`, `agencia`, `conta`, `senha`, `saldo`) VALUES
(1, 'Livia Fernanda', 123, 321, '81dc9bdb52d04dc20036dbd8313ed055', 0),
(2, 'Jose Gustavo', 987, 456, '81dc9bdb52d04dc20036dbd8313ed055', 0),
(3, 'Fulano de Tal', 456, 98, '81dc9bdb52d04dc20036dbd8313ed055', 0),
(4, 'Usuario Teste', 999, 999, '81dc9bdb52d04dc20036dbd8313ed055', 0),
(5, 'Paulo Soares', 734, 985, '81dc9bdb52d04dc20036dbd8313ed055', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentacao`
--

CREATE TABLE `movimentacao` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_conta` int(11) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `data_operacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contas`
--
ALTER TABLE `contas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movimentacao`
--
ALTER TABLE `movimentacao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contas`
--
ALTER TABLE `contas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movimentacao`
--
ALTER TABLE `movimentacao`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */