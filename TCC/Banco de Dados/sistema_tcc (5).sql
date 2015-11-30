-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/11/2015 às 18:51
-- Versão do servidor: 10.0.17-MariaDB
-- Versão do PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_tcc`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessorio_cargaseca`
--

CREATE TABLE `acessorio_cargaseca` (
  `codigo_acessorio` int(10) NOT NULL,
  `descricao_acessorio` varchar(100) CHARACTER SET latin1 NOT NULL,
  `icms17` decimal(20,2) NOT NULL,
  `icms12` decimal(20,2) NOT NULL,
  `icms7` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessorio_frigorifica`
--

CREATE TABLE `acessorio_frigorifica` (
  `codigo_acessorio` int(10) NOT NULL,
  `descricao_acessorio` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `icms17` decimal(20,2) DEFAULT NULL,
  `icms12` decimal(20,2) DEFAULT NULL,
  `icms7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessorio_lonado`
--

CREATE TABLE `acessorio_lonado` (
  `codigo_acessorio` int(11) NOT NULL,
  `descricao_acessorio` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `icms17` decimal(20,2) DEFAULT NULL,
  `icms12` decimal(20,2) DEFAULT NULL,
  `icms7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_clientes`
--

CREATE TABLE `cadastro_clientes` (
  `id_cliente` int(10) NOT NULL,
  `razaosocial` varchar(100) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `contato` varchar(20) DEFAULT NULL,
  `classificacao` varchar(1) DEFAULT NULL,
  `municipio` varchar(20) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `ddd` varchar(3) DEFAULT NULL,
  `tel_1` varchar(11) DEFAULT NULL,
  `tel_2` varchar(11) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `zona` varchar(2) DEFAULT NULL,
  `email_1` varchar(50) DEFAULT NULL,
  `email_2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `cadastro_clientes`
--

INSERT INTO `cadastro_clientes` (`id_cliente`, `razaosocial`, `cnpj`, `contato`, `classificacao`, `municipio`, `uf`, `endereco`, `cep`, `ddd`, `tel_1`, `tel_2`, `bairro`, `zona`, `email_1`, `email_2`) VALUES
(681, 'ECOPLANET IND E COM LTDA', NULL, NULL, NULL, 'ercampinas@sebraesp.', 'SC', 'RUA N SRA DO ROSÁRIO, TRAV F 722', '88095-250', '48', '3244-8778', NULL, NULL, NULL, '0800@ecoplanet.agr.br', NULL),
(682, 'TRANSPORTADORA 1040 LTDA', NULL, 'HUMBERTO', NULL, 'SÃO PAULO', 'SP', 'AVENIDA DRACENA Nº 955', '05329-000', '11', '37142584', '37144781', 'JAGUARÉ', 'C', '1040@uol.com.br', NULL),
(683, 'COMERCIAL DE FRIOS 21 DE CARAGUA', NULL, 'LUIZ FERNANDO', NULL, 'CARAGUATATUBA', 'SP', 'AVEN. RIO BRANCO Nº 877', NULL, '12', '3882-2069', '78118156', 'INDAIA', 'C', '21decaragua@uol.com.br', NULL),
(684, 'ABAF ACADEMIA BRASIL. DE ARTISTAS FLORAIS', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'RUA DAS AZALÉIAS, 740', '13825-000', '19', '3802-4509', NULL, NULL, NULL, 'abafbrasil@abafbrasil.com.br', NULL),
(685, 'ABAFEP ASSOC. BRAS. AGRONEGÓCIO DE FLORES E PLANTAS', NULL, NULL, NULL, 'STO ANTONIO DA POSSE', 'SP', 'ROD SP 107 KM 27,5', '13830-000', '19', '3802-7223', NULL, NULL, NULL, 'abafep@abafep.com.br', NULL),
(686, 'GRUPO BRASILIENSE', NULL, 'Abilio', NULL, 'CAMPINAS', 'SP', 'Av. Mercedes-Benz, 170', '13054-750', '19', '2102-4700', '2102-4710', 'Distrito Industrial', 'C', 'abilio.neto@brasiliense.com.br', NULL),
(687, 'Transportadora Solucao Ltda - EPP', '87911790002-35', 'Abraao Jose da Costa', NULL, 'SÃO PAULO', 'SP', 'R. Camacam, 514', '05095-000', '11', '383539337', '383539337', 'Vila Anastacio', 'C', 'abraao_junior@hotmail.com', NULL),
(688, 'HOLAMBELO ACESS E EMBALAGENS', NULL, NULL, NULL, 'BELO HORIZONTE', 'MG', 'RUA MARIANA, 1318', '31210-420', '31', '2511-0727', '(19) 3802-7', NULL, NULL, 'acessorios.mg@holambelo.com.br', NULL),
(689, 'Cotia Penske Logistica Ltda', NULL, 'Felipe Figlionini Fi', NULL, 'SÃO PAULO', 'SP', 'Av Paulista, 2073, 1º Pavimento, Conj 4E', '01311-300', '11', '3179-0624', '3253-9773', NULL, 'C', 'acosta@penske.com.br', NULL),
(690, 'Cotia Penske Logistics Ltda', NULL, 'Avelino Almeida', NULL, 'BARUERI', 'SP', 'Fernando Cerqueira Cézar Coimbra, nº 398', '06465-090', '11', '3306-0116', NULL, 'Tamboré', 'C', 'acosta@penske.com.br', NULL),
(691, 'ACV CAMINHÕES', NULL, 'ANTONIO', NULL, 'CAMPINAS', 'SP', 'ROD DOM PEDRO I KM 145', NULL, '19', '3227-4700', NULL, 'APARECIDINHA', 'C', 'acvcaminhoes@acvcaminhoes.com.br', NULL),
(692, 'TGA LOGÍSTICA', NULL, 'ADILSON', NULL, 'OSASCO', 'SP', 'AVENIDA DAS COMUNICAÇÕES Nº 265', '06276-190', '11', '3464-8181', NULL, 'INDUSTRIAL ANHANGUER', 'C', 'adilson@tgalogística.com.br', NULL),
(693, 'ELITE FLOWERS CWC COM IMPORT E EXPORT DE FLORES LTDA', NULL, NULL, NULL, 'STO ANTONIO DE POSSE', 'SP', 'ROD SP 107, KM 27,5', '13830-000', '19', '3902-9093 /', NULL, NULL, NULL, 'adm@eliteflowers.com.br', NULL),
(694, 'Frigorifico Três Passos Ltda', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'Av Nove de Julho, 5435 - 6° andar', '01407-200', '11', '3077-2222', NULL, 'Jd Paulista', 'c', 'administracao@trespassos.com.br', NULL),
(695, 'MINERAÇÃO CORREA LTDA', NULL, NULL, NULL, 'CAMPOS DOS JORDÃO', 'SP', 'ESTR DOS MARMELOS, S/Nº', '12460-000', '12', '3663-1541', '3663-4393', NULL, NULL, 'administrativo@mineracaocorrea.com.br', NULL),
(696, 'LG TRANSPORTES', NULL, 'LEANDRO', NULL, 'SALTO', 'SP', NULL, NULL, '11', '84#3902', NULL, NULL, 'C', 'admlgtransportes@gmail.com', NULL),
(697, 'Dan Agro', NULL, 'Adolfo', NULL, 'CAMPINAS', 'SP', NULL, NULL, '19', '3746-1007', NULL, NULL, 'C', 'adolfo@tropsabor.com.br', NULL),
(698, 'ALADIM DECORAÇÕES LTDA.', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'PRAÇA RAGUEB CHOFI, 392', '01022-050', '11', '3327-5111', NULL, NULL, NULL, 'adriana@aladimdecor.com.br', NULL),
(699, 'SHOCK EXPRESS TRANSPORTES', NULL, 'ALBERTO', NULL, 'CAMPINAS', 'SP', 'RUA DONA CONCHETA PÁDULA Nº 196', '13033-020', '19', '3241-5969', '42*21653', 'JARDIM AURÉLIA', 'C', 'alberto@shockexpress.com.br', NULL),
(700, 'Truckvan Ind. Comércio Ltda.', NULL, 'Alcides G. Braga', NULL, 'SÃO PAULO', 'SP', 'Rua Soldado Hamilton Silva Costa, 135', '02190-010', '11', '2218-7800', '2635-1133', 'Parque Novo Mundo', NULL, 'alcides@truckvan.com.br', NULL),
(701, 'ESPETINHOS JUNDIAI', NULL, 'ANTONIO', NULL, 'JUNDIAÍ', 'SP', 'RUA XV DE NOVEMBRO Nº 689', '13201-004', '11', '4584-9900', NULL, 'CENTRO', 'C', 'alfredojr@churrasquinhojundiai.com.br', NULL),
(702, 'ALLEGRO ARTE', NULL, NULL, NULL, 'SÃO MANOEL', 'SP', 'AV JOSÉ HORÁCIO MELLÃO, 1795 FUNDOS', '18650-000', '14', '99736-3874', NULL, NULL, NULL, 'allegroarte@allegroarte.com.br', NULL),
(703, 'ALTA DISTRIBUIDORA DE AVES LTDA', NULL, 'ALDO', NULL, 'LOUVEIRA', 'SP', 'RUA GUERINO BIASI Nº 33', '13290-000', '19', '3878-1871', '9186-8253', 'VILA PASTI', 'A', 'altadaves@terra.com.br', NULL),
(704, 'ALUMÍNIOS MEDEIROS (ROBERTA MARANGONI ME)', NULL, NULL, NULL, 'PEDREIRA', 'SP', 'RUA SÍLVIO ÁRTICO, 71', '13920-000', '19', '3852-4191', '99956-9371', NULL, NULL, 'aluminiosmedeiros@hotmail.com', NULL),
(705, 'TRANSPORTES ALVIERO LTDA', '86648510001-40', 'SR. ALVIERO', NULL, 'BARRETOS', 'SP', 'AV. RIO DALVA, Nº 538 CONJUNTO 01', '14787-040', '49', '3522-2068', '3522-3750', 'LOS ANGELES', NULL, 'alviero@grupoalviero.com.br', NULL),
(706, 'Peixaria Fish', NULL, 'Zé Roberto', NULL, 'JUNDIAÍ', 'SP', '13218-641', NULL, '11', '4522-4250', NULL, NULL, 'C', 'ana-lise@ig.com.br', NULL),
(707, 'AGS AUTOMECÂNICA LTDA', NULL, 'ANANIAS', NULL, 'HOLAMBRA', 'SP', 'RUA: ESTRADA DA SERVIDÃO Nº 255', '13.825-000', '19', '3802-2383', NULL, 'CAMANDUCAIA', 'C', 'ananias@agsmecanica.com.br', NULL),
(708, 'CIA LECO DE PRODUTOS ALIMENTÍCIOS', NULL, 'ANDERSON', NULL, 'SÃO CAETANO DO SUL', 'SP', 'RUA AMAZONAS Nº 77', NULL, '11', '45438000', NULL, NULL, 'C', 'anderson.metalina@tmmaua.com.br', NULL),
(709, 'OTHIL IMPORTADORA DE FRUTAS', NULL, 'ANDERSON', NULL, 'SÃO PAULO', 'SP', NULL, NULL, '11', '3832-4956', '6837-0444', NULL, 'C', 'anderson@othil.com.br', NULL),
(710, 'Andrade Alimentos Ltda', NULL, 'Eder', NULL, 'MOGI MIRIM', 'SP', 'Rua Comanche, 108 - Jd. Aero Clube', '13800-514', '19', '3806-1656', NULL, 'Boa Saude', 'B', 'andrade.alimentos@ig.com.br', NULL),
(711, 'TRANSPORTADORA ORLANDO', '63032520002-57', 'ANDRÉ', NULL, 'AMÉRICO BRASILIENSE', 'SP', NULL, NULL, '16', '9245-5585', NULL, NULL, 'A', 'andre.orlando@transorlando.com.br', NULL),
(712, 'ENTREPOSTO IRMÃOS FLEURYTEMRA', NULL, 'ANDRE', NULL, 'ARAÇARIGUAMA', 'SP', 'ROD. CASTELO KM 50, ESTRADA DOMINGOS MARCUCCI S/Nº', NULL, '11', '3865-3095', '4136-1093', 'CAXAMBU', 'C', 'andre@temra.com.br', NULL),
(713, 'IBL LOGISTICA', NULL, 'ANDREIA BONETTI', NULL, 'GUARULHOS', 'SP', 'RUA MANOEL BORBA GATO Nº 100', '07044-220', '11', '2696-2230', NULL, 'VILA SAYAGO', 'A', 'andreia.bonetti@ibllogistica.com.br', NULL),
(714, 'Wind Express Transp Urgentes Ltda', NULL, 'Alcineu da Silva', NULL, 'AMERICANA', 'SP', NULL, '13475-010', '19', '2131-9300', '2131-9302', 'Pr dos Namorados', NULL, 'angela.talaqui@windexpress.com', NULL),
(715, 'Marfrig Frigoricos e Comercio de Alimentos S/A', '56.373.319/0001-17', 'ANGELO FRIGHETTO', NULL, 'PROMISSÃO', 'SP', 'VIA DE ACESSO DR SHUHEI UETSUDA KM 2', '16370-000', '14', '3541-0099', NULL, NULL, 'A', 'angelo.frighetto@marfrig.com.br', NULL),
(716, 'AD VELAS IND E COM DE VELASLTDA EPP', NULL, NULL, NULL, 'S JOÃO DA BOA VISTA', 'SP', 'R BERNARDINO DE CAMPOS, 471', '13870-248', '19', '3633-5124', '99775-0576', NULL, NULL, 'antonieta@advelas.com.br', NULL),
(717, 'Croissant & Cia Ltda', NULL, 'Antônio', NULL, 'INDAIATUBA', 'SP', 'R. Valdir Roberto de Camargo, 599', '13347-030', '19', '3935-3007', NULL, 'Recreio Campestre', 'C', 'antonio@croissantecia.com.br', NULL),
(718, 'SEMPRE FRIO TRANSPORTES', NULL, 'ANTONIO', NULL, 'SÃO PAULO', 'SP', 'RUA DA VIRGEM 283', '02260-040', '11', '3853-4008', NULL, 'JAÇANÃ', 'A', 'antonio@semprefriolog.com.br', NULL),
(719, 'APP LOGISTICA LTDA', NULL, NULL, NULL, 'CORDEIRÓPOLIS', 'sp', 'RODOVIA ANHANGUERA KM 154,5', NULL, '19', '35464700', NULL, NULL, 'C', 'app@applogistica.com.br', NULL),
(720, 'AQUARELA FITAS E EMBALAGENS LTDA-ME', NULL, NULL, NULL, 'MARÍLIA', 'SP', 'RUA IRINEU MARTINS, 225', '17539-000', '14', '3417-8169', '99782-4951', NULL, NULL, 'aquarelasfitas@hotmail.com', NULL),
(721, 'ÁREA VERDE PETRUS CHRISTIANUS MARIA van der GEEST', NULL, NULL, NULL, 'JAGUARIÚNA', 'SP', 'ROD SP 107 KM 29 ', '13820-000', '19', '3867-3964 ', '3867 3899', NULL, NULL, 'area.verde@dglnet.com.br', NULL),
(722, 'La Basque Alimentos Ltda', NULL, 'Glauber', NULL, 'CAMPINAS', 'SP', 'R. Josefina Gori Fiorani, 218', '13087-607', '19', '3256-2633', '3526-9244', NULL, 'A', 'armazenagem@labasque.com.br', NULL),
(723, 'ARTBAMBU', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'RUA IRMÃOS PILA, 488', '02309-000', '11', '3924-6287', '99511-1989', NULL, NULL, 'artbambu@ig.com.br', NULL),
(724, 'PORCINO''S PRODUTOS ALIMENTÍCIOS LTDA', NULL, NULL, NULL, 'RIO CLARO', 'SP', 'AVENIDA 50A Nº 528', '13506-570', '19', '3527-3643', NULL, NULL, 'A', 'artesanal.alimentos@hotmail.com', NULL),
(725, 'Arthemis Distribuição de Alimentos LTDA', NULL, NULL, NULL, NULL, 'DF', NULL, NULL, NULL, 'Tel: (61) 3', NULL, 'BRASÍLIA - DF', NULL, 'arthemis@arthemisdistribuicao.com.br', NULL),
(726, 'ARTIOLLI TRANSPORTES', NULL, 'ERNESTO FILHO  RONAL', NULL, 'SANTANA DO PARNAÍBA', 'SP', 'AVENIDA TEM. MQ 7', '06500-000', '11', '3835-2515', '9639-6004', NULL, 'C', 'artiolli@uol.com.br', NULL),
(727, 'ART PRIMAVERA FABIO BEVILACQUA BUENO-ME', NULL, NULL, NULL, 'STO ANTONIO DE POSSE', 'SP', 'RUA GIROLAMO ROMIO, 230', '13830-000', '19', '3896-1516', '99710-3865', NULL, NULL, 'artprimavera@yahoo.com.br', NULL),
(728, 'Camanor Produtos Marinhos Ltda', 'www.camanor.com.br', NULL, NULL, NULL, 'RN', NULL, NULL, '84', '4008-0448', NULL, 'NATAL', NULL, 'atendimento@camaror.com.br', NULL),
(729, 'IMAIPESCA Indústria e Comércio de Pescados Ltda.', NULL, NULL, NULL, NULL, 'SP', NULL, NULL, '13', '3227-5845', NULL, 'SANTOS', NULL, 'atendimento@kenkohpescados.com.br', NULL),
(730, 'USINA DE ALIMENTOS LTDA', NULL, 'JEFFERSON', NULL, 'ATIBAIA', 'SP', 'ESTRADA HISAYSHI TAKIBAYASH Nº 680', '12940-972', '11', '4416-4667', NULL, 'USINA', NULL, 'atendimento@opdv.com.br', NULL),
(731, 'TKT EXPRESS', NULL, 'EDUARDO', NULL, 'CAMPINAS', 'SP', 'AV. DR. MORAES SALES Nº 1560', '13010-002', '19', '3203-7300', NULL, 'CENTRO', 'B', 'atendimento@tktexpresscampinas.com.br', NULL),
(732, 'Ati-Gel Frutas Congeladas Atibaia Ltda', NULL, 'Jorge', NULL, 'Atibaia', 'SP', 'Av. Prefeito Antonio Julio de T Garcia Lopes, s/n°', '12951-270', '11', '4412-5511', NULL, 'Brotas', 'B', 'atigel@atigel.com.br', NULL),
(733, 'Avigro Comercio de Aves Ltda', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'R. Cacimba, 56', '03804-140', '11', '6546-4141', NULL, NULL, 'C', 'avigro@uol.com.br', NULL),
(734, 'RODOLUKI LOGÍSTICA E TRANSPORTE LTDA', NULL, 'SR. BABI', NULL, 'OSASCO', 'SP', 'RUA ANUNCIATA DE LÚCIA Nº 70', '06194-090', '11', '3607-1002', NULL, 'VILA QUINTAÚRA', 'C', 'babi@rodolucki.com.br', NULL),
(735, 'BARRACÃO DA ARTE BY GEÓRGIA LTDA', NULL, NULL, NULL, 'SANTO ANDRÉ', 'SP', 'RUA DISTRITO FEDERAL, 444', '09210-390', '11', '4497-5215', '99732-5387', NULL, NULL, 'barracaodaarte@gmail.com', NULL),
(736, 'BELLA EXPRESS TRANSPORTES LTDA - AURORA', NULL, 'BELLA', NULL, 'GUARULHOS', 'SP', 'RUA CLAUDIO SERGIO BERÉ Nº 100', '07031-200', '11', '7*96678', NULL, 'PONTE GROSSA', 'A', 'bellaexpresstransportes@uol.com.br', NULL),
(737, 'BERGAMASCHI', NULL, 'ALAIR', NULL, 'ITUPEVA', 'SP', 'ROD. HERMENEGILDO TONOLI KM 6.5', NULL, '11', '4496-3969', NULL, 'PAINEIRAS', 'A', 'alair@bergamaschi.com.br', NULL),
(738, 'REVISTA NATUREZA-EDIT EUROPA LTDA', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'RUA MMDC, 121', '05510-021', '11', '3038-5518 /', '97025-0125', NULL, NULL, 'beth@europanet.com.br', NULL),
(739, 'BÉU PESCADOR LTDA.', NULL, NULL, NULL, NULL, 'BA', NULL, NULL, '73', '3293-2206', NULL, 'CARAVLELAS', NULL, 'beupescador@uol.com.br', NULL),
(740, 'BIANCHI TRANSPORTES', NULL, 'GERSON', NULL, 'JUNDIAI', 'SP', NULL, NULL, '11', '4584-6842', NULL, NULL, 'C', 'bianchigerson@ig.com.br', NULL),
(741, 'Bianco Latte', NULL, 'Leonardo', NULL, 'REGISTRO', 'SP', 'RUA JOS´PE ANTONIO DA SILVA JR 800', '11900-000', '19', '3213-0310', NULL, 'DISTRITO INDUSTRIAL', 'C', 'biancolatte@biancolatte.com.br', NULL),
(742, 'BIO PLUGS', NULL, NULL, NULL, 'ATIBAIA', 'SP', 'RUA DR. EURICO DE SOUZA PEREIRA, 142', '12942-490', '11', '4416-1681 /', '99699-7373', NULL, NULL, 'bioplugs@gmail.com', NULL),
(743, 'BJ TRANSPORTES DE ITATIBA', NULL, 'JOSÉ', NULL, 'ITATIBA', 'SP', 'RUA OLHO D''ÁGUA BORGES Nº 80', NULL, '11', '4894-8092', NULL, 'VILA SILVIA', 'A', 'bj@bjtransportes.com.br', NULL),
(744, 'GELOG LOCAÇÕES E TRANSPORTES LTDA', NULL, 'BLANCHER', NULL, 'SANTOS', 'SP', 'AV VEREADOR ALFREDO DAS NEVES, 602', '11095-510', '13', '3296-3330', NULL, 'ALEMOA', 'B', 'blanchersousa@gelogtransportes.com.br', NULL),
(745, 'BOFFO TRANSPORTES ME', NULL, 'Alexandre', NULL, 'SOROCABA', 'SP', 'AV GEROME CASE Nº 2900', '06624-430', '11', '4525-2134', NULL, 'APARECIDINHA', 'C', 'boffotransportes@yahoo.com.br', NULL),
(746, 'BOMAR LOCAÇÃO E TRANSPORTES', NULL, 'ALEXANDRE SAMPAIO', NULL, 'CUBATÃO', 'SP', 'AV. N. SRA DE FÁTIMA Nº 250', '11533-030', '13', '3364-2214', NULL, 'JARDIM CASQUEIRO', 'B', 'bomar.santos@uol.com.br', NULL),
(747, 'BR ORQUÍDEA IMPORT E EXPORT LTDA', NULL, NULL, NULL, 'SÃO MANUEL', 'SP', 'AV JOSÉ HORÁCIO MELLÃO, 1795 FUNDOS', '18650-000', '14', '3842-1572', NULL, NULL, NULL, 'br-orquidea@br-orquidea.com.br', NULL),
(748, 'BRANCA CESTAS COML TABOGA DE BAMBUS LTDA', NULL, NULL, NULL, NULL, 'MG', 'RUA LEVI FELIPE TABOGA, 1.020', '37720-000', '35', '3741-1164', NULL, NULL, NULL, 'brancacestas@brancacestas.com.br', NULL),
(749, 'BRASFOOD', NULL, NULL, NULL, 'SERTÃOZINHO', NULL, NULL, NULL, '16', '3945-8157', NULL, NULL, 'C', 'brasfood@terra.com.br', NULL),
(750, 'BRASIL CARGO TRANSPORTES', NULL, 'CLEBER', NULL, 'CAMPINAS', 'SP', 'RUA DR. GUSTAVO ORSOLINI Nº 6523', '13052-501', '19', '3765-8500', '3765-8501', 'JDIM NOVA MERCEDES', 'C', 'brasilcargo@brasilcargo.com.br', NULL),
(751, 'CORDEIRO PREMIUM', NULL, 'FERNANDO E REJANE', NULL, 'CUIABÁ', 'MS', NULL, NULL, '65', '3624-3871', NULL, NULL, 'A', 'bravel@terra.com.br', NULL),
(752, 'Charlo Comercial Ltda', NULL, 'Ulisses', NULL, 'SÃO PAULO', 'SP', 'R. Haroldo Gurgel, 360', '05514-031', '11', '5523-7788', NULL, 'Butanta', 'A', 'buffet@charlo.com.br', NULL),
(753, 'CACHEPOS JARAGUÁ GILSOMAR RIBEIRO DA SILVA', NULL, NULL, NULL, 'JARAGUÁ DO SUL', 'SC', 'RUA ALBERTO ANTONIO KLEIN, 184', '89258-827', '47', '3372-0241', '99127-8326', NULL, NULL, 'cacheposjaragua@gmail.com', NULL),
(754, 'CALDANA FLORES LTDA', NULL, NULL, NULL, 'ARTUR NOGUEIRA', 'SP', 'CHÁCARA FAZENDINHA, S/ Nº', '13160-000', '19', '3877-5382', '99757-0078', NULL, NULL, 'caldanaflores@yahoo.com.br', NULL),
(755, 'Frigorifico Cardeal Industria e Comercio Ltda', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'R Vinte e Oito de Julho, 25/49', '09520-610', '11', '4227-9609', NULL, 'São Caetano do Sul', 'A', 'cardeal@fcardeal.com.br', NULL),
(756, 'Carlos Alves dos Santos Transp / Best Transp', NULL, 'Carlos Alves dos San', NULL, 'SÃO PAULO', 'SP', 'R. Carlo Clausetti, 325 apto 51 B', '03928-000', '11', '34427007', NULL, 'Cohab T Vilela', 'C', 'carlos.alves26@yahoo.com.br', NULL),
(757, 'RODOVISA TRANSORTES', NULL, 'CARLOS CAPOVILA', NULL, 'CAMPINAS', 'SP', 'AV RICARDO BASSOLI CESARI Nº 471', '13050-080', '19', '3728-8888', NULL, 'JARDIM BANDEIRAS', 'B', 'carlos.capovilla@rodovisacargasespeciais.com.br', NULL),
(758, 'Rodoextra Ltda', NULL, 'Carlos Alberto Kuhn', NULL, 'Osasco', 'SP', 'Av. Doutor Mauro Lindemberg Monteiro, 121 Armazém 2', '06278-010', '11', '36595152', NULL, 'Santa Fe', 'A', 'carlos.kuhn@rodoextra.com.br', NULL),
(759, 'GTX Transportadora', NULL, 'Fabiano', NULL, 'CORDEIRÓPOLIS', 'SP', 'ESTRADA JOÃO PERUCHI Nº 601', '13490-000', '19', '35465800', '35466429', 'DISTRITO INDUSTRIAL', 'B', 'carlos.martinelli@gtxlogistica.com.br', NULL),
(760, 'Friozem Logistica Ltda', NULL, 'Marcelo', NULL, 'Jandira', 'SP', 'Via de Acesso João de Góes, 1701', '06612-000', '11', '4789-8200', NULL, 'Jd Alvorada', 'B', 'carlos.santos@friozem.com.br', NULL),
(761, 'DOLPHIN TRANS', NULL, 'Carlos Barbosa', NULL, 'SÃO PAULO', 'SP', 'AV. PROF. VICENTE RAO 2095', '4636003', '11', '5067-7130', '5067-7129', NULL, 'A', 'carlos@dolphintrans.com.br', NULL),
(762, 'BUONO GEL COMÉRCIO DE ALIMENTOS SUPER CONGELADOS LTDA', NULL, 'ROBERTO FOGA / RINAL', NULL, 'ITUPEVA', 'SP', 'ESTRADA MUNICIPAL IVA 165 Nº 2600', '13295-000', '11', '4591-1571', '9902-0610 /', 'MONTE SERRAT', 'C', 'buonogel@buonogel.com.br', NULL),
(763, 'Moinhos Cruzeiro do Sul S/A', NULL, NULL, NULL, 'PAULÍNIA', 'SP', 'Rod. Campinas - Pulinia, km 26', '13140-000', '19', '3867-8000', NULL, NULL, 'C', 'carlos@predileto.ind.br', NULL),
(764, 'BIOSOLVIT IND COM DISTR FIB VEG E PROD LTDA', NULL, NULL, NULL, 'BARRA MANSA', 'RJ', 'RUA IRACI DE SOUZA VIEIRA, 10', '27335-485', '24', '3343-4679', NULL, NULL, NULL, 'carolina@biosolvit.com', NULL),
(765, 'CASA DOIS EDITORA E COMUNICAÇÃO LTSA', NULL, NULL, NULL, 'SANTANA DO PARNAÍBA', 'SP', 'RUA GUANABARA, 245', '06529-220', '11', '2108-9000', NULL, NULL, NULL, 'casadois@casadois.com.br', NULL),
(766, 'Cisne Branco Transportes Ltda', NULL, 'FLAVIO', NULL, 'SÃO PAULO', 'SP', 'Av.Dr.Gastão Vidigal, 200', '05314-001', '11', '3834-9539', '3834-2848', 'Vl. Leopoldina', 'A', 'cbtransportes@terra.com.br', NULL),
(767, 'GURCEL TRANSPORTES', NULL, 'CELSO', NULL, 'GUARULHOS', 'SP', 'RUA CLAUDIO SERGIO BERÉ Nº 100', '07031-200', '11', '2*34196', NULL, 'PONTE GROSSA', 'B', 'celso-pinheiro@uol.com', NULL),
(768, 'JUNDICARGAS TRANSPORTES LTDA', NULL, 'CELSO', NULL, 'JUNDIAÍ', 'SP', 'AV. JOSÉ BENASSI Nº 300', '13213-085', '11', '4582-9000', '4525-2471', 'PQ IND. FAZGRAN', 'C', 'celso@jundicargas.com.br', NULL),
(769, 'CERÂMICA LEÃO DE JUDÁ CERÂMICA ARTIST DE LOUÇAS LEÃO DE JUDÁ', NULL, NULL, NULL, 'PORTO FERREIRA', 'SP', 'RUA PERONDI IGINIO, 901', '13660-000', '19', '3581-2758', '3585-6090', NULL, NULL, 'ceramicaleaodejuda@gmail.com', NULL),
(770, 'LAGOA GRANDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cesarnegretto@yahoo.com.br', NULL),
(771, 'Cevisko', NULL, 'Odair', NULL, 'Mogi Mirim', 'SP', 'RUA OCTÁVIO DE CHAGAS MIRANDA, 211', NULL, '19', '38065853', NULL, 'JARDIM SANTA CLARA ', NULL, 'cevisko@netservi.com.br', NULL),
(772, 'IND. COM. E EMBALAGENSPROD. ALIMENTÍCIO MIMA', NULL, NULL, NULL, 'JUNDIAÍ', 'SP', 'RUA JOÃO VICENTE DE PAULA Nº 11', '13214-213', '11', '4492-1460', NULL, 'VILA HORTOLANDIA', 'B', 'chantilymima@uol.com.br', NULL),
(773, 'CHARQUE DO SERTÃO', NULL, 'MARCOS TENÓRIO', NULL, 'SANTANA DO PARNAÍBA', 'SP', 'RUA MARANHÃO 311', '06530-030', '11', '3383-6666', NULL, 'CHACARA SOLAR I', 'A', 'charquedosertao@uol.com.br', NULL),
(774, 'Transportadora Chumbel Ltda', NULL, 'Reinaldo', NULL, 'LOUVEIRA', 'SP', 'R. Angelo Chicalhone, 204', '13290-000', '19', '3848-1499', NULL, 'B.Sto.Antônio', 'C', 'chumbello@yahoo.com.br', NULL),
(775, 'Tuareg Transportes', NULL, 'Marcelo', NULL, 'HOLAMBRA', 'SP', 'Av. da Tulipas S/N', NULL, '19', '3802-2190', '3802-2984', NULL, NULL, 'citrus@primafruta.com.br', NULL),
(776, 'MIEN FLOWERS-CORNELIS JOSEPH WEEL', NULL, NULL, NULL, 'PARANAPANEMA', 'SP', 'FAZENDA DAS POSSES, CAMPOS DE HOLAMBRA', '18725-000', '14', '3769-1425', '99774-2464', NULL, NULL, 'cjweel@hotmail.com', NULL),
(777, 'Potiguar Alimentos do Mar Ltda.', 'www.potiguarltda.ind', NULL, NULL, NULL, 'RN', NULL, NULL, '84', '4006-9000', NULL, 'NATAL', NULL, 'clarissa@potiguarltda.ind.br', NULL),
(778, 'Selleta Distribuidora e Comércio LTDA', NULL, NULL, NULL, NULL, 'PE', NULL, NULL, NULL, NULL, NULL, 'RECIFE - PE', NULL, 'claudia@selleta.com', NULL),
(779, 'HABACUQUE EVENTOS', NULL, 'CLAUDINEI OLIVEIRA', NULL, 'BARUERI', 'SP', 'CALÇADA VITÓRIA RÉGIA Nº 137', '06453-057', '11', '4195-0760', NULL, 'ALPHAVILLE', 'C', 'claudinei.oliveira@minitrucks.com.br', NULL),
(780, 'LDB TRANSPORTES DE CARGAS LTDA', NULL, NULL, NULL, 'GUARULHOS', 'SP', 'AV PAPA JOÃO PAULO II Nº 66755', NULL, '11', '2141-9500', NULL, NULL, 'A', 'comercial.sp@ldbcargas.com.br', NULL),
(781, 'Frutabras Com e Transp. Intl. Ltda', NULL, 'Roberto', NULL, 'SÃO PAULO', 'SP', 'Av José Cesar de Oliveira, 181 Sl 406', '05317-000', '11', '3643-7691', '3834-4122', 'Vl. Leopoldina', 'A', 'comercial.sp034@frutabras.com', NULL),
(782, 'Central Logistica e Armazens Gerais', NULL, 'JULIO', NULL, 'SÃO PAULO', 'SP', 'RUA DA MOÓCA Nº 1678', '03939-068', '11', '2618-3511', NULL, 'MOÓCA', 'C', 'comercial@centrallogistica.com.br', NULL),
(783, 'CERÂMICA ARTIST PEGORIN. PEGORIN IND E COM DE LOUÇAS LTDA', NULL, NULL, NULL, 'PORTO FERREIRA', 'SP', 'AV JOÃO JOSÉ ATTAB MIZIARA, 2.852', '13660-000', '19', '3589-1288', '99238-4838', NULL, NULL, 'comercial@ceramicapegorin.com.br', NULL),
(784, 'GIARDINO DECORI SANSO DO BRASIL IMP E EXPORT LTDA', NULL, NULL, NULL, 'PALHOÇA', 'SC', 'RUA VÍTOR MEIRELES, 955', '88133-370', '48', '3365-8500', '99960-8500', NULL, NULL, 'comercial@giardinodecori.com.br', NULL),
(785, 'Ice Fruit', NULL, 'Fernando', NULL, 'TATUI', 'SP', 'Rod. Castelo Branco, km 128,5', NULL, '11', '3308-6756', '4582-6432', NULL, 'B', 'comercial@icefruit.com.br', NULL),
(786, 'MAX SABOR ALIMENTOS LTDA', NULL, NULL, NULL, 'SALTO DE PIRAPORA', 'SP', 'ROD. FRANCISCO JOSÉ AYUB KM 119', '18160-000', '15', '3292-1327', NULL, 'VILA DOS FLORIANOS', 'C', 'comercial@maxsabor.com.br', NULL),
(787, 'MODOLOCAMP AGRÍCOLA LTDA', NULL, 'GERSON MODOLO', NULL, 'CAMPINAS', 'SP', 'ROD. DOM PEDRO I KM 140,5 BOX 20 E 21', '13082-902', '19', '3246-0866', NULL, 'SANTA MÔNICA (CEASA)', 'C', 'comercial@modolocampi.com.br', NULL),
(788, 'SAMURAI EQUIPAMENTOS DE REFRIGFERAÇÃO', NULL, 'CLAUDIO BARBERINI', NULL, 'SÃO PAULO', 'SP', 'RUA CARMINA LANETTA FANGANIELLO Nº 171', '02181-100', '11', '2967-1006', '2632-2900', 'PQ NOVO MUNDO', 'A', 'comercial@samurairefrigeração.com.br', NULL),
(789, 'SUMARÉ TRANSPORTES', NULL, 'PAULO', NULL, 'CAMPINAS', 'SP', 'RUA MIGUEL VIEIRA FERREIRA Nº 12111', NULL, '19', '3903-4322', NULL, 'CHACARA BOA VISTA', 'C', 'comercial@sumaretransportes.com.br', NULL),
(790, 'SUMARÉ TRANSPORTES / TAG LOGÍSTICA', NULL, 'PAULO', NULL, 'SUMARÉ', 'SP', 'RUA FRANCISCO MANOEL DE SOUZA, 701', NULL, '19', '3903-4322', '9255-2332', 'CHACARÁ SANTA ANTUNI', 'C', 'comercial@sumaretransportes.com.br', NULL),
(791, 'VCP TRANSP DE CARGAS LTDA', NULL, NULL, NULL, 'JAGUARIÚNA', 'SP', 'ROD SP 107, KM 28 COND EMPRES CNP', '13820-000', '19', '3324-4881', '98181-9413', NULL, NULL, 'comercial@vcptransporte.com.br', NULL),
(792, 'VELAS FENÍCIA-FELÍCIA IND COM VELAS LTDA ME', NULL, NULL, NULL, 'CURITIBA', 'PR', 'AV VIA VENETO, 773', '82020-470', '41', '3297-3408 /', '99672-9420', NULL, NULL, 'comercial@velasfenicia.com.br', NULL),
(793, 'CACAU COMPANY LTDA', NULL, NULL, NULL, 'FRANCISCO BELTRÃO', 'PR', 'RUA VER. ROMEU LAURO WERLANG, 67, SALA 1', '85601-020', '46', '3524-8487', '99900-0068', NULL, NULL, 'comercialcacaucompany@gmail.com', NULL),
(794, 'Transportadora Fassina', NULL, 'Gilson', NULL, 'JUNDIAÍ', 'SP', NULL, NULL, '11', '4533-3244', NULL, NULL, 'B', 'comercialsp@dinamicoexpress.com.br', NULL),
(795, 'Comfrila Com. de Frios e Lat. Ltda', NULL, 'José', NULL, 'CAMPINAS', 'SP', 'Av. Palmital, 149', '13093-330', '19', '3254-7701', '3255-8250', 'Jd. Flamboyant', 'C', 'comfrila@comfrila.com.br', NULL),
(796, 'ALIANÇA TRANSPORTES', NULL, 'THIAGO', NULL, 'SÃO PAULO', 'SP', 'Rua Jorge Nunes Kehdi 197 A', '5108-120', '11', '2177-4700', '9749-1108', 'VILA ANASTÁCIO', 'C', 'compras.sp@aliancalog.com.br', NULL),
(797, 'Arfrio Armazens Gerais Frigorificos', NULL, 'CRISTIANE', NULL, 'BARUERI', 'SP', 'R. Jussara, 1001', NULL, '11', '4195-4000', '5505-6002', 'Jd Santa Cecilia', 'C', 'compras@arfrio.com.br', NULL),
(798, 'CAMP BEEF', NULL, 'VALTER CAMPELO', NULL, 'CAMPINAS', 'SP', 'HELIO TOZZI Nº55', '13051-141', '19', '3227-7194', NULL, 'JD. SÃO JOSÉ', 'C', 'compras@campbeef.com.br', NULL),
(799, 'BUFE CHARLOT', NULL, 'ALEX', NULL, 'SÃO PAULO', 'SP', NULL, NULL, '11', '3721-4261', NULL, NULL, 'C', 'compras@charlo.com.br', NULL),
(800, 'ETABEL', NULL, 'RODRIGO', NULL, NULL, NULL, NULL, NULL, '11', ' 4891-1211', NULL, 'BOM JESUS DOS PERDÕE', NULL, 'compras@etabel.com.br', NULL),
(801, 'COOP DE TRANSP DE CARGA ESP DE CONCO', NULL, NULL, NULL, 'ITUPEVA', 'SP', 'ROD. VICE PREFEITO HERMENEGILDO TONOLLI Nº 2950 - KM 6,450 BLOCO II, SALA 04', '13295-000', '11', '4496-2601', NULL, 'PAINEIRAS', 'A', NULL, NULL),
(802, 'FRIGORÍFICO IRMÃOS REIS', NULL, 'OSCAR', NULL, 'ARAÇARIGUAMA', 'SP', 'RUA CLAUDIO REIS 854', '18147-000', '11', '4136-1066', NULL, 'CENTRO', 'C', 'compras@frigirmãos reis.com.br', NULL),
(803, 'FRIGORÍFICO FRANCA BOI', NULL, 'ROBERTO', NULL, 'FRANCA', 'SP', 'AV ALBERTO PULLICANO, 5151', '14416-100', '16', '3713-5100', NULL, 'DISTR. INDUSTRIAL', 'C', 'compras@frigorificofrancaboi.com.br', NULL),
(804, 'KK FRIOS - DISTRIBUIÇÃO E COM. KK LTDA', NULL, 'ANDRÉ', NULL, 'CONCHAL', 'SP', 'AV. PREF. NELSON CUNHA 798', '13835-000', '19', '38661490', NULL, 'JDIM SÃO JOÃO DA FIG', 'B', 'compras@kkfrios.com.br', NULL),
(805, 'VPJ ALIMENTOS', NULL, 'VALDOMIRO POLIZELLI ', NULL, 'PIRASSUNUNGA', 'SP', 'AV PRESIDENTE MÉDICE S/Nº', '13633-045', '19', '3562-7838', '3561-3879', 'JARDIM CARLOS GOMES', NULL, 'compras@vpjbeef.com.br', NULL),
(806, 'DISTRIBUIDORA CARBONARI - POLPAS DE FRUTA', NULL, 'Fabio', NULL, 'JUNDIAÍ', 'SP', 'AVENIDA SALVADOR KRUPPE Nº 722', '13213-265', '11', '4582-7463', NULL, 'TRAVIÚ', 'C', 'contabil@carbonari.com.br', NULL),
(807, 'ALMOFADAAS BRIC A BRAC', NULL, NULL, NULL, 'BOTUCATU', 'SP', 'R JOSÉ ANTONIO LEITE, 182', '18605-696', '14', '3813-9047', NULL, NULL, NULL, 'contato_bricabrac@hotmail.com', NULL),
(808, 'IVANI ARTES&DESIGNER-IVANI PRES COM UTIL DOM LTDA', NULL, NULL, NULL, 'PEDREIRA', 'SP', 'PRAÇA CEL JOÃO PEDRO, 185', '13920-000', '19', '3893-2454 /', '99693-6728', NULL, NULL, 'contato.ivaniartes@uol.com.br', NULL),
(809, 'AÇAÍ DA AMAZONIA IND. E COM. LTDA', NULL, NULL, NULL, 'RAFARD', 'SP', 'AV ITAPEVA Nº 575', '13370-000', '19', '3242-9345', NULL, 'DISTRITO INDUSTRIAL', 'A', 'contato@acaidaamazonia.com.br', NULL),
(810, 'Arosa S/A', NULL, 'Eduardo', NULL, 'ITATIBA', 'SP', 'RUA OSVALDO BERTO 480', '13255-405', '11', '4524-9900', NULL, 'PINHAL', 'C', 'contato@arosa.com.br', NULL),
(811, 'ART DECORAÇÕES GEISA MARY GONZALES DE OLIVEIRA RIBEIRO ME', NULL, NULL, NULL, NULL, 'SP', 'AV NAÇÕES UNIDAS, 50-98 BOX 14', '17033-260', '14', '3241-1917', NULL, 'CEASA', NULL, 'contato@artdecoracao.com.br', NULL),
(812, 'ATOS LOGÍSTICA AS', NULL, 'NELSON', NULL, 'CAMPINAS', 'SP', 'RUA DOS ALECRINS Nº 940 SALA 906', '13024-912', '19', '3794-4565', NULL, 'CAMBUÍ', 'A', 'contato@atoslog.com.br', NULL),
(813, 'BRASFOOD DISTRIBUIDORA DE ALIMENTOS', NULL, NULL, NULL, 'SERTÃOZINHO', 'SP', NULL, NULL, '15', '3261-5743', NULL, NULL, 'B', 'contato@brasfood.com.br', NULL),
(814, 'CASA BONITA PRESENTES COML Z IMPORT E EXPORT LTDA', NULL, NULL, NULL, 'RIO CLARO', 'SP', 'AV SABURO AKAMINE, 917', '13504-251', '19', '3524-8383', '3524-1384', NULL, NULL, 'contato@casabonitapresentes.com.br', NULL),
(815, 'CEAFLOR S/A', NULL, NULL, NULL, 'JAGUARIÚNA', 'SP', 'SP 107, KM 29,2', '13820-000', '11', '3642-1955', NULL, NULL, NULL, 'contato@ceaflor.com.br', NULL),
(816, 'CENTRO DE ENSINO DE ARTE FLORAL DORIS REGINA RODRIGUES PEREIRA ME', NULL, NULL, NULL, 'PORTO ALEGRE', 'RS', 'AV CRISTÓVÃO COLOMBO, 1724, SALA 201', '90560-001', '51', '3072-6055', '99865-0755', NULL, NULL, 'contato@centrodeensinodeartefloral.com.br', NULL),
(817, 'CENTRO PAISAGÍSTICO GUSTAAF WINTERS', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'RUA CAMPO DE POUSO, 640', '13825-000', '19', '3234-5186 /', '99213-5227', NULL, NULL, 'contato@centropaisagistico.com.br', NULL),
(818, 'BAYTAKA CERÂMICA ARTÍST. LTDA-EPP', NULL, NULL, NULL, 'PORTO FERREIRA', 'SP', 'RUA URBANO ROMANO MEIRELLES, 900', '13660-000', '19', '3589-8800', NULL, NULL, NULL, 'contato@ceramicabaytaka.com.br', NULL),
(819, 'SILVEIRA CERÂM ARTIST-SILVEIRA & FILHO LTDA', NULL, NULL, NULL, 'PORTO FERREIRA', 'SP', 'RUA JOÃO FERNANDES, 50', '13660-000', '19', '3581-2508 /', NULL, NULL, NULL, 'contato@ceramicasilveira.com.br', NULL),
(820, 'IND. ALIMENTÍCIA CHEGA MAIS LTDA', NULL, NULL, NULL, 'AMERICANA', 'SP', 'RUA DAS MARGARIDAS Nº 189', NULL, '19', '3405-4435', NULL, 'CIDADE JARDIM', 'C', 'contato@chegamais.com.br', NULL),
(821, 'CNP CENTRAL DE NEGOC DO PRODUTOR', NULL, NULL, NULL, 'JAGUARIÚNA', 'SP', 'ROD SP 107, KM 28', '13820-000', '19', '3867-3045', NULL, NULL, NULL, 'contato@cnprodutor.com.br', NULL),
(822, 'Conge Frutas', NULL, 'Esmael', NULL, 'LOUVEIRA', 'SP', 'ESTRADA DO XOXÓ Nº 320', '13290-970', '19', '3848-1356', '38481156', 'SANTO ANTONIO', 'C', 'contato@congefrutas.com.br', NULL),
(823, 'COOPERFLORA COOPERATIVA DOS FLORICULTORES', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'ESTR MUNIC HBR 40 KM 01', '13825-000', '19', '3802-9900', NULL, NULL, NULL, 'contato@cooperflora.com.br', NULL),
(824, 'DECORE CASA & JD ARTE EM RESINA-SUELI BRUNO TRANCOLIN ME', NULL, NULL, NULL, 'PEDREIRA', 'SP', 'RUA LUIS TINTI, 470 B', '13920-000', '19', '3893-5175', '99739-0491', NULL, NULL, 'contato@decorecasaejardim.com.br', NULL),
(825, 'DEPÓS. STA MARIAH EIRELE-ME', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'RUA DÓRIA VASCONCELOS, 293', '13825-000', '19', '3802-5161', '(11) 99990-', NULL, NULL, 'contato@depositosantamariah.com.br', NULL),
(826, 'DREAM BRASIL LUIZ RICARDO MONTENEGRO ORTIZ ME', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'RUA DR JOSÉ AIRES NETO, 227', '05594-040', '11', '3311-9469', NULL, NULL, NULL, 'contato@dreambrasil.com.br', NULL),
(827, 'DUALE ENTREPOSTO DE CARNES LTDA', NULL, 'CARLOS', NULL, 'ATIBAIA', 'SP', 'ESTRADA DO PARQUE DAS CASCATAS SN SAIDA ROD. FERNÃO DIAS KM50', '12940-972', '11', '4416-3185', NULL, 'PORTÃO', 'C', 'contato@duale.com.br', NULL),
(828, 'ECOFLORA FRANCISCUS A. A. VAN DE WEIJER', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'CAIXA POSTAL 84', '13825-000', '19', '3802-1711', NULL, NULL, NULL, 'contato@ecoflora.com.br', NULL),
(829, 'FIBRATER ARTE E DECORAÇÃO I N DE OLIVEIRA MÓVEIS EIRELI ME', NULL, NULL, NULL, 'SUMARÉ', 'SP', 'RUA FRANCISCO MANOEL DE SOUZA, 190', '13175-500', '19', '3308-9226', NULL, NULL, NULL, 'contato@fibrafer.com.br', NULL),
(830, 'FOLHAS DE OLIVA PROD NAT IMP E EXP LTDA ME', NULL, NULL, NULL, 'ESTIVA GERBI', 'SP', 'RUA PEDRO BENI, 380', '13857-000', '19', '3868-9979 /', '99628-3136', NULL, NULL, 'contato@folhasdeoliva.com.br', NULL),
(831, 'GRAN FLORA VEILING HOLAMBRA', NULL, NULL, NULL, 'STO ANTONIO DE POSSE', 'SP', 'ROD SP 107 KM 27', '13830-000', '19', '3902-9080', NULL, NULL, NULL, 'contato@granflora.com.br', NULL),
(832, 'JASON ROQUE DE CASTILHO JR E CIA LTDA', NULL, 'JASON', NULL, 'CAMPINAS', 'SP', 'RUA JOSÉ PUGLIESI FILHO Nº 886', '130854-415', '19', '3287-5355', NULL, 'GUAR´PA', 'B', 'contato@guarasupermercados.com.br', NULL),
(833, 'Heber Transportadora Ltda', NULL, 'LEANDRO', NULL, 'SÃO BERNARDO DO CAMP', 'SP', 'R Orester Suster, 947 sl 01', '09850-010', '11', '4352-3100', '64291009', 'Vila Cruzeiro', 'C', 'contato@heberlog.com.br', NULL),
(834, 'HERO FLORES E PLANTAS LTDA', NULL, NULL, NULL, 'SOROCABA', 'SP', 'RUA TERÊNCIO DA COSTA DIAS, 300', '18052-200', '15', '3281-3531', '99742-7391', NULL, NULL, 'contato@heroflores.com.br', NULL),
(835, 'ISABELA ALUMÍNIO-ANTONIO MARCOS FERREIRA DE MORAES ME', NULL, NULL, NULL, 'PEDREIRA', 'SP', 'PRAÇA CEL JOÃO PEDRO, 83 LJ 9/10 GALERIA PLAZA', '13920-000', '19', '3893-4802', '99712-1433', NULL, NULL, 'contato@isabelaaluminios.com.br', NULL),
(836, 'JANETA MÓVEIS-JANETA IND COM MÓVEIS LTDA', NULL, NULL, NULL, 'ROLÂNDIA', 'PR', 'RUA DAS INDÚSTRIAS, 220', '86600-204', '43', '3256-1016', NULL, NULL, NULL, 'contato@janetamoveis.com.br', NULL),
(837, 'Linguiçaria Bragança', NULL, 'Adriano', NULL, 'BRAGANÇA PAULIUSTA', 'SP', 'PRAÇA 9 DE JULHO 30', '12900-280', '11', '4033-2226', NULL, 'TABOÃO', 'C', 'contato@linguicadebraganca.com.br', NULL),
(838, 'LONGWAY ALIMENTOS, Polo Industrial Granja Viana 2', NULL, NULL, NULL, NULL, 'SP', 'Rua Pacífico, 160', '06707-065', '11', '4615-5858', NULL, 'COTIA', NULL, 'contato@longwayalimentos.com.br', NULL),
(839, 'MARIUSSO FOOD SERVICE', NULL, NULL, NULL, 'PAULÍNIA', NULL, 'RUA JOAQUIM ARICÓ Nº 275', '13140-000', '19', '3515-6500', NULL, 'BETEL', 'C', 'contato@mariusso.com.br', NULL),
(840, 'PEDRAS DECORATIVAS ITÁLIA LTDA', NULL, NULL, NULL, 'CACHOEIRO DE ITAPEMI', 'ES', 'RUA PROJETADA, S/ Nº', '29325-000', '21', '2578-5896', '99985-3345', NULL, NULL, 'contato@mineracaoitalia.com.br', NULL),
(841, 'NATUR AYO-AYO AGRICUL E COM EQUIP AGRIC LTDA', NULL, NULL, NULL, 'FORTALEZA', 'CE', 'RUA ROCHA LIMA, 371', '60050-080', '85', '3242-0888', '98720-9777', NULL, NULL, 'contato@naturayo.com.br', NULL),
(842, 'VALE DAS FLORES-MIGUEL RENATO ESPERANÇA', NULL, NULL, NULL, 'ANDRADAS', 'MG', 'ROD ANDRADAS/POÇOS, KM 549, CX POSTAL 525', '37795-000', '35', '3731-0881', NULL, NULL, NULL, 'contato@ovaledasflores.com.br', NULL),
(843, 'Pétala', NULL, 'Daniel', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '39029005', NULL, 'Zona Rural', 'C', 'contato@petalanet.com.br', NULL),
(844, 'SHANGAI DECOR-MANOEL BROCOLLELI JUNIOR ME', NULL, NULL, NULL, 'PORTO FERREIRA', 'SP', 'RUA LEANDRO LOPES DO PRADO, 30', '13660-000', '19', '3581-3529', NULL, NULL, NULL, 'contato@shangaidecoracoes.com.br', NULL),
(845, 'THE HOME DECOR-ENTRE MARES IND E COM DE ARTES', NULL, NULL, NULL, 'COLOMBO', 'PR', 'RUA ANTONIO AMILTON BAGGIO, 73', '83413-600', '41', '3562-2698', NULL, NULL, NULL, 'contato@thehome.com.br', NULL),
(846, 'TRANSNOSEI - TRANSPORTADORA NOSEI LTDA', NULL, 'PAULO', NULL, 'SÃO PAULO', 'SP', 'RUA ALVARENGA PEIXOTO Nº 246', NULL, '11', '3832-9460', NULL, 'VILA ANASTÁCIO', 'C', 'contato@transnosei.com.br', NULL),
(847, 'TROPICAL PLANTAS ORNAM-JOSÉ POMPEO JR E OUTROS', NULL, NULL, NULL, 'LIMEIRA', 'SP', 'ROD ANHANGUERA, KM 143', '13480-970', '19', '3442-5065', NULL, NULL, NULL, 'contato@tropicalplantas.com', NULL),
(848, 'WALLFLOWER DO BRASIL PROD IMP EXP DE FLORES E PLANTAS', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'ESTR MUNIC HBR 323 CP 345', '13825-000', '19', '4042-0742', '99981-8808', NULL, NULL, 'contato@wallflowers.com.br', NULL),
(849, 'Coopercica', NULL, 'Rogerio', NULL, 'JUNDIAÍ', 'SP', NULL, NULL, '11', '4587-2207', NULL, NULL, 'C', 'coopercica@coopercica.com.br', NULL),
(850, 'Cooperfrios - Coop. Transp.Frigoríficados', NULL, 'Gildo', NULL, 'SÃO PAULO', 'SP', 'Rua Fortunato ferraz, 834-A', '05093-000', '11', '3641-0939', NULL, 'Vl. Anastácio', 'C', 'cooperfrios2001@ig.com.br', NULL),
(851, 'COOPERVAL - COOPERATIVA DE PRODUTOS EMBUTIDOS DA CIDADE DE VALINHOS', NULL, 'MARCOS', NULL, 'VALINHOS', 'SP', 'RUA JOÃO BISSOTO FILHO Nº 1821', '13275-000', '19', '3829-2713', NULL, 'ORTIZES', 'C', 'cooperval@cooperval.com.br', NULL),
(852, 'COQUIM OURO FÉRTIL FIBRAS NATURAIS S/A', NULL, NULL, NULL, 'FRANCO DA ROCHA', 'SP', 'ESTR DA VARGEM GRANDE, 700', '07863-000', '11', '4811-1665', NULL, NULL, NULL, 'coquim@coquim.com.br', NULL),
(853, 'CORDEIRO REI', NULL, 'REINALDO', NULL, 'AMERICANA', 'SP', 'av. n. sra de fátima nº 3120', '13478-540', '19', '34781926', NULL, NULL, 'A', 'cordeirorei@cordeirorei.com.br', NULL),
(854, 'Coser Transportes', NULL, 'Paulo Roque', NULL, 'SÃO JOSÉ DO RIO PARD', 'SP', 'AVENIDA OLINDA RALSTON 411 A', '13270-000', '19', '3607-8040', NULL, 'ALTO DA BELA VISTA', 'A', 'coser@cosertransportes.com.br', NULL),
(855, 'Coopercrama - Cooperativa de Piscicultores do Vale do Macacu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cpr@brasilvision.com.br', NULL),
(856, 'NEW ITALIAN FAST FOOD - HABIBIS', NULL, 'CRISTIANO', NULL, 'ITAPEVI', 'SP', 'RUA JOÃO DIAS RIBEIRO 352', '06693-810', '11', '4772-7373', NULL, 'POLO INDÚSTRIAL', 'B', 'cristiano.gouveia@newitalian.com.br', NULL),
(857, 'JS CONFECÇÕES-SIMONE IOLANDA SPOLAOR CRUCIARI', NULL, NULL, NULL, 'TABATINGA', 'SP', 'ROD DE ACESSO SP 331,35', '14910-000', '16', '3385-1972', '99742-2584', NULL, NULL, 'cruciari@ig.com.br', NULL),
(858, 'SARTORATO COMERCIO DE FRUTAS LTDA', NULL, 'CLAUDIO', NULL, 'CAMPINAS', 'SP', 'CEASA CAMPINAS', NULL, '19', '96*23547', NULL, 'BARÃO GERALDO', 'A', 'cssartorato@uol.com.br', NULL),
(859, 'APTA - Adivel Caminhões e Ônibus', NULL, 'José Antonio Cunha', NULL, 'SÃO BERNARDO DO CAMP', 'SP', 'Est. Galvão Bueno, 6597 (Trevo do Km 26 - Rod Imigrantes)', '09842-080', '11', '7398-9119', '7717-5966', 'Batistini', 'C', 'cunhaavel@ig.com.br', NULL),
(860, 'ESCOLA DE ARTE FLORAL ALFREDO TILLI', NULL, NULL, NULL, 'JAGUARIÚNA', 'SP', 'ROD ADEMAR DE BARROS SP 340 HOTEL DUAS MARIAS', '13820-000', '11', '4521-1570', NULL, NULL, NULL, 'cursos@escoladeartefloral.com.br', NULL),
(861, 'Danone LTDA', NULL, 'Alessandra', NULL, 'SÃO PAULO', 'SP', 'Av. Paulista, 2300 5° andar', '01310-300', '11', '2192-4664', NULL, 'Cerqueira Cezar', 'C', 'dac@danone.com.br', NULL),
(862, 'D''ALBERO ALIMENTOS', NULL, 'LARIVALDO', NULL, 'HORTOLÂNDIA', 'SP', 'RUA HJALMAR H. G. LINDQUIST, 615', '13184-120', '19', '3909-0577', '3909-0588', 'PQ ORTOLÂNDIA', NULL, 'dalbero@uol.com.br', NULL),
(863, 'DAMA TRANSPORTADORA LTDA', NULL, NULL, NULL, 'OSASCO', 'SP', 'AV. DR. ALBERTO JACKSON BYINGTON 1680', NULL, '11', '3601-7433', NULL, 'JARDIM STA RITA DE C', 'C', 'dama@damatransportadora.com.br', NULL),
(864, 'DOM ANGELO LOGÍSTICA', NULL, 'DANIEL ANGELO AMORIM', NULL, 'SÃO CAETANO DO SUL', 'SP', 'RUA DA FORTUNA Nº 276', '09550-580', '11', '4227-6833', NULL, 'PROSPERIDADE', 'C', 'danielmarin@domangelologistica.com.br', NULL),
(865, 'D´Coelho Transportes Ltda', NULL, 'Dino/Jair', NULL, 'ITAPECIRICA DA SERRA', 'SP', 'Rod. Régis Bittencourt Km 294', '06682-700', '11', '4147-1363', '9974-0167', NULL, 'C', 'dcoelhotransportes@dcoelho.com.br', NULL),
(866, 'Décio Frio Transporte Rodoviário de Cargas', NULL, 'Edélcio D. Fava', NULL, 'JUNDIAÍ', 'SP', 'Rua Jacinto Nalini, 326', '13219-230', '11', '4584-3231', NULL, 'Colônia', 'A', 'deciofrio@yahoo.com.br', NULL),
(867, 'Design de Bouquet', NULL, 'Manoel', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '9255-3024', NULL, 'Zona Rural', 'B', 'design@cvh.com.br', NULL),
(868, 'RPA Transportes e Logistica', NULL, 'Djalma Gonçalves Gui', NULL, 'SÃO PAULO', 'SP', 'Santa Rita, 105', '03257-020', '11', '2702-8665', '7369-9741', 'Vila Industrial', 'C', 'dgguirra@ig.com.br', NULL),
(869, 'VEILING HOLAMBRA PRODUTORES DE ALSTROEMÉRIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'diasnoberto@ig.com.br', NULL),
(870, 'DIDAS FRIOS', NULL, 'MARCLO', NULL, 'CAMPINAS', 'SP', 'AVENIDA DA SAUDADE 1876', NULL, '19', '80*40701', NULL, 'SÃO QUIRINO', 'A', 'didasfrioscampinas@yahoo.com.br', NULL),
(871, 'DIKA DA BARRA SUPORTES IND COM PROD P/ JARDINAGEM', NULL, NULL, NULL, 'BARRA BONITA', 'SP', 'AV DR DIONISIO DUTRA E SILVA, 105 BOX 01', '17340-000', '14', '3641-5799', '99119-6460', NULL, NULL, 'dikadabarra@hotmail.com', NULL),
(872, 'Santa Marta Equipamentos', NULL, 'Diones Lopes', NULL, 'LIMEIRA', 'SP', 'Via Anhanguera KM 143', NULL, '19', '3442-2991', NULL, 'Bairro do Loiolas', 'C', 'diones@santamartalimeira.com.br', NULL),
(873, 'Solução Transportes e Logistica', NULL, 'Fauze', NULL, 'CAMPINAS', 'SP', 'Rod. Anhanguera KM 103,5 COND. TREVO', '13068-616', '19', '3282-3368', NULL, 'NOVA APARECIDA', 'C', 'dir.fauze@solucaolog.com.br', NULL),
(874, 'BORA TRANSPORTES', NULL, 'CESAR', NULL, 'SÃO PAULO', 'SP', 'RUA JULIO CESAR DA SILVA Nº 156', NULL, '11', '2698-7313', NULL, 'PARÍ', 'C', 'diretoria@boratransportes.com.br', NULL),
(875, 'Camp Frete Cargas e Serviços', NULL, 'Eduardo Bassani', NULL, 'CAMPINAS', 'SP', 'R. Erasmo Braga, 1211', '13070-147', '19', '37442800', NULL, 'Castelo', 'C', 'diretoria@campfrete.com.br', NULL),
(876, 'FAZENDA SÃO JUDAS CENTRO DE DISTRIBUIÇAO', NULL, 'AFONSO', NULL, 'ITUPEVA', 'SP', 'RUA MARIA SOLDEIRA LOURENÇÃO, 550', '13295-000', '11', '4591-1969', NULL, 'ANA JÚLIA', 'C', 'emerson@fazendasaojudas.com.br', NULL),
(877, 'ITATIBENSE TRANSPORTES E LOGÍSTICA LTDA', NULL, 'LUIS DANIEL', NULL, 'ITATIBA', 'SP', 'RUA ASSUMPTA BARHOLOMEU PALADINO Nº 81', '13251-070', '11', '4534-9209', '4534-9200', 'VILA CAPELETO', 'C', 'diretoria@itatibensetransportes.com.br', NULL),
(878, 'JGEX TRANSPORTYES', NULL, 'JOÃO GAZOLI', NULL, 'SANTANA DO PARNAÍBA', 'SP', 'RUA PARANÁ Nº 151', NULL, '11', '4156-3540', NULL, 'LOPES', 'C', 'diretoria@jgextransporte.com.br', NULL),
(879, 'Distr. De Frutas Céu Azul Ltda', NULL, 'Dito', NULL, 'SÃO PAULO', 'SP', 'Av. Dr. Gastão Vidigal, 1946 - Pav HFG - Bx 125 126', '05316-900', '11', '3643-7461', NULL, 'Vl. Leopoldina', 'C', 'dis.ceuazul@uol.com.br', NULL),
(880, 'NATURA FLORES-NATURA COM FLORES E PLANTAS LTDA', NULL, NULL, NULL, 'STO ANTONIO DE POSSE', 'SP', 'ROD SP 107, KM 27,5 GRAN FLORA', '13830-000', '19', '3902-9021', '3802-7220', NULL, NULL, 'distribuidora@naturaflores.com.br', NULL),
(881, 'Distribuidora e Transportadora Bragantina Ltda - Me', NULL, 'Gerson Leite', NULL, 'VARGEM', 'SP', 'R. Santo Antonio, 160', '12935-000', '11', '45984611', '45984611', 'Centro', 'C', 'distribuidoragal@uol.com.br', NULL),
(882, 'Transportador Bragantina', NULL, 'Gerson', NULL, 'BRAGANÇA PAULIUSTA', 'SP', NULL, NULL, '11', '4598-4611', '9633-9200', NULL, 'C', 'distribuidoragal@uol.com.br', NULL),
(883, 'Expo Flor & Verde', NULL, 'Sebatião', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3802-7224', NULL, 'Zona Rural', 'B', 'docarmocustodio@yahoo.com.br', NULL),
(884, 'Indústria e Comércio de Pescados Dona Rose Ltda.', NULL, NULL, NULL, NULL, 'SC', NULL, NULL, '47', '3368-2008', NULL, 'ITAPEMA', NULL, 'donarose@pescadosdonarose.com.br', NULL),
(885, 'DONA SOFIA INDÚSTRIA DE PRODUTOS ALIMENTÍCIOS LTDA', NULL, NULL, NULL, 'AMERICANA', 'SP', 'RUA INDALÉCIO X. DE CASTRO Nº 530', NULL, '19', '3468-2912', NULL, 'SÃO VITO', 'C', 'donasofia@donasofia.com.br', NULL),
(886, 'Transfrigor', NULL, 'Eduardo C. Branco Do', NULL, 'CAMPINAS', 'SP', 'Rua Julio Ribeiro, 43', '13070-712', '19', '3242-6033', '3242-5590', 'Bonfim', 'C', 'doria@transfrigor.com', NULL),
(887, 'Bourbon Express', NULL, 'Diogo Parreiras', NULL, 'SÃO PAULO', 'SP', 'Rod. Anhanguera, KM 24,2 - Sl 23, 2º Andar', '05275-000', '11', '2184-8726', '2184-8727', 'Jaragua', 'A', 'dparreiras@bourbonexpres.com', NULL),
(888, 'RAZÃO SOCIAL', NULL, 'CONTATO 1', NULL, 'MUNICIPÍO', 'UF', 'ENDEREÇO', 'CEP', 'DDD', 'FONE 1', 'FONE 2', 'BAIRRO', 'NI', NULL, NULL),
(889, 'Jamef Transportes - encomendas urgentes', NULL, 'EDMAR', NULL, 'SÃO PAULO', 'SP', 'Rua Miguel Mentem, 500', '02050-010', '11', '21216161', NULL, 'Vila Guilherme', 'C', 'edmar@sao.jamef.com.br', NULL),
(890, 'VIVERPLAN MADEIRAS ENERGÉTICAS FLORESTAL LTDA', NULL, NULL, NULL, 'JEQUITIBA', 'SP', 'ROD MG, 238, KM 12', '35767-000', '31', '3717-6264', NULL, NULL, NULL, 'edmar@viverplan.com.br', NULL),
(891, 'PTS Transportes Ltda', NULL, 'Edinei', NULL, 'SÃO PAULO', 'SP', 'Av. Dracena, 503', '05329-000', '11', '4151-2724', NULL, 'Jaguaré', 'C', 'edney@ptstransportes.com.br', NULL),
(892, 'Tegma Gestão Logistica S/A.', NULL, 'Edson', NULL, 'SÃO PAULO', 'SP', NULL, NULL, '11', '4772-3248', NULL, NULL, 'A', 'edson.fraiz@tegma.com.br', NULL),
(893, 'BRICO BREAD ALIMENTOS', NULL, 'Gino', NULL, 'COTIA', 'SP', 'ESTRADA FERNANDO NOBRE 155', '06705-490', '11', '4617-9090', NULL, 'BAIRRO DO RIO COTIA', 'C', 'elgino.rocha@bricobread.com.br', NULL),
(894, 'Eliana Flores', NULL, 'Maria Eliana', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3827-2890', NULL, 'Zona Rural', 'B', 'eliana-flores1@uol.com.br', NULL),
(895, 'TRANSWAR', '79484234/0003-73', 'JOELMO', NULL, 'CAMPINAS', 'SP', 'AVENIDA RICARDO BASSOLI CESARI Nº 3850', '13050080', '19', '2101-0622', NULL, 'JARDIM BANDEIRAS', NULL, 'elmo@transwar.com.br', NULL),
(896, 'FAZENDA SÃO JUDAS', NULL, 'EMERSON', NULL, 'RIBEIRÃO BRANCO', 'SP', 'ESTRADA MUNIC DE RIBEIRÃO BRANCO', '18430-000', '15', '3551-7320/(', '(15) 3551-7', 'TAQUARIMIRIM', 'C', 'emerson@fazendasaojudas.com.br', NULL),
(897, 'TRANSNEGRELLI TRANSPORTADORA LTDA', NULL, 'EMERSON', NULL, 'OSASCO', 'SP', 'AV. PRESIDENTE KENNEDY Nº 2463 BLOCO B', '06220-040', '11', '3687-0707', NULL, 'ROCHDALE', 'C', 'emerson@transnegrelli.com', NULL),
(898, 'Transpallet', NULL, NULL, NULL, 'GUARULHOS', 'SP', 'RUA SANTO EXPEDITO, 550', '07140-040', '11', '2087-6020', '2087-6023 F', 'PQ INDUSTRIAL JD SÃO', 'B', 'emerson@transpallet.com.br', NULL),
(899, 'SERV DE APOIO Á MICRO E PEQ EMPRESA SP', NULL, NULL, NULL, 'CAMPINAS', 'SP', 'AV IMPERATRIZ LEOPOLDINA, 272', '13073-035', '19', '3243-0277', '0800-570080', NULL, NULL, 'ercampinas@sebraesp.com.br', NULL),
(900, 'ESL Flores', NULL, 'Elisio', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '7813-5622', NULL, 'Zona Rural', 'C', 'esl.esliso@ig.com.br', NULL),
(901, 'Esmeralda Transportes', NULL, 'Sergio', NULL, 'Cajamar', 'SP', '07760-000', NULL, '11', '4407-2180', '4407-2240', NULL, 'B', 'esmeralda@esmerandalog.com.br', NULL),
(902, 'Laticínios Estrela D'' Oeste', NULL, 'Ivan', NULL, 'SANTO ANDRÉ', 'SP', 'Rua Abrahão Delega, 680', '09051-080', '11', '4422-4500', '4425-5152', 'Jardim Ocara', 'C', 'estrela@laticiniosestrela.com.br', NULL),
(903, 'JASP TRANSPORTES', NULL, 'EVANDRO SARTORATTO', NULL, 'SÃO PAULO', 'SP', 'AVENIDA SERAFIM GONÇALVES PEREIRA Nº 451 SALA 3', '02179-000', '11', '2807-8270', NULL, 'PARQUE NOVO MUNDO', 'C', 'evandro@jasptransportes.com.br', NULL),
(904, 'INESQUECÍVEL CASAMENTO-3R STUDIO COMUNICAÇÃO LTDA', NULL, NULL, NULL, 'RIO DE JANEIRO', 'RJ', 'AV GENERAL GUEDES DA FONTOURA, 674', '22621-242', '21', '3578-6242', NULL, NULL, NULL, 'eventos@3rstudio.com.br', NULL),
(905, 'Expresso Lagoa Vermelha Ltda', NULL, 'Luiz', NULL, 'SÃO PAULO', 'SP', 'AV. PRESIDENTE ALTINO 2939', '05323-003', '11', '3768-8268', NULL, 'JAGUARÉ', 'C', 'expresso.lv@bol.com.br', NULL),
(906, 'VB FERRARI TRANSPORTES', NULL, 'EZIDIO', NULL, 'INDAIATUBA', 'SP', 'RUA 24 DE MAIO Nº 811 SALA 06', NULL, '19', '139*1851', NULL, 'CENTRO', NULL, 'ezidio@vbferrari.com.br', NULL),
(907, 'Jundiaí Alimentos', NULL, 'Fernando / Solange', NULL, 'JUNDIAÍ', 'SP', 'R do Castanho, 50 cxp 302', '13201-970', '11', '4599-9090', NULL, 'Tijuco preto', 'A', 'fabe@terra.com.br', NULL),
(908, 'Garoupa Transportadora Ltda', NULL, 'Fabiano', NULL, 'CORDEIRÓPOLIS', 'SP', 'Rod Aianguera km 154,5', '13490-000', '19', '3546-5800', '3455-2400', 'Distrito Industrial', 'B', 'fabiano.abrahao@dglnet.com.br', NULL),
(909, 'Frango Assado', NULL, 'Fabio', NULL, 'LOUVEIRA', 'SP', 'VIA ANHANGUERA KM 72', '13290-000', '19', '3848-8009', NULL, 'STO ANTONIO', 'C', 'fabio.alves@grupoimc.com.br', NULL),
(910, 'GRAN SAPORE BR BRASIL LTDA', NULL, 'MARCEL OLIVEIRA', NULL, 'CAMPINAS', 'SP', 'RUA SÃO LUIZ DO PARAITINGA Nº 53', '13040-002', '19', '3738-4000', NULL, 'JARDIM DO TREVO', 'A', 'fabio.costa@sapore.com.br', NULL),
(911, 'BR FOODS', NULL, 'HENRIQUE GELAIN', NULL, 'EMBU', 'SP', 'AV JOSÉ MARTINAS DA COSTA Nº 134', '06833-500', '11', '4785-1502', '4785-1500', 'QUINHAL', 'C', 'fabio.rodrigues@brasilfoods.com', NULL),
(912, 'CASA THEREZA AGUIAR RENATO BERNARDINELLI EPP', NULL, NULL, NULL, 'SÃO PEDRO', 'SP', 'RUA JOSÉ ANGELO CASERI, 134', '13520-000', '19', '3483-3071', '(11) 98723-', NULL, NULL, 'fabriciomoreira@casatherezaaguiar.com.br', NULL),
(913, 'FADIVAN COMÉRCIO E TRANSPORTE', NULL, 'ENILSON | CARLA', NULL, 'SÃO PAULO', 'SP', 'RUA BARÃO ANTONIO DE ANGRA Nº 39', '04470-280', '11', '5673-5919', '9465-8644', 'APURÁ', 'B', 'fadivanbatavo@yahoo.com.br', NULL),
(914, 'JUNIOR ALIMENTOS IND. E COM. LTDA', NULL, 'SHINAIDER ARAUJO', NULL, 'COTIA', 'SP', 'RUA 21 DE ABRIL Nº 221 - ROD. RAPOSO TAVARES KJM 30,9', '06705-045', '11', '4615-4482', '4615-4460', 'JARDIM BARRO BRANCO', 'C', 'falecom@junior.com.br', NULL),
(915, 'FÁTIMA ARTEFATOS DE MADEIRA JOSÉ GUIMARÃES FRANCO ME', NULL, NULL, NULL, 'JUNDIAÍ', 'SP', 'AV NAMI AZEM, 694', '13219-655', '11', '4584-5148', NULL, NULL, NULL, 'fatimaartefatosdemadeira@hotmail.com', NULL),
(916, 'LAIR ANTONIO DE SOUZA', NULL, 'ANTONIO', NULL, 'ARARAS', 'SP', 'VIA ANHANGUERA, S/N - KM 117,65', '13.603-002', '19', '3543-1550', NULL, NULL, 'B', 'faturamento@fazendacolorado.com.br', NULL),
(917, 'Dado Alimentos', NULL, 'Rogerio', NULL, 'JUNDIAÍ', 'SP', 'RUA MONTE FREDERICO NANO Nº 250', NULL, '11', '4587-2625', NULL, 'VILA ARENS', 'A', 'fdado@terra.com.br', NULL),
(918, 'Churrasquinho Jundiaí', NULL, 'Alfredo', NULL, 'JUNDIAÍ', 'SP', 'Av. Comendador Antônio Borin, 1701', '13218-641', '11', '4584-1337', '4584-9900', NULL, 'A', 'felipe@churrasquinhojundiai.com.br', NULL),
(919, 'Sulfrio Transportes Rodoviarios Ltda', NULL, 'Fernando Mincarone', NULL, 'SÃO PAULO', 'SP', 'R. Benedita Dornellas Claro, 500, KM 1,5', '02168-020', '11', '2636-1636', '6636-1636', 'Via Dutra', 'C', 'fernando@sulfrio.com.br', NULL),
(920, 'Transportes FFBV Ltda - Me', '70353120001-80', 'Fernando', NULL, 'SÃO PAULO', 'SP', 'R. Domingos Galleteri Blotta, 298', '04455-360', '11', '7300-7311', NULL, 'Vila Santa Cruz', NULL, 'fernandormcunha@terra.com.br', NULL),
(921, 'GELOG', NULL, 'FERNANDO', NULL, 'SANTOS', 'SP', 'AVENIDA VEREADOR ALFREDO DAS NEVES 1602', '11095-510', '12', '3296-3330', NULL, 'ALEMOA', 'A', 'fernandosantos@gelogtransportes.com.br', NULL),
(922, 'CAIXA E CIA STM EMBALAGENS LTDA', NULL, NULL, NULL, 'SAPIRANGA', 'RS', 'RUA NAÇÕES UNIDAS, 405', '93800-000', '51', '3559-4828', '99969-8673', NULL, NULL, 'financeiro@caixaecia.com', NULL),
(923, 'Citro Cardilli Com. Imp. e Exp. Ltda', NULL, 'Valdemir Car', NULL, 'SÃO PAULO', 'SP', 'R. Mergentharla, 1069', '05311-030', '11', '2192-8500', '2192-8501', NULL, NULL, 'financeiro@citrocardilli.com.br', NULL),
(924, 'TC FRUTAS LTDA', NULL, 'CELSO', NULL, 'CAMPINAS', 'SP', 'ROD. DOn Pedro Km 140,5 S/ Nº', '13082-902', '19', '3746-1498', '3246-0549', 'SANTA MÔNICA (CEASA)', 'B', 'financeiro@tcfrutas.com.br', NULL),
(925, 'MASSAS DAIANA FRANCA LTDA', NULL, 'ARIANE', NULL, 'FRANCA', 'SP', NULL, NULL, '16', '3721-3031', NULL, NULL, 'C', 'fiscal@massasdaiana.com.br', NULL),
(926, 'Flora Cristal', NULL, 'Barros', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'R: Basilio Monesso290', '13830-000', '19', '3896-1550', NULL, NULL, 'A', 'floracristalflores@terra.com.br', NULL);
INSERT INTO `cadastro_clientes` (`id_cliente`, `razaosocial`, `cnpj`, `contato`, `classificacao`, `municipio`, `uf`, `endereco`, `cep`, `ddd`, `tel_1`, `tel_2`, `bairro`, `zona`, `email_1`, `email_2`) VALUES
(927, 'Flora Mar', NULL, 'Gabriela', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3802-7239', NULL, 'Zona Rural', 'C', 'floramar@floramalflores.com.br', NULL),
(928, 'FLORAMAR FLORES COM DE FLORES LTDA EPP', NULL, NULL, NULL, 'STO ANTONIO DE POSSE', 'SP', 'ROD SP 107 KM 27, S/Nº RURAL', '13830-000', '19', '3802-7237', NULL, NULL, NULL, 'floramar@floramarflores.com.br', NULL),
(929, 'Vaz de Lima Flores', NULL, 'Vaz', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3902-9018', NULL, 'Zona Rural', NULL, 'floravazdelima@uol.com.br', NULL),
(930, 'Flor Com', NULL, 'Rubens', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '91810770', NULL, 'Zona Rural', 'C', 'florcom@gmail.com', NULL),
(931, 'FLÓRIDA ESTUFAS AGRÍCOLAS IND. E COM. LTDA', NULL, 'DÉCIO', NULL, 'JAGUARIUNA', 'SP', 'ROD. SP 107 KM 28,5', '13820-000', '19', '3987-5229', NULL, 'BORDA DA MATA', 'C', 'florida@floridaestufas.com.br', NULL),
(932, 'Frigorífico Marba Ltda', NULL, 'Marcos', NULL, 'SÃO BERNARDO DO CAMP', 'SP', 'Av. Cézar Magnani, 971', '09694-000', '11', '4176-7010', '4176-7028', 'Vl.Paulicéia', 'B', 'fmarba@marba.com.br', NULL),
(933, 'Formaggio', NULL, 'Gilberto', NULL, 'CAMPINAS', 'SP', 'RUA EUCLIDES P ANDRADE 238', NULL, '19', '3276-7733', NULL, 'VILA JOAQUIM INÁCIO', 'C', 'formaggio.frios@hotmail.com', NULL),
(934, 'BONSERV TRANSPORTES', NULL, 'MARCOS | FRANCISCO', NULL, 'OSASCO', 'SP', 'RUA ALAGOAS Nº 19', NULL, '11', '29227708', '7883-2655', 'ROCHDALLE', 'C', 'francisco.bonserv@terra.com.br', NULL),
(935, 'ASISTA COM DE MUDAS E INSUMOS LTDA', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'RUA VAN AKEN, 181 A', '13825-000', '19', NULL, '99774-1310', NULL, NULL, 'frank@asista.com.br', NULL),
(936, 'MDG COMÉRCIO DE ALIMENTOS LTDA', NULL, 'FREDERICO', NULL, 'CAMPINAS', 'SP', 'RUA LAURO VANUCCI Nº48', '13087-548', '19', '3296-3075', NULL, 'SANTA CÂNDIDA', 'B', 'frederico@museudagula.com.br', NULL),
(937, 'FRICOCK FRIGORIFICAÇÃO, AVICULTURA, INDÚSTRIA E COMÉRCIO LTDA', NULL, 'Marco Antonio Ceccat', NULL, 'RIO CLARO', 'SP', 'RUA 8 - B, Nº 1331', '13506-740', '19', '2112-3166', NULL, 'VILA INDAIA', 'B', 'fri@fricock.com.br', NULL),
(938, 'FRIFORÍFICO JAÓ', NULL, 'EDUARDO', NULL, 'CAJAMAR', 'SP', 'AV. LUIZ ALLI FAYRDIN Nº 590', '07760-000', '11', '4447-4211', NULL, 'DISTRITO INDUSTRIAL', 'C', 'frigojao@terra.com.br', NULL),
(939, 'Frigopeixe Comercio de Pescados Ltda', NULL, 'Sr. Eide', NULL, 'SÃO BERNARDO DO CAMP', 'SP', 'R. Bela Vista, 180', '09843-120', '11', '4357-3288', NULL, 'Jardim Represa', 'C', 'frigopeixesbc@uol.com.br', NULL),
(940, 'Frimaster Com. De Alimentios Ltda', NULL, 'Valdir', NULL, 'SÃO PAULO', 'SP', 'R. Custódio serrão, 271', '05116-010', '11', '3622-5988', NULL, 'Vl.Jaguara', 'C', 'frimaster@terra.com.br', NULL),
(941, 'Frutas Top Comercial', NULL, 'Antônio Carlos', NULL, 'SÃO PAULO', 'SP', 'Av. Dr Gastão Vidigal, 1946 - Pavilhão HFF Box 33', '05316-900', '11', '3643-7709', '3643-7710', 'Vl. Leopoldina', 'B', 'frutastop@frutastop.com.br', NULL),
(942, 'Frutícola Alpha Ltda', NULL, 'Luis', NULL, 'SÃO PAULO', 'SP', 'Av Dr Gastão Vidigal, 1946 - Pavilhão HFF - Box 28', '05316-900', '11', '3643-7726', '3643-7723', 'Vl. Leopoldina', 'A', 'fruticolaalpha@uol.com.br', NULL),
(943, 'Frutícola 3 Meninas', NULL, 'José', NULL, 'SÃO PAULO', 'SP', 'Av. Dr Gastão Vidigal, 1946 - Pavilhão HFF Box 39', '05316-900', '11', '3643-7740', NULL, 'Vl. Leopoldina', 'B', 'fruticolatresmeninas@ig.com.br', NULL),
(944, 'FURLAN VEÍCULOS', NULL, 'FURLAN', NULL, 'CAMPINAS', 'SP', 'RUA BATISTA RAFFI Nº 755', '13068-601', '19', '3281-2299', NULL, 'JARDIM APARECIDA', 'C', 'furlancaminhoes@uol.com.br', NULL),
(945, 'Gelita', NULL, 'Rodrigo', NULL, 'ITATIBA', 'SP', 'R. Fábio Zuiani 937', '13254-360', '19', '4538-6354', NULL, 'Jd. Galetto', 'A', 'gelita@gelogelita.com.br', NULL),
(946, 'Gelo Drink', NULL, 'Marcel', NULL, 'JUNDIAÍ', 'SP', '13210-045', NULL, '11', '4587-6154', NULL, NULL, 'C', 'gelodrink@gelodrink.com.br', NULL),
(947, 'Skimoni Sorvetes', NULL, 'Marcel', NULL, 'JUNDIAÍ', 'SP', 'RUA LONDRINA 587', '13210-045', '11', '4587-6154', NULL, 'VILA MARINGA', 'B', 'gelodrink@gelodrink.com.br', NULL),
(948, 'TANNERS', NULL, 'GEORGE', NULL, 'CAMPINAS', 'SP', NULL, NULL, '19', '3326-4146', '81781239', NULL, 'C', 'george@tanners.com.br', NULL),
(949, 'KORIN AGRICULTURA NATURAL', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'R. Cel Arthur de Godoy, 246', NULL, '11', '5579-9363', NULL, 'Vila Mariana', 'C', 'gerencia@korin.com.br', NULL),
(950, 'ZINHO IND. E COM. DE PÃES LTDA', NULL, NULL, NULL, 'RIBEIRÃO PRETO', 'SP', 'RUA MARCELO PINTO DE MORAES Nº 105', '14077-440', '16', '3966-6887', NULL, 'PARQUE INDUSTRIAL', NULL, 'gerencia@zinho.com.br', NULL),
(951, 'Transp.Rodov.Dinâmico Express Ltda', NULL, 'Cristina', NULL, 'GUARULHOS', 'SP', 'R. Alexânixa, 407', '07232-000', '11', '6412-0682', NULL, 'Cid.Indl.Satélite', 'C', 'gerenciasp@dinamicoexpress.com.br', NULL),
(952, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gerenciasp@dinamicoexpress.com.br', NULL),
(953, 'IFTLOG', NULL, 'GLAYSON', NULL, 'SÃO PAULO', 'SP', 'RUA ARNALDO MAGNICCARO Nº 513', '04691-060', '11', '2856-5900', NULL, 'JURUBATUBA', 'C', 'glayson@iftlog.com.br', NULL),
(954, 'GM PINHEIRO ALUGUEL DE MADEIRAS E EQUIP LTDA ME', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'RUA SIQUEIRA BUENO, 2072 CONJ 02', '03077-000', '11', '2268-4905', '99974-5603', NULL, NULL, 'gmpinheirocasticais@hotmail.com', NULL),
(955, 'Transportes Anaja Ltda.', '36396820001-75', NULL, NULL, 'SUZANO', 'SP', 'Rua Alma Cabloca, 201', '08615-040', '11', '4748-6650', '4741-1285', 'Vila Urupês', NULL, 'goianoexpress@uol.com.br', NULL),
(956, 'Granja Alvorada de Louveria Ltda', NULL, NULL, NULL, 'LOUVEIRA', 'SP', 'Praça Ricardo Steck, 47', '13290-000', '19', '3878-1709', NULL, NULL, 'C', 'granalvo@zaz.com.br', NULL),
(957, 'HOLAMBELO GRAN FLORA-NATURA COM DE FLORES E PLANTAS', NULL, NULL, NULL, 'STO ANTONIO DE POSSE', 'SP', 'ROS SP 107 KM 27,5', '13830-000', '19', '3902-9091', '(19) 3802-7', NULL, NULL, 'granflora@holambelo.com.br', NULL),
(958, 'GRANJA SÃO MARCOS', NULL, 'MATEUS', NULL, 'SÃO JOSÉ DO RIO PARD', 'SP', 'SITIO SÃO MARCOS S Nº', '13720-000', '19', '9297-9484', NULL, 'ZONA RURAL', 'C', 'granjasaomarcos@hotmail.com', NULL),
(959, 'PRIME FOOD SERVICE IMPORTAÇÃO E EXP. LTDA', NULL, 'GUSTAVO', NULL, 'VALINHOS', 'SP', 'RUA DOM BARRETO Nº 211', '13271-150', '19', '3327-9027', NULL, 'VILA EMBARÉ', 'B', 'gustavo.primefood@gmail.com', NULL),
(960, 'Maroni Logistica e Transportes', NULL, 'Gustavo Carlos Maron', NULL, 'SÃO PAULO', 'SP', 'Rua Fortunato Ferraz, 546', '05093-000', '11', '3837-8844', NULL, 'Lapa (Vila Anastácio', 'C', 'gustavo@transmaroni.com.br', NULL),
(961, 'Fabiana Sanches Arrabal', NULL, 'Gilberto', NULL, 'Osasco', 'SP', 'R. Amador Bueno, 1125', '06230-100', '11', '3687-0994', NULL, NULL, 'C', 'gustavodelima_1@hotmail.com', NULL),
(962, 'CREMOSO PÃO DE QUEIJO', NULL, 'HEBER', NULL, 'HORTOLÂNDIA', 'SP', 'AV. SANTANA, 1045', '13184-210', '19', '3865-1244', '3865-5299', 'PQ ORTOLÂNDIA', NULL, 'heber@cremoso.com.br', NULL),
(963, 'FRIGORÍFICO ANGELELLI', NULL, 'Helio', NULL, 'PIRACICABA', 'SP', 'RUA JOÃO PEDRO CORREA Nº 1111', '13411-142', '19', '3415-9500', NULL, 'SANTA TEREZINHA', 'A', 'helio@angelelli.com.br', NULL),
(964, 'TS BRASIL-TER STEEGE BRASIL VASOS E DECOR LTDA ME', NULL, NULL, NULL, 'STO ANTONIO DE POSSE', 'SP', 'ROD SP 107, KM 27,5 ZONA RURAL', '13830-000', '19', '3902-9083', '97407-7879', NULL, NULL, 'helio@ts-brasil.com', NULL),
(965, 'Futura Brasil Transportes e Logistica', NULL, 'HERMES', NULL, 'SÃO PAULO', 'SP', 'RUA CANHONEIRA BELMONTE 92', '02064-100', '11', '2905-3600', NULL, 'VILA GUILHERME', 'C', 'hermes@futurabrasil.com.br', NULL),
(966, 'Hiper Frango', NULL, 'JONAS', NULL, 'CAMPINAS', 'SP', 'R. Jose Manoel Veiga, 46', NULL, '19', '3242-0132', '3242-0132', 'Jardim Chapadão', 'A', 'hiper@hiperfrango.com.br', NULL),
(967, 'HOLAMBELO BAHIA FLORES E PLANTAS LTDA', NULL, NULL, NULL, 'SALVADOR', 'BA', 'AV MÁRIO LEAL FERREIRA, S/Nº', '40252-390', '71', '3244-1817', '(19) 3802-7', NULL, NULL, 'holambelo.ba@holambelo.com.br', NULL),
(968, 'HOLAMBELO VITÓRIA FLORES E PLANTAS LTDA', NULL, NULL, NULL, 'SERRA', 'ES', 'RUA ALMERINDA ALVES DA SILVA, 480', '29164-085', '27', '3338-1595', '(19) 3802-7', NULL, NULL, 'holambelo.es@holambelo.com.br', NULL),
(969, 'HOLAMBELO CUIABÁ FLORES E PLANTAS LTDA', NULL, NULL, NULL, 'CUIABÁ ', 'MT', 'RUA BARÃO DE MELGAÇO, 2240 B', '78020-800', '65', '3624-0129', '(19) 3802-7', NULL, NULL, 'holambelo.mt@holambelo.com.br', NULL),
(970, 'HOLAMBELO RIO FLORES E PLANTAS LTDA', NULL, NULL, NULL, 'RIO DE JANEIRO', 'RJ', 'ESTR DO QUITUNGO 1161 A', '21215-562', '21', '3013-2120', '(19) 3802-7', NULL, NULL, 'holambelo.rj@holambelo.com.br', NULL),
(971, 'HOLAMBELO BH FLORES E PLANTAS LTDA', NULL, NULL, NULL, 'BELO HORIZONTE', 'MG', 'RUA MARIANA, 1275', '31210-420', '31', '3429-1050', '(19) 3802-7', NULL, NULL, 'holambelo@holambelo.com.br', NULL),
(972, 'Quem Sabe Sabe Frigorífico', NULL, 'SR. Humberto', NULL, 'JUNDIAÍ', 'SP', '13201-970', NULL, '11', '4587-9017', NULL, NULL, 'C', 'humberto@jundiaialimentos.com.br', NULL),
(973, 'Autoport Transportes e Logistica Ltda', NULL, 'Humberto Aparecido S', NULL, 'SÃO PAULO', 'SP', 'Av. Guilherme, 1335 - sl 03', '02053-003', '11', '69019847', '69019847', 'Vila Guilherme', 'A', 'humbertos@aguiabranca.com.br', NULL),
(974, 'Trans Casarim', NULL, 'Ivam', NULL, 'LOUVEIRA', 'SP', 'Rod. Romildo Prado', '13290-000', '19', '3878-2484', NULL, 'Vila Pasti', 'A', 'i.casarim@ig.com.br', NULL),
(975, 'IBRAFLOR INST BRAS DE FLORICULTURA', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'AV ROTA DOS IMIGRANTES, 605', '13825-000', '19', '3307-7734', NULL, NULL, NULL, 'ibraflor@ibraflor.com', NULL),
(976, 'FRETEXPRESS TRANSPORTES DE CARGAS LTDA EPP', NULL, 'IDAEL', NULL, 'CAMPINAS', 'SP', 'RUA DR ALCIDES CARVALHO Nº 113', '13070-008', '19', '32212-1531', NULL, 'JARDIM CHAPADÃO', 'C', 'idael@fretexpress.com.br', NULL),
(977, 'IDEM FOLHEADOS-MARCELO RAVIOLO SARDENA ME', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'RUA ASSEN', '13825-000', '19', '99696-3413', '(16) 98850-', NULL, NULL, 'idemfolheados@hotmail.com', NULL),
(978, 'ICF DO BRASIL TRANSPORTES E LOGÍSTICA LTDA', NULL, 'ILTO CARLOS FRIGERI', NULL, 'JUNDIAÍ', 'SP', 'AV. JOSÉ ALVES DE OLIVEIRA Nº 133', '13213-105', '11', '4525-2613', NULL, 'SANTA TEREZINHA', 'C', 'iltofrigeri@icfdobrasil.com.br', NULL),
(979, 'BRASFOOD', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'AV. IPIRANGA 1071 SALA 1012', '01039-000', '11', '3227-1269', NULL, NULL, 'C', 'info@brasfood.net', NULL),
(980, 'Da Granja', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'Av. Manuel Domingos Pinto, 9 A', '05120-000', '11', '3623-8800', '0800-553031', 'Pq. São Domingos', 'C', 'info@dagranja.com.br', NULL),
(981, 'DUMMEN ORANGE', NULL, NULL, NULL, 'HOLANDA', NULL, 'COLDENHOVELAAN 6 DE LIER', NULL, '31', '174530100', NULL, NULL, NULL, 'info@fides.nl', NULL),
(982, 'FLORAL DESIGN BRASIL PROM DE EVENTOS LTDA', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'AV PRÍMULAS, 1050', '13825-000', '19', '3802-2017', NULL, NULL, NULL, 'info@floraldesign.com.br', NULL),
(983, 'LIMMAT FERRAM-LIMMAT IMPORT DE EQUIP AGRÍC LTDA', NULL, NULL, NULL, 'PINHAIS', 'PR', 'RUA DAS GUIANAS, 196', '83320-210', '41', '3669-7833', '3669-5911', NULL, NULL, 'info@limmat.com.br', NULL),
(984, 'STUDIO FLORAL', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'CAIXA POSTAL, 429', '13825-000', '19', '3802-2756', '3802-1692', NULL, NULL, 'info@studiofloral.com.br', NULL),
(985, 'MIMI REPRESENTAÇÕES IND. E COMÉRCIO DE ESPETINHOS LTDA', NULL, 'IONAH M. DE OLIVEIRA', NULL, 'VINHEDO', 'SP', 'AV. PRESIDENTE CASTELO BRANCO 2387', '13280-000', '19', '3826-8200', '3826-8236', 'BAIRRO COTAI', 'C', 'ionah@espetinhosmimi.com.br', NULL),
(986, 'Irmãos Ramalho Transportes Ltda', NULL, 'Roque', NULL, 'SÃO PAULO', 'SP', 'RUA BARRA LONGA, 136', '05330-040', '11', '3719-0094', NULL, 'Jaguaré', 'B', 'irmaosramalho@terra.com.br', NULL),
(987, 'ISMAEL ARDACHINIKOFF TRANSPORTES ME', NULL, 'ISMAEL', NULL, 'AMPARO', 'SP', 'ESTRADA CRT BOA VEREDA', NULL, '19', NULL, NULL, 'ZONA RURAL', 'B', 'isma.ardach@hotmail.com', NULL),
(988, 'V&F Cargas Áereas Ltda', NULL, 'Ismael José Vieira', NULL, 'Osasco', 'SP', 'Rua Manoel José de Santana, 236', '06020-060', '11', '3683-2722', '3682-0276', 'V. São José', NULL, 'ismael@vfcargo.com.br', NULL),
(989, 'ITALIAN COOK PROD ALIMENTÍCIOS LTDA ME', NULL, 'MURILO / GABRIEL', NULL, 'MOGI GUAÇU', 'SP', 'RUA SALVADOR FRANCO DE GODÓI Nº 285', NULL, '19', '3841-4951', NULL, 'JARDIM JACIRA', 'B', 'italiancookprodutos@hotmail.com', NULL),
(990, 'Florisa', NULL, 'Izaura ou Peter', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3802-7240', NULL, 'Zona Rural', 'C', 'izaura.christians@florisa.com.br', NULL),
(991, 'Transcordeiro Ltda', NULL, 'José Cordeiro', NULL, 'SÃO PAULO', 'SP', 'Rod Anhanguera KM 15 Arm. 35 e 36', '05112-000', '11', '3623-1488', '3623-1482', 'Pirituba', 'C', 'ja.cordeiro@transcordeiro.com.br', NULL),
(992, 'Alitur ( Piccolotur)', NULL, 'João Simon', NULL, 'JUNDIAÍ', 'SP', '13214-200', NULL, '11', '4582-4233', NULL, NULL, 'C', 'ja.simon@terra.com.br', NULL),
(993, 'JADE EMBALAGENS-JADE IND E COM DE EMBALAGENS LTDA ME', NULL, NULL, NULL, 'PEDREIRA', 'SP', 'RUA JOSÉ MARIA LEONARDI, 130', '13920-000', '19', '3893-4207', '99648-6632', NULL, NULL, 'jadeembalagens@terra.com.br', NULL),
(994, 'JA FAGUNDES ILUMINAÇÃO LTDA ME', NULL, NULL, NULL, 'AMPARO', 'SP', 'RUA CARLOS LIZA, 44', '13908-503', '19', '3807-1638', '99883-5566', NULL, NULL, 'jafagundesiluminação@hotmail.com', NULL),
(995, 'JAIDAM LOGÍSTICA COMÉRCIO DE PALETES E SERVIÇOS DE TRANSPORTE LTDA - ME', NULL, 'ANTONIO', NULL, 'JUNDIAÍ', 'SP', '13210-044', '##########', '11', '4526-6666', '85*223393', '74.527.300/0001-60', 'A', 'jaidam@jaidamlogistica.com.br', NULL),
(996, 'JAIDAM LOGÍSTICA COMÉRCIO DE PALETES E SERVIÇOS DE TRANSPORTE LTDA - ME', NULL, 'ANTONIO', NULL, 'VALINHOS', 'SP', 'RUA JOÃO BISSOTO FILHO Nº 1671', '13275-410', '19', '3829-4039', '3869-2960', 'ORTIZES', 'C', 'jaidam@jaidamlogistica.com.br', NULL),
(997, 'Chuang Cogumelos', NULL, 'James Chuang', NULL, 'Mogi das Cruzes', 'SP', 'Av. Francisco Rodrigues Filho, 7600', NULL, '11', '4797-2300', NULL, 'Botujuru', 'C', 'james@chuang.com.br', NULL),
(998, 'Japão Flores', NULL, 'Paulo', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3896-1450', NULL, 'Zona Rural', 'C', 'japaoflores@ig.com.br', NULL),
(999, 'JL FESTAS-JL COM DE ART P/ FESTAS LTDA ME', NULL, NULL, NULL, NULL, 'SP', NULL, NULL, '19', '3227-3499', NULL, NULL, NULL, 'jctchian@hotmail.com', NULL),
(1000, 'CHRYSAL DO BRASIL', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'RUA PAINEIRAS, 262', '13825-000', '19', NULL, '98805-2281', NULL, NULL, NULL, NULL),
(1001, 'Duaneli Transportes', NULL, 'Fernando', NULL, 'JUNDIAÍ', 'SP', NULL, NULL, '11', '3308-6756', NULL, NULL, 'B', 'joao.scarpinelli@icefruit.com.br', NULL),
(1002, 'Quimitrans Transportes Ltda', NULL, 'Joelma Alves Lucas', NULL, 'GUARULHOS', 'SP', 'Av. Lindomar Gomes de Oliveira, 139', '07232-150', '11', '65665631', NULL, 'Cumbica', 'C', 'joelma@linkerslogistica.com.br', NULL),
(1003, 'JK REFRIGERAÇÃO', NULL, 'MARCELINHO', NULL, 'CAMPINAS', 'SP', 'RUA MARIA BIBIANA DO CARMO Nº 201', '13031-720', '19', '3032-7416', '89*25905', 'PQUE INDUSTRIAL', 'C', 'jomarcelinho@yahoo.com.br', NULL),
(1004, 'JONAS GEISS', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'CHÁCARA DOS JEQUITIBÁS', '13825-000', '19', NULL, '7827-5755', NULL, NULL, 'jonasgeiss@hotmail.com', NULL),
(1005, 'DIA SUPERMERCADOS', NULL, 'JORGE YOITI TOMIOKA', NULL, 'GUARULHOS', 'SP', 'Rod. Presidente Dutra Km 223,5/AV. ANIELLO PATRICIO Nº 1', '07034-000', '11', '2472-4927', '9439-4935', 'Jd.Sta.Francisca', 'B', 'jorge_yoiti_tomioka@diagroup.com', NULL),
(1006, 'FIORDE CARGO', NULL, 'JORGE', NULL, 'GUARULHOS', 'SP', 'AVENIDA PAPA JOÃO PAULO I Nº 1054', '07170-350', '11', '2088-7272', NULL, 'PARQUE SÃO LUIZ', 'B', 'jorgesouza@fiordecargo.com.br', NULL),
(1007, 'COMERCIAL 3 IRMÃOS', NULL, 'JOSÉ', NULL, 'MOCOCA', 'SP', 'RUA ALBINO ALVES DE SOUZA Nº 162', '13790-079', '19', '3656-6466', '9294-4769', 'DISTRITO INDUSTRIAL ', 'C', 'jose@coml3irmaos.com.br', NULL),
(1008, 'JUNDIÁ SORVETES', NULL, 'ALESSANDRO', NULL, 'ITUPEVA', 'SP', 'RUA EMANCIPADORES DO MUNICÍPIO Nº 655', '13295-000', '11', '4496-4788', NULL, 'CENTRO', 'C', 'jundia.itp@jundia.com.br', NULL),
(1009, 'Trans Ceccato', NULL, 'José', NULL, 'JUNDIAÍ', 'SP', NULL, NULL, '11', '4582-3551', NULL, NULL, 'A', 'jose@transceccato.com.br', NULL),
(1010, 'TRES GERAÇÕES TRANSPORTES', NULL, 'JOSE FERNANDES', NULL, 'OSASCO', 'SP', 'AV MARECHAL MARIO GUEDES Nº 293', '05348-010', '11', '3763-8100', NULL, 'JAGUARÉ', NULL, 'jose@tresgeracoes.com.br', NULL),
(1011, 'FAM TRANSPORTES LTDA', NULL, 'JOSÉ ARTHUR', NULL, 'OSASCO', 'SP', 'ROD. ANHANGUERA S/Nº km 24,2', '05276-000', '11', '3917-7600', NULL, 'VILA SULINA', 'C', 'joseartur@famtransportes.com.br', NULL),
(1012, 'Rodoviario Schio Ltda', NULL, 'José Schio', NULL, 'SÃO PAULO', 'SP', 'Av. Candido Portinari, 1188', '05114-001', '11', '3621-7211', NULL, 'Villa Piaui', 'B', 'joseschio@schio.com.br', NULL),
(1013, 'JPA - Carnes', NULL, 'João', NULL, 'JUNDIAÍ', 'SP', '132030-073', '407.210.85', '11', '4582-8837', NULL, '01.419.136/0001-01', 'C', 'jpacarnes@jpacarnes.com.br', NULL),
(1014, 'JR TRANSPORTES DE FLORES LTDA', NULL, 'BETO', NULL, 'CORDEIRÓPOLIS', 'SP', NULL, NULL, '19', '8165-1871', NULL, NULL, 'A', 'jr.transportes.ltda@gmail.com', NULL),
(1015, 'TRANSPORTES ALBINO LTDA', '56046910001-56', 'JUSCELINO MACHADO VA', NULL, 'SÃO PAULO', 'SP', 'VIA ANHANGUERA KM 24,2 SALA 44', '05275-000', '11', '2184-8775', NULL, 'VILA JARAGUA', NULL, 'juscelino@transportesalbino.com.br', NULL),
(1016, 'ALINUTRE REFEIÇÕES INDUSTRIAIS LTDA', NULL, 'LUCIANA', NULL, 'PAULÍNIA', 'SP', 'RUA ANTONIO BATISTA PIVA Nº135', '13140-000', '19', '3844-1100', NULL, 'JOSÉ PAULINO NOGUEIR', 'B', 'karla.ribeiro@alinutre.com.br', NULL),
(1017, 'AGRO FLORES', NULL, 'Kleber', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3902-9030', '9203-8627', 'Zona Rural', 'C', 'kleber@agroflores.com.br', NULL),
(1018, 'KP TRANSPORTES LTDA', NULL, 'JUNIOR/MARCELO', NULL, 'OSASCO', 'SP', 'RUA SEBASTIÃO PICÃO Nº 191', '06293-010', '11', '3687-9167', NULL, 'JDIM MARIETA', 'A', 'kp@superig.com.br', NULL),
(1019, 'KP TRANSPORTES LTDA', NULL, 'JUNIOR', NULL, 'OSASCO', 'SP', 'RUA SEBASTIÃO PICÃO Nº 191', '06293-110', '11', '3687-9167', NULL, 'JARDIM MARIETA', 'A', 'kp@superig.com.br', NULL),
(1020, 'LAIDOM ARTIG FUNERÁRIOS LTDA', NULL, NULL, NULL, 'CURITIBA', 'PR', 'RUA DEP ATÍLIO ALMEIDA BARBOSA, 36', '82560-460', '41', '3296-1275', '3344-8302', NULL, NULL, 'laidom@laidom.com.br', NULL),
(1021, 'Docepan Distr. de Prod. Alim Ltda', NULL, 'Fabiola', NULL, 'JUNDIAÍ', 'SP', 'R. Luiz Joseé Sereno, 1100', '13212-210', '11', '4582-5022', '3234-5100', 'Jd Ernida', 'A', 'laura@vispan.com.br', NULL),
(1022, 'LBN MARCARINI', NULL, 'LEOMAR', NULL, 'PIUMA', 'ES', NULL, NULL, '28', '8111-0497', NULL, NULL, 'C', 'lbnmarcarini@hotmail.com', NULL),
(1023, 'LEMAR TRANSPORTES LTDA', NULL, 'LEONARDO DE SANTI NA', NULL, 'OSASCO', 'SP', 'AV. DR. ALBERTO JACKSON BYINGTON 1770', '06276-000', '11', '3601-1764', NULL, 'VILA MENCK', 'C', 'leonardo@lemartransportes.com.br', NULL),
(1024, 'SARQUIS SAMARA ATELIER ESCULT DUORUM HOME &GIFT COM DE ARTEF ALUM LTDA', NULL, NULL, NULL, 'LONDRINA', 'PR', 'RUA JOÃO DE BARRO, 215, BARRACÃO 2 Nº 215', '86030-320', '43', '3029-0186/3', '99647-0005', NULL, NULL, NULL, NULL),
(1025, 'LUCCARTE DECORAÇÕES-ELCIO ANTUNES AMÉRICO ME', NULL, NULL, NULL, 'ITAJAÍ', 'SC', 'ROD BR 101, KM 116, Nº 3357', '88311-600', '47', '3349-0262', '99715-6464', NULL, NULL, 'liccarte@gmail.com', NULL),
(1026, 'Qtrans Transportes Ltda', NULL, 'Edivaldo Lisboa Cast', NULL, 'GASPAR', 'SC', 'Rod. Jorge Lacerda, 4000 sl 02', '89110-000', '11', '60962029', '33180482', 'Poço Grande', 'B', 'lisboa.castro@terra.com.br', NULL),
(1027, 'LITORAL PESCADOS LTDA.', NULL, NULL, NULL, NULL, 'PB', NULL, NULL, '83', '3238-5920', NULL, 'JOÃO PESSOA', NULL, 'litoralpescados@ig.com.br', NULL),
(1028, 'LATICÍNIOS LUSO BRASILEIRA', NULL, 'SERGIO', NULL, 'SÃO BERNARDO DO CAMP', 'SP', 'RUA MAURÍCIO JAQUEI Nº 202', '09635-080', '11', '4368-3687', '4367-3958', 'RUDGE RAMOS', 'A', 'llb@laticiniosluso.com.br', NULL),
(1029, 'MARIA ROSILENE INDAIATUBA TRANSPORTES', NULL, NULL, NULL, 'INDAIATUBA', 'SP', 'RUA MASHARO TARRIGUSHI Nº 14', '13348-250', '19', '9771-2493', '9771-5976', 'MORADA DO SOL', 'B', 'lm.rosa@ig.com.br', NULL),
(1030, 'BALGI REPRESENTAÇÕES', NULL, 'JULIO | JEFFERSON', NULL, 'OSASCO', 'SP', 'AVENIDA INTERNACIONAL Nº 115', NULL, '11', '3605-0537', '8927-9508', 'JARDIM SANTO ANTONIO', 'A', 'logistica@balgi.com.br', NULL),
(1031, 'FRIGO FORTE', NULL, 'CARLOS', NULL, 'GUARULHOS', 'SP', 'AVENIDA DR. TIMÓTEO PENTEADO Nº 4361', '07060-000', '11', '2086-4600', NULL, 'VILA GALVÃO', 'C', 'logistica@frigoforte.com', NULL),
(1032, 'HORTIGRANJEIROS MALLMANN', NULL, 'ZINHO (JOSÉ CARLOS D', NULL, 'MOGI GUAÇU', 'SP', 'AV. JOSÉ AUGUSTO CAVEANHA Nº 231', '13848-290', '19', '3861-0120', '3861-3859', 'JARDIM FANTINATO', 'C', 'logistica@mallmann.agr.br', NULL),
(1033, 'SCJ FLORES-SCJ PONTUAL COM FLORES LTDA ME', NULL, NULL, NULL, 'STO ANTONIO DE POSSE', 'SP', 'ROD SP 107, KM 27,5, SALA 96 ZONA RURAL', '13830-000', '19', '3902-9060', NULL, NULL, NULL, 'logistica@scjflores.com.br', NULL),
(1034, 'LATICÍNIOS TIROLEZ LTDA', NULL, 'ANTONIO CARLOS / MUR', NULL, 'SÃO PAULO', 'SP', 'AV. ENGENHEIRO ROBERTO ZÚCULO Nº 316', NULL, '11', '3723-7777', NULL, 'CAXINGUI', 'C', 'logistica@tirolez.com.br', NULL),
(1035, 'Vem Flor', NULL, 'Branco', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3805-1398', NULL, 'Zona Rural', NULL, 'lourens@uol.com.br', NULL),
(1036, 'VEN FLOR-LOURENS BENJAMIN VAN DER VEN E OUTROS', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'RUA CAMPO DAS PALMAS, S/Nº', '13825-000', '19', '3802-1626 /', NULL, NULL, NULL, 'lourens@uol.com.br', NULL),
(1037, 'VASOS VOGUE-L C MARTINS PEREIRA VASOS ME', NULL, NULL, NULL, NULL, 'SP', 'ROD ROMILDO PRADO, KM 13 ÁREA 2', '13255-750', '11', '4524-0509', '97320-1119', NULL, NULL, 'luisclaudio@vasosvogue.com.br', NULL),
(1038, 'DISTRIBUIDORA TRADIÇÃO', NULL, 'LUIZ FRANCISCO PINO', NULL, 'SÃO PAULO', 'SP', 'RODOVIA ANCHIETA 1545', '04247-002', '11', '2914-1707', '2063-4710', 'IPIRANGA', 'B', 'luiz.pino@tradicaodistribuidora.com.br', NULL),
(1039, 'ALS TRANSPORTES', NULL, 'ANTONIO LUIS DA SILV', NULL, 'OSASCO', 'SP', 'RUA ARMINDO HANNE Nº 120', '06210-090', '11', '3683-6888', NULL, NULL, 'C', 'luiz@alstransportes.com.br', NULL),
(1040, 'LUNARDI TRANSPORTADORA', NULL, 'DANILO', NULL, 'SÃO PAULO', 'SP', 'RUA JAIR AFONSO INACIO 525 / ROD. ANHANGUERA KM 14,5', NULL, '11', '4538-6947', NULL, 'JDIM SANTO ELIAS', 'C', 'lunardi@transportadoralunardi.com.br', NULL),
(1041, 'LUSTRES LUSTRALTEC-LUSTRALTEC COM SERV LUSTRES LTDA-ME', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'RUA LUIZ BAZANNE, 18', '04467-130', '11', '3436-9002', '99581-9900', NULL, NULL, 'lustraltec@uol.com.br', NULL),
(1042, 'MADIBENS REPRESENTAÇÕES LTDA', NULL, 'MAURO', NULL, 'CAMPINAS', 'SP', 'AV EVANDRO BATISTA VIEIRA 1157', '13098-390', '19', '3262-0570', '7809-3877', 'ALPHAVILLE', 'C', NULL, NULL),
(1043, 'Magário Comercio de Frutas', NULL, 'Wilson / MAGÁRIO', NULL, 'CAMPINAS', 'SP', NULL, NULL, '19', '3246-0034', NULL, NULL, 'C', 'magario@uol.com.br', NULL),
(1044, 'Mais Frutas', NULL, 'Fernando', NULL, 'JARINU', 'SP', '13240-000', NULL, '11', '4016-5182', NULL, NULL, 'B', 'maisfruta@maisfruta.com.br', NULL),
(1045, 'Manaka', NULL, 'Araujo', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3802-7212', NULL, 'Zona Rural', 'C', 'manakaflores@cvh.com.br', NULL),
(1046, 'TRP EXPRESS (ANTIGA RIO PARDENSE)', '04,834,720/0001-03', 'RUBENS / SERGIO MANT', NULL, 'CAMPINAS', 'SP', 'RUA GENERAL GONÇALVES DIAS Nº 15', '13067-104', '19', '3282-5669', '7801-8231 /', 'PARQUE RESIDENCIAL S', NULL, 'mantovani@riopardenseexpress.com.br', NULL),
(1047, 'Coopercarga Logística', NULL, 'Marcelo Bonamim', NULL, 'SÃO PAULO', 'SP', 'Av Paris, 190 - cx p 822', '13140-000', '11', '2197-8202', NULL, 'João Aranha Paulina', 'C', 'marcelo.martins@coopercarga.com.br', NULL),
(1048, 'Iotti Espetinhos e Frigorífico', NULL, 'César', NULL, 'JUNDIAÍ', 'SP', '13201-004', NULL, '11', '4526-2064', NULL, NULL, 'C', 'marcelo@ademariotti.com.br', NULL),
(1049, 'LA VITA ALIMENTOS PREMIUM', NULL, 'MARCELO FUNO', NULL, 'HOLAMBRA', 'SP', 'ESTRADA MUNICIPAL HBR 20, S/Nº', '13825-000', '19', '3802-5450', '7804-4081', 'PINHALSINHO', 'B', 'marcelo@lavitaalimentos.com.br', NULL),
(1050, 'Transtim', '74064690001-74', 'Marcio', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13825-000', '19', '96011145', '3802-7227', 'Zona Rural', NULL, 'marcio@transtim.com.br', NULL),
(1051, 'Transtim', '115902330001-08', 'Márcio', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3802-7227', NULL, 'Zona Rural', NULL, 'marcio@transtim.com.br', NULL),
(1052, 'Frigorifico Suzano Ltda', NULL, 'Gilberto', NULL, 'SUZANO', 'SP', 'Estrada Mizukami, 525', '08630-090', '11', '4748-0621', NULL, 'B.dos Palmeiras', 'C', 'marciofrig@hotmail.com', NULL),
(1053, 'M&B', NULL, 'Marcos e Roberto', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '9673-7211', NULL, 'Zona Rural', 'C', 'marco-bomba@hotmail.com', NULL),
(1054, 'IRMÃOS PELUCIO', NULL, 'MARCO ANTONIO PELUCI', NULL, 'SÃO PAULO', 'SP', 'AV. DRACENA 345/355', '05329-000', '11', '3768-0095', '3768-0507', 'JAGUARÉ', 'C', 'marco@irmaospelucio.com.br', NULL),
(1055, 'Gerbi Pescados', NULL, 'Eduardo', NULL, 'ESTIVA GERBI', 'SP', 'RODOVIA COMENDADOR LOURENÇO GERBI Nº 205', NULL, '19', '3868-9726', NULL, NULL, 'B', 'marcos@gerbipescados.com.br', NULL),
(1056, 'RODOANDRADE DISTRIBUIDORA', NULL, 'ROBERVAL ANDRADE / M', NULL, 'SÃO PAULO', 'SP', 'RUA SÃO FELIPE 330', '03085-010', '11', '2090-1515', NULL, 'PARQUE SÃO JORGE', 'B', 'marcos@rodoandrade.com.br', NULL),
(1057, 'LITORAL NORTE / SUL', NULL, 'MARCOS', NULL, 'SANTOS', 'SP', 'RUA PARTICULAR ANA SANTOS Nº 161', NULL, '13', '3209-8092', NULL, 'CENTRO', 'C', 'marcosvet@iron.com.br', NULL),
(1058, 'Pavan - Defumados', NULL, 'Marcela', NULL, 'JUNDIAÍ', 'SP', '13210-045', NULL, '11', '4537-3850', NULL, NULL, 'A', 'mareapavan@yahoo.com.br', NULL),
(1059, 'Mar & Terra Indústria e Comércio de Pescados Ltda.', 'www.mareterra.com.br', NULL, NULL, NULL, 'MS', NULL, NULL, NULL, NULL, NULL, 'ITAPORÃ', NULL, 'mareterra@mareterra.com.br', NULL),
(1060, 'SALGADINHOS BRASIL', NULL, 'MARIANA BRAGA', NULL, 'SÃO PAULO', 'SP', 'RUA MINISTRO GODÓI Nº 1209', '05015-001', '11', '3674-1115', NULL, 'PERDIZES', 'C', 'mariana.braga@salgadosdobrasil.com', NULL),
(1061, 'HOLAMFLOWERS COM IMP EXP DE FLORES E PLANTAS EIRELI', NULL, NULL, NULL, 'JAGUARIÚNA', 'SP', 'ROD SP 107 KM 28', '13820-000', '19', '3514-7430', NULL, NULL, NULL, 'mariana@holamflowers.com.br', NULL),
(1062, 'Centro Oeste Distr. de Carnes Ltda', NULL, 'Jorge Luís/Severo', NULL, 'GUARULHOS', 'SP', 'Estr. Capão Bonito, 1183', '07263-010', '11', '6486-1111', '3383-6200', 'Jd.Mª de Lourdes', 'C', 'marketing@centroestecarnes.com.br', NULL),
(1063, 'REIJERS-GRUPO REIJERS', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'ESTR DA CACHOEIRA, S/ Nº HBR 20 CX POSTAL 16', '13825-000', '19', '3802-1478', NULL, NULL, NULL, 'marketing@reijers.com.br', NULL),
(1064, 'ACCORD EXPRESS DISTRIBUIÇÃO E LOGÍSTICA LTDA', NULL, 'MARLON', NULL, 'SÃO JOSÉ DO RIO PARD', 'SP', 'SEBASTIÃO BERTONHA S/Nº', '13720-000', '19', '36082311', '36081678', 'DISTRITO INDUSTRIAL', 'C', 'marlon.ambrosio@accordex.com.br', NULL),
(1065, 'AnD Transportes', NULL, 'Reinaldo de Melo', NULL, 'VARGEM GRANDE DO SUL', 'SP', 'Rod. SP 215, KM 36', '13880-000', '19', '3641-1254', '3641-5299', NULL, 'C', 'marta@superfrio.com.br', NULL),
(1066, 'VENEZA DISTRIBUIDORA', NULL, 'SR. MARTINS', NULL, 'SÃO JOSÉ DO RIO PARD', 'SP', 'AV. DOS BRAGUETAS Nº 430', '13720-000', '19', '3608-7945  ', NULL, 'DISTRITO INDUSTRIAL', NULL, 'martins@bellopan.com', NULL),
(1067, 'MASSA LEVE LTDA', NULL, NULL, NULL, 'RIO GRANDE DA SERRA', 'SP', 'RUA LÍDIA POLONI Nº 150', '09450-000', '11', '2173-8800', NULL, 'CENTRO', 'C', 'massaleve@massaleve.com.br', NULL),
(1068, 'MAURÍCIO ARRAIS TRANSPORTES', NULL, 'MAURÍCIO', NULL, 'SANTANA DO PARNAÍBA', 'SP', NULL, NULL, '11', '7705-1672', '99265-0814', NULL, 'A', 'mauricioarrais@yahoo.com.br', NULL),
(1069, 'FAZENDA BELA VISTA', NULL, 'MAURO', NULL, 'TAPIRATIBA', 'SP', 'ROD EDUARDO VICENTE NASSER KM 293', '13760-000', '19', '3657-1482', NULL, 'ZONA RURAL', 'C', 'maurinho@guaxupe.com.br', NULL),
(1070, 'MC Log Logistica e Transporte', NULL, 'MARCELO', NULL, 'Itupeva', 'SP', 'Rod. Vice Prefeito Hermenegildo Tonoli, 2950 bloco 2 sala 3 - km 6,4', '13295-000', '11', '4496-5220', NULL, 'Paineiras', 'C', NULL, NULL),
(1071, 'LEITE FAZENDA BELA VISTA LTDA', NULL, 'MAURO', NULL, 'TAPIRATIBA', 'SP', 'ROD. EDUARDO V. NASSER - KM 293', '13760-000', '19', '3657-1219', NULL, NULL, NULL, 'maurinho@guaxupe.com.br', NULL),
(1072, 'BRF Foods do Brasil', NULL, 'Mauro Previatti', NULL, 'CAMPINAS', 'SP', 'R:Guido Camargo 601', '13082-800', '19', '3787-3602', NULL, 'Geraldo', NULL, 'mauro.previatti@brasilfoods.com.br', NULL),
(1073, 'Fermentos Itaiquara', NULL, 'ALUISIO', NULL, 'Tapiratiba', 'SP', NULL, NULL, '19', '36579000', NULL, NULL, 'C', 'mauro@itaiquara.com.br', NULL),
(1074, 'Transportadora LA Rioja', NULL, 'Mauro Viana Souza', NULL, 'SÃO PAULO', 'SP', 'RUA DA CANTAREIRA 719', '01024-100', '11', '3328-0000', NULL, 'LUZ', 'B', 'mauro@larioja.com.br', NULL),
(1075, 'RB Aqüicultura,', 'www.rbaquicultura.co', NULL, NULL, NULL, 'CE', NULL, NULL, '85', '3264-3121', NULL, 'FORTALEZA', NULL, 'maxcmap@hotmail.com', NULL),
(1076, 'RC TRANSPORTES E REPRESENTAÇÕES', NULL, 'ADILSON | RICARDO', NULL, 'BRAGANÇA PAULIUSTA', 'SP', 'RUA ANTONIETA TOMAZINI LONZA Nº 1841', '12906-320', '11', '7882-5498', '7099-9962', 'PARQUE BRASIL', NULL, 'mazolini.brasilfoods@uol.com.br', NULL),
(1077, 'PLATIUM TRANSPORTE DE CARGAS', NULL, 'JEREMIAS', NULL, 'SÃO PAULO', 'SP', 'AVENIDA RAIMUNDO PEREIRA DE MAGALHÃES Nº 11736', NULL, '11', '3902-5000', '3928-3204', 'FREGUESIA DO Ó', 'C', 'medeirosvidal@uol.com.br', NULL),
(1078, 'Klas Flores', NULL, 'Rafael', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3902-9012', NULL, 'Zona Rural', 'A', 'meire.moretto@hotmail.com', NULL),
(1079, 'Carlos de Marchi Irmãos Ltda', NULL, 'Milton', NULL, 'JUNDIAÍ', 'SP', 'R. do Rio Abaixo, 210', '13214-040', '11', '4582-1799', NULL, 'Rio Abaixo', 'C', 'milton@demarchi.com.br', NULL),
(1080, 'MM frios & Latocínios Ltda', NULL, 'Silvestre', NULL, 'RIBEIRÃO PIRES', 'SP', 'R. Boa Vista, 157', '09400-000', '11', '4823-2244', NULL, 'Centro', 'B', 'mm.frios@uol.com.br', NULL),
(1081, 'MonFrigo', NULL, 'Ricardo Toledo', NULL, 'CAMPINAS', 'SP', 'AV: Gov. Pedro de Toledo 905', '13070-751', '19', '3241-0566', NULL, 'Bonfim', 'A', 'monfrigo@monfrigo.com.br', NULL),
(1082, 'FLORA YAMAMURA MARCELO AKIYOSH YAMAMURA', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'FAZ RIBEIRÃO', '13825-000', '19', '3802-2395', '99297-2888', NULL, NULL, 'mt.yamamura@uol.com.br', NULL),
(1083, 'MUCURIPE PESCA LTDA.', NULL, NULL, NULL, NULL, 'RN', NULL, NULL, '84', '212-2021', NULL, 'NATAL', NULL, 'mucuripepesca@uol.com.br', NULL),
(1084, 'Riber Gelo', NULL, 'Nagib', NULL, 'CAMPINAS', 'SP', 'Av. Presidente Juscelino 1353', NULL, '19', '3269-3011', '16-36363813', NULL, 'C', 'nagib.issa@yahoo.com.br', NULL),
(1085, 'NÚCLEO DE ARTESÃOS-ASSOC NÚCLEO DE ART HOLAMBRA', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'RUA ANTONIO DAMASIO FILIPINI, 188 LJ 6', '13825-000', '19', '3802-2390', '99166-8070', NULL, NULL, 'nah06@hotmail.com.br', NULL),
(1086, 'NEVERA COMÉRCIO E DISTRIBUIÇÃO DE ALIMENTOS LTDA', NULL, 'MARCOS DANIEL FABRIC', NULL, 'OSASCO', 'SP', 'RUA ARMENIA Nº 402', '6210135', '11', '36815318', '36815318', 'PRESIDENTE ALTINO', 'C', 'nevera@neveradistribuidora.com.br', NULL),
(1087, 'TRANS M TRANSPORTE DE CARGAS', NULL, 'WALDINEI MENDES', NULL, 'SÃO PAULO', 'SP', 'RUA DA BALSA Nº 366', '02910-000', '11', '3932-2398', NULL, 'FREGUESIA DO Ó', 'C', 'ney@transm.com.br', NULL),
(1088, 'CAMPO VITÓRIA COMÉRCIO DE BATATA E CEBOLA', NULL, 'MARCELO', NULL, 'CAMPINAS', 'SP', 'ROD DOM PEDRO I KM 140,5 GP1 BOX 32', '13082-902', '19', '3746-1147', NULL, 'JDIM SANTA MONICA', 'C', 'nfecampovitoria@uol.com.br', NULL),
(1089, 'Olcav Ind. e Com. De Carnes Ltda', NULL, 'Rodolfo', NULL, 'CAMPINAS', 'SP', NULL, NULL, '19', '9367-1447', NULL, NULL, 'A', 'nihon_transportes@hotmail.com', NULL),
(1090, 'ROSFRIOS ALIMENTOS', NULL, 'NILTON FERREIRA DE P', NULL, 'PIRACICABA', 'SP', 'RUA CAPITÃO JOSÉ PINTO SIQUEIRA Nº 1711', '13422-150', '19', '3403-9700', NULL, 'UNILESTE', 'C', 'nilton@rosfrios.com.br', NULL),
(1091, 'GRUPO MNS', NULL, 'ANDRÉ / HÉLIO', NULL, 'PILAR DO SUL', 'SP', NULL, NULL, '15', '9788-1160', NULL, NULL, 'B', 'noriyukiknai@grupomns.com.br', NULL),
(1092, 'N.T.TRANSPORTES', NULL, 'EDVALDO', NULL, 'CAMPINAS', 'SP', 'RUA FRANCISCO DE ANGELIS 1359', '13043-370', '19', '3279-2021', NULL, 'VILA JOAQUIM INÁCIO', 'C', 'nttransportes@superig.com.br', NULL),
(1093, 'OCLAIR COMÉRCIO E REPRESENTAÇÕES', NULL, 'OCLAIR', NULL, 'SÃO PAULO', 'SP', 'RUA SEBASTIÃO DE BARROS Nº 357', '08420-240', '11', '2557- 1493', '9969-0371', 'JARDIM HELENA - ITAQ', 'C', 'oclair.rib@terra.com.br', NULL),
(1094, 'DIZARRO TRANSPORTES REFRIGERADOS', NULL, 'FATIMA / CLAUDIO', NULL, 'CAMPINAS', 'SP', 'RUA VICTORIO CHINAGLIA 65', '13052-476', '19', '3265-1350', NULL, 'PQ SÃO PAULO', 'B', 'oficina@rcdizarro.com.br', NULL),
(1095, 'HARMONIA NATIVA-LUANA TORQUATO', NULL, NULL, NULL, 'CAMPINAS', 'SP', 'RUA PROF ORESTES, CARLOS SEGALLIO, 19', '13031-540', '19', NULL, '99870-0016', NULL, NULL, 'olivia.hansen@gmail.com', NULL),
(1096, 'RIGOR ALIMENTOS LTDA', NULL, 'OSMAR HENRIQUE PAETZ', NULL, 'JARINU', 'SP', 'ESTRADA MUNICIPAL CARLOS CAVALARO Nº 460', '13240-000', '11', '4417-7644', NULL, 'PONTE ALTA', NULL, 'osmar@rigor.com.br', NULL),
(1097, 'Mercalf', NULL, 'Panzetti', NULL, 'CAMPINAS', 'SP', 'R: Júlia Maria 679', '13179-040', '19', '2115-4040', NULL, 'Nova Terra', 'B', 'panzetti@mercalf.com.br', NULL),
(1098, 'PARATY PESCADOS LTDA', NULL, 'JOSÉ HEITOR', NULL, 'VALINHOS', 'SP', 'RUA DUÍLIO BELTRAMINI Nº8421', '13278-078', '19', '3881-4020', NULL, 'CHAC. SÃO BENTO', 'B', 'paratypescados@terra.com.br', NULL),
(1099, 'FLORAL ATLANTA IND E COM LTDA', NULL, NULL, NULL, 'SÃO MATHEUS', 'SP', 'AV RAGUEB CHOHFI, 1520/1524', '08375-000', '11', '4053-3233', '96305-5425', NULL, NULL, 'paula.lofrano@floralatlanta.com.br', NULL),
(1100, 'Parron Transportes Ltda', NULL, 'Manoel Lavanholi', NULL, 'Itupeva', 'SP', 'Rua Antonio Miori, 255', '13295-000', '11', '4496-2063', '8259-9551', 'Bairro da Chave', 'A', NULL, NULL),
(1101, 'PARRON TRANSPORTES LTDA', NULL, 'Manoel Lavanholi', NULL, 'ITUPEVA', 'SP', 'ROD. VICE PREFEITO HERMENEGILDO TONOLLI Nº 2950 - KM 6,450 BLOCO II, SALA 1D', '13295-000', '11', '4496-2063', '8259-9551', 'PAINEIRAS', 'C', NULL, NULL),
(1102, 'VIDA VERDE IND E COM DE INS ORG LTDA', NULL, NULL, NULL, 'MOGI MIRIM', 'SP', 'AV RAINHA, 800', '13803-350', '19', '3022-5500 /', '98114-2839', NULL, NULL, 'paula@vidaverde.arg.br', NULL),
(1103, 'Paulistana Truck', NULL, 'Paulo Henrique', NULL, 'SÃO PAULO', 'SP', NULL, NULL, '11', '9136-7457', NULL, NULL, 'C', 'paulistanatruck@uol.com.br', NULL),
(1104, 'Ingersoll Rand', NULL, 'Paulo Bolliger Lane', NULL, 'BARUERI', 'SP', 'Alameda Caiapos, 311', '06460-110', '11', '2109-8773', '2109-8968', 'Tamboré', 'C', 'paulo_lane@irco.com', NULL),
(1105, 'K.L.L. Equipamentos para Transportes Ltda.', NULL, 'Paulo Guedes', NULL, 'SÃO PAULO', 'SP', 'Rua Comendador Miguel Calfat, 129/309', '04537-080', '11', '3846-0000', NULL, NULL, 'A', 'paulo.guedes@kll.com.br', NULL),
(1106, 'Fleet One', NULL, 'Paulo', NULL, 'SÃO PAULO', 'SP', 'Rod. Rofio, N° 84, 06 Andar', '04552-000', '11', '3048-8448', NULL, 'Vila Olimpia', 'C', 'paulo.narvaez@fleetone.com.br', NULL),
(1107, 'SÍTIO SANTAMARINA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'paulo.rgoncalves@yahoo.com.br', NULL),
(1108, 'Holambelo', NULL, 'Paulo', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3802-7220', '9392-0604', 'Zona Rural', 'C', 'paulo@floreada.com.br', NULL),
(1109, 'TRANS PG', NULL, 'PEDRO HENRIQUE', NULL, 'CAMPINAS', 'SP', 'AV ROCHA BONFIM CENTER GENEBRA', NULL, '19', '37091100', NULL, 'PRAÇA CAPITAL', 'B', 'pedro@transph.com.br', NULL),
(1110, 'CHARLIZE ALVES CARDOZO', NULL, 'CHARLIZE | PEDRO', NULL, 'SÃO PAULO', 'SP', 'RUA FABIO FERREIRA VELOSO Nº 163', '02967-030', '11', '3978-1480', '7734-7247', 'FRGUESIA DO Ó', 'A', 'pedrobatavo@terra.com.br', NULL),
(1111, 'LONDRES COMÉRCIO DE CARNES', NULL, 'PEDRO ALVES DIAS JR', NULL, 'CAMPINAS', 'SP', 'RUA JOÃO CARLOS DE AMARAL Nº 500', NULL, '19', '3281-4488', NULL, 'NOVA APARECIDA', NULL, 'pedrojr@teenbeef.com.br', NULL),
(1112, 'PEIXE MEGG''S', NULL, 'JOSUÉ', NULL, 'SÃO JOÃO DA BOA VIST', 'SP', 'AV. PEDRO REZENDE LOPES NºN 120', '13873-050', '19', '3622-3010', NULL, 'VILA VALENTIN', 'C', 'peixesmeggs@peixesmeggis.com.br', NULL),
(1113, 'Raça Transportes Ltda', NULL, 'Kleber da Cunha Luiz', NULL, 'SÃO PAULO', 'SP', 'Via Anhanguera, Km 24,9, Sn', '05276-961', '11', '2108-6655', NULL, 'Perus', NULL, 'pend1143@racatransportes.com.br', NULL),
(1114, 'Piffer & Piffer Comércio e Representação Ltda.', NULL, 'João Carlos Piffer', NULL, 'SÃO PAULO', 'SP', 'R. Desembargador Theodomiro Dias, 127', '05540-080', '11', '37269448', '37269448', 'Conjunto Residencial', 'A', 'pifferjc1@uol.com.br', NULL),
(1115, 'Pimentel Fishing do Brasil Ltda. – Comércio, Importação e Exportação de Pescados', 'www.pimentelfishing.', NULL, NULL, NULL, 'RJ', NULL, NULL, '21', '2719-0456', NULL, 'NITERÓI', NULL, 'pimentelfishing@predialnet.com.br', NULL),
(1116, 'POLENGUI INDÚSTRIA ALIMENTÍCIA LTDA', NULL, NULL, NULL, 'OSASCO', 'SP', 'AVENIDA MAURO LINDERBERG MONTEIRO Nº 628', NULL, '11', '2109-4909', NULL, 'SANTA FÉ', 'A', 'polenghi@polenghi.com.br', NULL),
(1117, 'Poliana', NULL, 'Paulo', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '9773-7202', NULL, 'Zona Rural', 'C', 'polianaflores@uol.com.br', NULL),
(1118, 'Pomicenter Com. e Imp. Ltda', NULL, 'Marcio', NULL, 'SÃO PAULO', 'SP', 'Av. Dr. Gastão Vidigal, 1946 - Pav HFF - Bx 31', '05316-900', '11', '3643-8979', NULL, 'Vl. Leopoldina', 'B', 'pomicenter@terra.com.br', NULL),
(1119, 'PORCELANA BÁRBARA IND E COM LTDA ME', NULL, NULL, NULL, 'PEDREIRA', 'SP', 'RUA ABOLIÇÃO, 100', '13920-000', '19', '3893-3428', '99397-1415', NULL, NULL, 'porcelanabarbara@uol.com.br', NULL),
(1120, 'DOIS PINHEIROS COMÉRCIO DE CAMINHÕES', NULL, 'CLAUDIA', NULL, 'CAMPINAS', 'SP', 'RUA SERGIO AZEVEDO PENNA CHAVES Nº 795', '13033-395', '19', '3243-2111', NULL, 'JARDIM BANDEIRANTES', 'B', 'prado-claudia@hotmail.com', NULL),
(1121, 'Industria e Comercio de Conservas de Carnes Coringa Ltda', NULL, NULL, NULL, 'MAZZEI', 'SP', 'R. Santo Stefano, 38', '02084-030', '11', '6827-5635', '0800-122104', 'Vila Isolina, 38', 'C', 'produtos@coringa.ind.br', NULL),
(1122, 'Pronta Flora', NULL, 'Martinus', NULL, 'HOLAMBRA', 'SP', 'Campo de Pouso 1444', '13850-000', '19', '3802 1799', NULL, 'Centro', 'C', 'prontaflora@prontaflora.com.br', NULL),
(1123, 'QUALI FLORA PLANTAS ORNAM-GERALDO JOÃO DE BRUIN E OUTRA', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'SÍTIO QUALI FLORA', '13825-000', '19', '3802-4685', '98138-4009', NULL, NULL, 'qualiflora@qualiflora.com.br', NULL),
(1124, 'QUICK LOGÍSTICA LTDA', NULL, 'SERGIO', NULL, 'OSASCO', 'SP', 'AVENIDA LOURENÇO BELOLLI Nº 772', '06268-110', '11', '36024000', NULL, 'PARQUE INDUSTRIAL MA', 'B', 'quick@quick-logistica.com.br', NULL),
(1125, 'SRA VERA', NULL, 'SRA VERA', NULL, 'ANGATUBA', 'SP', NULL, NULL, '15', '9725-0025', NULL, NULL, 'C', 'quintiliano.galvao@hotmail.com', NULL),
(1126, 'R ACOSTA ORNAM-DÉBORAH ACOSTA E OUTROS', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'ESTR MUNIC HBR 20 S/Nº SÍTIO TUNA FLOR', '13825-000', '19', '3802-1304', NULL, NULL, NULL, 'racosta@racosta.com.br', NULL),
(1127, 'AZUL E BRANCO TRANSPORTADORA', NULL, 'RAFAEL', NULL, 'OSASCO', 'SP', 'RODOIVIA ANHANGUERA KM 24,2 DISTRITO PERUS', NULL, '11', '3918-8208', NULL, 'JARAGUA', 'A', 'rafael@azulebranco.com.br', NULL),
(1128, 'LOGFRIO LOGÍSTICA', NULL, 'RAFAEL', NULL, 'BARUERI', 'SP', 'RUA JUSSARA Nº 1635', '06465-070', '11', '2175-7100', NULL, 'JARDIM SANTA CECÍLIA', 'C', 'rafael@logfrio.com.br', NULL),
(1129, 'LG Log Transportes', NULL, 'RAIMUNDO | OSWALDO', NULL, 'ITAPECIRICA DA SERRA', 'SP', 'RODOVIA REGIS BITENCOURT KM 294', '06882-700', '11', '4147-3366', NULL, 'POTUVERÁ', 'A', 'raimundo.guimaraes@lglog.com.br', NULL),
(1130, 'AGROSAVANA', NULL, 'ROBSON LEITE', NULL, 'SÃO PAULO', 'SP', 'RUA ALENCAR DE ARARIPE Nº 1230', NULL, '11', '6115-6044', NULL, NULL, 'C', 'raleite@agrosavana.com.br', NULL),
(1131, 'AVS LOGISTICA', NULL, 'RALPH MARTINS', NULL, 'OSASCO', 'SP', 'RUA HENKEL Nº 90', '06278-250', '11', '3659-7122', NULL, 'SANTA FÉ', 'A', 'ralph.martins@avslogistica.com.br', NULL),
(1132, 'TGESTIONA (TELEFONICA TRANSPORTE E LOGÍSTICA LTDA)', NULL, 'RAQUEL CRIZEL BOROWS', NULL, 'SÃO PAULO', 'SP', 'RUA CÔNEGO VICENTE MIGUEL MARINO, Nº 58', '01135-020', '11', '3393-1119', '9876-0823', NULL, 'C', 'raquel.borowski@tgestiona.com.br', NULL),
(1133, 'Wal Mart', NULL, 'Rui Biás Ortiz', NULL, 'BARUERI', 'SP', 'ALAMEDA ARAGUAIA 2751', NULL, '11', '2108-3774', NULL, NULL, NULL, 'rbortiz@walmart.com', NULL),
(1134, 'BAIXADA TRANSPORTES', NULL, 'EDUARDO / MARCIO', NULL, 'SÃO VICENTE', 'SP', 'RUA TATUIAS Nº 340', '11360-030', '13', '34666655', '3466-9442', 'SÃO VICENTE', 'C', 'rds.representacoes@uol.com.br', NULL),
(1135, 'Tokd Flor', NULL, 'Reginaldo e Patricia', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3802-7222', NULL, 'Zona Rural', 'B', 'reginaldo.cvh@hotmail.com', NULL),
(1136, 'Transpotencial Ltda', '115036680001-78', 'Luis Renato Flora', NULL, 'ITÚ', 'SP', 'Rod. Marechal Rondon (SP 300) Km 114,5 S/N', '13300-970', '11', '21188900', NULL, 'Itaim', NULL, 'renato@transpotencial.com.br', NULL),
(1137, 'MASCARENHAS E DIAS TRANSPORTES LTDA', NULL, 'RENATO', NULL, 'OSASCO', 'SP', 'AV. LOURENÇO BELOLLI Nº 350', '06268-110', '11', '3696-4007', '3696-8166', 'PARQUE INDUSTRIAL', 'C', 'renatocotacaofrete@hotmail.com', NULL),
(1138, 'SHUTTLE TRANSPORTES', NULL, 'RENE', NULL, 'BARUERI', 'SP', 'AV PIRACEMA Nº 1411', NULL, '11', '3883-0200', NULL, 'BARUERI', 'B', 'rene@shuttle.com.br', NULL),
(1139, 'R&D TRANSPORTES E LOGISTICA', NULL, 'RENATO / DIEGO', NULL, 'BARUERI', 'SP', 'RUA PARANÁ Nº 380', '03937-010', '11', '4257-1754', NULL, 'NOVA ALDEINHA', NULL, 'rferrari@rdtransportes.com.br', NULL),
(1140, 'AURORA', NULL, 'RICARDO SOUZA', NULL, 'GUARULHOS', 'SP', 'RUA CLAUDIO SERGIO BERÉ Nº 100', '07031-200', '11', '2423-2205', '2423-2213', 'PONTE GROSSA', 'C', 'ricardo-souza@auroraalimentos.com.br', NULL),
(1141, 'R S R Transportes Ltda - RABELO TRANSPORTES', NULL, 'Ricardo Moraes', NULL, 'Osasco', 'SP', 'R. Reinaldo Ceschini, 555 - casa 01', '06246-150', '11', '3656-0992', '36838306', 'Jd Mutinga', 'C', 'riicardu@hotmail.com', NULL),
(1142, 'RIO MARC IND. E COMÉRCIO DE PESCADOS LTDA', NULL, 'NEILTON', NULL, 'MOGI MIRIM', 'SP', 'ROD SP 147 MOGI MIRIM - LIMEIRA KM 67,3', '13800970', '19', '3804-5414', '9648-9423', 'SÃO JOÃO DA GLÓRIA', 'C', 'riomarc@riomarc.com.br', NULL),
(1143, 'FRIGORÍFICO PIETRO', NULL, 'RITA', NULL, 'CAJAMAR', 'SP', 'AV. VEREADOR JOAQUIM BARBOSA Nº 777', '07760-000', '11', '4447-4221', NULL, NULL, 'C', 'rita@frigorificoprietro.com.br', NULL),
(1144, 'RIZZO EMBAL-RIZZO COM E IND ART P/ FLORICULTURA LTDA', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'RUA HELIÓPOLIS, 170/180', '05318-010', '11', '3832-2011', '0800-172011', NULL, NULL, 'rizzonet@rizzo.com.br', NULL),
(1145, 'MBM TRANSPORTE E LOGÍSTICA', NULL, 'RIVALDO', NULL, 'SANTO ANDRÉ', 'SP', 'RUA GENERAL CANAVARRO Nº 183', NULL, '11', '2228-1035/7', '2228-0013', 'CAMPESTRE', 'C', 'rmvia7@gmail.com', NULL),
(1146, 'MILLENNIUM COMÉRCIO DE PESCADOS', NULL, 'RODRIGO', NULL, 'SÃO PAULO', 'SP', 'AV. DR. GASTÃO VIDIGAL Nº 1946', '05314-000', '11', '3643-9415', '9642-7860', 'CEAGESP', 'A', 'ro.millennium@hotmail.com', NULL),
(1147, 'MÃOS E ARTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19', '3893-3403', NULL, NULL, NULL, 'roberta@maosearte.com.br', NULL),
(1148, 'PAULISTÃO - PERALTA DISTRIBUIDORA DE ALIMENTOS LTDA', NULL, 'ROBERTO', NULL, 'OSASCO', 'SP', 'ESTRADA DA LIGAÇÃO 248 / KM 23,4 ANHANGUERA', '05280-000', '11', '39457000', '39457002', 'SOL NASCENTE', 'C', 'roberto.transporte@peraltaatacadista.com.br', NULL),
(1149, 'Impacto Flores', NULL, 'Roberto', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3902-9015', NULL, 'Zona Rural', 'A', 'robertosobrinho@hotmail.com', NULL),
(1150, 'RODAG TRANSPORTES', NULL, 'RODRIGO | ADRIANA', NULL, 'OSASCO', 'SP', 'AV. PADRE VICENTE MELILLO Nº 176 GL - L', NULL, '11', '3719-5825', '7722-4313', 'JARDIM ORIENTAL', 'A', 'rodag.adriana@terra.com.br', NULL),
(1151, 'EXPRESSO RODOGARCIA', NULL, 'JOANILSON GARCIA', NULL, 'SÃO PAULO', 'SP', 'AV. PRESIDENTE ALTINO 2939 B', '05323-002', '11', '3901-2811', '8378-8386', 'JAGUARÉ', 'B', 'rodogarcia@uol.com.br', NULL),
(1152, 'Rodoviário Pireneus Ltda', NULL, 'Francisco', NULL, 'SÃO PAULO', 'SP', 'Av. Corifeu de Azevedo Marques, 3931', '05339-001', '11', '3768-3211', NULL, 'Rio Pequeno', 'B', 'rodoviariopirineus@uol.com.br', NULL),
(1153, 'RODOVIÁRIO SAN REMO', NULL, 'JOÃO | VANIA', NULL, 'OSASCO', 'SP', 'AV. PRESIDENTE COSTA E SILVA Nº 847', '06253-000', '11', '3603 9906', '7320-7798', 'HELENA MARIA', 'B', 'rodoviariosanremo@hotmail.com', NULL),
(1154, 'FRIGEL IND. COM. PROD. ALIMENTÍCIOS', NULL, 'RODRIGO', NULL, 'SANTANA DO PARNAÍBA', 'SP', 'ESTRADA TENENTE MARQUES Nº 6000', '06530-001', '11', '4156-3211', NULL, 'CHACARA SOLAR I', 'C', 'rodrigo.duarte@frigelamericana.com.br', NULL),
(1155, 'IG Transportes Rodoviarios Ltda', NULL, 'Rodrigo', NULL, 'SÃO PAULO', 'SP', 'R. Surui, 36', '03319-000', '11', '2184-8787', '7812-5621', 'Tatuapé', 'C', 'rodrigo@igtransportes.com.br', NULL),
(1156, 'AGRO COMERCIAL BELLA VISTA LTDA', NULL, 'Willian', NULL, 'SÃO PAULO', 'SP', 'Av. Gastão Vidigal, 1946 - Ceagesp', '05316-900', '11', '3644-5541/3', '3641-1370', NULL, 'C', 'rogerio@bellavistaceasa.com.br', NULL),
(1157, 'GRUPO FARTURA DE HORTIFRUTI LTDA', NULL, 'ROGÉRIO LEITE', NULL, 'CAMPINAS', 'SP', 'ROD. DOM PEDRO I KM 140,5 BOX 41 A 44 GP4', '13083-120', '19', '3716-8400', NULL, 'SANTA MÔNICA (CEASA)', 'C', 'rogerio@redeoba.com.br', NULL),
(1158, 'Rogerio Peruchi', NULL, 'Rogerio Peruchi', NULL, 'CORDEIRÓPOLIS', 'SP', 'Rod. Sp 316 S N., km 160', '13490-000', '19', '35415700', '35466319', 'Cascalho', 'C', 'rogerio@rodoroper.com.br', NULL),
(1159, 'SCJ Flores e Plantas', NULL, 'Rogério', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3902-9060', NULL, 'Zona Rural', 'C', 'rogerio@scjp.com.br', NULL),
(1160, 'MADELON', NULL, 'ROLINHA', NULL, 'HOLAMBRA', 'SP', 'MH. BR km 040', '13825-000', '19', '3802-2060', '9247-3685', 'Centro', 'C', 'rolinhaa@hotmail.com', NULL),
(1161, 'PRODELOG', NULL, 'RONE LUIZ FRASSON', NULL, 'JUNDIAÍ', 'SP', 'AV ROMEU PASCHOAL MILANI Nº 80', '13212-365', '11', '4525-0111', NULL, 'MEDEIROS', 'C', 'rone.frasson@prodelog.com.br', NULL),
(1162, 'REIJERS PRODUÇÃO DE ROSAS LTDA', NULL, 'RONI', NULL, 'HOLAMBRA', 'SP', 'COOPERATIVA VELLING HOLAMBRA', NULL, '19', '3802 2060', NULL, NULL, NULL, 'roni.serafim@rosasreijers.com.br', NULL),
(1163, 'Rotamil Frios e Laticinios', NULL, 'Rodrigo', NULL, 'JUNDIAÍ', 'SP', 'AV PAULO BENASSI 215', NULL, '11', '3308-9010', NULL, 'HORTOLÂNDIA', 'A', 'rotamil@bol.com.br', NULL),
(1164, 'RANCHO RAÍZES-MARIA LIDUINA DOMHOF', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'RANCHO RAÍZES,CX POSTAL 135', '13825-000', '19', '3802-2170', '99700-6811', NULL, NULL, 'rraizes@dglnet.com.br', NULL),
(1165, 'LATICÍNIOS ATI LATTE', NULL, NULL, NULL, 'ITATIBA', 'SP', 'ROD. DOM PEDRO I KM 112', NULL, '11', '45380107', NULL, 'FAZ. ATIBAINHA', 'B', 'sac@atilatte.com.br', NULL),
(1166, 'Brasil Cargos Transportes Ltda', NULL, 'ANTONIO', NULL, 'SÃO PAULO', 'SP', 'R. Eneias Luis Carlos Barbanti, 322', '02911-000', '11', '3931-1268', NULL, 'Freguesia do Ó', 'B', 'sac@brasilcargas.com', NULL),
(1167, 'COOPERATIVA VEILING HOLAMBRA', NULL, NULL, NULL, 'STO ANTONIO DE POSSE', 'SP', 'ROD SP 107, KM 27', '13830-000', '19', '3802-9200', NULL, NULL, NULL, 'sac@cvh.com.br', NULL),
(1168, 'GRUPO DE ROSAS VEILING HOLAMBRA', NULL, NULL, NULL, 'STO ANTONIO DE POSSE', 'SP', 'ROD SP 107 KM 27', '13830-000', '19', '3802-9200', NULL, NULL, NULL, 'sac@cvh.com.br', NULL),
(1169, 'VEILING HOLAMBRA PRODUTORES-GRUPO DE PRODUT VEILING HOLAMBRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sac@cvh.com.br', NULL),
(1170, 'Matadouro Flamboiã', NULL, 'Oseas', NULL, 'CABREÚVA', 'SP', 'RODOVIA DOM GABRIELP.B. COUTO, KM 81,', '13315-000', '11', '4529-8500', '4529-7236', 'JACARÉ', 'B', 'sac@flamboia.com.br', NULL),
(1171, 'FRIGORÍFICO PAINEIRAS', NULL, 'ALCIMAR', NULL, 'Cajamar', 'SP', 'Av. Dr Antônio João Abdala, 20 km 36 da via Anhanguera', '07760-000', '11', '4447-7777', NULL, 'Jordanesia', 'B', 'sac@paineira.net', NULL),
(1172, 'Shefa Laticinios', NULL, 'Carlos', NULL, 'Amparo', 'SP', 'ROD SP 107, KM 3,5', '13908-901', '19', '3807-1010', '0800-772970', NULL, 'C', 'sac@shefa.com.br', NULL),
(1173, 'NUTRIPLAN-NUTRIPLAST IND E COM LTDA', NULL, NULL, NULL, 'CASCAVEL', 'PR', 'AV DAS AGROINDUSTRIAS, 1829 BR 277, KM 582', '85818-560', '45', '3218-4600', NULL, NULL, NULL, 'sacweb@nutriplan.com.br', NULL),
(1174, 'FLEX CARGAS TRANSPORTES', NULL, 'DAVID', NULL, 'GUARULHOS', 'SP', 'RUA CLAUDIO SERGIO BERÉ Nº 100', '07031-200', '11', '9*41909', NULL, 'PONTE GROSSA', 'C', 'saligno@gmail.com', NULL);
INSERT INTO `cadastro_clientes` (`id_cliente`, `razaosocial`, `cnpj`, `contato`, `classificacao`, `municipio`, `uf`, `endereco`, `cep`, `ddd`, `tel_1`, `tel_2`, `bairro`, `zona`, `email_1`, `email_2`) VALUES
(1175, 'FRIGORÍFICO MINERVA', NULL, 'SAMIR', NULL, 'BARRETOS', 'SP', 'Av. Antônio Manço Bernardes, s/nº', '14781-545', '17', '3321-3355', NULL, 'CHACARA MINERVA', 'B', 'samir.gouveia@minervafoods.com.br', NULL),
(1176, 'PREST-SERV', NULL, 'JOÃO FRANZINI', NULL, 'JUNDIAÍ', 'SP', 'R:WILHELM WINTERV Nº 150', '13295-000', '11', '4525-1177', NULL, 'DIST. INDUSTRIAL', 'C', 'samuel.martins@prestservjundiai.com.br', NULL),
(1177, 'SÓ PEIXE', NULL, 'Samuel Mathias', NULL, 'PIRASSUNUNGA', 'SP', 'Rua Genésio de Bem, 1674', '13633-428', '19', '3563-5052', NULL, 'Distrito Industrial', 'C', 'samuel@sopeixepescados.com.br', NULL),
(1178, 'Rodovisa Transportes Ltda', NULL, 'Sandro Nascimento Ta', NULL, 'GUARULHOS', 'SP', 'R. Jati, 223', '07180-140', '11', '64820180', NULL, 'Cidade Jardim Cumbic', 'C', 'sandro@rodovisa.com.br', NULL),
(1179, 'TRANSQUADROS ARMAZENS GERAIS E LOGÍSTICA LTDA', '149151710001-55', 'CLAUDIO', NULL, 'OSASCO', 'SP', 'AV. HENRY FORD 643', '06210-000', '11', '3766-6754', NULL, 'PRESIDENTE ALTINO', NULL, 'santos@transquadrosal.com.br', NULL),
(1180, 'Braslo Produtos de Carne Ltda', NULL, NULL, NULL, 'Osasco', 'SP', 'Av. das Comunicações, 333 - Edificio C', '06230-110', '11', '7961-0940', '3601-1895', 'Parque Ind. Anhangue', 'C', 'seara.atende@seara.com.br', NULL),
(1181, 'SINDIFLORES-SINDIC COM VAR FLORES E PLANTAS ORNAM ESTA SP', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'AV FRANCISCO MATARAZZO, 455, SL 20 PRÉDIO FAZENDEIRO', '05001-000', '11', '3865-7475', '99101-6503', NULL, NULL, 'secretaria@sindiflores.com.br', NULL),
(1182, 'Sempre Flores', NULL, NULL, NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3902-9003', NULL, 'Zona Rural', 'A', 'sempreflores56@uol.com.br', NULL),
(1183, 'Metalcar - Ind. E Com. Ltda - Furgões Duraluminio', NULL, 'José Sergio da Silva', NULL, 'SÃO PAULO', 'SP', 'Rua Carmina Ianetta Franganiello, 171', '02181-100', '11', '2954-1899', NULL, 'Parque Novo Mundo', 'B', 'sergio@metalcarfurgoes.com.br', NULL),
(1184, 'Rodoviario Serrafrio Ltda', NULL, 'Olavo', NULL, 'TABOÃO DA SERRA', 'SP', 'Rod. Régis Bittencourt, 1540', '06768-900', '11', '4787 7755', '4787-2505', 'Jd.Monte Alegre', 'A', 'serrafrio@serrafrio.com.br', NULL),
(1185, 'SIDNEY ROBERTO CORÁ', NULL, 'SIDNEY', NULL, 'BOTUCATU', NULL, NULL, NULL, '14', '3882-0378', NULL, NULL, 'A', 'sidneycora@lpnet.com.br', NULL),
(1186, 'SILTOMAC', NULL, NULL, NULL, 'SÃO CARLOS', NULL, NULL, NULL, '16', '3363-9999', NULL, NULL, 'C', 'siltomac@siltomac.com.br', NULL),
(1187, 'ALIANÇE EXPRESS', NULL, 'Silvio Yunomae', NULL, 'TABOÃO DA SERRA', 'SP', 'Estrada São Francisco, 1305', '06765-000', '11', '4787 0586', '4787-4797', 'Jd. Helena', 'A', 'silvio@alianceexpress.com.br', NULL),
(1188, 'SÍTIO SANTA MARIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sitio_sntmaria@hotmail.com', NULL),
(1189, 'SÍTIO KOLIBRI-THEODORUS BREG E OUTROS', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'CAIXA POSTAL 193', '13825-000', '19', '3802-1292', NULL, NULL, NULL, 'sitiokolibri@sitiokolibri.com.br', NULL),
(1190, 'SKIMONI', NULL, 'ALCINO', NULL, 'AMERICANA', 'SP', 'RUA AFONSO PANSAN, 1837', '13473-620', '19', '3478-8060', NULL, 'VILA BERTINI 3', 'C', 'skimoni@skimoni.com.br', NULL),
(1191, 'TCA Comercio de Produtos Alimenticios LTDA', NULL, NULL, NULL, NULL, 'BA', NULL, NULL, NULL, 'Tel: (71) 3', NULL, 'SALVADOR - BA', NULL, 'sofia@tcadisalerno.com.br', NULL),
(1192, 'Jam Transp. Frigoríficos Ltda', NULL, 'Sonia', NULL, 'SÃO PAULO', 'SP', 'R. Martinho de Campos, 395', '05093-050', '11', '3641-0400', NULL, 'Vl. Anastácio', 'C', 'sonia@jamtransportes.com.br', NULL),
(1193, 'SORVETES COLORÊ CAMPINAS LTDA', NULL, 'DIEGO', NULL, 'CAMPINAS', 'SP', 'AV. ANDRADE NEVES Nº 1393', NULL, '19', '3232-8583', NULL, 'CASTELO', 'A', 'sorvetescolore@sorvetescolore.com.br', NULL),
(1194, 'SOUL DE BRAZIL-ESTELA CAROLINA DA ROSA', NULL, NULL, NULL, 'PEDREIRA', 'SP', 'RUA ABOLIÇÃO, 100', '13920-000', '19', NULL, '98330-2395', NULL, NULL, 'souldobrazil@gmail.com', NULL),
(1195, 'Múltipla B. G. Logistica Ltda.', NULL, 'José Renato Lopes Ya', NULL, 'SÃO PAULO', 'SP', 'Rua Soldado Benedito Eliseu dos Santos, 09', '02177-020', '11', '6954-3784', '6636-2096', 'Parque Novo Mundo', 'C', 'sp@mulplicatransporte.com.br', NULL),
(1196, 'Coop. Agropecuária Holambra', NULL, 'Jailson', NULL, 'HOLAMBRA', 'SP', 'R. Rota dos Imigrantes, 152', '13825-970', '19', '3820-1621', 'R 140', 'Centro', 'A', 'sphtransportes@sphol.com.br', NULL),
(1197, 'STAR - J.S.P. DE AQUINO TRANSPORTES - ME', NULL, 'SAMUEL', NULL, 'SÃO PAULO', 'SP', 'AVENIDA CONCEIÇÃO Nº 2007 SOBRELOJA', '02072-002', '11', '2909-4100', '7834-3070', 'VILA MUNHOZ', 'C', 'star_transportes@hotmail.com', NULL),
(1198, 'STAR TRANSPORTES', NULL, 'SAMUEL AQUINO', NULL, 'SÃO PAULO', 'SP', 'AVENIDA CONCEIÇÃO Nº 2007 SOBRELOJA', '02072-002', '11', '2909-4100', NULL, NULL, 'A', 'star_transportes@hotmail.com', NULL),
(1199, 'Aboissa Representações S/c Ltda', NULL, 'Suellen Viana', NULL, 'São Paulo', 'SP', 'Largo do Arouche, 396 2º Andar - apto 25', '01219-010', '11', '33533087', '33533033', 'Santa Cecilia', 'C', 'suellen@aboissa.com.br', NULL),
(1200, 'Sueli Transportes Ltda', NULL, 'FLAVIO', NULL, 'Osasco', 'SP', 'Av. Lourenço Beloli, 17A', '06268-110', '11', '3603-3799', NULL, 'Pq.Indl.Mazzei', 'C', 'suelytransportes@uol.com.br', NULL),
(1201, 'Sun Foods', NULL, 'Kenji Narumiya', NULL, 'BARUERI', 'SP', 'Al Rio Negro, 585 - Ed. Jaçari - Sala 14/15', '06454-000', '11', '4689-8949', NULL, 'Alphaville', 'C', 'sunfoods@sunfoods.com.br', NULL),
(1202, 'Expresso São Paulo Minas Ltda', NULL, 'Antonio Tadeu Barros', NULL, 'SÃO PAULO', 'SP', 'R. Manoel Nogueira, 50', '02147-030', '11', '2949-7346', '69492733', 'Parque Novo Mundo', 'A', 'tadeu@espmg.com.br', NULL),
(1203, 'TIETE CAMINHÕIES E ONIBUS (VOLKSWAGEN)', NULL, 'CARLOS', NULL, 'CAMPINAS', 'SP', 'AV. ANTONIO VON ZUBEN Nº 1721', '13051-145', '19', '3729-3000', NULL, 'JARDIM SÃO JOSÉ', 'C', 'taisfo@tiete.com.br', NULL),
(1204, 'LATIC TAVOLARO LTDA', NULL, NULL, NULL, 'BROTAS', 'SP', 'ROD ENG. PAULO NILO ROMANO KM 114', NULL, '14', '3653-2166', NULL, NULL, 'C', 'tavolaro@mmol.com.br', NULL),
(1205, 'TOMBINI', NULL, 'CLECIO TOMBINI', NULL, 'ITUPEVA', 'SP', 'RUA ANTONIO OVIDIO RODRIGUES 693', NULL, '11', '4525-2575', NULL, 'PARQUE INDUSTRIAL II', 'C', 'clecio@grupotombini.com.br', NULL),
(1206, 'E. N. Folgado Transporte - EPP - Teca Frio Transportes', NULL, 'HELIZEU', NULL, 'CAMPINAS', 'SP', 'Rua Campos Novos, 85', '13052-445', '19', '3225-6444', NULL, 'Jd. Itatinga', 'B', 'tecafrio@tecafrio.com.br', NULL),
(1207, 'PÃO DE QUEIJO E CIA', NULL, 'LUIZ VALADÃO', NULL, 'AMERICANA', 'SP', 'RUA JOSÉ CAMPANA 228/232', NULL, '19', '3468 3074', NULL, 'VILA BERTINI II', 'A', 'telemarketing@paodequeijoecia.com.br', NULL),
(1208, 'GZT MUNDIART-GZT COM E IMPORT', NULL, NULL, NULL, 'PASSO FUNDO', 'RS', 'AV PRESID VARGAS, 3232', '99064-000', '54', '3317-8800 /', '99611-4668', NULL, NULL, 'televendas07@gzt.com.br', NULL),
(1209, 'Temra', NULL, NULL, NULL, 'Araçariguama', 'SP', NULL, NULL, '11', '4136-2002', NULL, NULL, 'B', 'temra@terra.com.br', NULL),
(1210, 'Transportadora Grande ABC Ltda', NULL, NULL, NULL, 'SÃO BERNARDO DO CAMP', 'SP', 'R. Alvaro Alvim, 801', '09693-000', '11', '4360-6000', NULL, NULL, 'C', 'tgabc@tgabc.com.br', NULL),
(1211, 'Wts Transportes Ltda', NULL, 'Wilson Roberto Passa', NULL, 'SÃO PAULO', 'SP', 'R. dos Ciclames, 107 - A', '03146-010', '11', '69122568', '69122568', 'Vila Lucia', NULL, 'thelma.guind@bol.com.br', NULL),
(1212, 'Ramos Transportes', NULL, 'Thyrso Guilarducci', NULL, 'SÃO PAULO', 'SP', 'Rua Salvador Rodrigues Prado, 200', '02190-050', '11', '2142-5000', '2955-1560', 'Parque Novo Mundo', NULL, 'thyrso@ramos.com.br', NULL),
(1213, 'BRAZILIAN FISHERIES – Indústria e Comércio de Pescados e seus Derivados Ltda.', NULL, NULL, NULL, NULL, 'PR', NULL, NULL, NULL, NULL, NULL, 'TOLEDO', NULL, 'tilapia@brazilianfisheries.net', NULL),
(1214, 'Transkompa Ltda', NULL, 'Danilo Yudi', NULL, 'VARZEA PAULISTA', 'SP', 'AV MARGINAL 1500', '13221-8090', '11', '4606-8600', NULL, NULL, 'B', 'tkompa@transkompa.com.br', NULL),
(1215, 'TRANSPORTE E LOGÍSTICA MAUA', '126591010001-58', NULL, NULL, 'MAUÁ', 'SP', 'AV PAPA JOÃO XXIII Nº 4234', '09370-800', '11', '4543-8000', '4543-8008', 'SEDRTÃOZINHO', NULL, 'tmmaua@tmmaua.com.br', NULL),
(1216, 'TRANSPORTRES E LOGÍSTICA MAUÁ', NULL, NULL, NULL, 'MAUÁ', 'SP', 'AV. PAPA JOÃO XXXIII Nº 4234', '09370-800', '11', '4543-8000', '4543-8008', 'SERTÃOZINHO', NULL, 'tmmaua@tmmaua.com.br', NULL),
(1217, 'Tomé Engenharia e Transportes Ltda', NULL, 'Laércio Tomé', NULL, 'SÃO BERNARDO DO CAMP', 'SP', 'Av José Odorizzi/ 900', '09810-490', '11', '4355-6000', '4355-6129', 'Assunção', 'C', 'tome@tome.com.br', NULL),
(1218, 'Coprosul Com Imp Exp Ltda', NULL, 'Algemir Tonnello', NULL, 'SÃO PAULO', 'SP', 'R. Leonor fernandes C. Zacharias, 1949', '02052-020', '11', '2902-3222', NULL, 'Vl.Guilherme', 'B', 'tonello@coprosul.com.br', NULL),
(1219, 'Jorenti & Souza Ltda - Toninho Frios', NULL, 'Toninho', NULL, 'MOCOCA', 'SP', 'R. Santa Catarina, 245', '13731-310', '19', '3656-4191', '3665-4122', 'Vila Rosa', 'A', 'toninhofrios@terra.com.br', NULL),
(1220, 'Hernandes Comercio e Transportes - TRANSGAINO', '03666262/0001-88', 'Samuel', NULL, 'SÃO JOSÉ DO RIO PARD', 'SP', NULL, NULL, '19', '3682-8300', '3608-6501', NULL, 'C', 'trans.gaino@transgaino.com.br', NULL),
(1221, 'Torçal', NULL, 'José Henrique', NULL, 'SÃO JOSÉ DO RIO PARD', 'SP', 'Dr. Nege Farah, 310', '13720-000', '19', '3681-2167', '3681-2257', 'Bela Vista', 'C', 'trans.hernandes@uol.com.br', NULL),
(1222, 'TRANSPOSSA TRANSPORTES RODOVIÁRIOS LTDA', '580220470001-36', 'ODAIR', NULL, 'OSASCO', 'SP', 'AV. MIGUEL FRIAS VASCONCELOS Nº 1009', '05332-010', '11', '3714-8493', '3719-0956', 'JAGUARÉ', NULL, 'trans.possa@terra.com.br', NULL),
(1223, 'Transp Agil Serv Ltda', NULL, 'Valmir', NULL, 'SÃO PAULO', 'SP', 'Av. Dr. Gastão Vidigal, 1946 - Portão 12 - Sala 05', '05314-400', '11', '3643-8067', NULL, 'Vl. Leopoldina', 'C', 'transagilservice@uol.com.br', NULL),
(1224, 'Trans Almeida', NULL, 'José', NULL, 'BRAGANÇA PAULIUSTA', 'SP', '12912-250', NULL, '11', '4035-5865', NULL, NULL, 'C', 'transalmeida@bol.com.br', NULL),
(1225, 'Transdurante Transportes Rod. De Cargas Ltda - Me', NULL, 'Fabiano', NULL, 'JAGUARIUNA', 'SP', 'Sitio Bom Retiro, s/n°', '13820-000', '19', '3837-4872', NULL, 'Guedes', 'A', 'transdurantetransporte@ig.com.br', NULL),
(1226, 'Transfprm Transportes Ltda', NULL, 'Marcelo', NULL, 'SÃO BERNARDO DO CAMP', 'SP', 'Av. Moinho Fabrini, 345', '09861-160', '11', '4343-8955', NULL, 'Vila Fenix', 'B', 'transform@transform-transportes.com.br', NULL),
(1227, 'FORMIGONI''S TRANSPORTES LTDA ME', NULL, 'JOÃO', NULL, 'ARAÇATUBA', 'SP', 'AV. DR. LUIS CURTI Nº 230', '16.071-180', '18', '3625-9877', NULL, 'PALMEIRAS', 'A', 'transformigoni@hotmail.com', NULL),
(1228, 'TRANSGÊNIO CAMPINAS TRANSPORTES LTDA', NULL, 'FABIO', NULL, 'CAMPINAS', 'SP', 'RUA MANOEL FRANCISCO MENDES Nº 611', '13030-110', '19', '3272-6111', NULL, 'JARDIM DO TRVO', NULL, 'transgenio@transgenio.com.br', NULL),
(1229, 'Trans Higashi Transportes Ltda', NULL, 'ROBERTO TOSHIO KOSHI', NULL, 'SÃO BERNARDO DO CAMP', 'SP', 'Av. Henrique Nordholff, 155', '09830-180', '11', '4354-8290', NULL, 'Riacho Grande', 'C', 'transhigashi@transhigashi.com.br', NULL),
(1230, 'Transita', NULL, 'NICOLA', NULL, 'SÃO PAULO', 'SP', 'R. Samarita, 1000', '02518-080', '11', '3858-2200', NULL, 'Bairro do Limão', 'C', 'transita@transita.com.br', NULL),
(1231, 'Translefol', NULL, NULL, NULL, 'Osasco', 'SP', 'Av. Pres. Médici, 503', '09160-400', '11', '3602-3615', NULL, 'Parque ind mazei', 'C', 'translefol@terra.com.br', NULL),
(1232, 'Luporini Transportes', NULL, 'Roberto', NULL, 'JAGUARIUNA', 'SP', 'Floriano Peixoto 61', '13820-000', '19', '3867-1621', NULL, NULL, 'A', 'transluporini@terra.com.br', NULL),
(1233, 'TRANSMARMO TRANSPORTES LTDA', NULL, 'MARCOS', NULL, 'OSASCO', 'SP', 'AV PRESIDENTE MÉDICE Nº 503', NULL, '11', '3602-3615', '2*5678', 'PARQUE INDUSTRIAL MA', 'C', 'transmarmo@uol.com.br', NULL),
(1234, 'Transmaroni Transp. Brasil Rod. Ltda', NULL, 'Gustavo Maroni', NULL, 'SÃO PAULO', 'SP', 'R. Fortunato Ferraz, 546', '05093-000', '11', '3837-8844', NULL, 'Vl. Anastácio', 'B', 'transmaroni@transmaroni.com.br', NULL),
(1235, 'TRANSNATTI TRANSPORTES E MUDANÇAS LTDA', NULL, 'ROBERTO', NULL, 'OSASCO', 'SP', 'RUA CONSELHEIRO RAMALHO Nº 348', NULL, '11', '3112-1651', '32414882', 'BELA VISTA', 'B', 'transnati@ig.com.br', NULL),
(1236, 'TRANSNOVA TRANSPORTES E LOGÍSTICA', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'AV. DANTON JOBIM 634', NULL, '11', '5681-4222', NULL, 'VELEIROS', 'A', 'transnova@transnova.com.br', NULL),
(1237, 'Transportadora de Cargas Grillu''s Ltda', NULL, 'Luciano Deveza Godin', NULL, 'GUARULHOS', 'SP', 'Rod. Presidente Dutra, Km 216 sl 06', '07178-580', '11', '64462638', '64462638', 'Jardim Cumbica', 'A', 'transpgrillus@globo.com', NULL),
(1238, 'STECK TRANSPORTES', NULL, 'Mauro', NULL, 'LOUVEIRA', 'SP', 'Rod. Romildo Prado 500', '13290-000', '19', '7805-5562', NULL, 'Vila Pasti', 'C', 'transportadorasteck@uol.com.br', NULL),
(1239, 'Frigo. Berna', NULL, 'Daniel', NULL, 'LOUVEIRA', 'SP', 'R:Atilio Biscuola 999', '13290-000', '19', '3878-9870', NULL, 'B: Ipiranga', 'C', 'transporte@berna.com.br', NULL),
(1240, 'DE MARCHI INDÚSTRIA E COMÉRCIO DE FRUTAS LTDA', NULL, 'MARQUINHOS', NULL, 'JUNDIAÍ', 'SP', 'ESTRADA DE MARCHI Nº 470', '13213-241', '11', '4815-8400', '4581-2518', 'RIO ABAIXO', 'C', 'transporte@demarchi.com.br', NULL),
(1241, 'TRANSPORTADORA ELOS DE OURO', NULL, 'DEVANILSON', NULL, 'SÃO PAULO', 'SP', 'ESTRADA TURÍSTICA DO JARAGUA 2772', NULL, '11', '3901-8282', NULL, 'JARAGUA', 'C', 'transportes@elosdeouro.com.br', NULL),
(1242, 'SUPER FRIO', NULL, 'André', NULL, 'VARGEM GRANDE DO SUL', 'SP', 'SP 215 KM 13', '12935-000', '19', '36411254', NULL, NULL, 'C', 'transportes@superfrio.com.br', NULL),
(1243, 'Transrobotica Logistica e Transportes Ltda', '20040410001-81', 'Felix Sonego', NULL, 'SÃO PAULO', 'SP', 'R. Conego Januario, 167', '04201-050', '11', '22731536', NULL, 'Ipiranga', NULL, 'transrobotica@transrobotica.com.br', NULL),
(1244, 'TRANSSUCESSO TRANSPORTADORA', NULL, NULL, NULL, 'OSASCO', 'SP', 'AV. HIDELBRANDO DE LIMA Nº 245', '06190-160', '11', '8473- 1788', NULL, 'VILA QUINTANA', NULL, 'transsucesso@transsucesso.com.br', NULL),
(1245, 'Transtec Logística e Transportes Ltda', NULL, 'Manoel', NULL, 'GUARULHOS', 'SP', 'RUA FRANSISCO MALAFAIA Nº 111', '04652-248', '11', '5565-7587', NULL, 'JARDIM CUPECÊ', NULL, 'transteclogistica@transteclogistica.com.br', NULL),
(1246, 'Transud Transportes Ltda', NULL, 'Benito', NULL, 'GUARULHOS', 'SP', 'R. Excelsior, 212', '07053-150', '11', '6421-5730', NULL, 'São Rafael', NULL, 'transul@transultransporte.com.br', NULL),
(1247, 'Transvirtual Transportes de Cargas em Geral Ltda . EEP', '006809330003-39', 'Sandro', NULL, 'JUNDIAÍ', 'SP', 'Av. Monsenhor Higino de Campos, 171', '13211-130', '11', '4581-3351', NULL, 'Pq Brasilia', NULL, 'transvirtual@terra.com.br', NULL),
(1248, 'Transportadora Nova São Roque Ltda.', '813646970002-62', 'José Roberto de Alme', NULL, 'MAIRINQUE', 'SP', 'Rua Ernesto Zunckeller, 110', '18120-970', '11', '4246-0780', '4246-0783', 'Marmeleiro', 'C', 'trnsr@terra.com.br', NULL),
(1249, 'Terra Viva', NULL, 'Batista', NULL, 'SANTO ANTÔNIO DA POS', 'SP', 'Cooperativa Velling Holambra', '13830-000', '19', '3902-9009', NULL, 'Zona Rural', NULL, 'tvivaflore@uol.com.br', NULL),
(1250, 'VALENÇA DA BAHIA MARICULTURA S/A', NULL, NULL, NULL, NULL, 'BA', NULL, NULL, '75', '641-3216', NULL, 'VALENÇA', NULL, 'valemar@grupompe.com.br', NULL),
(1251, 'Cold express Transporte e Distribuição Ltda', NULL, 'Valesca', NULL, 'SÃO PAULO', 'SP', 'RUA GUILHERME DE ALMEIDA Nº 4679', '06787-440', '11', '3031-9009', NULL, 'JARDIM SAINT MORTIZ', 'C', 'valesca@coldex.com.br', NULL),
(1252, 'VAN NOIJE PLANTAS ORNAM-TOMMY VAN NOIJE E OUTRAS', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'HBR 20, LOTE J20', '13825-000', '19', '3802-1508', '99680-7122', NULL, NULL, 'vannoije@vannoije.com.br', NULL),
(1253, 'VAN VLIET-ARIEN VAN VLIET E OUTRO', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'ESTR MUNIC HBR 40 LOTE J1, CX POSTAL 170', '13825-000', '19', '3802-1061', NULL, NULL, NULL, 'vanvliet@vanvliet.com.br', NULL),
(1254, 'VELAS SÃO CAMILO-SÃO CAMILO COM ARTEF DE PARAFINA LTDA', NULL, NULL, NULL, 'CAMPINAS', 'SP', 'AV WASHINGTON LUÍS, 160', '13041-355', '19', '3232-2008 /', '99636-7152', NULL, NULL, 'velas.saocamiloartes@ibest.com.br', NULL),
(1255, 'Gelo Pinguim', NULL, 'Edno', NULL, 'JUNDIAÍ', 'SP', '13201-970', NULL, '11', '4584-1522', NULL, NULL, 'C', 'venda@gelopinguim.com.br', NULL),
(1256, 'MONTE REAL-CERÂMICA ARTIST MONTE REAL LTDA', NULL, NULL, NULL, 'PORTO FERREIRA', 'SP', 'RUA FRANCISCO DIAS DE ALMEIDA, 1086', '13600-000', '19', '3581-1203', '3581-3473', NULL, NULL, 'vendas_montereal@ig.com.br', NULL),
(1257, 'SWART-THEODORO JACOB SWART E OUTROS', NULL, NULL, NULL, 'ANDRADAS', 'MG', 'SÍTIO NOVA FLOR CX POSTAL 541', '37795-000', '19', '3902-4004', '99403-4616', NULL, NULL, 'vendas.swart@gmail.com', NULL),
(1258, 'ATACADO DE FLORES ONLINE. ADFONLINE JBF COM DE FLORES E PLANTAS', NULL, NULL, NULL, 'JAGUARIÚNA', 'SP', 'ROD SP 107 KM 29,5', '13820-000', '19', '3837-4039', '99930-4445', NULL, NULL, NULL, NULL),
(1259, 'ALPE IND E COM DE MÓVEIS E ESQUADRIAS LTDA', NULL, NULL, NULL, 'LEME', 'SP', 'AV MAXIMIANO VILLA RIOS, 630', '13614-110', '19', '3571-5551', '99205-8604', NULL, NULL, 'vendas@alpearitana.com.br', NULL),
(1260, 'ANAHÍ ACESS P/ FLORICULTURA E DECOR. FÁVARO & FÁVARO ACESS P/ FLORICUL. LTDA', NULL, NULL, NULL, 'CAMPINAS', 'SP', 'ROD D. PEDRO I KM 140,5', '13082-902', '19', '3298-6388', '99760-2600', 'BOX F 15 CEASA', NULL, 'vendas@anahi.com.br', NULL),
(1261, 'BALCÃO DE NEGÓCIOS COM DE FLORES E OLANTAS LTDA-EPP', NULL, NULL, NULL, 'JAGUARIÚNA', 'SP', 'ROD SP 107 KM 28 LOJA B-11', '13820-000', '19', '3514-7344', '3514-7345', NULL, NULL, 'vendas@balcaodenegocioscnp.com.br', NULL),
(1262, 'BOM PEIXE', NULL, 'EDUARDO / GUSTAVO', NULL, 'PIRACICABA', 'SP', 'RUA JOÃO FRANCO DE OLIVEIRA Nº 980', '13422-160', '19', '3429-6600', '3424-1017', 'DISTRITO INDUSTRIAL', 'C', 'vendas@bompeixe.com.br', NULL),
(1263, 'BROGLIO CERÂMICA LTDA - EPP (SEBRAE SP)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19', '3893-1289', '99758-1922', NULL, NULL, 'vendas@broglioceramica.com.br', NULL),
(1264, 'B.S. Distribuição e Representações LTDA', NULL, NULL, NULL, NULL, 'AM', NULL, NULL, NULL, 'Tel: (92) 3', 'Tels: (81 )', 'MANAUS - AM', NULL, 'vendas@bsfoodservice.com.br', NULL),
(1265, 'CASA BELA DECOR. PRESENTES HOLAMBRA LTDA', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'RUA DORIA VASCONCELOS, 91', '13825-000', '19', '3802-8044', NULL, NULL, NULL, 'vendas@casabelaimportadora.com.br', NULL),
(1266, 'LEONI', NULL, 'MARCIO', NULL, 'JUNDIAÍ', 'SP', 'AV. ANTONIO FREDERICO OZANAN 4270', NULL, '11', '4526 2044', NULL, 'PONTE SÃO JOÃO', 'A', 'vendas@churrascoleoni.com.br', NULL),
(1267, 'Cosmar Jundiaí', NULL, 'Eduardo', NULL, 'JUNDIAÍ', 'SP', NULL, NULL, '11', '4583-3145', NULL, NULL, 'B', 'vendas@cosmar.com.br', NULL),
(1268, 'DEVITRO DECOR DE INTERIORES E ARTE-DANI PRESENTES LTDA EPP', NULL, NULL, NULL, 'PEDREIRA', 'SP', 'PRAÇA CORONEL JOÃO PEDRO, 75', '13920-000', '19', '3893-3886', '99837-5381', NULL, NULL, 'vendas@devitrodecoracoes.com.br', NULL),
(1269, 'FATTO A MANO VIDROS IND E COM DE VIDROS', NULL, NULL, NULL, 'RIB PRETO', 'SP', 'RUA SANTOS, 2741', '14075-060', '16', '3969-1530 /', '98122-5300', NULL, NULL, 'vendas@fmvidros.com.br', NULL),
(1270, 'DISTRIBUIUDORA FORT FRUIT LTDA', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'RUA CAPITÃO MOR RODRIGUES DE ALMEIDA Nº 39', NULL, '11', '3643-8808', NULL, 'VILA DOS REMÉDIOS', 'A', 'vendas@fortfruit.com.br', NULL),
(1271, 'Frigor Hans Ind. e Com. De Carnes Ltda', NULL, NULL, NULL, 'JUNDIAÍ', 'SP', 'R. Hollywood, 21', '04564-040', '11', '3533-5127', NULL, NULL, 'C', 'vendas@frigorhans.com.br', NULL),
(1272, 'GARDEN CENTER CID DAS FLORES LTDA', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'ROD SP 107 KM 29,9', '13825-000', '19', '3802-9636 /', NULL, NULL, NULL, 'vendas@gardencidadedasflores.com.br', NULL),
(1273, 'OLSTHOORNCACTUS-GERARDUS HUBERTUS OLSTHOORN', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'CAIXA POSTAL 169', '13825-000', '19', '3802-1283', '99185-6487', NULL, NULL, 'vendas@olsthoorncactus.com.br', NULL),
(1274, 'VASART PALASH-PALASH COM E IMP LTDA', NULL, NULL, NULL, 'BARUERI', 'SP', 'ESTR DOS ROMEIROS, 2269, GALPÃO 2', '06417-000', '11', '4161-8070', NULL, NULL, NULL, 'vendas@palash.com.br', NULL),
(1275, 'PALEX IMPORTS-P.A. SPOHR & CIA LTDA', NULL, NULL, NULL, 'PORTO ALEGRE', 'RS', 'AV CHICAGO, 58', '90240-010', '51', '3407-2051 /', '99628-1591', NULL, NULL, 'vendas@paleximports.com.br', NULL),
(1276, 'PASSADEIRAS E TAPETES P CASAM FIBRAFER-IONARA DE SOUZA OLIVEIRA DECOR', NULL, NULL, NULL, 'SUMARÉ', 'SP', 'RUA ALAMEDA DAS CABREUVAS, 541', '13174-550', '19', '4112-0074', '98233-9876', NULL, NULL, 'vendas@passadeirasfibrafer.com.br', NULL),
(1277, 'STA CLARA ALUMIN-METAL MODERNO COM DE PROD EM METAIS LTDA', NULL, NULL, NULL, 'PEDREIRA', 'SP', 'ESTR MUNIC JÚLIO PERON, 400', '13920-000', '19', '3852-3916', '3893-3276', NULL, NULL, 'vendas@santaclaraaluminios.com.br', NULL),
(1278, 'SÓ ART´S-IVETE ALVINA DA SILVA LEME-ME', NULL, NULL, NULL, 'PEDREIRA', 'SP', 'AV ANTONIO SERAFIM PETEAN, 2461 LJ 82-83-84', '13920-000', '19', '3893-5094', '3852-4482', NULL, NULL, 'vendas@soarts.com.br', NULL),
(1279, 'FRIGORÍFICO TATUÍBE', NULL, 'ANTONIO CÉSAR RODRIG', NULL, 'CASSILÂNDIA', 'MS', NULL, NULL, '67', '3596-8500', NULL, NULL, 'C', 'vendas@tatuibe.com.br', NULL),
(1280, 'TEM FLORES LTDA ME', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'ROD SP 107, KM 28,5', '13825-000', '19', '3802-4540', NULL, NULL, NULL, 'vendas@temflores.com.br', NULL),
(1281, 'Frigorífico Margen Ltda', NULL, 'Jorge', NULL, 'BARUERI', 'SP', 'R. Bahia, 417', '06465-110', '11', '2109-9910', '2178-1800', 'Alphaville', 'A', 'vendasalphaville@margen.com.br', NULL),
(1282, 'POLAR TRUCK', NULL, 'JOEL', NULL, 'CAMPINAS', 'SP', 'RUA ELDORADO 950', '13053-027', '19', '3765-9999', NULL, 'Nova America', 'A', 'victor.rocha@polartruck.com.br', NULL),
(1283, 'EXPRESSO GM PLANEJAMENTO E LOGÍSTICA', NULL, 'ROSE | RENATO | FRAN', NULL, 'SÃO PAULO', 'SP', 'RUA PROF. MÁXIMO RIBEIRO NUNES Nº 1461', NULL, '11', '2894-0394', '7807-0265', 'JARDIM PIRIPIRI', NULL, 'victor@expressogm.com.br', NULL),
(1284, 'Casa Nova', NULL, 'Vinacir', NULL, 'VALINHOS', 'SP', 'RUA ALEXANDRE HUMBERTO MOLETO Nº 602', NULL, '19', '38294055', NULL, 'Pinheiros', 'C', 'vinacir@casanovaalimentos.com.br', NULL),
(1285, 'VIRAFLOR-VIRAVENTO PLANTAS E DECOR LTDA ME ', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'CX POSTAL 9', '13825-970', '19', '3802-2999 /', NULL, NULL, NULL, 'viraflor@viraflor.com.br', NULL),
(1286, 'VIRAVENTO PLANTAS E DECOR LTDA ME', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'CX POSTAL 9', '13825-970', '19', '3802-2999 /', NULL, NULL, NULL, 'viravento@viravento.com.br', NULL),
(1287, 'MICHI FOODS', NULL, 'VITOR', NULL, 'CAJAMAR', 'SP', 'RUA LUIS ALLI FAYRDIN 525', NULL, '11', '4447-3552', NULL, 'CENTRO', 'C', 'vitoryomalutta@hotmail.com', NULL),
(1288, 'VIVA FLORA-MAURÍCIO F M KIEVITSBOSCH E OUTRO', NULL, NULL, NULL, 'HOLAMBRA', 'SP', 'LT C-14, S/Nº, CX POSTAL 54', '13825-000', '19', '3802-1038', '98131-3818', NULL, NULL, 'vivaflora@holnet.com.br', NULL),
(1289, 'VIVEL DECOR-WILLIANA DE FRAIA MUSCARI ME', NULL, NULL, NULL, 'CAMPINAS', 'SP', 'RUA RODRIGO RIBEIRO DE MELO, 70', '13082-780', '19', '3289-8876 /', NULL, NULL, NULL, 'viveldecoracoes@uol.com.br', NULL),
(1290, 'ALMEIDA E AMARAL TRANSPORTES', NULL, 'WAGNER / SIMONE', NULL, 'SÃO PAULO', 'SP', 'RUA ALENCAR DE ARARIPE Nº 498', '04253-000', '11', '4232-0554', '7762-0555', 'SACOMÃ', 'C', 'vjalmeida@uol.com.br', NULL),
(1291, 'VIVO SABOR ALIMENTOS', NULL, 'VALDEMIR', NULL, 'AMERICANA', 'SP', 'AVENIDA NOSSA SRA DE FÁTIMA Nº 2.900', '13478-540', '19', '3465-8080', NULL, 'FAZENDA MACHADINHO', NULL, 'vlisboa@vivosabor.com.br', NULL),
(1292, 'KeikoSan Produtos Alimenticios Ltda', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'R. Ilha da Trindade, 488', '03981-020', '11', '6345-5464', NULL, NULL, 'C', 'vlorusso@uol.com.br', NULL),
(1293, 'ITAMBÉ', NULL, 'Vagner', NULL, 'SÃO PAULO', 'SP', 'R.Geronimo Teles Jr, 54', '05154-010', '11', '2108-8300', NULL, 'Jd.Sto.Elias', 'C', 'wagner.chagas@itambe.com.br', NULL),
(1294, 'Armazéns Gerais Vinhedo Logistica Ltda - AGV', NULL, 'Wagner', NULL, 'VINHEDO', 'SP', 'Estrada Vinhedo/Viracopos, KM 04', '13280-000', '19', '38769000', NULL, NULL, 'C', 'wagner@agv.com.br', NULL),
(1295, 'Seara', NULL, 'André e Waldyr', NULL, 'Jandira', 'SP', 'AV DE ACESSO JOÃO GOES 1701', NULL, '11', '7029-9944', NULL, 'JDIM ALVORADA', 'C', 'waldyr.junior@seara.com.br', NULL),
(1296, 'Astro Rei Transportes Ltda.', NULL, 'Fred', NULL, 'RIO CLARO', 'SP', 'AV. BRASIL 2843', NULL, '19', '35364443', NULL, 'DISTRITO INDUSTRIAL', 'A', 'walfrede1@yahoo.com.br', NULL),
(1297, 'TRANSMASSA LOGÍSTICA', NULL, 'VALTER', NULL, 'SÃO BERNARDO DO CAMP', 'SP', 'RUA TIETÊ Nº 189', '09615-000', '11', '3336-5959', NULL, 'RUDGE RAMOS', 'C', 'walter@transmassa.com.br', NULL),
(1298, 'Yara Hann Com e Ind Ltda', NULL, 'Walter Junior', NULL, 'SÃO PAULO', 'SP', 'Av. Dr. Gastão Vidigal, 1946 - Pav HFF - Bx 36/7', '05316-900', '11', '2135 2612', NULL, 'Vl. Leopoldina', NULL, 'walterjunior@yara.com.br', NULL),
(1299, 'Vegetais Processados Com. De Alimentos Ltda.', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'Av. Bolonha, 610', '05334-000', '11', '3768-9889', NULL, 'Jaguaré', NULL, 'willian.ramos@ceazza.com.br', NULL),
(1300, 'FRIGORÍFICO PIF PAF / RIO BRANCO ALIMENTOS S/A', NULL, 'WILTON E JAIRO GOMES', NULL, 'PATROCÍNIO', 'MG', NULL, NULL, '34', '3839-8300', '9104-9007', NULL, 'C', 'wilton@pifpaf.com.br', NULL),
(1301, 'W U BICHOS DE PELÚCIA-CLEUSA DO VALLE DE LIMA EPP', NULL, NULL, NULL, 'TABATINGA', 'SP', 'RUA FRANCISCO ARDUIM, 339', '14910-000', '16', '3385-1588', '99327-6441', NULL, NULL, 'wu@wu.com.br', NULL),
(1302, 'FRIGORÍFICO XAVIER', NULL, 'XAVIER', NULL, 'RIO CLARO', 'SP', 'ESTRADA DO SOBRADO Nº 238', '13500-970', '19', '3527-0091', NULL, 'SOBRADO', 'C', 'xavier@xavier.com.br', NULL),
(1303, 'INDÚSTRIA DE FRIOS XAVIER LTDA', NULL, 'XAVIER', NULL, 'RIO CLARO', 'SP', 'ESTRADA DO SOBRADO Nº 238', '13500-970', '19', '3527-0091', NULL, 'SOBRADO', 'C', 'xavier@xavier.com.br', NULL),
(1304, 'TREND ALIMENTOS', NULL, 'FABIO', NULL, 'CAMPINAS', 'SP', 'RUA ALFREDO CANTARELLI Nº 240', NULL, '19', '3265-1132', NULL, NULL, NULL, 'zanellatransportes@trendalimentos.com.br', NULL),
(1305, 'CLUBE DO CORDEIRO', NULL, 'BENO ZATERKA', NULL, 'ITAPIRA', 'SP', 'ROD. SP 147 KM 35', NULL, '19', '39130007', '38635837', 'ZONA RURAL', 'C', 'zaterka@hotmail.com', NULL),
(1306, 'MALLMANN', NULL, 'ZINHO', NULL, 'MOGI GUAÇU', 'SP', NULL, NULL, '19', '9208-8319', NULL, NULL, 'C', 'zinho@mallman.agr.br', NULL),
(1307, 'ATIBAIA ALIMENTOS ABATEDOURO DE AVES LTDA', NULL, 'LUIZ', NULL, 'ATIBAIA', 'SP', 'AV. IMPERIAL Nº 850', '12950-000', '11', '4411-1366', NULL, 'JD IMPERIAL', 'C', NULL, NULL),
(1308, 'Avícola Paulista Ltda', NULL, 'Emerson Montico', NULL, 'LOUVEIRA', 'SP', 'Via Anhanguera KM 73', '13290-000', '19', '3848-8400', NULL, 'B.Sto.Antônio', 'B', NULL, NULL),
(1309, 'COOTRAVALE - COOPERATIVA DOS TRANSPORTES DO VALE', NULL, NULL, NULL, 'SÃO PAULO', 'SP', 'VIA ANHANGUERA KM 24,2 SALA 02', '05276-000', '11', '2596-7100', NULL, 'VILA SULINA', 'B', NULL, NULL),
(1310, 'ENGELO', NULL, 'DANIEL JOSÉ RIGHETTO', NULL, 'INDAIATUBA', 'SP', 'RUA JOSÉ DO PATRCÍNIO Nº 405', '13.334-120', '19', '3835-5821', NULL, 'CIDADE NOVA', 'B', NULL, NULL),
(1311, 'EVB BRASIL / FRETE BRASIL', NULL, 'EDIVALDO 9304-2610 /', NULL, 'CAMPINAS', 'SP', 'RUA ARMANDO CAMPOS Nº 221', '13069-129', '19', '3744-2800', NULL, 'TIC CAMPINAS', 'C', NULL, NULL),
(1312, 'EXPRESSO MIRASSOL', NULL, 'DALTON SALGUEIRO / L', NULL, 'GUARULHOS', 'SP', 'RUA JOSÉ CAMPANELLA Nº 578', '07112-100', '11', '2141-1211', NULL, NULL, 'B', NULL, NULL),
(1313, 'FRIGORÍFICO CRUZ', NULL, 'REINALDO', NULL, 'OSASCO', 'SP', 'RUA TRES ANDRADAS Nº 822', NULL, '11', '4195-7212', NULL, 'JARDIM PIRATININGA', 'C', NULL, NULL),
(1314, 'FRIGORIFICO INDEPENDÊNCIA', NULL, 'Aecio', NULL, 'Cajamar', 'SP', 'AV. LUIZ ALLI FAYRDIN Nº 680', '07760-000', '11', '4447-7000', NULL, 'DISTRITO INDUSTRIAL', 'C', NULL, NULL),
(1315, 'FRIGORÍFICO JAO INDÚSTRIA E COMÉRCIO LTDA', NULL, 'WESLEI', NULL, 'SANTANA DO PARNAÍBA', 'SP', 'ESTRADA TENENTE MARQUES Nº 6000', '06530-001', '11', '44471763', NULL, 'CHACARA SOLAR I', 'C', NULL, NULL),
(1316, 'IRMÃO RAMALHO TRANSPORTES', NULL, 'ROQUE | ARNALDO', NULL, 'SÃO PAULO', 'SP', 'RUA AGUANOS Nº 135', '05330-000', '11', '3766-4672', '9935-8841', 'JAGUARÉ', 'C', NULL, NULL),
(1317, 'Irmaos Porto Transportes Ltda', NULL, 'Acacio Neto', NULL, 'SÃO PAULO', 'SP', 'R.Bituruna, 237', '02187-100', '11', '62804581', '61469540', 'Parque Novo Mundo', 'C', NULL, NULL),
(1318, 'LOGIMASTER TRANSPORTES', NULL, 'CLAUDIO JOSE VIÇOZO', NULL, 'INDAIATUBA', 'SP', 'ALAMEDA PEDRO WOLF Nº 336', NULL, '19', '3825-6100', NULL, 'HELVÉTIA', 'C', NULL, NULL),
(1319, 'LUFT EXPRESS', NULL, 'MARIO LUFT', NULL, 'BARUERI', 'SP', 'ALAMEDA MAMORÉ Nº 535 13ºANDAR', '06421-400', '11', '4689-4343', NULL, 'ALPHAVILLE', 'B', NULL, NULL),
(1320, 'LUFT FOOD', '00.248.877/0001-04', 'ADAUTO', NULL, 'JANDIRA', 'SP', 'RUA TRES 1 E 2 QUADRA C', NULL, '11', '3602-8900', '3602-8970', 'DISTRITO INDUSTRIAL', 'C', NULL, NULL),
(1321, 'MARTIN BROWER COMERCIO E TRANSPORTE DE DISTRIBUIÇÃO DE ALIMENTOS', NULL, 'EDMILSON', NULL, 'OSASCO', 'SP', 'AV. DAS COMUNICAÇÕES Nº 333', '06278-900', '11', '36872851', '3687-2824', 'PARQUE INDUSTRIAL', 'C', NULL, NULL),
(1322, 'MASSAS PARA PASTEL BIG LAR LTDA', NULL, NULL, NULL, 'SANTA BARBARA D'' OES', 'SP', 'RUA AMAZONAS Nº 204', NULL, '19', '3455-3594', NULL, 'VILA BRASIL', 'B', NULL, NULL),
(1323, 'MAXIMMUS CAMPINAS DISTRIBUIDORA DE ALIMENTOS LTDA', NULL, 'EDERSON PERIN', NULL, 'CAMPINAS', 'SP', 'RUA PROF. ADALBERTO NASCIMENTO Nº 1062', '13030-730', '19', '3273-7174', NULL, 'SÃO BERNARDO', 'A', NULL, NULL),
(1324, 'OMFRIG ALIMENTOS', NULL, 'ODENIR', NULL, 'CAMPINAS', 'SP', 'RUA SALES DE OLIVEIRA Nº 1819', '13035-500', '19', '3326-1723', NULL, 'VILA INDUSTRIAL', 'A', NULL, NULL),
(1325, 'PAULISTA ALIMENTOS - AVÍCOLA PAULISTA', NULL, NULL, NULL, 'LOUVEIRA', 'SP', 'RODOVIA ANHANGUERA KM 73', NULL, '19', '3848-8400', NULL, 'SANTO ANTONIO', 'A', NULL, NULL),
(1326, 'PENA BRANCA', NULL, 'SANDRO', NULL, 'JAGUARIUNA', 'SP', 'ROD CAMPINAS MOGI MIRIM, S/N - KM 131,76', '13820-000', '19', '3687 8109', NULL, NULL, 'C', NULL, NULL),
(1327, 'RIO PRATA IND E COMERCIO LTDA', NULL, 'ADRIANO', NULL, 'CHARQUEADA', 'SP', 'ESTRADA DO BORTOLOTTI SNº KM 6', '13515-000', '19', '7807-4819', NULL, 'DOS ALEMÃES', 'C', NULL, NULL),
(1328, 'Rit Carrier', NULL, 'Leandro', NULL, 'JUNDIAÍ', 'SP', 'RODOVIA DE ACESSO PARA ITUPEVA) NEXTEL 43750*6 - RODOVIA VICE PREFEITO HERMENEGILDO TONOLI NUM.', NULL, '11', '4525-2175', NULL, NULL, 'C', NULL, NULL),
(1329, 'RODOPA EXPOR. ALLIMENTOS E LOGÍSTICA LTDA', NULL, 'Cleber / Elias', NULL, 'SANTA FÉ DO SUL', 'SP', 'ESTRADA VICINAL VERÍSSIMO FERNANDES S Nº', NULL, '17', '3631-9000', NULL, 'ZONA RURAL', 'B', NULL, NULL),
(1330, 'ROKAN TRANSPORTES', NULL, NULL, NULL, 'SANTO ANDRÉ', 'SP', 'AV. DAS NAÇÕES Nº 826', NULL, '11', '4773-2373', NULL, NULL, 'C', NULL, NULL),
(1331, 'Sorvetes Alaska', NULL, 'Rosário', NULL, 'COTIA', 'SP', 'Rod Raposo Tavares, Km 22,951', '06711-030', '11', '4612-2344', '4612-2421', 'Granja Viana', 'C', NULL, NULL),
(1332, 'TDMLOG - TRANSPORTES E LOGÍSTA', NULL, NULL, NULL, 'PAULINIA', 'SP', 'RUA SEBASTIÃO CARDOSO, 100 SALA 03', '13140-000', '19', '3884-7442', NULL, 'OKINAWA', 'A', NULL, NULL),
(1333, 'TDMLOG TRANSPORTES', NULL, NULL, NULL, 'BAURU', 'SP', 'SCAVASSA, QD 01 S/NR', '17064-130', '14', '3203-1868', NULL, 'NUCLEO PRES GEISEL', 'A', NULL, NULL),
(1334, 'TDMLOG TRANSPORTES', NULL, NULL, NULL, 'JARDINÓPOLIS', 'SP', 'RUA SAUDADE, 255', '14680-000', '16', '3663-4500', NULL, 'PREDIO CENTRAL PARK', 'C', NULL, NULL),
(1335, 'TRANSCOUT TRANSPORTE DE CARGAS LTDA', NULL, 'KAMILA / PAULO', NULL, 'DIADEMA', 'SP', 'RUA SITHA Nº 301', '09981-070', '11', '4351-4930', NULL, 'INAMAR', 'C', NULL, NULL),
(1336, 'TRANSPORTDORA JULI JUNIOR', '569197310001-90', 'NELSON', NULL, 'JAGUARIUNA', 'SP', NULL, '13820-000', '19', '3687 2386', NULL, NULL, NULL, NULL, NULL),
(1337, 'ZERO OUT TRANSPORTES', NULL, 'LUCIANO PIMENTA', NULL, 'SÃO PAULO', 'SP', 'RUA JHAIR AFONSO INÁCIO Nº 525 / ROD. ANHANGUERA KM 14,5', '05136-040', '11', '3917-26567', '7806-1248', 'JDIM SANTO ELIAS', NULL, NULL, NULL),
(1338, 'AKIRA Comércio, Importação e Exportação de Pescados Ltda.', NULL, NULL, NULL, NULL, 'SP', NULL, NULL, '11', '3641-1355', NULL, 'SÃO PAULO', NULL, NULL, NULL),
(1339, 'ATUMMAR Comércio e Indústria de Pesca Ltda.', NULL, NULL, NULL, NULL, 'PB', NULL, NULL, '83', '3228-2042', NULL, 'CABEDELO', NULL, NULL, NULL),
(1340, 'Compescal – Comércio de Pescado Aracatiense Ltda', NULL, NULL, NULL, NULL, 'CE', NULL, NULL, '88', '3446-2553', NULL, 'ARACATI', NULL, NULL, NULL),
(1341, 'PESCADOS AMARAL Captura, Indústria, Comércio, Importação e Exportação', NULL, NULL, NULL, NULL, 'SC', NULL, NULL, '47', '3319-0713', NULL, 'NAVEGANTES', NULL, NULL, NULL),
(1342, 'PESQUEIRA DO NORDESTE LTDA.', NULL, NULL, NULL, NULL, 'PB', NULL, NULL, '83', '3228-1416', NULL, 'CABELEDO', NULL, NULL, NULL),
(1343, 'Jefferson Antonio Scheffer', '', '', '', '', '', 'Rua JoÃ£o Silveira Belo', '', '', '', '', 'Chacara Cneo', '', '', ''),
(1344, 'Totmes Jean de Melo Scheffer', '', '', '', 'Campinas', '', 'Rua Dr. Ataliba ', '13033-165', '19', '32434893', '', 'Novo Maracana', '', '', ''),
(1345, 'Jefferson', '', '', '', '', '', 'AngÃ©lica, Angelica', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cs_carreta`
--

CREATE TABLE `cs_carreta` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cs_chapa_aco_lisa3mm`
--

CREATE TABLE `cs_chapa_aco_lisa3mm` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cs_chapa_aco_lisa4e75mm`
--

CREATE TABLE `cs_chapa_aco_lisa4e75mm` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cs_chapa_xadrez3mm`
--

CREATE TABLE `cs_chapa_xadrez3mm` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cs_chapa_xadrez4e75mm`
--

CREATE TABLE `cs_chapa_xadrez4e75mm` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cs_compensado18mm`
--

CREATE TABLE `cs_compensado18mm` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cs_machoefemea28mm_naval27mm`
--

CREATE TABLE `cs_machoefemea28mm_naval27mm` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cs_omega`
--

CREATE TABLE `cs_omega` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fr_carreta`
--

CREATE TABLE `fr_carreta` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fr_carreta_paleteira`
--

CREATE TABLE `fr_carreta_paleteira` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fr_plastica`
--

CREATE TABLE `fr_plastica` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fr_plastica_paleteira`
--

CREATE TABLE `fr_plastica_paleteira` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ln_carreta`
--

CREATE TABLE `ln_carreta` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ln_chapa_aco_lisa3mm`
--

CREATE TABLE `ln_chapa_aco_lisa3mm` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ln_chapa_aco_lisa4e75mm`
--

CREATE TABLE `ln_chapa_aco_lisa4e75mm` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ln_chapa_machoefemea`
--

CREATE TABLE `ln_chapa_machoefemea` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ln_chapa_xadrez3mm`
--

CREATE TABLE `ln_chapa_xadrez3mm` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ln_chapa_xadrez4e75mm`
--

CREATE TABLE `ln_chapa_xadrez4e75mm` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ln_compensado18mm`
--

CREATE TABLE `ln_compensado18mm` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ln_omega`
--

CREATE TABLE `ln_omega` (
  `codigo_carroceria` int(2) NOT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `icms_17` decimal(20,2) DEFAULT NULL,
  `icms_12` decimal(20,2) DEFAULT NULL,
  `icms_7` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `orçamento`
--

CREATE TABLE `orçamento` (
  `id_pedido` int(5) NOT NULL,
  `razao_social` varchar(100) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `contato` varchar(20) DEFAULT NULL,
  `municipio` varchar(20) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `ddd` varchar(3) DEFAULT NULL,
  `tel_1` varchar(11) DEFAULT NULL,
  `tel_2` varchar(11) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `email_1` varchar(50) DEFAULT NULL,
  `email_2` varchar(50) DEFAULT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `descricao_acessorio` varchar(100) DEFAULT NULL,
  `valor_total` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(5) NOT NULL,
  `razao_social` varchar(100) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `contato` varchar(20) DEFAULT NULL,
  `municipio` varchar(20) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `ddd` varchar(3) DEFAULT NULL,
  `tel_1` varchar(11) DEFAULT NULL,
  `tel_2` varchar(11) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `email_1` varchar(50) DEFAULT NULL,
  `email_2` varchar(50) DEFAULT NULL,
  `descricao_carroceria` varchar(20) DEFAULT NULL,
  `med_altura` decimal(6,2) DEFAULT NULL,
  `med_largura` decimal(6,2) DEFAULT NULL,
  `med_comprimento` decimal(6,2) DEFAULT NULL,
  `descricao_acessorio` varchar(100) DEFAULT NULL,
  `valor_total` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `acessorio_cargaseca`
--
ALTER TABLE `acessorio_cargaseca`
  ADD PRIMARY KEY (`codigo_acessorio`);

--
-- Índices de tabela `acessorio_frigorifica`
--
ALTER TABLE `acessorio_frigorifica`
  ADD KEY `codigo_acessorio` (`codigo_acessorio`);

--
-- Índices de tabela `acessorio_lonado`
--
ALTER TABLE `acessorio_lonado`
  ADD PRIMARY KEY (`codigo_acessorio`);

--
-- Índices de tabela `cadastro_clientes`
--
ALTER TABLE `cadastro_clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `cs_carreta`
--
ALTER TABLE `cs_carreta`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `cs_chapa_aco_lisa3mm`
--
ALTER TABLE `cs_chapa_aco_lisa3mm`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `cs_chapa_aco_lisa4e75mm`
--
ALTER TABLE `cs_chapa_aco_lisa4e75mm`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `cs_chapa_xadrez3mm`
--
ALTER TABLE `cs_chapa_xadrez3mm`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `cs_chapa_xadrez4e75mm`
--
ALTER TABLE `cs_chapa_xadrez4e75mm`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `cs_compensado18mm`
--
ALTER TABLE `cs_compensado18mm`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `cs_machoefemea28mm_naval27mm`
--
ALTER TABLE `cs_machoefemea28mm_naval27mm`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `cs_omega`
--
ALTER TABLE `cs_omega`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `fr_carreta`
--
ALTER TABLE `fr_carreta`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `fr_carreta_paleteira`
--
ALTER TABLE `fr_carreta_paleteira`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `fr_plastica`
--
ALTER TABLE `fr_plastica`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `fr_plastica_paleteira`
--
ALTER TABLE `fr_plastica_paleteira`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `ln_carreta`
--
ALTER TABLE `ln_carreta`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `ln_chapa_aco_lisa3mm`
--
ALTER TABLE `ln_chapa_aco_lisa3mm`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `ln_chapa_aco_lisa4e75mm`
--
ALTER TABLE `ln_chapa_aco_lisa4e75mm`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `ln_chapa_machoefemea`
--
ALTER TABLE `ln_chapa_machoefemea`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `ln_chapa_xadrez3mm`
--
ALTER TABLE `ln_chapa_xadrez3mm`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `ln_chapa_xadrez4e75mm`
--
ALTER TABLE `ln_chapa_xadrez4e75mm`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `ln_compensado18mm`
--
ALTER TABLE `ln_compensado18mm`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `ln_omega`
--
ALTER TABLE `ln_omega`
  ADD PRIMARY KEY (`codigo_carroceria`);

--
-- Índices de tabela `orçamento`
--
ALTER TABLE `orçamento`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `acessorio_cargaseca`
--
ALTER TABLE `acessorio_cargaseca`
  MODIFY `codigo_acessorio` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `acessorio_frigorifica`
--
ALTER TABLE `acessorio_frigorifica`
  MODIFY `codigo_acessorio` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `acessorio_lonado`
--
ALTER TABLE `acessorio_lonado`
  MODIFY `codigo_acessorio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `cadastro_clientes`
--
ALTER TABLE `cadastro_clientes`
  MODIFY `id_cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1346;
--
-- AUTO_INCREMENT de tabela `cs_carreta`
--
ALTER TABLE `cs_carreta`
  MODIFY `codigo_carroceria` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `cs_chapa_aco_lisa3mm`
--
ALTER TABLE `cs_chapa_aco_lisa3mm`
  MODIFY `codigo_carroceria` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `cs_chapa_aco_lisa4e75mm`
--
ALTER TABLE `cs_chapa_aco_lisa4e75mm`
  MODIFY `codigo_carroceria` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `cs_chapa_xadrez3mm`
--
ALTER TABLE `cs_chapa_xadrez3mm`
  MODIFY `codigo_carroceria` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `cs_chapa_xadrez4e75mm`
--
ALTER TABLE `cs_chapa_xadrez4e75mm`
  MODIFY `codigo_carroceria` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `cs_compensado18mm`
--
ALTER TABLE `cs_compensado18mm`
  MODIFY `codigo_carroceria` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `cs_machoefemea28mm_naval27mm`
--
ALTER TABLE `cs_machoefemea28mm_naval27mm`
  MODIFY `codigo_carroceria` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `cs_omega`
--
ALTER TABLE `cs_omega`
  MODIFY `codigo_carroceria` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `fr_carreta`
--
ALTER TABLE `fr_carreta`
  MODIFY `codigo_carroceria` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `fr_carreta_paleteira`
--
ALTER TABLE `fr_carreta_paleteira`
  MODIFY `codigo_carroceria` int(2) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
