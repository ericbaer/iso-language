-----------------------------------------------------------------------------
--
-- Module      :  Data.ISO.ISO3166
-- Copyright   :
-- License     :  BSD3
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- |
--
-----------------------------------------------------------------------------
{-# LANGUAGE CPP #-}
#ifdef GENERICS
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
#endif
module Data.ISO.ISO3166 (
    Country(..),
    successorCodes
) where

import Prelude hiding (LT)

#ifdef GENERICS
import Data.Data
import GHC.Generics
#endif

-- | ISO3166-1 alpha-2 and ISO3166-3 codes in a single data type.
--   See <http://www.iso.org/iso/country_names_and_code_elements_txt> and
--   <http://www.davros.org/misc/iso3166.html#disused>
data Country =
    -- | AFGHANISTAN
      AF
    -- | ÅLAND ISLANDS
    | AX
    -- | ALBANIA
    | AL
    -- | ALGERIA
    | DZ
    -- | AMERICAN SAMOA
    | AS
    -- | ANDORRA
    | AD
    -- | ANGOLA
    | AO
    -- | ANGUILLA
    | AI
    -- | ANTARCTICA
    | AQ
    -- | ANTIGUA AND BARBUDA
    | AG
    -- | ARGENTINA
    | AR
    -- | ARMENIA
    | AM
    -- | ARUBA
    | AW
    -- | AUSTRALIA
    | AU
    -- | AUSTRIA
    | AT
    -- | AZERBAIJAN
    | AZ
    -- | BAHAMAS
    | BS
    -- | BAHRAIN
    | BH
    -- | BANGLADESH
    | BD
    -- | BARBADOS
    | BB
    -- | BELARUS
    | BY
    -- | BELGIUM
    | BE
    -- | BELIZE
    | BZ
    -- | BENIN
    | BJ
    -- | BERMUDA
    | BM
    -- | BHUTAN
    | BT
    -- | BOLIVIA, PLURINATIONAL STATE OF
    | BO
    -- | BONAIRE, SINT EUSTATIUS AND SABA
    | BQ
    -- | BOSNIA AND HERZEGOVINA
    | BA
    -- | BOTSWANA
    | BW
    -- | BOUVET ISLAND
    | BV
    -- | BRAZIL
    | BR
    -- | BRITISH INDIAN OCEAN TERRITORY
    | IO
    -- | BRUNEI DARUSSALAM
    | BN
    -- | BULGARIA
    | BG
    -- | BURKINA FASO
    | BF
    -- | BURUNDI
    | BI
    -- | CAMBODIA
    | KH
    -- | CAMEROON
    | CM
    -- | CANADA
    | CA
    -- | CAPE VERDE
    | CV
    -- | CAYMAN ISLANDS
    | KY
    -- | CENTRAL AFRICAN REPUBLIC
    | CF
    -- | CHAD
    | TD
    -- | CHILE
    | CL
    -- | CHINA
    | CN
    -- | CHRISTMAS ISLAND
    | CX
    -- | COCOS (KEELING) ISLANDS
    | CC
    -- | COLOMBIA
    | CO
    -- | COMOROS
    | KM
    -- | CONGO
    | CG
    -- | CONGO, THE DEMOCRATIC REPUBLIC OF THE
    | CD
    -- | COOK ISLANDS
    | CK
    -- | COSTA RICA
    | CR
    -- | CÔTE D'IVOIRE
    | CI
    -- | CROATIA
    | HR
    -- | CUBA
    | CU
    -- | CURAÇAO
    | CW
    -- | CYPRUS
    | CY
    -- | CZECH REPUBLIC
    | CZ
    -- | DENMARK
    | DK
    -- | DJIBOUTI
    | DJ
    -- | DOMINICA
    | DM
    -- | DOMINICAN REPUBLIC
    | DO
    -- | ECUADOR
    | EC
    -- | EGYPT
    | EG
    -- | EL SALVADOR
    | SV
    -- | EQUATORIAL GUINEA
    | GQ
    -- | ERITREA
    | ER
    -- | ESTONIA
    | EE
    -- | ETHIOPIA
    | ET
    -- | FALKLAND ISLANDS (MALVINAS)
    | FK
    -- | FAROE ISLANDS
    | FO
    -- | FIJI
    | FJ
    -- | FINLAND
    | FI
    -- | FRANCE
    | FR
    -- | FRENCH GUIANA
    | GF
    -- | FRENCH POLYNESIA
    | PF
    -- | FRENCH SOUTHERN TERRITORIES
    | TF
    -- | GABON
    | GA
    -- | GAMBIA
    | GM
    -- | GEORGIA
    | GE
    -- | GERMANY
    | DE
    -- | GHANA
    | GH
    -- | GIBRALTAR
    | GI
    -- | GREECE
    | GR
    -- | GREENLAND
    | GL
    -- | GRENADA
    | GD
    -- | GUADELOUPE
    | GP
    -- | GUAM
    | GU
    -- | GUATEMALA
    | GT
    -- | GUERNSEY
    | GG
    -- | GUINEA
    | GN
    -- | GUINEA-BISSAU
    | GW
    -- | GUYANA
    | GY
    -- | HAITI
    | HT
    -- | HEARD ISLAND AND MCDONALD ISLANDS
    | HM
    -- | HOLY SEE (VATICAN CITY STATE)
    | VA
    -- | HONDURAS
    | HN
    -- | HONG KONG
    | HK
    -- | HUNGARY
    | HU
    -- | ICELAND
    | IS
    -- | INDIA
    | IN
    -- | INDONESIA
    | ID
    -- | IRAN, ISLAMIC REPUBLIC OF
    | IR
    -- | IRAQ
    | IQ
    -- | IRELAND
    | IE
    -- | ISLE OF MAN
    | IM
    -- | ISRAEL
    | IL
    -- | ITALY
    | IT
    -- | JAMAICA
    | JM
    -- | JAPAN
    | JP
    -- | JERSEY
    | JE
    -- | JORDAN
    | JO
    -- | KAZAKHSTAN
    | KZ
    -- | KENYA
    | KE
    -- | KIRIBATI
    | KI
    -- | KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF
    | KP
    -- | KOREA, REPUBLIC OF
    | KR
    -- | KUWAIT
    | KW
    -- | KYRGYZSTAN
    | KG
    -- | LAO PEOPLE'S DEMOCRATIC REPUBLIC
    | LA
    -- | LATVIA
    | LV
    -- | LEBANON
    | LB
    -- | LESOTHO
    | LS
    -- | LIBERIA
    | LR
    -- | LIBYA
    | LY
    -- | LIECHTENSTEIN
    | LI
    -- | LITHUANIA
    | LT
    -- | LUXEMBOURG
    | LU
    -- | MACAO
    | MO
    -- | MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF
    | MK
    -- | MADAGASCAR
    | MG
    -- | MALAWI
    | MW
    -- | MALAYSIA
    | MY
    -- | MALDIVES
    | MV
    -- | MALI
    | ML
    -- | MALTA
    | MT
    -- | MARSHALL ISLANDS
    | MH
    -- | MARTINIQUE
    | MQ
    -- | MAURITANIA
    | MR
    -- | MAURITIUS
    | MU
    -- | MAYOTTE
    | YT
    -- | MEXICO
    | MX
    -- | MICRONESIA, FEDERATED STATES OF
    | FM
    -- | MOLDOVA, REPUBLIC OF
    | MD
    -- | MONACO
    | MC
    -- | MONGOLIA
    | MN
    -- | MONTENEGRO
    | ME
    -- | MONTSERRAT
    | MS
    -- | MOROCCO
    | MA
    -- | MOZAMBIQUE
    | MZ
    -- | MYANMAR
    | MM
    -- | NAMIBIA
    | NA
    -- | NAURU
    | NR
    -- | NEPAL
    | NP
    -- | NETHERLANDS
    | NL
    -- | NEW CALEDONIA
    | NC
    -- | NEW ZEALAND
    | NZ
    -- | NICARAGUA
    | NI
    -- | NIGER
    | NE
    -- | NIGERIA
    | NG
    -- | NIUE
    | NU
    -- | NORFOLK ISLAND
    | NF
    -- | NORTHERN MARIANA ISLANDS
    | MP
    -- | NORWAY
    | NO
    -- | OMAN
    | OM
    -- | PAKISTAN
    | PK
    -- | PALAU
    | PW
    -- | PALESTINE, STATE OF
    | PS
    -- | PANAMA
    | PA
    -- | PAPUA NEW GUINEA
    | PG
    -- | PARAGUAY
    | PY
    -- | PERU
    | PE
    -- | PHILIPPINES
    | PH
    -- | PITCAIRN
    | PN
    -- | POLAND
    | PL
    -- | PORTUGAL
    | PT
    -- | PUERTO RICO
    | PR
    -- | QATAR
    | QA
    -- | RÉUNION
    | RE
    -- | ROMANIA
    | RO
    -- | RUSSIAN FEDERATION
    | RU
    -- | RWANDA
    | RW
    -- | SAINT BARTHÉLEMY
    | BL
    -- | SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA
    | SH
    -- | SAINT KITTS AND NEVIS
    | KN
    -- | SAINT LUCIA
    | LC
    -- | SAINT MARTIN (FRENCH PART)
    | MF
    -- | SAINT PIERRE AND MIQUELON
    | PM
    -- | SAINT VINCENT AND THE GRENADINES
    | VC
    -- | SAMOA
    | WS
    -- | SAN MARINO
    | SM
    -- | SAO TOME AND PRINCIPE
    | ST
    -- | SAUDI ARABIA
    | SA
    -- | SENEGAL
    | SN
    -- | SERBIA
    | RS
    -- | SEYCHELLES
    | SC
    -- | SIERRA LEONE
    | SL
    -- | SINGAPORE
    | SG
    -- | SINT MAARTEN (DUTCH PART)
    | SX
    -- | SLOVAKIA
    | SK
    -- | SLOVENIA
    | SI
    -- | SOLOMON ISLANDS
    | SB
    -- | SOMALIA
    | SO
    -- | SOUTH AFRICA
    | ZA
    -- | SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS
    | GS
    -- | SOUTH SUDAN
    | SS
    -- | SPAIN
    | ES
    -- | SRI LANKA
    | LK
    -- | SUDAN
    | SD
    -- | SURINAME
    | SR
    -- | SVALBARD AND JAN MAYEN
    | SJ
    -- | SWAZILAND
    | SZ
    -- | SWEDEN
    | SE
    -- | SWITZERLAND
    | CH
    -- | SYRIAN ARAB REPUBLIC
    | SY
    -- | TAIWAN, PROVINCE OF CHINA
    | TW
    -- | TAJIKISTAN
    | TJ
    -- | TANZANIA, UNITED REPUBLIC OF
    | TZ
    -- | THAILAND
    | TH
    -- | TIMOR-LESTE
    | TL
    -- | TOGO
    | TG
    -- | TOKELAU
    | TK
    -- | TONGA
    | TO
    -- | TRINIDAD AND TOBAGO
    | TT
    -- | TUNISIA
    | TN
    -- | TURKEY
    | TR
    -- | TURKMENISTAN
    | TM
    -- | TURKS AND CAICOS ISLANDS
    | TC
    -- | TUVALU
    | TV
    -- | UGANDA
    | UG
    -- | UKRAINE
    | UA
    -- | UNITED ARAB EMIRATES
    | AE
    -- | UNITED KINGDOM
    | GB
    -- | UNITED STATES
    | US
    -- | UNITED STATES MINOR OUTLYING ISLANDS
    | UM
    -- | URUGUAY
    | UY
    -- | UZBEKISTAN
    | UZ
    -- | VANUATU
    | VU
    -- | VENEZUELA, BOLIVARIAN REPUBLIC OF
    | VE
    -- | VIET NAM
    | VN
    -- | VIRGIN ISLANDS, BRITISH
    | VG
    -- | VIRGIN ISLANDS, U.S.
    | VI
    -- | WALLIS AND FUTUNA
    | WF
    -- | WESTERN SAHARA
    | EH
    -- | YEMEN
    | YE
    -- | ZAMBIA
    | ZM
    -- | ZIMBABWE
    | ZW
    -- | ISO 3166-3 codes: Former country name; Former codes; Period of validity
    -- | British Antarctic Territory; BQ, ATB, 080; 1974–1979
    | BQAQ
    -- | Burma; BU, BUR, 104; 1974–1989
    | BUMM
    -- | Byelorussian SSR; BY, BYS, 112; 1974–1992
    | BYAA
    -- | Canton and Enderbury Islands; CT, CTE, 128; 1974–1984
    | CTKI
    -- | Czechoslovakia; CS, CSK, 200; 1974–1993
    | CSHH
    -- | Dahomey; DY, DHY, 204; 1974–1977
    | DYBJ
    -- | Dronning Maud Land; NQ, ATN, 216; 1974–1983
    | NQAQ
    -- | East Timor [note 1]; TP, TMP, 626; 1974–2002
    | TPTL
    -- | France, Metropolitan; FX, FXX, 249; 1993–1997
    | FXFR
    -- | French Afar and Issas; AI, AFI, 262; 1974–1977
    | AIDJ
    -- | French Southern and Antarctic Territories; FQ, ATF, 260; 1974–1979
    | FQHH
    -- | German Democratic Republic; DD, DDR, 278; 1974–1990
    | DDDE
    -- | Gilbert and Ellice Islands; GE, GEL, 296; 1974–1979
    | GEHH
    -- | Johnston Island; JT, JTN, 396; 1974–1986
    | JTUM
    -- | Midway Islands; MI, MID, 488; 1974–1986
    | MIUM
    -- | Netherlands Antilles; AN, ANT, 530; 1974–2010 [note 3]
    | ANHH
    -- | Neutral Zone; NT, NTZ, 536; 1974–1993
    | NTHH
    -- | New Hebrides; NH, NHB, 548; 1974–1980
    | NHVU
    -- | Pacific Islands, Trust Territory of the; PC, PCI, 582; 1974–1986
    | PCHH
    -- | Panama Canal Zone; PZ, PCZ, 594; 1974–1980
    | PZPA
    -- | Serbia and Montenegro; CS, SCG, 891; 2003–2006
    | CSXX
    -- | Sikkim; SK, SKM, 698; 1974–1975
    | SKIN
    -- | Southern Rhodesia; RH, RHO, 716; 1974–1980
    | RHZW
    -- | Upper Volta; HV, HVO, 854; 1974–1984
    | HVBF
    -- | U.S. Miscellaneous Pacific Islands; PU, PUS, 849; 1974–1986
    | PUUM
    -- | USSR; SU, SUN, 810; 1974–1992
    | SUHH
    -- | Viet-Nam, Democratic Republic of; VD, VDR, 704; 1974–1977
    | VDVN
    -- | Wake Island; WK, WAK, 872; 1974–1986
    | WKUM
    -- | Yemen, Democratic; YD, YMD, 720; 1974–1990
    | YDYE
    -- | Yugoslavia; YU, YUG, 891; 1974–2003
    | YUCS
    -- | Zaire; ZR, ZAR, 180; 1974–1997
    | ZRCD
#ifdef GENERICS
    deriving (Show, Eq, Ord, Enum, Bounded, Typeable, Data, Generic)
#else
    deriving (Show, Eq, Ord, Enum, Bounded)
#endif

-- | Successors of ISO 3166-3 codes. Territories which are not included in
--   ISO3166 are not included as successors here.
successorCodes :: Country -> [Country]
successorCodes BQAQ = [AQ]
successorCodes BUMM = [MM]
successorCodes BYAA = [BY]
successorCodes CTKI = [KI]
successorCodes CSHH = [CZ, SK]
successorCodes DYBJ = [BJ]
successorCodes NQAQ = [AQ]
successorCodes TPTL = [TL]
successorCodes FXFR = [FR]
successorCodes AIDJ = [DJ]
successorCodes FQHH = [TF]
successorCodes DDDE = [DE]
successorCodes GEHH = [KI, TV]
successorCodes JTUM = [UM]
successorCodes MIUM = [UM]
successorCodes ANHH = [AW, BO, CW, SX]
successorCodes NTHH = [SA, IQ]
successorCodes NHVU = [VU]
successorCodes PCHH = [MH, FM, MP, PW]
successorCodes PZPA = [PA]
successorCodes CSXX = [RS, ME]
successorCodes SKIN = [IN]
successorCodes RHZW = [ZW]
successorCodes HVBF = [BF]
successorCodes PUUM = [UM]
successorCodes SUHH = [RU, AM, AZ, BY, GE, KZ, KG, MO, TJ, TM, UA, UZ, EE, LV,
                       LT]
successorCodes VDVN = [VN]
successorCodes WKUM = [UM]
successorCodes YDYE = [YE]
successorCodes YUCS = [SI, CI, BA, RS, ME, MK]
successorCodes ZRCD = [CD]
successorCodes x    = [x]

