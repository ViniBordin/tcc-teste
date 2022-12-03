-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 22-Mar-2020 às 15:35
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Banco de dados: `quicktalk`
--


/* CREATE TABLE 'Usuario'(
  'Id_usu' int(11) NOT NULL,
  'Nome_usu' varchar(20),
  'Apelido_usu' varchar(20) NOT NULL,
  'Telef_usu' int(11) NOT NULL,
  'Email_usu' varchar(20) NOT NULL,
  'DataNasc_usu' date() NOT NULL,
  'Senha_usu' 
); */

-- --------------------------------------------------------

--
-- Estrutura da tabela `Chat`
--

CREATE TABLE `Chat` (
  `Id` int(11) NOT NULL,
  `Sender` int(11) NOT NULL,
  `Reciever` int(11) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Conversations`
--

CREATE TABLE `Conversations` (
  `Id` int(11) NOT NULL,
  `MainUser` int(11) NOT NULL,
  `OtherUser` int(11) NOT NULL,
  `Unread` varchar(1) NOT NULL DEFAULT 'n',
  `Modification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `User`
--

CREATE TABLE `User` (
  `Id` int(11) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(70) NOT NULL,
  `Picture` varchar(1000) NOT NULL DEFAULT 'user.jpg',
  `Online` datetime NOT NULL,
  `Token` varchar(100) NOT NULL,
  `Secure` bigint(11) NOT NULL,
  'Nome_usu' varchar(20) NOT NULL,
  'Telef_usu' int(11) NOT NULL,
  'DataNasc_usu' date NOT NULL,
  'Posts' int(11) NOT NULL,
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE 'Post'(
'Id' int(11) NOT NULL,
'User' int(11) NOT NULL,
'HoraPostagem' datetime NOT NULL,
`Mensagem` varchar(500) NOT NULL,
`Imagem` varchar(1000) NOT NULL,
'Curtidas' int(1000),
'Comentários' varchar(1000)
);

CREATE TABLE 'Comunidades' (
'Id' int(11) NOT NULL,
'Users' int(11) NOT NULL,
'Creation' datetime NOT NULL,
'Posts' int(11) NOT NULL,
'Nome_comu' varchar(20) NOT NULL,
'Creator' int(11) NOT NULL
);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `Chat`
--
ALTER TABLE `Chat`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `Conversations`
--
ALTER TABLE `Conversations`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

ALTER TABLE `Post`
  ADD PRIMARY KEY (`Id`);

ALTER TABLE `Comunidades`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Chat`
--
ALTER TABLE `Chat`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Conversations`
--
ALTER TABLE `Conversations`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `User`
--
ALTER TABLE `User`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
  
ALTER TABLE `Post`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Comunidades`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
